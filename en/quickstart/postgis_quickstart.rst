:Author: Barry Rowlingson
:Version: osgeo-live4.5
:License: Creative Commons

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
use ``PostgreSQL'' when we talk about general database functions, and ``PostGIS'' when
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

Creating A Spatial enabled database
===================================

To handle spatial data you need a PostgreSQL database with PostGIS functionality. You can use the PostgreSQL utility tool createdb or SQL to set your database up. Check for PostGIS - you will find lot of spatial functions and two tables geometry_columns and spatial_ref_sys in your new database.

::

   createdb -T template_postgis demo


You can create a database via SQL using the following statement
:: 

 CREATE DATABASE demo TEMPLATE=template_postgis;


Creating A Spatial Table The Hard Way
=====================================

Start the PostgreSQL command-line client by entering 'psql' at a terminal prompt. It should connect to a database.

First we create an ordinary database table to store some city data - this table has two fields - one for a numeric
ID and one for the city name:

::

  CREATE TABLE cities ( ID int4, NAME varchar(50) );

Next you have to add a geometry column. Conventionally this is called ``the_geom'' or ``geom''. This
tells PostGIS what kind of geometry each feature has (points, lines, polygons etc), how many dimensions (in this case
two), and importantly the spatial reference system. We'll create the geometry column using EPSG:4326 
coordinates.

::

  SELECT AddGeometryColumn ( 'cities', 'the_geom', 4326, 'POINT', 2);
 
Now we can add some data to our table. Adding the ID and NAME values is standard SQL fare. Adding our
point coordinates requires us to use a PostGIS function to convert WKT strings with a 
spatial reference system id.

::

  INSERT INTO cities (ID, the_geom, name) VALUES (1,ST_GeomFromText('POINT(-0.1257 51.508)',4326),'London, England');
  INSERT INTO cities (ID, the_geom, name) VALUES (2,ST_GeomFromText('POINT(-81.233 42.983)',4326),'London, Ontario');
  INSERT INTO cities (ID, the_geom, name) VALUES (3,ST_GeomFromText('POINT(27.91162491 -33.01529)',4326),'East London,SA');

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

Spatial Queries
===============

PostGIS adds many functions with spatial functionality to PostgreSQL. We've already seen ST_GeomFromText
which converts WKT to geometry. Most of them start with ST and are listed in a section of the PostGIS 
documentation. We'll now use one to answer a practical question.

How far are these three Londons away from each other, in metres, assuming a spherical earth? (I'd use ST_Distance_Spheroid but 
my version of PostGIS doesn't have it)

::

 # SELECT p1.name,p2.name,ST_Distance_Sphere(p1.the_geom,p2.the_geom) from cities as p1, cities as p2 where p1.id > p2.id;
       name       |      name       | st_distance_sphere 
 -----------------+-----------------+--------------------
  London, Ontario | London, England |   5875766.85191657
  East London,SA  | London, England |   9789646.96784908
  East London,SA  | London, Ontario |   13892160.9525778
  (3 rows)

This gives is the distance, in metres, between each pair of cities. Notice how the 'where' part of the line
stops us getting back distances of a city to itself (which will all be zero) or the reverse distances to the ones in the
table above (England to Ontario is the same distance as Ontario to London). Try it without the 'where' part and
see what happens.

Mapping
=======

Fire up QGIS, load the cities as a PostGIS layer. Label them. Screenshot.


Creating A Spatial Table The Easy Way
=====================================

Using shp2pgsql (and/or shp2pgsql-gui which is interesting...)

Using QGIS PostGIS conversion tools


Get to know pgAdmin III
=======================
You can use the graphical Database Client pgAdmin III to run you SQLs and handle your data. 
pgAdmin III also provides a plugin for shape import. This Client provides a comfortable way to 
administrate your data.

.. image:: ../../images/screenshots/800x600/pgadmin.gif
  :scale: 100 %
  :alt: pgAdmin III
  :align: right

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
