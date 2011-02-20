:Author: OSGeo Live
:Author: Pirmin Kalberer
:Version: osgeo-live4.5
:License: Creative Commons

.. _qgis_mapserver-quickstart:
 
.. image:: ../../images/project_logos/logo-qgis_mapserver.png
  :scale: 100 %
  :alt: project logo
  :align: right

*************************
QGIS mapserver Quickstart 
*************************

QGIS mapserver provides a web map service (WMS) based on libraries from the Quantum GIS (QGIS) desktop application.

This Quick Start describes how to:

  * update an existing QGIS project and render it with QGIS mapserver
  * create a new QGIS project and open the WMS directly in a browser

Start GeoExt viewer
===================

OSGeo Live contains an example of web map viewer based on the GeoExt Javascript framework and using QGIS mapserver for rendering the map.

* Click :menuselection:`Desktop --> Spatial Tools --> QGIS Mapserver`

You should see a browser window with a web map viewer showing a world map.
   
.. image:: ../../images/screenshots/800x600/qgis_mapserver_browser.jpg

We will now change the map styling using QGIS.


Edit QGIS project
=================

#. Click :menuselection:`Desktop --> Desktop GIS --> Quantum GIS`.

#. Choose :menuselection:`File --> Open Project...` from the menu bar.

#. Select :file:`QGIS-NaturalEarth-Example.qgs` and press :guilabel:`Open`.

   * You should see the same world map rendered by QGIS.
     We will now change river styling and look at the result in the web map viewer. 

#. Double click **10m_rivers_lake_centerlines** in the Layers tree.

#. Change the color in Outline Options to a different blue tone.

#. Press :guilabel:`OK`.

   * Rivers are now rendered in a new color.

#. Save the project with :menuselection:`File --> Save Project`.

#. Reopen the web browser

#. Zoom in

   * You should now see rivers rendered in the same new color.


Create a new QGIS project
=========================

#. Reopen QGIS

#. Choose :menuselection:`File --> New Project`.

#. Click :menuselection:`Layer --> Add Vector Layer...`.

#. Browse to dataset :file:`/home/user/data/natural_earth/10m_admin_0_countries.shp`.

#. Press :guilabel:`Open`.

   * You should see all world countries.

#. Save the project with :menuselection:`File --> Save Project`.

#. Use file name :file:`/home/user/world.qgs` and press :guilabel:`Save`.

#. Open the `WMS URL <http://localhost/cgi-bin/qgis_mapserv?map=/home/user/world.qgs&SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&BBOX=-91.901820,-180.000000,83.633800,180.000000&CRS=EPSG:4326&WIDTH=722&HEIGHT=352&LAYERS=10m_admin_0_countries&STYLES=default&FORMAT=image/png&DPI=96&TRANSPARENT=true>`_.

   * You should see all world countries, this time rendered by QGIS mapserver.


What Next?
==========

To learn more about QGIS mapserver, you can follow the blog articles of `Linfiniti <http://linfiniti.com/2010/08/qgis-mapserver-a-wms-server-for-the-masses/>`_ or `3LIZ <http://www.3liz.com/blog/rldhont/index.php/2010/12/03/355-qgis-mapserver-an-wysiwyg-open-source-wms-server>`_.
