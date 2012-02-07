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

   ``spatialite /home/user/data/spatialite/regions.sqlite``

* Helpful commands in the CLI interface::
   ``.help
   .tables
   .quit``   

* Some sample spatial queries::

   ``SELECT r.NOME_REG, a.Nome FROM Aeroporti a, reg2008_s r WHERE CONTAINS( r.Geometry, a.Geometry ) ORDER BY r.NOME_REG;
   .headers ON
   SELECT NOME_REG AS "Region Name", ST_Area(Geometry)/1000000.0 AS "Area(sq.km.)" FROM reg2008_s ORDER BY NOME_REG;
   SELECT Nome, X(Geometry) AS X, Y(Geometry) AS Y, FROM Aeroporti WHERE LocAerop LIKE "Bologna%";``
      

Create a new database with **spatialite-gui**
================================================================================

* From the Databases folder on the Desktop, Start **spatialite-gui**
* Select :menuselection:`File --> Creating a new SQLite DB`
* Click Browse and go to the /home/user/data/spatialite/ directory. Enter a name such as "Test.sqlite" and click Save.

Open an existing database with **spatialite-gui**
================================================================================

* Click the "Disconnecting current SQLite DB" button
* Click the "Connect existing SQLite DB" button
* Browse to the /home/user/data/spatialite directory and choose regions.sqlite
* Right click on the Aeroporti table and select "Show Columns"
* Right Click on the Aeroporti table and select "Edit table rows"
* In the upper SQL pane type:
   ``SELECT Nome, X(Geometry) AS Longitude, Y(Geometry) AS Latitude
   FROM "Aeroporti"
   WHERE LocAerop LIKE "Rom%";``

   and click the "Execute SQL" button at the right


Running spatialite-gis
================================================================================

* From the Desktop GIS folder on the Desktop run spatialite-gis
* Click the "Connecting existing SQLite DB" button and connect to /home/user/data/spatialite/regions.sqlite

You should see a set of Airports in Italy

   - Right click on the Aeroporti layer and select :menuselection:`Hide`
   - Right Click on the reg2008_s layer and select :menuselection:`Layer Configuration->Classify` and choose "-not selected-" for the column.
   - Change the border color by right click on reg2008_s and select :menuselection:`Layer configuration->Graphics` and select a different color.
   - Right click on the aeroporti layer and choose "Show". Now right click again and select :menuselection:`Layer Configuration->Classify`
   - Select the column PRO_COM and choose "Range of Values" and set Classes to '4'. Now click OK to view the results.

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
