.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  This Quick Start should describe how to run a simple example, which
    covers one of the application's primary functions.
  The Quick Start should be able to be executed in around 5 minutes.
  The Quick Start may optionally include a few more sections
    which describes how to run extra functions.
  This document should describe every detailed step to get the application
    to work, including every screen shot involved in the sequence.
  Finish off with "Things to Try" and "What Next?" sections.
  Assume the user has very little domain expertise, so spell everything out.
  If using example data, please use the general layers from naturalearth
   and Open Street Map. These layers are loaded by install_gisdata.sh into:
   Open Street Map:
     /home/user/data/osm/
   Vector Data: Available as .shp files
     /home/user/data/natural_earth/
       cultural/10m-populated-places-simple
       cultural/10m-admin-0-countries
       cultural/10m-populated-places-simple
       cultural/10m-urban-area
       physical/10m-land
       physical/10m-ocean
       physical/10m-lakes
       physical/10m-rivers-lake-centerlines
   Raster Raster basemap Cross Blended Hypso with Shaded Relief and Water
     1:50 million (40mb). Available as .tif
     /home/user/data/natural_earth/HYP_50M_SR_W/

.. Writing Tip:
  Metadata about this document

:Author: OSGeo Live
:Author: Astrid Emde
:Author: Christoph Baudson
:Author: Arnulf Christl
:Version: osgeo-live4.0
:License: Creative Commons
:Thanks: mapbender-user list

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _mapbender-quickstart:
 
.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    images/project_logos/logos-<application>.png

.. image:: images/project_logos/logo-Mapbender.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************
Mapbender Quickstart 
********************

.. Writing Tip:
  First sentence defines what the application does.
  You may also need to include a sentence of two describing the domain.
  Eg: For a Business Intelligence applicaiton, you should describe what
  Business Intelligence is.

.. Writing Tip:
  Descriibe what will be covered in this Quick Start.


.. note::
   NOTE this quickstart is not finished yet - it is still in progress and we will work on it tomorrow


Mapbender is a WebGIS Client for editing and viewing GeoSpatial data. Mapbender is the tip of the iceberg, a meta layer of software providing access to the OSGeo SDI stack.

The end-user interfaces are highly focused, only showing the required functionality, making is easy to use. At the same time, it is possible to create full-fledged interfaces with security proxying, digitizing, auto snapping and more.

Management interfaces empower administrators who need to maintain and categorize map and feature services and grant access to individuals, groups and other services. Adherence to standardized services, such as OGC Web Map Services (WMS) and transactional OGC Web Feature Services (WFS), allows them to take advantage of interoperable services from various server platforms.

The Mapbender client side is based on HTML, JavaScript (jQuery and jQuery UI), the server side relies on PHP and PostgreSQL/PostGIS. 


This Quick Start describes how to:
  * load a Web Map Service (WMS)
  * create an application 
  * change WMS settings
  * create an indicidual application
  * create a user and a group and assign applications to them
  * use WFS and Mapbender digitize application

Start Mapbender
===============

.. Writing Tip:
  Describe steps to start the application
  This should include a graphic of the pull-down list, with a red circle
  around the applicaiton menu option.
  #. A hash numbers instructions. There should be only one instruction per
     hash.

.. TBD: Add menu graphic to this uDig Quickstart

#. Choose Mapbender  > Mapbender from the start menu
#. The application will take a few moments to start up

.. Writing Tip:
  For images, use a scale of 50% from a 1024x768 display (prefered) or
  70% from a 800x600 display.
  Images should be stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/screenshots/1024x768/
  and accessed here:
    images/screenshots/1024x768/<application>_<screen_description>.png

  .. image:: images/screenshots/800x600/udig_Quickstart1Splash.png
     :scale: 80

If you have any difficulties running Mapbender, please cgheck wheter your APache WebServer is running and your PostgreSQL database too.

Welcome View
============

#. When you start Mapbender you first have to log in to get access to your applications.

#. The welcome page provides links to the most imprtant pages related to Mapbender. 

#. Login Mapbender with user root password root (This is the user and password that you have after the installation of Mapbender. Please change the root password if you want to run a productive environment. Please do not delete the user root as this user has access to the template applications and is used on updates).
  
  .. image:: images/screenshots/800x600/mapbender_welcome.png
     :scale: 80

You can .....

You get back to the list of the application .....


Application overview
====================
After the login you are directed to the application overview with a list of applications you are allowed to access.
In Mapbender you have template applications, that you can use to build up your own applications.

  .. image:: images/screenshots/800x600/mapbender_application_overview.png
     :scale: 80

There are
   * administrative applications
   * map applications
   * container applications

The applications are listed in categories. Later you can define your own categories and add your applications to the category you want.


Administrative applications
===========================

The....

  .. image:: images/screenshots/800x600/mapbender_admin2_en.png
     :scale: 80

Map Applications
================
Map application contain WMS and provide ...

#. Choose :a map application:`by klick` from the **overview page**
   
   * for example gui1, gui
     
  .. image:: images/screenshots/800x600/mapbender_gui_digitize.png
     :scale: 80

.. Writing Tip:
  Notes are ...

.. note::
   Mapbender note  

.. Writing Tip:
  Mapbender Tip

.. tip:: You can also drag and drop shapefiles directly into the uDig application!

WMS Container Applications
==========================
You can create a container application ....

#. The |ZOOM| ....
   
   .. |ZOOM| image:: images/screenshots/800x600/mapbender_container.png
     :scale: 80
   
   * Use the zoom tool by drawing a box using the left mouse button around the area of the wold you wish
     to see.

.. tip:: Most tools allow you to Pan by holding the center button and control the scale using the
   scroll wheel.

Loading Web Map Services
========================
You can load OGC Web Map Services (WMS) to your application. 

#. Here are some example WMS you can user to load to your appliction

   * wms1
   * wms2
   * wms3
   
.. image:: images/screenshots/800x600/mapbender_wms_application_settings.png
  :scale: 80

Create an individual Applications
=================================

#. go to the administation application **admin2_en** 

#. choose **Create application**

#. define a name and description for your application

#. go to ** xxx ** and select the new application

#. add all elements

.. Writing Tip:
  You also can create a new application by copying an existing application. Go to copy/update application, choose the application you want to copy and define a name for the new application.

User and Groups Management
==========================
#. Create a user

.. image:: images/screenshots/800x600/mapbender_create_user.png
     :scale: 80

#. Create a group

#. assign a user to a group

#. assign an application to a user 

#. assign an application  to a group

#. login as the new user

#. what happens when the user has more than one appilcation


WFS Digitizing Applications with Mapbender
==========================================
#. WFS
   
   * Load a WFS
   
   * configure a wfs feature type
   
.. image:: images/screenshots/800x600/mapbender_gui_digitize.png
      :scale: 80

.. Writing tip
  The final heading should provide pointers to further tutorials,
  documentation or further things to try.
  Present a list of ideas for people to try out. Start off very specific
  with something most people

Things to Try
=============

Here are some additional challenges for you to try:

#. Try viewing your own GIS map layers, or try adding a layer from a Web Feature Service (WFS).
#. Try styling the WFS layer.

What Next?
==========

.. Writing tip
  Provide links to further tutorials and other documentation.

This is only the first step on the road to using Mapbender. There is a lot more funtionality you can try.

* Walkthrough 1

  Try out the use of WMC.

  :file:`/usr/data/mapbender.pdf`

* Walkthrough 2 - Learn how to handle your Metadata with Mapbender

  Available on http://www.mapbender.org


* Walkthrough 3 - get to know Mapbender 3.0

  Available on http://www.mapbender.org

