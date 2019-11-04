:Author: OSGeoLive
:Author: Astrid Emde
:Version: osgeolive13.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Thanks: mapbender-user list

@LOGO_mapbender@
@OSGEO_KIND_mapbender@



********************************************************************************
@NAME_mapbender@ Quickstart
********************************************************************************

Mapbender is a web based geoportal framework to publish, register, view, navigate, monitor and grant secure access to spatial data infrastructure services.

This Quick Start describes how to:

  * start Mapbender
  * create an application
  * load a Web Map Service (OGC WMS)
  * configure WMS
  * add elements to an application

This is how a Mapbender application can look like:

  .. image:: /images/projects/mapbender/mapbender_screenshot.png
     :scale: 70 %

.. contents:: Contents



Start Mapbender
================================================================================

#. Choose  :menuselection:`Geospatial --> Browser Clients --> Mapbender` from the start menu or visit http://localhost/mapbender/app.php. The application will take a few moments to start up

If you have any difficulties running Mapbender, please check whether your Apache web server and your PostgreSQL database are running. Or if you use SQLite as database whether you have write access to the file.


The Welcome page lists applications that are public and can be used by all users. The applications are listed with a screenshot, a title and a description.

You can open an application by click on the title, the screenshot or the start button.

#. Before you can administrate with Mapbender you have to login to get access to the administration.

#. Click on Login at right-top to open the login page. Login with username :guilabel:`root` and password :guilabel:`root` (This is the default user and password that you get after installation of Mapbender on OSGeoLive. Please change the root password if you want to run a productive environment. Please don't delete the user :guilabel:`root`.).

  .. image:: /images/projects/mapbender/mapbender3_application_overview.png
     :scale: 70 %


Create an individual application
================================================================================

Create a new application by providing basic information about your application. After that you use the edit mode to add elements, layers and security.

#. Choose :menuselection:`Applications --> New Application`

#. Define a title and description for your application

#. Define an URL title which will be used in the URL to open the application. It can be the same as the title

#. Upload an image file as screenshot for the application overview

#. Choose a template for your application

#. Choose the button **Create** to create the application

Your application is set up. Next you need a WMS to be displayed in your application. 

  .. image:: /images/projects/mapbender/mapbender3_create_application.png
     :scale: 70 %


Loading Web Map Services
================================================================================
You can load OGC Web Map Services (WMS) to your application.

A WMS returns an XML-file when the getCapabilities document is requested. This information is parsed by Mapbender and Mapbender gets all the necessary information about the service from this XML

.. tip:: You should first check the Capabilities document in your browser before you try to load it with Mapbender

#. Choose menu item :menuselection:`Services --> Add Service` or use the +-Button.

#. Link to the WMS getCapabilities URL in the text field :menuselection:`Serviceurl`. Here is a example WMS:
WhereGroup OSM WMS
https://osm-demo.wheregroup.com/service?SERVICE=WMS&VERSION=1.3.0&REQUEST=getCapabilities

#. Enter username and password if your service needs authentication.

#. Click **Load** to load the Service to the repository.

  .. image:: /images/projects/mapbender/mapbender3_wms_load.png
     :scale: 70 %

After successful registration of the service Mapbender will display an overview on the information that was provided by the service.

Add Service to Application
================================================================================
After the successful upload of a WMS you want to add your WMS to an application.

#. Choose :menuselection:`Applications --> edit-Button --> Layers --> Edit-Button`.

#. Click on the :menuselection:`+-button` to add a layerset, which represents a collection of layers (a possible name could be main)

#. Now you can add layer to the layerset

#. Click on the :menuselection:`+-button` at your new layerset to add a Service.

  .. image:: /images/projects/mapbender/mapbender3_add_source_to_application.png
     :scale: 70 %

Configure your WMS
================================================================================
You can configure the WMS for your specific application. Maybe you don't want to provide all layers or you want to change the order or titles of the layer or disable the feature info or change the maxscale for a layer.

#. Choose :menuselection:`Applications --> edit-Button --> Layers --> edit-Button` to configure the Service Instance.

#. You will see a table with the layers of the Service.

#. You can change the order of the layers via drag & drop.

.. image:: /images/projects/mapbender/mapbender3_wms_application_settings.png
  :scale: 70 %


Add Elements to your application
================================================================================
Mapbender offers a set of elements. You can add the elements to your application. You have different regions (Toolbar, Sidepane, Content, Footer) to which you can add elements.

  .. image:: /images/projects/mapbender/mapbender3_application_add_element.png
     :scale: 70 %

#. Choose :menuselection:`Applications --> edit-Button --> Layers --> Button +` to get an overview over the elements Mapbender3 provides.

#. Choose an element from the list.

#. Notice that you have different areas in your application. Make sure to add the element to a region that makes sense.

#. Configure the element. Notice: When you select an element for example **map** you see that the element has a set of attributes. Each element offers individual attributes for configuration.

#. You can change the position of the element via drag & drop.

#. Have a look at your application. Open your application from :menuselection:`Applications --> Applications Overview`

Now you should get an idea how easy it is to change a Mapbender application without changes in the code.

  .. image:: /images/projects/mapbender/mapbender3_application_elements.png
     :scale: 70 %

You find detailed information on every element in the `Mapbender element documentation <https://doc.mapbender.org/en/functions.html>`_.


Things to try
================================================================================

* add a Map Element to the content of your application
* add a Layertree to the sidepane of your application
* add a Legend to the sidepane of your application
* add a print element to the content
* add a button that opens the print to the top of your application
* add the Navigation Toolbar to the content
* add an overview map to the content
* add a Copyright and change the copyright text
* add a Scales Selector and an SRS Selector to the footer

Here are some additional challenges for you to try:

#. Try to load some WMS in your application. Try to configure your WMS.

#. Try to create an individual application.


What Next?
================================================================================

This is only the first step on the road to using Mapbender. There is a lot more functionality you can try.

* Mapbender Website https://mapbender.org/

* You find tutorials at https://doc.mapbender.org

* Get involved in the project https://www.mapbender.org/Community
