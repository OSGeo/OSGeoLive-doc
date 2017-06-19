:Author: OSGeo-Live
:Author: Astrid Emde
:Version: osgeo-live8.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Thanks: mapbender-user list

.. image:: /images/project_logos/logo-Mapbender3.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
Mapbender3 Quickstart 
********************************************************************************

Mapbender is a web based geoportal framework to publish, register, view, navigate, monitor and grant secure access to spatial data infrastructure services. 

Management interfaces empower administrators who need to maintain and categorize map and feature services and grant access to individuals, groups and other services. 

Mapbender3 is the next version in the Mapbender series. It is rewritten from the ground up, using modern web technologies. The foundation is laid by Symfony 2, the brand-new version of the successful Symfony PHP web application framework.

On the client-side expect to find OpenLayers and jQuery (UI) nicely glued together by MapQuery.

With this new code base we will continue the Mapbender idea of being a Geoportal Framework:
  * Applications can be setup, configured and styled right from within the browser
  * Services like WMS can be managed inside a service repository and linked to applications
  * Rights management is easy to maintain, for individual users and groups, whether you store them inside the database or in an LDAP.
  * Search modules (SQL or Solr) can be configured
  * Applications for digitaliszation can be setup.
  * Mobile template can be used to provide applications for smartphones and tablets



You will need nothing but a standard web browser for this quickstart.

This Quick Start describes how to:

  * start Mapbender
  * create an application 
  * load a Web Map Service (OGC WMS)
  * configure WMS
  * create an individual application
  * create a user and a group and assign applications to them

This is how a Mapbender application can look like:

  .. image:: /images/screenshots/800x600/mapbender3_basic_application.png
     :scale: 80


Installation
================================================================================
For the installation of Mapbender3 have a look at http://doc.mapbender3.org/en/book/installation.html.


Start Mapbender
================================================================================

#. Choose  :menuselection:`Mapbender` from the start menu or visit http://localhost/mapbender3/app.php


#. The application will take a few moments to start up

If you have any difficulties running Mapbender, please check whether your Apache web server and your PostgreSQL database are running.


Start Mapbender in the developer mode app_dev.php
================================================================================
Symfony offers a developer mode with lot of information about your application (logging, exceptions, database queries, memory usage, time and more). This mode is only available from localhost.

  .. image:: /images/screenshots/800x600/mapbender3_app_dev.png
     :scale: 80

#. Start the developer mode: http://localhost/mapbender3/app_dev.php

#. Have a look at the information that is offered in the developer mode.

  .. image:: /images/screenshots/800x600/mapbender3_symfony_profiler.png
     :scale: 80


Welcome page
================================================================================

#. The Welcome page lists applications that are public and can be used by all users. The applications are listed with a screenshot, a title and a description.

#. You can open an application by click on the title, the screenshot or the start button.

#. Before you can administrate with Mapbender you have to login to get access to the administration.

#. Click on Login at right-top to open the login page.

#. You can login with the user that was generated on installation. It can be :guilabel:`root` and password :guilabel:`root` (This is the default user and password that you get after installation of Mapbender on OSGeo-Live. Please change the root password if you want to run a productive environment. Please don't delete the user :guilabel:`root`.).
  
  .. image:: /images/screenshots/800x600/mapbender3_welcome.png
     :scale: 80

After successful login you are directed to the :guilabel:`Mapbender administration`.



Application overview
================================================================================
After the login you are directed to the :guilabel:`Applications` with a list of applications you are allowed to access.

The Application overview provides the following functionality:

 * title and description
 * screenshot for the application (if provided)
 * link to the application
 * button to duplicate the application
 * button to edit the application
 * button to publish/unpublish the application
 * button to delete the application
 * button to create a new application
 * with the filter textfield you can search for applications


  .. image:: /images/screenshots/800x600/mapbender3_application_overview.png
     :scale: 80


Create an individual application
================================================================================

Create a new application by providing basic information about your application. After that you use the edit mode to add elements, layers and security.

#. choose :menuselection:`Applications --> New Application`

#. define a title and description for your application

#. define an URL title which will be used in the URL to open te application. It can be the same as the title

#. upload an image file as screenshot for the application overview

#. choose a template for your application

#. choose the button **Create** to create the application

#. click the :menuselection:`Edit-Button` at the new application to edit the application

#. your application is set up. Now you need a WMS to be displayed in your application. This will be described in the section **WMS Management**.

  .. image:: /images/screenshots/800x600/mapbender3_create_application.png
     :scale: 80

.. tip:: Please note, that the style-, icon- and layoutconfiguration has to be done in css- and twig-files at the moment. Read more about template generation at http://doc.mapbender3.org/en/book/templates.html


Copy or rename an application
================================================================================
You also can create a new application by copying an existing application. Every application with write access can be copied. It provides a button to duplicate the application with all the services. The new application will get a derived name which can be changed in the next step.


Delete an application
================================================================================
You can delete an application from the menu item :menuselection:`Applications` with the :menuselection:`+-button`.


