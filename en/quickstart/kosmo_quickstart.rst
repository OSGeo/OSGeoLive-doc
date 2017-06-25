:Author: Sergio Baños Calvo
:Version: osgeo-live7.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-Kosmo.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.opengis.es/index.php?lang=en

********************************************************************************
Kosmo Desktop Quickstart
********************************************************************************

Kosmo - Desktop is a user friendly, desktop GIS application which allows you to explore, edit 
and analyse spatial data from a variety of databases, vector and raster formats.

This Quick Start describes how to:

* start the application    
* load layers from files, databases and OGC services
* navigate through the map
* apply your styling to the loaded layers
* load an extension

.. contents:: Contents

Start Kosmo Desktop
================================================================================

In order to start the application, follow the next steps:

#. From the start menu, select :menuselection:`Geospatial --> Desktop GIS --> Kosmo`

#. The application will take a few seconds to start (a splash screen is shown while loading)

   .. image:: /images/screenshots/800x600/kosmo_splash_screen.png
     :scale: 70 %

#. In the Welcome dialog, select the option :menuselection:`Create a new project --> With a new view` (**1**) and press the :guilabel:`Ok` button (**2**)

   .. image:: /images/screenshots/1024x768/kosmo_welcome_dialog.png
     :scale: 70 %

#. In the Spatial Reference System selection dialog, press the :guilabel:`...` button

   .. image:: /images/screenshots/800x600/kosmo_select_srs.png
     :scale: 70 %

#. Select the option *EPSG* in the SRS type combobox (**1**), insert the text `4326` in the text field and press the :guilabel:`Search` button (**2**)

#. Select the SRS EPSG:4326 - WSG4 (**3**) and press the :guilabel:`Ok` button (**4**)

   .. image:: /images/screenshots/800x600/kosmo_select_srs_epsg_4326.png
     :scale: 70 %

#. Press the :guilabel:`Ok` button again to select the SRS loaded. The view will start with EPSG:4326 as the base projection
    
  
.. tip::
  You can see which projection has been selected as base for a specific view in the view window title bar, right to the view name
  

Kosmo Desktop main window
================================================================================

The Kosmo Desktop main window has the following sections:

  .. image:: /images/screenshots/1024x768/kosmo_main_window.jpg
    :scale: 70 %

* Main menus

* Main toolbar

* Layer tree

  Tree that contains the categories and layers that have been loaded in the current view.

* Map  

* Status bar

  Shows the application warning messages to the user.
  
* Current cursor coordinates       



Loading layers
================================================================================

Files
--------------------------------------------------------------------------------

To start out, we're going to load some of the sample data included on the OSGeo-Live DVD:

#. Choose the option :menuselection:`View > Load Dataset...` or push the button with the green plus from the main toolbar

#. In the *Format* combobox, select *Shapefile* (**1**)

#. In the file chooser, select the file :file:`ne_10m_admin_0_countries.shp` from the directory :file:`/home/user/data/natural_earth2` (**2**)

#. Press the :guilabel:`Ok` button to load the selected shapefile (**3**)

   .. image:: /images/screenshots/800x600/kosmo_select_shape_file.png
     :scale: 70 %

#. In the layer tree, press the visibility checkbox to make the layer visible, right clicking on the *Working* folder if needed

#. Choose again the option :menuselection:`View > Load Dataset...` or push the button with the green plus from the main toolbar

#. In the *Format* combobox, select *Image file* (**1**)

#. In the file chooser, select the file :file:`HYP_50M_SR_W.tif` from the directory :file:`/home/user/data/natural_earth2/` (**2**)

#. Press the :guilabel:`Ok` button to load the selected image file (**3**)

   .. image:: /images/screenshots/800x600/kosmo_select_raster_file.png
    :scale: 70 %   

#. In the layer tree, press the visibility checkbox to make the layer visible

#. You can see that the layer drawing order is from bottom to top in the layer tree: modify the layer order by dragging them in order to show them properly

   .. image:: /images/screenshots/1024x768/kosmo_load_file_example.jpg
    :scale: 70 %   

