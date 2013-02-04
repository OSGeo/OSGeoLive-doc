:Author: OSGeo-Live
:Author: Micha Silver
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)


.. TBD: Cameron Review
  We need to explain in words what we aim to achieve by each 
  step. Eg: "Lets find all Villas which include have a geometry and ..."
  This will require an extra sentence for most steps.


.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right

********************************************************************************
SpatiaLite Quickstart 
********************************************************************************

SpatiaLite is an SQLite database engine with spatial functions added. 

SQLite is a Database Management System (DBMS) which is simple, robust, easy to use and very lightweight. Each SQLite database is simply a file. You can freely copy it, compress it, and port it between Windows, Linux, MacOs etc.

This Quick Start describes how to open a spatialite database from both the command line and from a GUI application. Some sample SQL queries are shown. Use of spatialite-gis, a light weight spatialite viewer, is also demonstrated.  

.. contents:: Contents
  
Using spatialite-gui
================================================================================

Lets now have a look at a Spatialite database through a Graphical User Interface (GUI).

* Open the Spatialite GUI :menuselection:`Geospatial->Databases->Spatialite GUI`

* Select :menuselection:`File->Connecting an existing SQLite DB`
* Browse to the /home/user/data/spatialite directory and choose trento.sqlite

  .. image:: ../../images/screenshots/800x600/spatialite-gui-trento.png
    :scale: 70 %

* Right click on the MunicipalHallsView table and select "Show Columns"


  .. image:: ../../images/screenshots/800x600/spatialite-gui-columns.png
      :scale: 70 %

* Right Click on the PopulatedPlaces table and select "Edit table rows"
* In the upper SQL pane type::

   SELECT NOME, X(Geometry) AS Longitude, Y(Geometry) AS Latitude
        FROM "MunicipalHallsView"
        WHERE NOME_PROV LIKE "BRESCIA";

  and click the "Execute SQL" button at the right


  .. image:: ../../images/screenshots/800x600/spatialite-gui-select.png
      :scale: 70 %


Using spatialite-gis
================================================================================

Spatialite-gis is a simple viewer for spatialite based layers.

* From the Desktop GIS folder on the Desktop run spatialite-gis
* Click the "Connecting existing SQLite DB" button and connect to /home/user/data/spatialite/trento.sqlite

You should see a map of Trento Provence in Italy

   - Right click on the Highways layer and select :menuselection:`Hide`
   - Right Click on the LocalCouncilsTrento layer and select :menuselection:`Layer Configuration->Classify` and choose "Shape Area" for the column. Select 4 Classes and click on the Min and Max color patches to choose a dark and light color. Now click to see a Choropleth display of the provence areas.
   - Change border color by right click on LocalCouncils and select :menuselection:`Layer configuration->Graphics` and select a different color under Border Graphics.
   - Zoom in slightly. Right click on the PopulatedPlaces layer and select :menuselection:`Indentify on`. Now click on one of the Populated Places to see the attributes for that feature.


Running spatialite from the command line
================================================================================

Users needing to script or automate queries will learn the advantages of working with a spatialite database from the command line interface. Here are some examples.

* Before working from the command line, we need to open a terminal window: :menuselection:`Applications -> Accessories -> Terminal Emulator`.

* In the terminal open a sample database with **spatialite** by typing::

   spatialite /home/user/data/spatialite/trento.sqlite

* Helpful commands in the CLI interface::

   .help
   .tables
   .quit   

* Some sample spatial queries::

   SELECT lc.NOME, lc.NOME_PROV, lc.COM, mh.Perimeter 
        FROM LocalCouncils AS lc, MunicipalHalls AS mh 
        WHERE CONTAINS(lc.Geometry,mh.Geometry) AND lc.NOME LIKE 'VILLA%' 
        ORDER BY lc.NOME;
   .headers ON
   SELECT COMUNE, LOCALITA, Area(Geometry)/1000000 AS "Area Sq.km." 
        FROM PopulatedPlaces ORDER BY "Area Sq.km." DESC LIMIT 10 ; 
   SELECT lc.NOME AS "Provence Name", X(mh.Geometry) AS X_COORD, Y(mh.Geometry) AS Y_COORD 
        FROM LocalCouncils AS lc, MunicipalHalls AS mh 
        WHERE mh.COMU=lc.COM ORDER BY "Provence Name" LIMIT 10;
      
.. TBD: Cameron Review
  For the information of the author:
  I've removed the section on creating a new database as this step is
  only valuable if we go on to create tables and populate with data
  (which was not in the quickstart)
  This comment can be removed once read.

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

   - Here's how it looks in the terminal window:

   .. image:: ../../images/screenshots/800x600/spatialite-cli.png
      :scale: 70 %

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

* Inspect geometries with spatialite-gui`
* Open and edit SpatiaLite layers in QGIS

What Next?
================================================================================

To learn more about SpatiaLite, a starting point is the `SpatiaLite project page`_.

.. _`SpatiaLite project page`: https://www.gaia-gis.it/fossil/libspatialite/index

and be sure to visit the tutorial `Spatialite cookbook`_

.. _`Spatialite cookbook`: http://www.gaia-gis.it/gaia-sins/spatialite-cookbook/index.html
