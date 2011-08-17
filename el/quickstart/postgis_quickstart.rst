:Author: Barry Rowlingson
:Author: Astrid Emde
:Version: osgeo-live4.5p
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _postgis_quickstart:
 
.. image:: ../../images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://postgis.org/



******************
PostGIS Quickstart
******************

PostGIS adds spatial capabilities to the PostgreSQL relational database system. It gives
PostgreSQL the ability to store, query, and manipulate spatial data. In this note we will
use 'PostgreSQL' when we talk about general database functions, and 'PostGIS' when
we talk about the additional functionality that it provides.


Client-server Architecture
==========================

PostgreSQL, like many database systems, works as a server in a client-server system.
The client makes a request to the server and gets back a response. This is the
same way that the WWW works - your browser is the client and the web server sends
back the web page. With PostgreSQL the requests are in the SQL language and the
response is usually a table of data from the database.

There is nothing to stop the server being on the same computer as the client, and this
enables you to use PostgreSQL on a single machine. Your client connects to the server
via the internal 'loopback' network connection, and is not visible to other computers
unless you configure it to be so.

Creating A Spatially-Enabled database
=====================================

To handle spatial data you need a PostgreSQL database with PostGIS
functionality. From the unix command line you can use ``createdb``:

::

   createdb -T template_postgis demo

.. tip:: Note that the command line tools provide help with --help for further information 

or from the PostgreSQL command line tool ``psql``, you can create it
with SQL:

First get a list of all databases with ``psql`` and the parameter -l. Connect with a database. 
:: 

 psql -l 
 psql -d postgres
 
Run the SQL to create a new database:

:: 

 CREATE DATABASE demo TEMPLATE=template_postgis;

To check this has worked, your database will have a lot of
spatial functions and two tables: ``geometry_columns`` and ``spatial_ref_sys``.

.. tip:: Note that when you are connected a database with psql you will get help with \h or \?. Leave the database with \q.


Creating A Spatial Table The Hard Way
=====================================

Now we have a spatial database we can make spatial tables. Start the
PostgreSQL command-line client by entering 'psql' and your database name at a terminal
prompt. This should connect to your database.

::

 psql -d postgres


First we create an ordinary database table to store some city data -
this table has two fields - one for a numeric ID and one for the city
name:

::

  CREATE TABLE cities ( id int4, name varchar(50) );

Next you have to add a geometry column. Conventionally this is called
``the_geom`` or ``geom``. This tells PostGIS what kind of geometry
each feature has (points, lines, polygons etc), how many dimensions
(in this case two), and importantly the spatial reference
system. We'll create the geometry column using EPSG:4326 coordinates.

::

  SELECT AddGeometryColumn ( 'cities', 'the_geom', 4326, 'POINT', 2);

.. tip:: Check the PostGIS table ``geometry_columns``. YOu will find a new row with metadata for your table there.
 
Now we can add some data to our table. Adding the id and name values is standard SQL fare. Adding our
point coordinates requires us to use a PostGIS function to convert WKT (Well Known Text) strings with a 
spatial reference system id.

::

  INSERT INTO cities (id, the_geom, name) VALUES (1,ST_GeomFromText('POINT(-0.1257 51.508)',4326),'London, England');
  INSERT INTO cities (id, the_geom, name) VALUES (2,ST_GeomFromText('POINT(-81.233 42.983)',4326),'London, Ontario');
  INSERT INTO cities (id, the_geom, name) VALUES (3,ST_GeomFromText('POINT(27.91162491 -33.01529)',4326),'East London,SA');

As you can see this gets increasingly tedious very quickly. Luckily there are other ways of getting
data into PostGIS tables that are much easier. But now we have three cities in our database, and we 
can work with that.


Simple Queries
==============

All the usual SQL operations can be applied to select data from a PostGIS table.

::

 # SELECT * FROM CITIES;
  id |      name       |                      the_geom                      
 ----+-----------------+----------------------------------------------------
   1 | London, England | 0101000020E6100000BBB88D06F016C0BF1B2FDD2406C14940
   2 | London, Ontario | 0101000020E6100000F4FDD478E94E54C0E7FBA9F1D27D4540
   3 | East London,SA  | 0101000020E610000040AB064060E93B4059FAD005F58140C0
 (3 rows)

If you want to have a look at your geometry in WKT format again, you can use the functions ST_AsText(the_geom) or ST_AsEwkt(the_geom). Or use ST_X(the_geom), ST_Y(the_geom) to get the coordinates

::

 # SELECT id, ST_AsText(the_geom), ST_AsEwkt(the_geom), ST_X(the_geom), ST_Y(the_geom) FROM CITIES;
  id |          st_astext           |               st_asewkt                |    st_x     |   st_y    
 ----+------------------------------+----------------------------------------+-------------+-----------
   1 | POINT(-0.1257 51.508)        | SRID=4326;POINT(-0.1257 51.508)        |     -0.1257 |    51.508
   2 | POINT(-81.233 42.983)        | SRID=4326;POINT(-81.233 42.983)        |     -81.233 |    42.983
   3 | POINT(27.91162491 -33.01529) | SRID=4326;POINT(27.91162491 -33.01529) | 27.91162491 | -33.01529
 (3 rows)



Spatial Queries
===============

PostGIS adds many functions with spatial functionality to
PostgreSQL. We've already seen ST_GeomFromText which converts WKT to
geometry. Most of them start with ST (for spatial type) and are listed in a section of
the PostGIS documentation. We'll now use one to answer a practical
question.

