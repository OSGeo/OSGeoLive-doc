:Author: Johannes Wilden
:Author: Danilo Bretschneider
:Author: Torsten Friebe
:Version: osgeolive11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_deegree@
@OSGEO_KIND_deegree@

********************************************************************************
@NAME_deegree@ Quickstart
********************************************************************************

deegree is a Java application for serving maps (and vector data) for other clients to show.

This Quick Start describes how to:

  * start deegree webservices
  * configure deegree webservices via the deegree services console
  * use the *deegree-inspire-workspace* as a starting point

.. contents:: Contents


Project description
================================================================================

*deegree* is open source software for spatial data infrastructures and the
geospatial web.

Available components are:
 
  * Web-Services: WFS, WMS, WMTS, CSW, WPS

This quickstart describes how to:

   * Start *deegree 3 webservices* on the Live DVD
   * Use the *deegree 3 services console* to activate example configurations
   * Find more information


About deegree 3
================================================================================

*deegree 3* is the new generation of the deegree Java framework for GIS
applications and OGC-service implementations.
It can be used to build web-based geospatial-data-infrastructures (GDI).


Start deegree 3 webservices
================================================================================

Choose *'Start deegree'* from
the :menuselection:`Geospatial --> Web Services --> deegree` menu.
The application will take a few moments to start up.


deegree 3 services console
================================================================================

When you start *deegree* for the first time, firefox should open (otherwise open
it manually and point your browser to http://localhost:8033). Please wait until 
you can see the *deegree 3 services console*.
This is a simple web-based GUI for editing the configuration files of the 
so-called *deegree workspace*.


deegree 3 workspaces
================================================================================

*deegree 3* uses configurations conformant to all *deegree 3* based webservices.
Those configurations are stored in the so called workspace.

Inside the *deegree services console* you find a section to manage the included
and ready-to-use workspaces.
To enter this section, click on *'workspaces'* on the left side.

You are now in the workspace management of the running *deegree* instance.
You can see which workspace is currently active (only one can be active at a 
time) workspace, inactive locally available workspaces and offical workspaces 
which can be imported if you have a internet connection.

Please start the *deegree-inspire-workspace* now.


deegree 3 workspaces on OSGeoLive GIS Disc
================================================================================

  * *deegree-workspace-inspire*

This workspace includes an example configuration for INSPIRE View- and 
Download-Services.
It consists of a transactional WFS (2.0.0 and 1.1.0) for all Annex I Data Themes
and a WMS (1.3.0 and 1.1.1) which serves three layers of those Annex I Data 
Themes.
Included are some harmonized dutch administrative units, cadastral parcels and 
addresses.
The WFS in this example acts as an INSPIRE Download service (direct access) and 
outputs valid, harmonized INSPIRE GML.
Additionally it supports multiple request types and queries.

.. tip::
   This workspace loads harmonized INSPIRE GML from local files.
   This can easily changed to PostGIS, Oracle Spatial or Microsoft SQL Server as 
   backend.

After activating the *deegree-workspace-inspire* you can open a simple
map-client by clicking on *'see layers'*.
The service is configured to visualize the data and a basemap (rendered by 
`OpenStreetMap <http://openstreetmap.org/>`_).

A click on the **+** on the right side opens a layer tree showing all available 
layers. You can activate the INSPIRE layer served by the deegree WMS here.

.. tip::
   The map client is based on `OpenLayers <http://openlayers.org/>`_. 
   You can pan through the map holding the left mouse button and drag the map.
   Zooming is possible via mouse wheel or the navigation elements on the left side.

More information and step-by-step tutorials about the INSPIRE workspace can be 
found in the deegree `documentation <http://download.deegree.org/documentation/3.4.1/html/lightly.html#example-workspace-1-inspire-network-services>`_.


Want more?
================================================================================

This was just a short intro on the features of deegree 3. 
There is more information in the demo installations and on the deegree website.

  * deegree online demo

    Available here: http://demo.deegree.org

  * deegree website

    Available here: http://www.deegree.org