.. note::
  The OSGeo-Live DVD contains some file data examples in the following directories:
  
  * :file:`/home/user/data` (shapefiles and raster files)
  * :file:`/usr/local/share/OpenJUMP/sample_data` (shapefiles)
      
  You can try to load more examples from those directories. Remember to select the correct format from the *Format* combobox       

.. tip:: 
  It's possible to add all the images from a directory as an unique layer by selecting the parent directory in the *Load Dataset...* dialog: Kosmo Desktop will load them as a mosaic.


Databases
--------------------------------------------------------------------------------

We're going to load a database table as an example:

#. Choose the option :menuselection:`View > Load Dataset...` or push the button with the green plus from the main toolbar

#. In the *Format* combobox, select *Database* (**1**)

#. Fill the fields host, port, database name, user name and password with the values:

   * Host: localhost
     
   * Port: 5432
    
   * Database name: natural_earth2
    
   * User name: user
    
   * Password: user        

#. Press the :guilabel:`Connect` button to load the tables present at the *natural_earth2* database (**2**)

#. Select the checkbox corresponding to the table *ne_10m_populated_places* (**3**)

#. Press the :guilabel:`Ok` button to load the selected database table (**4**)

   .. image:: /images/screenshots/800x600/kosmo_database_connection.png
     :scale: 70 %   
  
#. In the layer tree, press the visibility checkbox to make the layer visible

   .. image:: /images/screenshots/1024x768/kosmo_load_database_example.jpg
     :scale: 70 %


OGC services
--------------------------------------------------------------------------------

#. Start the :doc:`GeoServer <../overview/geoserver_overview>` WMS included in the OSGeo-Live DVD by selecting the option |osgeolive-appmenupath-geoserver| (or from the desktop, go into *Web Services* folder and double-click the Start GeoServer icon)

#. Press the :guilabel:`Load SDI Service (IDE)` button at the main toolbar to open the wizard

#. In the *Select SDI service type* panel, select the option *WMS Service* (**1**) and press the :guilabel:`Next` button (**2**)

   .. image:: /images/screenshots/800x600/kosmo_wms_1.png
     :scale: 70 %   

#. In the *Select Uniform Resource Locator (URL)*, type the URL http://localhost:8082/geoserver/ows? in the corresponding text field (**1**) and press the :guilabel:`Connect` button (**2**)

#. If the connection is successful, press the :guilabel:`Next` button to go to the next panel (**3**)

   .. image:: /images/screenshots/800x600/kosmo_wms_2.png
     :scale: 70 %   

#. Select the layer `North America Sample Imagery` (**1**) and press the :guilabel:`>` button (**2**) to move it to the right list. Press :guilabel:`Next` button. (**3**)

   .. image:: /images/screenshots/800x600/kosmo_wms_3.png
     :scale: 70 %   

#. Leave the default options loaded and press the :guilabel:`Finish` button (**1**) to start the layer loading

   .. image:: /images/screenshots/800x600/kosmo_wms_4.png
     :scale: 70 %   

#. In the layer tree, press the visibility checkbox to make the layer visible

#. Select the layer in the layer tree and press the :guilabel:`Zoom To Layer` button to center the map in the WMS layer view

#. Reorder the layer tree by dragging the new layer and put it over the *HYP_50M_SR_W* raster layer

   .. image:: /images/screenshots/1024x768/kosmo_load_wms_results.jpg
     :scale: 70 %   


.. note::
  Kosmo Desktop contains a set of lists of WMS servers by default, divided into locations (most of them are from Spain). 
  If you're connected to internet, you can use them as described in the example with the local server.



Map navigation tools
================================================================================

You can control where in the world is the map using the navigation tools present at the main toolbar:

