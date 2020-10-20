:Author: Pieter De Graef
:Author: Eliot Guarini
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive12.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_geomajas@
@OSGEO_KIND_geomajas@
@VMDK_geomajas@




######################################
@NAME_geomajas@ Quickstart
###################################### 

Geomajas itself is an application framework allowing you to build very diverse and advanced web GIS solutions.

On this OSGeo Live DVD we have included a ready-to-use Geomajas Application. This application features a map, navigation controllers, several data layers, a ribbon toolbar with GIS tools and the Layer Tree.
    
.. image:: /images/projects/geomajas/geomajas_1024x768_screen1.png
    :scale: 50%
    :align: right
    :alt: An example application using the Geomajas framework

.. contents:: Contents
   :local:    

Start Geomajas
==============

From the Desktop, select :menuselection:`Browser Clients --> Start Geomajas`. Wait for Geomajas to open in a browser window.

Alternatively, you can then access the application using the following URL: `<http://localhost:8080/geomajas/>`_. 

.. image:: /images/projects/geomajas/geomajas_screenshot.png
  :width: 100%
  :alt: The default view of the provided Geomajas application

.. Tip:: When you’re finished using the application, select :menuselection:`Browser Clients --> Stop Geomajas`. 

Navigating the map
==================

.. image:: /images/projects/geomajas/geomajas_screenshot_zoom.png
    :alt: The provided control for zooming within the Geomajas application

You can drag the map with your mouse so that the desired area is centered on your screen.

To get a closer look, you can either use the mousewheel to zoom in or use the provided zoom-buttons in the upper left of the application. 

You can also select an area to display by clicking the magnifier icon and selecting the desired area (via rectangular select).

Understanding the legend
========================

.. image:: /images/projects/geomajas/geomajas_screenshot_legend.png
    :alt: Layers can be consulted and toggled from the legend in the Geomajas application

In the upper right, a toggleable legend box is provided. This legend gives you an overview of all the layers currently loaded into the application, with the option to turn them on or off. 
This also shows more detailed information about each layer regarding icons and colouring.

Gathering information
=====================

Geomajas applications have the ability to display a variety of information within the layers. 
Clicking on the map will display the related information if available. 
Click the info icon in the upper left to toggle between basic or more detailed information.

Things to try
=============

If you want to use this sample application to build and customize your own Web GIS solution, visit `<http://www.geomajas.org/client-gwt>`_. 
The download page always features the latest and greatest sample applications, documentation, tips and tricks to roll-your-own. 

What next?
==========

| To continue using the web demo, visit `<http://www.geomajas.org/demo>`_.
| To continue using the stand-alone application, visit `<http://files.geomajas.org/downloads/2.3.0/geomajas-standalone-gwt2.zip>`_.


Interested in learning more about Geomajas? The following links provide more information:

* **Geomajas:** `<http://www.geomajas.org/>`_
* **GitHub:** `<https://github.com/geomajas/geomajas-gwt2-quickstart-application>`_
* **OSGeo:** :doc:`../overview/geomajas_overview`
* **Wiki:** `<https://wiki.osgeo.org/wiki/Geomajas>`_
