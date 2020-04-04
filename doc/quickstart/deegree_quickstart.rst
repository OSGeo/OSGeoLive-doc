:Author: Johannes Wilden
:Author: Danilo Bretschneider
:Author: Torsten Friebe
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive13.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_deegree@
@OSGEO_KIND_deegree@

********************************************************************************
@NAME_deegree@ Quickstart
********************************************************************************

*deegree* is open source software for spatial data infrastructures and the
geospatial web. *deegree* is a Java application for serving maps (and vector data) for other clients to show.

Available components are:
 
  * Web-Services: WFS, WMS, WMTS, CSW, WPS
  
*deegree 3* is the new generation of the deegree Java framework for GIS
applications and OGC-service implementations.
It can be used to build web-based geospatial-data-infrastructures (GDI).

.. contents:: Contents
   :local:

Start deegree 3 webservices
===========================

Choose *'Start deegree'* from the :menuselection:`Geospatial --> Web Services --> deegree` menu.
The application will take a few moments to start up.

Firefox opens the *deegree 3 services console*. (You can also open this manually by pointing your browser to http://localhost:8033). 
This is a simple web-based GUI for editing the configuration files of the *deegree workspace*.

Load a workspace
================

*deegree 3* uses configurations conformant to all *deegree 3* based webservices. Those configurations are stored in the workspace.

#. To manage the included and ready-to-use workspaces, click *'workspaces'* on the left side. You are now in the workspace management of the running *deegree* instance. 
   You can see which workspace is currently active (only one can be active at a time) workspace, inactive locally available workspaces and offical workspaces which can be imported if you have a internet connection. 
#. Press start on the *deegree-inspire-workspace*.

This workspace includes an example configuration for INSPIRE View- and Download-Services.
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


View a map
==========

#. Click on *'see layers'* to open a simple map-client. The service is configured to visualize the data and a basemap (rendered by `OpenStreetMap <https://www.openstreetmap.org/>`_).

#. Click on the **+** on the right side to open a layer tree showing all available  layers. You can activate the INSPIRE layer served by the deegree WMS here.

.. tip::
   The map client is based on `OpenLayers <https://openlayers.org/>`_. 
   You can pan through the map holding the left mouse button and drag the map.
   Zooming is possible via mouse wheel or the navigation elements on the left side.

More information and step-by-step tutorials about the INSPIRE workspace can be 
found in the deegree `documentation <https://download.deegree.org/documentation/3.4.1/html/lightly.html#example-workspace-1-inspire-network-services>`__.


What next?
==========

This was just a short introduction to the features of deegree 3. 
There is more information in the demo installations and on the deegree website.

  * deegree online demo - Available here: https://www.deegree.org/demo/

  * deegree website - Available here: https://www.deegree.org
