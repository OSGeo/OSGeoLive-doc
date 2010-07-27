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

Mapbender is a web based geoportal framework to publish, register, view, navigate, monitor and grant secure access to spatial data infrastructure services. 

Management interfaces empower administrators who need to maintain and categorize map and feature services and grant access to individuals, groups and other services. 

You will nee nothing but a standard web browser for this quickstart.

This Quick Start describes how to:
  * create an application 
  * load a Web Map Service (OGC WMS)
  * create a user and a group and assign applications to them

Start Mapbender
===============

.. Writing Tip:
  Describe steps to start the application
  This should include a graphic of the pull-down list, with a red circle
  around the applicaiton menu option.
  #. A hash numbers instructions. There should be only one instruction per
     hash.

.. TBD: Add menu graphic to this uDig Quickstart

#. Choose  :menuselection:`Mapbender` from the start menu
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

If you have any difficulties running Mapbender, please check whether your Apache WebServer and your PostgreSQL database are running.

Welcome View
============

#. Before you can work with Mapbender you have to login to get access to applications.

#. The welcome page provides links to the most important pages related to Mapbender. 

#. You can login with the user :guilabel:`root` password :guilabel:`root` (This is the default user and password that you get after installation of Mapbender. Please change the root password if you want to run a productive environment. Please don't delete the user :guilabel:`root` as this user has access to the Mapbender template applications and is used on updates).
  
  .. image:: images/screenshots/800x600/mapbender_welcome.png
     :scale: 80

After successful login you are directed to the :guilabel:`application overview`.



Application overview
====================
After the login you are directed to the :guilabel:`application overview` with a list of applications you are allowed to access.
In Mapbender you have template applications, that you can use to set up your own applications.

  .. image:: images/screenshots/800x600/mapbender_application_overview.png
     :scale: 80

There are
   * administrative applications
   * map applications
   * container applications

The applications are listed in :guilabel:`categories`. Later you can define your own category and add your applications to the category you want.


Administrative applications
===========================

:guilabel:`Administrative applications` allow you f. e. to load services, create user, to set up new applications. 

Each :guilabel:`administrative applications` provides different functionality. Later on your can set up your own :guilabel:`administrative applications` with the functionality you would like to provide.

After installation user :guilabel:`root` has access to:
   * admin2_en - WMS, application, user/group handling
   * admin_en_services - focus on WFS and metadata handling and owsproxy    
   * admin1 - template with all administrative elements 

  .. image:: images/screenshots/800x600/mapbender_admin2_en.png
     :scale: 80

.. tip:: You get back to the application overview whith the |HOME| button.

  .. |HOME| image:: images/screenshots/800x600/mapbender_home.png
     :scale: 100

Map Applications
================
Map applications contain OGC WMS, one ore more map frames, buttons, a treefolder, a legend element, your logo and more. 

#. Choose a map application :guilabel:`by click` from the :guilabel:`application overview`

#. Get to know Mapbender and try the funtionality the applications provide.
   
   * choose for example gui, gui_digitize
     
  .. image:: images/screenshots/800x600/mapbender_gui_digitize.png
     :scale: 80

.. tip:: If your browser supports tabs you can open the applications in tabs and easily switch between them.

WMS Container Applications
==========================
You can create a container application to store your WMS. WMS Container are not for display - only to store a WMS like it comes from the getCapabilities-Document. 

  .. image:: images/screenshots/800x600/mapbender_container.png
     :scale: 60

Create an individual Application
=================================

#. go to the administrative application :menuselection:`admin2_en` 

#. choose :menuselection:`Application Management --> Create new application`

#. define a name and description for your application and hit the button **new** to create the application

#. go to the link :menuselection:`Application Management --> Edit application elements` and select the new application

#. in the selectbox at the top choose an application that you would like to take as a template and hit the button **add all elements**. This process will take all elements from the application you selected to your new application.

#. you also can take a single element from another application to your new application. Choose the single element by activating the radiobutton at the element and hit the **save** Button to save this element in your new application.

#. your application is set up. Now you need a WMS to be displayed in your application. This will be described in the next section.


.. tip:: You also can create a new application by copying an existing application. Go to :menuselection:`Application Management --> Rename/copy application`, choose the application you want to copy and define a name for the new application.

Loading Web Map Services
========================
You can load OGC Web Map Services (WMS) to your application.

#. Go to :guilabel:`admin2_en` and choose :menuselection:`WMS Management --> Load WMS`. Choose the application to which you want to load the WMS. Link to the WMS Capabilities URL in the text field and hit **Load**.

#. Here are some example WMS you can use to load to your appliction

   * Demis World Map http://www2.demis.nl/wms/wms.asp?wms=WorldMap&VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS
   * Bird Studies Canada http://www.bsc-eoc.org/cgi-bin/bsc_ows.asp?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS
   * Germany demo http://wms1.ccgis.de/cgi-bin/mapserv?map=/data/umn/germany/germany.map&VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS 
   * WhereGroup OSM WMS http://osm.wheregroup.com/cgi-bin/osm_basic.xml?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=1.1.1
   
.. image:: images/screenshots/800x600/mapbender_wms_application_settings.png
  :scale: 80

User and Groups Management
==========================
An access to Mapbender always requires an authentication as a registered user. This user has permissions to access one or a set of applications and the services (WMS, WFS) which are assigned to these applications.

There is no inherent difference between a user type :guilabel:`guest`, :guilabel:`operator` or :guilabel:`administrator`. The :guilabel:`role` of a user depends on the functionality and services the user has access through his applications.


**Create a user**

#. To create a user go to :guilabel:`admin2_en` and select :menuselection:`User Management --> Create and edit user`

#. Choose a name and a password for your user. 

.. image:: images/screenshots/800x600/mapbender_create_user.png
     :scale: 80 


**Create a group**

#. Create a group by :menuselection:`User Management --> Create and edit group`. Define a name and a description for your group.


**Assign applicatins to user/group**

#. Assign a user to a group by :menuselection:`User Management --> Add one user to several groups` or by the link :menuselection:`User Management --> Add several users to one group`

#. Assign an application to a user by :menuselection:`User Management --> Allow one user to access to access several applications`

#. Assign an application to a group by :menuselection:`User Management --> Allow one group to access to access several applications`

.. tip:: If you want to provide write access you have to use :menuselection:`User Management --> Assign to edit an application to a user`.

#. Logout from Mapbender with the |LOGOUT| button.

#. Login as the new user

#. What happens when the user has access to one or more than one application ?

  .. |LOGOUT| image:: images/screenshots/800x600/mapbender_logout.png
     :scale: 100

Things to Try
=============

Here are some additional challenges for you to try:

#. Try to load some WMS in your application. Try to configure your WMS with :menuselection:`Configure WMS access --> WMS application settings`.
#. Try to create an individual application - change the background-color, move the buttons, change the size of the mapframe. :menuselection:`Application Management --> Edit application elements`.


What Next?
==========

.. Writing tip
  Provide links to further tutorials and other documentation.

This is only the first step on the road to using Mapbender. There is a lot more funtionality you can try.

* Mapbender Project home

  http://www.mapbender.org/

* You find tutorials at

  http://www.mapbender.org/Tutorials

* Try the tutorial in english language

  `Mapbender tutorial (english) <http://www.mapbender.org/Mapbender_Tutorial_en>`_

