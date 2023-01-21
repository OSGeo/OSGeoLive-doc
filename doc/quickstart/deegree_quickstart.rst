:Author: Johannes Wilden
:Author: Danilo Bretschneider
:Author: Torsten Friebe
:Author: Julian Zilz
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive15.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_deegree@
@OSGEO_KIND_deegree@
@VMDK_deegree@



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

Choose |menu_deegree-Start|.
The application will take a few moments to start up.

Firefox opens the *deegree 3 services console*. (You can also open this manually by pointing your browser to http://localhost:8033).
This is a simple web-based GUI for editing the configuration files of the *deegree workspace*.

Load a workspace
================

*deegree 3* uses configurations conformant to all *deegree 3* based webservices. Those configurations are stored in the workspace.

#. To manage the included and ready-to-use workspaces, click *'workspaces'* on the left side. You are now in the workspace management of the running *deegree* instance.
   You can see which workspace is currently active (only one can be active at a time) workspace, inactive locally available workspaces and offical workspaces which can be imported if you have a internet connection.
#. Press start on the *deegree-workspace-utah-light*.

The demo workspace contains a web mapping setup based on data from the state of Utah.
It contains a WMS configuration (1.3.0 and 1.1.1) consisting of vector layers and a variety of render styles.
Additionally, a WFS (2.0.0, 1.1.0 and 1.0.0) is configured that allows to access the raw vector data, backed by shapefiles, in GML format.

.. tip::
   For additional configuration examples including raster data,
   you can import the workspace *deegree-workspace-utah* through the workspace management (internet connection is required).

View a map
==========

#. Click on *'see layers'* to open a simple map-client. The service is configured to visualize the data and a basemap (rendered by `OpenStreetMap <https://www.openstreetmap.org/>`_).

#. Click on the **+** on the right side to open a layer tree showing all available  layers. You can activate the a variety of layers served by the deegree WMS here.

.. tip::
   The map client is based on `OpenLayers <https://openlayers.org/>`_.
   You can pan through the map holding the left mouse button and drag the map.
   Zooming is possible via mouse wheel or the navigation elements on the left side.

What next?
==========

This was just a short introduction to the features of deegree 3.
There is more information in the demo installations and on the deegree website.

  * deegree website - Available here: https://www.deegree.org

  * deegree documentation - Available here: https://www.deegree.org/documentation/

  * deegree docker images - Available here: https://hub.docker.com/r/deegree/deegree3-docker/
