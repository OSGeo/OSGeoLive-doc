:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeo-live11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-qgis_mapserver.png
  :scale: 100 %
  :alt: project logo
  :align: right

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
QGIS Server Quickstart
********************************************************************************

QGIS Server provides a web map service (WMS) based on libraries from the QGIS desktop application.

This Quick Start describes how to:

  * update an existing QGIS project and render it with QGIS Server
  * create a new QGIS project and open the WMS directly in a browser

Documentation:
  * https://docs.qgis.org/2.14/en/docs/user_manual/working_with_ogc/ogc_server_support.html

Quick start for Server Installation on Debian/Ubuntu:

  * :command:`apt-get install qgis-mapserver libapache2-mod-fcgid`
  * -> http://localhost/cgi-bin/qgis_mapserv.fcgi

QGIS Web Client:
  * https://github.com/qgis/qgis-web-client

Start GeoExt viewer
================================================================================

OSGeo-Live contains an example of web map viewer based on the GeoExt Javascript framework and using QGIS Server for rendering the map.

* Click :menuselection:`Geospatial --> Web Services --> QGIS Server`

You should see a browser window with a web map viewer showing a world map.
   
.. image:: /images/projects/qgis/qgis_mapserver_browser.jpg

Alternatively, you can access the application using a browser through http://localhost/qgis_server

We will now change the map styling using QGIS.


Edit QGIS project
================================================================================

#. Click :menuselection:`Geospatial --> Desktop GIS --> QGIS`.

#. Choose :menuselection:`Project --> Open...` from the menu bar.

#. Select :file:`QGIS-NaturalEarth-Example.qgs` and press :guilabel:`Open`.

   * You should see the same world map rendered by QGIS.
     We will now change river styling and look at the result in the web map viewer. 

#. Double click :file:`ne_10m_rivers_lake_centerlines` in the Layers tree.

#. Change the color in Outline Options to a different blue tone.

#. Press :guilabel:`OK`.

   * Rivers are now rendered in a new color.

#. Save the project with :menuselection:`Project --> Save`.

#. Reopen the web browser

#. Zoom in

   * You should now see rivers rendered in the same new color.


Create a new QGIS project
================================================================================

#. Reopen QGIS

#. Choose :menuselection:`Project --> New`.

#. Click :menuselection:`Layer --> Add Vector Layer...`.

#. Browse to dataset :file:`/home/user/data/natural_earth2/ne_10m_admin_0_countries.shp`.

#. Press :guilabel:`Open`.

   * You should see all world countries.

#. Save the project with :menuselection:`Project --> Save`.

#. Use file name :file:`/home/user/world.qgs` and press :guilabel:`Save`.

#. Open the `WMS URL <http://localhost/cgi-bin/qgis_mapserv?map=/home/user/world.qgs&SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&BBOX=-91.901820,-180.000000,83.633800,180.000000&CRS=EPSG:4326&WIDTH=722&HEIGHT=352&LAYERS=ne_10m_admin_0_countries&STYLES=default&FORMAT=image/png&DPI=96&TRANSPARENT=true>`_.

   * You should see all world countries, this time rendered by QGIS Server.


What Next?
================================================================================

To learn more about QGIS Server, a good starting point is the `QGIS User Guide`_.


.. _`QGIS User Guide`: https://docs.qgis.org/2.14/en/docs/user_manual/working_with_ogc/ogc_server_support.html

