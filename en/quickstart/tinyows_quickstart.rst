:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeo-live11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://mapserver.org/trunk/tinyows/

********************************************************************************
TinyOWS Quickstart 
********************************************************************************

TinyOWS is a high performance, Transactional Web Feature Service (WFS-T)
which is light weight and easy to deploy, using a CGI or FastCGI interface
and using :doc:`PostGIS <../overview/postgis_overview>` for data storage.

This Quick Start describes how to:

  * display a WFS layer in QGIS
  * edit a WFS layer using WFS-T in QGIS


Display a WFS layer with QGIS
================================================================================

#. Click :menuselection:`Desktop --> Desktop GIS --> Quantum GIS`.

#. Click :menuselection:`Layer --> Add PostGIS Layer...`.

   * We display the original PostGIS layer first

#. Press :guilabel:`New`.

#. Fill in  **tinyows_demo** as Connection name and Database

#. Press :guilabel:`OK`.

#. Press :guilabel:`Connect`.

#. Select **france** in the table list

#. Press :guilabel:`Add`.

#. Zoom in

#. Click :menuselection:`Layer --> Add WFS Layer...`.

   * Now we add a WFS layer based on the same table

#. Press :guilabel:`New`.

#. Fill in  **tinyows** as name **http://localhost/cgi-bin/tinyows** as URL

#. Press :guilabel:`OK`.

#. Press :guilabel:`Connect`.

#. Select **ows:france** in the layer list

#. Check :guilabel:`Only request features overlapping the current view extent`.

#. Press :guilabel:`OK`.

   * WFS layer is now displayed:

.. image:: /images/screenshots/800x600/tinyows_wfs_layer.png
  :scale: 80 %

Edit data with WFS-T
================================================================================

#. Click :menuselection:`Layer --> Toggle Editing`.

#. Click :menuselection:`Edit --> Node Tool`.

#. Move a vertex (cross) to another position

#. Click :menuselection:`Layer --> Save edits`.

#. Hide layer unchecking **tows:france** in the layer list

   * You should see the edited way in an other color, coming directly from PostGIS.


What Next?
================================================================================

To learn more about TinyOWS, a starting point is the `TinyOWS Documentation`_ on the MapServer homepage.

.. _`TinyOWS Documentation`: http://mapserver.org/trunk/tinyows/