How far are these three Londons away from each other, in metres,
assuming a spherical earth? (I'd use ST_Distance_Spheroid but my
version of PostGIS doesn't have it)

::

 # SELECT p1.name,p2.name,ST_Distance_Sphere(p1.the_geom,p2.the_geom) from cities as p1, cities as p2 where p1.id > p2.id;
       name       |      name       | st_distance_sphere 
 -----------------+-----------------+--------------------
  London, Ontario | London, England |   5875766.85191657
  East London,SA  | London, England |   9789646.96784908
  East London,SA  | London, Ontario |   13892160.9525778
  (3 rows)

This gives is the distance, in metres, between each pair of
cities. Notice how the 'where' part of the line stops us getting back
distances of a city to itself (which will all be zero) or the reverse
distances to the ones in the table above (England to Ontario is the
same distance as Ontario to London). Try it without the 'where' part
and see what happens.

Mapping
=======

To produce a map from PostGIS data, you need a client that can get at the data. Most 
of the open source desktop GIS programs can do this - Quantum GIS, gvSIG, uDig for example. Now we'll
show you how to make a map from Quantum GIS.

Start Quantum GIS and choose ``Add PostGIS layer`` from the layer menu. Because you haven't interacted
with PostGIS from QGIS before, you'll get an empty set of PostGIS connections.

.. image:: ../../images/screenshots/1024x768/postgis_add.png
  :scale: 100 %
  :alt: Add a PostGIS layer
  :align: center

Hit 'new' and enter the parameters for the connection. We'll use the Natural Earth database
provided on the DVD system. There's no username or password because the security is set up
to allow you access.

.. image:: ../../images/screenshots/1024x768/postgis_naturalearth.png
  :scale: 100 %
  :alt: Connect to Natural Earth
  :align: center

Hit the ``Test Connect`` button, and if all is well you'll get a friendly 
message. Hit ``OK`` and your connection info is saved under the name in the drop-down box. Now you can
hit ``Connect`` and get a list of the spatial tables in the database:

.. image:: ../../images/screenshots/1024x768/postgis_ne_layers.png
  :scale: 100 %
  :alt: Natural Earth Layers
  :align: center

Choose the lakes and hit ``Add``, and it should be loaded into QGIS:

.. image:: ../../images/screenshots/1024x768/postgis_ne_lakes.png
  :scale: 50 %
  :alt: My First PostGIS layer
  :align: center

You should now see a map of the lakes. QGIS doesn't know they are lakes, so might not colour
them blue for you. Use the QGIS documentation to work out how to change this! Zoom in to
a famous group of lakes in Canada.


Creating A Spatial Table The Easy Way
=====================================

Most of the OSgeo desktop tools have functions for importing spatial data in files, such as shapefiles,
into PostGIS databases. Again we'll use QGIS to show this.

Importing shapefiles to QGIS can be done via a handy PostGIS Manager plugin. To set it up, go to the 
Plugins menu, select ``Manage Plugins`` and then find the ``PostGIS Manager``. Check the box and OK 
it. Now on the Plugin menu you should have a PostGIS Manager entry which gives you an option
to start the manager.

It will then use your previously defined settings to connect to the Natural Earth database. Leave
the password blank if it asks. You'll see the main manager window.

.. image:: ../../images/screenshots/1024x768/postgis_ne_manager.png
  :scale: 100 %
  :alt: PostGIS Manager Plugin
  :align: center

You can use the other tabs in the right-side panel to check the attributes of the layer and even
get a basic map with zoom and pan capabilities. Here I've selected the the populated places layer
and zoomed in on a little island I know:

.. image:: ../../images/screenshots/1024x768/postgis_ne_preview.png
  :scale: 100 %
  :alt: PostGIS Manager Preview
  :align: center

Now to read in a shapefile. From the ``Data`` menu choose the ``Load data from shapefile`` option. 
All you need to do here is browse to the world shapefile in the data directory of the osgearth 
folder, and give the table a name. Leave everything else. Hit ``Load``.

.. image:: ../../images/screenshots/1024x768/postgis_ne_load.png
  :scale: 100 %
  :alt: Import a shapefile
  :align: center

The shapefile should be imported into PostGIS with no errors. 

Now get back to the main QGIS window and load the world data into the map using the 'Add PostGIS Layer'
option. With a bit of rearranging of the layers and some colouring, you should be able to get something
like this:

.. image:: ../../images/screenshots/1024x768/postgis_ne_final.png
  :scale: 50 %
  :alt: Lakes and Countries
  :align: center




Get to know pgAdmin III
=======================
You can use the graphical database client ``pgAdmin III`` to run you SQLs and handle your data. 
pgAdmin III also provides a plugin for shape import. This client provides a comfortable way to 
manage your data.

.. image:: ../../images/screenshots/800x600/pgadmin.gif
  :scale: 100 %
  :alt: pgAdmin III
  :align: center

Things to try
=============

Here are some additional challenges for you to try:

#. Try some more spatial functions like st_buffer(the_geom), st_transform(the_geom,25831), x(the_geom) . You find a very good documentation at http://postgis.org/documentation/

#. Export your tables to shape with pgsql2shp

#. Try ogr2ogr to import/export data to your database


What Next?
==========

This is only the first step on the road to using PostGIS. There is a lot more functionality you can try.

PostGIS Project home

 http://postgis.org

PostGIS Documentation

http://postgis.org/documentation/