Export / Import applications and sources
================================================================================

You can export applications as JSON or YAML with :menuselection:`Applications --> Export`. You can chose one or more applications to export and you can also export the sources which are published in the applications.

  .. image:: /images/screenshots/800x600/mapbender3_application_export.png
     :scale: 80

The exportfile contains all the definitions of the application/s (sources) and can be imported via :menuselection:`Applications --> Import` in another Mapbender3 installation or in the same installation. 

  .. image:: /images/screenshots/800x600/mapbender3_application_import.png
     :scale: 80


Management of Data Sources
================================================================================
Mapbender can handle different Services like OGC WMS or OGC WMTS or OGC WFS. Every Service has to be handled differently. The administration provides an administration interface for every source (at the moment only WMS).


Service Repository overview
================================================================================

#. Go to :guilabel:`Services` and have a look at the Service repository.

#. You get an overview on the Sources that are loaded in your Mapbender.

#. Type (f.e WMS, WMTS), Title, Description offer first information about the services.

#. On click on the button :menuselection:`View-Button` you get further information about the source.

#. With the button :menuselection:`Delete-Button` you can delete the source from your repository.


Loading Web Map Services
================================================================================
You can load OGC Web Map Services (WMS) to your application.

A WMS returns an XML-file when the getCapabilities document is requested. This information is parsed by Mapbender and Mapbender gets all the necessary information about the service from this XML

.. tip:: You should first check the Capabilities document in your browser before you try to load it with Mapbender

#. Choose menu item :menuselection:`Services --> Add Service` or use the +-Button. Link to the WMS getCapabilities URL in the text field :menuselection:`Serviceurl`. 

#. Enter username and password if your service needs authentication.

#. Hit **Load** to load the Service to the repository.

#. After successfull registration of the service Mapbender will display an overview on the information that was provided by the service.

  .. image:: /images/screenshots/800x600/mapbender3_wms_load.png
     :scale: 80


Here are some example WMS:

Germany workshop demo 

http://wms.wheregroup.com/cgi-bin/germany_workshop.xml?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS 

WhereGroup OSM WMS

http://osm-demo.wheregroup.com/service

