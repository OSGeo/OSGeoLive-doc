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
  
Running spatialite from the command line
================================================================================

* Before working from the command line, we need to open a console window: :menuselection:`Applications -> Accessories -> Terminal Emulator`.

* Open a console and open a sample database with **spatialite**::

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

Using spatialite-gui
================================================================================

Lets now have a look at a Spatialite database through a Graphical User Interface (GUI).

* Open the Spatialite GUI :menuselection:`Geospatial->Databases->Spatialite GUI`

.. TBD: Cameron Review
  Screenshot here

* Select :menuselection:`File->Connecting an existing SQLite DB`
* Browse to the /home/user/data/spatialite directory and choose trento.sqlite

  .. image:: ../../images/screenshots/800x600/spatialite-gui-trento.png
    :scale: 70 %


.. TBD: Cameron Review
  Screenshot here
  Explain the different windows you see

* Right click on the MunicipalHallsView table and select "Show Columns"


  .. image:: ../../images/screenshots/800x600/spatialite-gui-columns.png
      :scale: 70 %


.. TBD: Cameron Review
  Screenshot here

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

.. TBD: Cameron Review
  Explain what spatialite-gis is used for, and include screen shots.

* From the Desktop GIS folder on the Desktop run spatialite-gis
* Click the "Connecting existing SQLite DB" button and connect to /home/user/data/spatialite/trento.sqlite

You should see a map of Trento Provence in Italy

   - Right click on the Highways layer and select :menuselection:`Hide`
   - Right Click on the LocalCouncilsTrento layer and select :menuselection:`Layer Configuration->Classify` and choose "Shape Area" for the column. Select 4 Classes and click on the Min and Max color patches to choose a dark and light color. Now click to see a Choropleth display of the provence areas.
   - Change border color by right click on LocalCouncils and select :menuselection:`Layer configuration->Graphics` and select a different color under Border Graphics.
   - Zoom in slightly. Right click on the PopulatedPlaces layer and select :menuselection:`Indentify on`. Now click on one of the Populated Places to see the attributes for that feature.


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
