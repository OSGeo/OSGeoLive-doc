:Author: OSGeoLive
:Author: Micha Silver
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)


.. TBD: Cameron Review
  We need to explain in words what we aim to achieve by each 
  step. Eg: "Let's find all Villas which include have a geometry and ..."
  This will require an extra sentence for most steps.


@LOGO_spatialite@
@OSGEO_KIND_spatialite@

********************************************************************************
@NAME_spatialite@ Quickstart
********************************************************************************

SpatiaLite is an SQLite database engine with spatial functions added. 

SQLite is a Database Management System (DBMS) which is simple, robust, easy to use and very lightweight. Each SQLite database is simply a file. You can freely copy it, compress it, and port it between Windows, Linux, MacOs etc.

This Quick Start describes how to open a spatialite database from both GUI applications and the command line. Some sample SQL queries are shown.

.. contents:: Contents
  
Using spatialite-gui
================================================================================

Spatialite-gui provides a visual interface for viewing and maintaining a
spatialite database. You can easily see the structure of the tables and data
contents using point and click functions, many of which construct
common SQL queries, or craft your own SQL queries.

Let's start by viewing a spatialite database, and looking at columns within a
table:

* Open the Spatialite GUI by selecting :menuselection:`Geospatial->Databases->Spatialite GUI`

.. TBD: Cameron Review Comment:
  We should have continuity in our examples. Ie, Use the same scenario for
  all spaital-gui steps. Use the same table, where each step builds upon the
  previous step. I'd suggest our examples should aim to have a GIS focus to
  them too.

* Select :menuselection:`File->Connecting an existing SQLite DB`
* Browse to the :file:`/home/user/data/spatialite` directory and choose :file:`trento.sqlite`.

  .. image:: /images/projects/spatialite/spatialite-gui-trento.png
    :scale: 70 %

.. TBD: Cameron Review Comment:
  As above, lets keep the table consistant, to maybe MunicipalHalls

* Right click on the MunicipalHallsView table and select "Show Columns"

  .. image:: /images/projects/spatialite/spatialite-gui-columns.png
      :scale: 70 %

* You will notice the display broken into 3 areas:

  #. The left panel displays the database hierarchy, such as a list of tables, and columns within the table. Right click on elements of the left panel to select from a list of common database actions.

  #. The top right panel shows SQL for the action selected. You can enter your own customised SQL into this panel.

  #. The bottom right panel shows the results of the SQL query.

* Right Click on the MunicipalHalls table and select "Edit table rows". Notice
  the SQL query which has been created for you in the top right pane, and
  results in the bottom right.::

    SELECT ROWID, "PK_UID", "AREA", "PERIMETER", "COMU", "Geometry"
        FROM "MunicipalHalls"
        ORDER BY ROWID

.. TBD: Cameron Review Comment:
  As above, lets try to keep consistancy. I suggest continue using the
  MunicipalHalls table, but how about constrain by a GIS query, such as
  a Bounding Box query instead.

* Now let's try tweaking this SQL statement to get NOME and (Lat,Long) for only
  the NOME_PROV fields include "BRESCIA", this time using the
  MunicipalHallsView.  In the upper right SQL pane type::

   SELECT NOME, X(Geometry) AS Longitude, Y(Geometry) AS Latitude
        FROM "MunicipalHallsView"
        WHERE NOME_PROV LIKE "BRESCIA";

  and click the "Execute SQL" button at the right, and see the results in
  the bottom right pane.

  .. image:: /images/projects/spatialite/spatialite-gui-select.png
      :scale: 70 %


Running spatialite from the command line
================================================================================

Users needing to script or automate queries will learn the advantages of working with a spatialite database from the command line interface. In this example, we will load a shapefile, and search for schools which are near highway 42. 

* Before working from the command line, we need to open a terminal window: :menuselection:`LXDE Menu -> Accessories -> LXTerminal`.

* In the terminal open a sample database with **spatialite** by typing::

   spatialite /home/user/data/spatialite/trento.sqlite

* Helpful commands from the command line::

   .help
   .tables
   .quit   

* Creating a new spatialite database and loading a shapefile
  
   - Let's create a new, empty spatialite database, and load two shapefiles from the north_carolina dataset::

      user@osgeo-6:~$ spatialite test.sqlite
      SpatiaLite version ..: 3.1.0-RC2      Supported Extensions:
           - 'VirtualShape'        [direct Shapefile access]
           - 'VirtualDbf'          [direct DBF access]
           - 'VirtualXL'           [direct XLS access]
           - 'VirtualText'         [direct CSV/TXT access]
           - 'VirtualNetwork'      [Dijkstra shortest path]
           - 'RTree'               [Spatial Index - R*Tree]
           - 'MbrCache'            [Spatial Index - MBR cache]
           - 'VirtualSpatialIndex' [R*Tree metahandler]
           - 'VirtualFDO'          [FDO-OGR interoperability]
           - 'SpatiaLite'          [Spatial SQL - OGC]
      PROJ.4 version ......: Rel. 4.8.0, 6 March 2012
      GEOS version ........: 3.3.3-CAPI-1.7.4
      SQLite version ......: 3.7.9
      Enter ".help" for instructions
      spatialite>
      spatialite> .loadshp data/north_carolina/shape/schools_wake schools utf-8 3358
      spatialite> .loadshp data/north_carolina/shape/roadsmajor roads utf-8 3358


   - Note the format of the .loadshp command: first the shapefile without the .shp extension, then the name of the new spatialite table, next the character encoding, and finally the EPSG code of the shapefile's CRS.

   - Now we'll query for schools near to highway 42.::
 
      spatialite> SELECT s.NAMESHORT, s.ADDRNUMBER, s.ADDRROOT
           ...> FROM schools AS s, roads AS r
           ...> WHERE r.ROAD_NAME = "NC-42" AND
           ...> ST_Distance(s.Geometry, r.Geometry) < 1000;
      FUQUAY-VARINA|6600|Johnson Pond Rd
      WILLOW SPRINGS|6800|Dwight Rowland Rd
      FUQUAY-VARINA|109|N Ennis St
      LINCOLN HEIGHTS|307|Bridge St

   - Finally, we output the query to a "comma separated values" text file "schools_rt42.txt" with the following commands::

      spatialite> .mode csv
      spatialite> .output "schools_rt42.txt"
      spatialite> SELECT s.NAMESHORT, s.ADDRNUMBER, s.ADDRROOT
          ...> FROM schools AS s, roads AS r
          ...> WHERE r.ROAD_NAME = "NC-42" AND
          ...> ST_Distance(s.Geometry, r.Geometry) < 1000;
      spatialite>.q
 


Things to Try
================================================================================

Here are some additional challenges for you to try:

* Inspect geometries with spatialite-gui
* Open and edit SpatiaLite layers in QGIS

What Next?
================================================================================

To learn more about SpatiaLite, a starting point is the `SpatiaLite project page`_.

.. _`SpatiaLite project page`: https://www.gaia-gis.it/fossil/libspatialite/index

and be sure to visit the tutorial `Spatialite cookbook`_

.. _`Spatialite cookbook`: http://www.gaia-gis.it/gaia-sins/spatialite-cookbook/index.html
