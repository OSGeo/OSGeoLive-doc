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

#. When you start Mapbender you first have to login to get access to your applications.

#. The welcome page provides links to the most important pages related to Mapbender. 

#. You can login Mapbender with user root password root (This is the user and password that you have after the installation of Mapbender. Please change the root password if you want to run a productive environment. Please do not delete the user root as this user has access to the Mapbender template applications and is used on updates).
  
  .. image:: images/screenshots/800x600/mapbender_welcome.png
     :scale: 80

After successful login you are directed to the application overview.



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

The applications are listed in categories. Later you can define your own category and add your applications to the category you want.


Administrative applications
===========================

Administrative applications allow you f. e. to load Services, create user, to set up new applications. 

The possibities you have depend on the elements that are part of your administrative application.

After installation you have access to:
   * admin2_en - WMS, application, user/group handling
   * admin_en_services - focus on WFS and metadata handling and owsproxy    
   * admin1 - template with all administrative elements 

  .. image:: images/screenshots/800x600/mapbender_admin2_en.png
     :scale: 80

Map Applications
================
Map applications contain OGC WMS, one ore more map frames, buttons, treefolder, a legend elements, your logo and more. 

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

.. tip:: If your browser supports tabs you can open the applications in tabs and easily switch between them.

WMS Container Applications
==========================
You can create a container application to store your WMS. WMS Container are not for display - only to store a WMS like it is in the getCapabilities-Document 

#. The |ZOOM| ....
   
   .. |ZOOM| image:: images/screenshots/800x600/mapbender_container.png
     :scale: 80

Create an individual Application
=================================

#. go to the administation application **admin2_en** 

#. choose **Create new application**

#. define a name and description for your application and hit the button **new** to create the application

#. go to the link **Edit application elements** and select the new application

#. in the selectbox at the top choose an application that you would like to take as template and hit the button **add all elements**. This process will take all elements from the application you selected to your new application.

#. your application is now set up. Now you need a WMS to be displayed in your application. This will be described in the next section.

.. Writing Tip:
  You also can create a new application by copying an existing application. Go to **Rename/copy application**, choose the application you want to copy and define a name for the new application.

Loading Web Map Services
========================
You can load OGC Web Map Services (WMS) to your application. Go to admin2_en and choose **Load WMS**. Klick on the application to which you want to load the WMS. Link to WMS Capabilities URL in the text field and hit **Load**.

#. Here are some example WMS you can use to load to your appliction

   * http://www2.demis.nl/wms/wms.asp?wms=WorldMap&VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS (Demis World Map)
   * http://www.bsc-eoc.org/cgi-bin/bsc_ows.asp?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS (Bird Studies Canada)
   * http://wms1.ccgis.de/cgi-bin/mapserv?map=/data/umn/germany/germany.map&VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS (Germany demo map)
   * http://osm.wheregroup.com/cgi-bin/osm_basic.xml?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=1.1.1 (OSM WMS)
   
.. image:: images/screenshots/800x600/mapbender_wms_application_settings.png
  :scale: 80

User and Groups Management
==========================
An access to Mapbender always requires an authenticate as a registered user. This user account has permissions to access a set of interfaces applications and services (WMS, WFS).

There is no inherent difference between user type guest, operator or administrator. The **role** of a user depends on the authorization to access corresponding interfaces applications which implement administration or operator functionality.
 
#. To create a user go to **admin2_en** User management to **Create and edit user**

#. Choose a name and a password for your user. 

.. image:: images/screenshots/800x600/mapbender_create_user.png
     :scale: 80

#. Create a group by **Create and edit group**. Define a name and a description for your group.

#. Assign a user to a group by **Add one user to several groups** or by the link **Add several users to one group**

#. Assign an application to a user by **Allow one user to access to access several applications**

#. Assign an application to a group by **Allow one group to access to access several applications**

#. Logout Mapbender by the red cross button. Login as the new user

#. What happens when the user has more than one application?


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