1. |ZOOM| Zoom In/Out

  .. |ZOOM| image:: /images/screenshots/800x600/kosmo_zoom.png
  
  * It's the tool selected by default when you start your session
  * Use the mouse left button to zoom in a fixed ammount at the clicked map point
  * Use the mouse right button to zoom out a fixed amount at the clicked map point
  * Press the mouse left button, move the mouse, draw a rectangle and release the button if you want to zoom to that rectangle
  
#. |PAN| Pan
  
  .. |PAN| image:: /images/screenshots/800x600/kosmo_pan.png

  * Allows to move around the world without changing the scale
  * Press the mouse left button, move the mouse and release it in order to move the map to the desired location
      
#. |ZOOM_PREV| Zoom Previous

  .. |ZOOM_PREV| image:: /images/screenshots/800x600/kosmo_zoom_prev.png
  
  * Allows to zoom to the previous viewing envelope from the zoom history (if available)
  
#. |ZOOM_NEXT| Zoom Next

  .. |ZOOM_NEXT| image:: /images/screenshots/800x600/kosmo_zoom_next.png
  
  * Allows to zoom to the next viewing envelope from the zoom history (if available)
    
#. |ZOOM_FULL_EXTENT| Zoom To Full Extent

  .. |ZOOM_FULL_EXTENT| image:: /images/screenshots/800x600/kosmo_zoom_to_full_extent.png
  
  * Allows to change the current map envelope to include all the visible layers
  
#. |ZOOM_TO_LAYER| Zoom To Layer

  .. |ZOOM_TO_LAYER| image:: /images/screenshots/800x600/kosmo_zoom_to_layer.png
  
  * Allows to change the current map envelope to adjust to the selected layer
    
#. |ZOOM_TO_SELECTED_ITEMS| Zoom To Selected Items

  .. |ZOOM_TO_SELECTED_ITEMS| image:: /images/screenshots/800x600/kosmo_zoom_to_selected_items.png
  
  * Allows to change the current map envelope to adjust to the selected features
    
#. |PAN_TO_CLICK| Pan To Click

  .. |PAN_TO_CLICK| image:: /images/screenshots/800x600/kosmo_pan_to_click.png
  
  * Centers the map in the clicked map point, without changing the current scale
  
#. |COORDINATE_LOCALIZATION| Coordinate Localization

  .. |COORDINATE_LOCALIZATION| image:: /images/screenshots/800x600/kosmo_coordinate_localization.png
  
  * Centers the map in the given X - Y coordinates

Apart from those tools, it's also available the possibility to zoom in/out by using the mouse wheel.

.. note::
  If any tool/menu option is disabled, you can place the cursor over the button/option to see a tooltip where the reason is shown 



Basic Styling
================================================================================

In this section we're going to style a layer by range using the country population as styling attribute:

#. Select the layer `ne_10m_admin_0_countries` in the layer tree

#. Right click on it and select the option :menuselection:`Simbology > Change Styles...`

#. Click on the tab `Colour theming`

#. Activate the options *Enable colour theming* (**1**) and *by range* (**2**)

#. Select `pop_est` as *Attribute* (**3**), 11 as *Range count* (**4**) and RYG (Color Brewer) as *Color schema* (**5**)

#. Press the :guilabel:`Ok` button to apply the changes (**6**)

   .. image:: /images/screenshots/800x600/kosmo_basic_style_classification.png
     :scale: 70 %   

#. The layer will change its style to reflect the changes:

   .. image:: /images/screenshots/1024x768/kosmo_styled_layer_by_range.jpg
     :scale: 70 %
     
     

Advanced Styling
================================================================================

In this section we're going to style a layer with some rules and filters, based on an attribute. The example shows how to create two rules, one for capital populated places and other for the rest of them:

#. Select the layer `ne_10m_populated_places` in the layer tree

#. Right click on it and select the option :menuselection:`Simbology > Advanced Style Editor...`

#. Select the feature type style `ne_10m_populated_places` (**1**) and press the :guilabel:`+` button (**2**) to add a new rule to it 

   .. image:: /images/screenshots/800x600/kosmo_advanced_style_feature_type.png
     :scale: 70 %   
 