Omniscale OSM WMS (see also http://osm.omniscale.de/)
http://osm.omniscale.net/proxy/service?



Add Service to Application
================================================================================
After the successfull upload of a WMS you want to add your WMS to an application.

#. Choose :menuselection:`Applications --> edit-Button --> Layers --> Edit-Button`. 

#. Click on the :menuselection:`+-button` to add a layerset, which represents a collection of layers (a possible name could be main)

#. Now you can add layer to the layerset

#. Click on the :menuselection:`+-button` at your new layerset to add a Service.

#. You can change the order of the Services in your application by drag & drop.
	
  .. image:: /images/screenshots/800x600/mapbender3_add_source_to_application.png
     :scale: 80

Configure your WMS
================================================================================
You can configure the WMS for your specific application. Maybe you don't want to provide all layers or you want to change the order or titles of the layer or disable the feature info or change the maxscale for a layer.

#. Choose :menuselection:`Applications --> edit-Button --> Layers --> edit-Button` to configure the Service Instance.

#. You will see a table with the layers of the Service. 

#. You can change the order of the layers via drag & drop

.. image:: /images/screenshots/800x600/mapbender3_wms_application_settings.png
  :scale: 80

Service configuration

* format - choose the format for getMap-Requests
* infoformat - choose the format for getFeatureInfo-Requests
* exceptionformat - choose the format for exceptions
* opacity - choose opacity in percent
* visible
* basesource
* proxy - if active the service will be requested by Mapbender and not directly
* transparency - Standard ist aktiviert, deaktiviert wird der Dienst ohne transparenten Hintergrund angefordert (getMap-Request mit TRANSPARENT=FALSE)
* tiled - you can request a WMS in tiles, default is not tiled (may be a good choice if you map is very big an the WMS service does not support the width/height)
* BBOX factor
* tile buffer

Layer configuration

* title - layer title from Service information
* active (on/off) - enable/disable a layer for this individual application
* select on - selectable in geodata explorer
* select allow - layer is active when the application starts
* info on - layer provides feature info requests, info default activates the feature info functionality
* info allow 
* minscale / maxscale - the scale range in which the layer should be displayed, 0 means no scale limitation
* toggle - open folder on start of the application
* reorder - allows to reorder the layers with drag & drop while using the application
* ... -> opens a dialog with more information
* name
* style - if a WMS provides more than one style you can choose a different style than the default style


Add Elements to your application
================================================================================
Mapbender offers a set of elements. You can add the elements to your application. You have different regions (Toolbar, Sidepane, Content, Footer) to which you can add elements.

  .. image:: /images/screenshots/800x600/mapbender3_application_add_element.png
     :scale: 80

#. Choose :menuselection:`Applications --> edit-Button --> Layers --> Button +` to get an overview over the elements Mapbender3 provides.

#. Choose an element from the list.

#. Notice that you have different areas in your application. Make sure to add the element to a region that makes sense.

#. Configure the element. Notice: When you select an element for example **map** you see that the element has a set of attributes. Each element offers individual attributes for configuration.

#. You can change the position of the element via drag & drop

#. Have a look at your application. Open your application from :menuselection:`Applications --> Applications Overview`

Now you should get an idea how easy it is to change a Mapbender application without changes in the code. 

  .. image:: /images/screenshots/800x600/mapbender3_application_elements.png
     :scale: 80

Examples for elements Mapbender3 offers:

* About Dialog
* Activity Indicator
* BaseSourceSwitcher
* Button
* Coordinates Display
* Copyright
* Feature Info
* GPS-Position
* HTML
* Legend
* Layertree - Table of Content
* Map
* Overview
* PrintClient
* Ruler Line/Area
* Scale Selector
* ScaleBar
* SimpleSearch
* Search Router
* SRS Selector
* Spatial Reference System Selector (SRS Selector)
* Navigation Toolbar (Zoombar)
* WMS Loader
* WMC Editor
* WMC Loader
* WMC List 

You find detailed information on every element at the `MapbenderCoreBundle element documentation <http://doc.mapbender3.org/en/bundles/Mapbender/CoreBundle/index.html>`_, `MapbenderWmcBundle element documentation <http://doc.mapbender3.org/en/bundles/Mapbender/WmcBundle/index.html>`_ and `MapbenderWmsBundle element documentation <http://doc.mapbender3.org/en/bundles/Mapbender/WmsBundle/index.html>`_.


Try it yourself
================================================================================

* add a Map Element to the content of your application
* add a Layertree to the content of your application
* add a button that opens the Layertree to the top of your application
* add the Navigation Toolbar to the content
* add a Copyright and change the copyright text
* add a SRS Selector to the footer


User and group management
================================================================================
An access to Mapbender requires authentication. Only public applications can be used by everyone. 

A user has permissions to access one or a set of applications and services.

.. NOT IMPLEMENTED YET
  There is no inherent difference between roles like :guilabel:`guest`, :guilabel:`operator` or :guilabel:`administrator`. The :guilabel:`role` of a user depends on the functionality and services the user has access through his applications.


Create a user
================================================================================

#. To create a user go to :guilabel:`New User` or click the :menuselection:`+-Button`.

#. Choose a name and a password for your user. 

#. Provide an email address for the user.

#. Save your new user.

#. You can provide more information about the user in the tab :menuselection:`Profile`.

.. image:: /images/screenshots/800x600/mapbender3_create_user.png
     :scale: 80 


Create a group
================================================================================
#. Create a group by :guilabel:`New Group`. 

#. Define a name and a description for your group.

#. Save your new group.


Assign users to group
================================================================================

#. Assign a user to a group by :guilabel:`Users --> Groups`. 

#. Choose one or more users you want to add to the group at :menuselection:`Users`.

#. Assign a user by :menuselection:`Users --> Edit-Button--> Groups` to a group. 

  .. image:: /images/screenshots/800x600/mapbender3_assign_user_to_group.png
     :scale: 80
 

Roles
================================================================================
Mapbender3 provides different rights. They refer to the Symfony ACL System http://symfony.com/doc/2.1/cookbook/security/acl_advanced.html#built-in-permission-map

* view - Whether someone is allowed to view the object.
* edit - Whether someone is allowed to make changes to the object.
* delete - Whether someone is allowed to delete the object.
* operator - Whether someone is allowed to perform all of the above actions.
* master - Whether someone is allowed to perform all of the above actions, and in addition is allowed to grant any of the above permissions to others.
* owner - Whether someone owns the object. An owner can perform any of the above actions and grant master and owner permissions.

#. Assign roles to a user by :menuselection:`Users --> Edit your User --> Security`.

  .. image:: /images/screenshots/800x600/mapbender3_roles.png
     :scale: 80 


Assign an Application to a User/Group
================================================================================
#. Edit your application by :menuselection:`Application --> Edit-Button`.

#. Choose :menuselection:`Security`

#. Set permission like view edit delete operator master owner 

#. Assign a user/group to the application

#. Test your configuration!

#. Logout from Mapbender by :menuselection:`Logout`.

#. Login as the new user

  .. image:: /images/screenshots/800x600/mapbender3_security.png
     :scale: 80


Things to try
================================================================================

Here are some additional challenges for you to try:

#. Try to load some WMS in your application. Try to configure your WMS.

#. Try to create an individual application.


What Next?
================================================================================

This is only the first step on the road to using Mapbender3. There is a lot more functionality you can try.

Mapbender Project home

  http://mapbender.org

Mapbender3 Webside

  http://mapbender3.org/

You find tutorials at

  http://doc.mapbender3.org

  http://api.mapbender3.org


Get to know Mapbender on 
	
	http://projects.mapbender.osgeo.org

Get involved in the project

	http://www.mapbender.org/Community
