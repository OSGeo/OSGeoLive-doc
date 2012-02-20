:Author: OSGeo-Live
:Author: Micha Silver
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _spatialite-quickstart:
 
.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right

********************************************************************************
SpatiaLite Quickstart 
********************************************************************************

SpatiaLite is an SQLite database engine with spatial functions added. 

This Quick Start describes how to open a database with the command line and the GUI application.


Running spatialite
================================================================================

* Open a console and open a sample database with **spatialite**::

   ``spatialite /home/user/data/spatialite/trento.sqlite``

* Helpful commands in the CLI interface::
   ``.help
   .tables
   .quit``   

* Some sample spatial queries::

   ``SELECT lc.NOME, lc.NOME_PROV, lc.COM, mh.Perimeter 
        FROM LocalCouncils AS lc, MunicipalHalls AS mh 
        WHERE CONTAINS(lc.Geometry,mh.Geometry) AND lc.NOME LIKE 'VILLA%' 
        ORDER BY lc.NOME;
   .headers ON
   SELECT COMUNE, LOCALITA, Area(Geometry)/1000000 AS "Area Sq.km." 
        FROM PopulatedPlaces ORDER BY "Area Sq.km." DESC LIMIT 10 ; 
   SELECT lc.NOME AS "Provence Name", X(mh.Geometry) AS X_COORD, Y(mh.Geometry) AS Y_COORD 
        FROM LocalCouncils AS lc, MunicipalHalls AS mh 
        WHERE mh.COMU=lc.COM ORDER BY "Provence Name" LIMIT 10;``
      

Create a new database with **spatialite-gui**
================================================================================

* From the Databases folder on the Desktop, Start **spatialite_gui**
* Select :menuselection:`File --> Creating a new SQLite DB`
* Click Browse and go to the /home/user/data/spatialite/ directory. Enter a name such as "Test.sqlite" and click Save.

Open an existing database with **spatialite-gui**
================================================================================

* Click the "Disconnecting current SQLite DB" button
* Click the "Connect existing SQLite DB" button
* Browse to the /home/user/data/spatialite directory and choose trento.sqlite
* Right click on the MunicpalHallsView table and select "Show Columns"
* Right Click on the PopulatedPlaces table and select "Edit table rows"
* In the upper SQL pane type:
   ``SELECT NOME, X(Geometry) AS Longitude, Y(Geometry) AS Latitude
   FROM "MunicipalHallsView"
   WHERE NOME_PROV LIKE "BRESCIA";``

   and click the "Execute SQL" button at the right


Running spatialite-gis
================================================================================

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