#. Select `Point symbolizer` as symbolizer type (**1**) and press the :guilabel:`Ok` button (**2**)

   .. image:: /images/screenshots/800x600/kosmo_advanced_style_symbolizer.png
     :scale: 70 %   

#. Select the new rule in the tree (**1**) and edit its properties: set **capital_rule** as `Name` (**2**), **Capitals** as `Title` (**3**),activate its filter (**4**) and edit it (**5**)

   .. image:: /images/screenshots/800x600/kosmo_advanced_style_capital_rule.png
     :scale: 70 %   

#. Select **featurecla** as `Field` (**1**), **Equal to (=)** as `Operator` (**2**) and press the :guilabel:`...` button (**3**) to select an attribute value

   .. image:: /images/screenshots/800x600/kosmo_advanced_style_filter.png
     :scale: 70 %

#. Select the **Admin-0 capital** value (**1**) and press the :guilabel:`Ok` button (**2**)

   .. image:: /images/screenshots/800x600/kosmo_advanced_style_attr_value.png
     :scale: 70 %   

#. Press the :guilabel:`Add` button (**1**) to add the condition to the filter and the :guilabel:`Ok` button (**2**) to set the filter to the rule

   .. image:: /images/screenshots/800x600/kosmo_advanced_style_filter_2.png
     :scale: 70 %   

#. Select the capital rule point symbolizer in the tree (**1**) and edit its properties: set its `Size` to **8** (**2**), its `Well Known Mark` type as **circle** (**3**) and `Color` to light green (**4**)

   .. image:: /images/screenshots/800x600/kosmo_advanced_style_capital_rule_symbolizer.png
     :scale: 70 %   

#. Select the other rule in the tree (**1**) and edit its properties: set **others_rule** as `Name` (**2**), **Others** as `Title` (**3**), mark the `Else filter` checkbox (**4**) and set its maximum scale to **25,000,000** (**5**) (it's necessary to press :guilabel:`ENTER` key after setting the value manually to set it)

   .. image:: /images/screenshots/800x600/kosmo_advanced_style_others_rule.png
     :scale: 70 %   

#. Press the :guilabel:`Ok` button to apply the changes

#. The layer will change its style to reflect the changes:

   .. image:: /images/screenshots/1024x768/kosmo_styled_layer_by_filter.jpg
     :scale: 70 %
          
#. If you make enough zoom in to reach the given scale, both rules would be rendered:

   .. image:: /images/screenshots/1024x768/kosmo_styled_layer_by_filter_2.jpg
     :scale: 70 %

.. note::
  When the map is at full layer scale only capitals are shown. If you zoom in close enough, all the populated places would be shown


Extensions
================================================================================

In this section we're going to activate the Sextante toolbox extension:

#. Choose the option :menuselection:`File > Extension Manager...` or push the button with the :guilabel:`Ext` label from the main toolbar

#. Mark the Sextante extension checkbox (**1**) and press the :guilabel:`Ok` button (**2**)

   .. image:: /images/screenshots/800x600/kosmo_extension_manager.png
     :scale: 70 %   

#. A new Sextante button will be available at the right of the main toolbar

   .. image:: /images/screenshots/800x600/kosmo_sextante_extension.png
     :scale: 70 %   

.. tip:: 
  If the `Mark as default` option is selected, the extension would be loaded automatically on next application startup



Things to Try
================================================================================

Here are some additional challenges for you to try:

#. Use the Advanced Style editor to create more complex styles

#. Use the `Query wizard` to select those features that accomplish a given criteria

#. Activate the layer editing mode and use the available tools to edit any of the vectorial layers

#. Generate a set of topology rules for a layer and try to edit it

#. Activate the rest of extensions that form part of the application and see the new tools that are present

#. Configure the application options through the menu option :menuselection:`File > Configuration...`



What Next?
================================================================================

There is a set of manuals and video-tutorials available at http://www.opengis.es/index.php?lang=en
