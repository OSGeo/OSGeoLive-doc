:Author: Sergio Baños Calvo
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-Kosmo.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.opengis.es/index.php?lang=en

********************************************************************************
Kosmo Desktop Quick Start 
********************************************************************************

Kosmo - Desktop is a user friendly, desktop GIS application which allows you to explore, edit 
and analyse spatial data from a variety of databases, vector and raster formats.

This Quick Start describes how to:

* start the application    
* load layers from files, databases and OGC services
* navigate through the map
* apply your styling to the loaded layers



Start Kosmo Desktop
================================================================================

In order to start the application, follow the next steps:

#. From the start menu, select :menuselection:`Geospatial --> Desktop GIS --> Kosmo`

#. The application will take a few seconds to start (a splash screen is shown while loading)

   .. image:: ../../images/screenshots/800x600/kosmo_splash_screen.png
     :scale: 70 %

#. In the Welcome dialog, select the option :menuselection:`Create a new project --> With a new view` (**1**) and press the *Ok* button (**2**)

   .. image:: ../../images/screenshots/1024x768/kosmo_welcome_dialog.png

#. In the Spatial Reference System selection dialog, press the *...* button

   .. image:: ../../images/screenshots/800x600/kosmo_select_srs.png

#. Select the option *EPSG* in the SRS type combobox (**1**), insert the text `4326` in the text field and press the *Search* button (**2**)

#. Select the SRS EPSG:4326 - WSG4 (**3**) and press the *Ok* button (**4**)

   .. image:: ../../images/screenshots/800x600/kosmo_select_srs_epsg_4326.png

#. Press the *Ok* button again to select the SRS loaded. The view will start with EPSG:4326 as the base projection
    
  
.. tip::
  You can see which projection has been selected as base for a specific view in the view window title bar, right to the view name
  

Kosmo Desktop main window
================================================================================

The Kosmo Desktop main window has the following sections:

  .. image:: ../../images/screenshots/1024x768/kosmo_main_window.jpg
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

#. Choose the option *View > Load Dataset...* or push the button with the green plus from the main toolbar

#. In the *Format* combobox, select *Shapefile* (**1**)

#. In the file chooser, select the file :file:`10m_admin_0_countries.shp` from the directory :file:`/usr/local/share/data/natural_earth` (**2**)

#. Press the *Ok* button to load the selected shapefile (**3**)

   .. image:: ../../images/screenshots/800x600/kosmo_select_shape_file.png

#. In the layer tree, press the visibility checkbox to make the layer visible, right clicking on the *Working* folder if needed

#. Choose again the option *View > Load Dataset...* or push the button with the green plus from the main toolbar

#. In the *Format* combobox, select *Image file* (**1**)

#. In the file chooser, select the file :file:`HYP_50M_SR_W.tif` from the directory :file:`/usr/local/share/data/natural_earth/HYP_50M_SR_W` (**2**)

#. Press the *Ok* button to load the selected image file (**3**)

   .. image:: ../../images/screenshots/800x600/kosmo_select_raster_file.png

#. In the layer tree, press the visibility checkbox to make the layer visible

#. You can see that the layer drawing order is from bottom to top in the layer tree: modify the layer order by dragging them in order to show them properly

   .. image:: ../../images/screenshots/1024x768/kosmo_load_file_example.jpg

.. note::
  The OSGeo-Live DVD contains some file data examples in the following directories:
  
  * :file:`~/data` (a shortcut to :file:`/usr/local/share/data` or :file:`/home/user/data`)
  * :file:`/usr/local/share/openjump/data`
      
  You can try to load more examples from those directories. Remember to select the correct format from the *Format* combobox       

.. tip:: 
  It's possible to add all the images from a directory as an unique layer by selecting the parent directory in the *Load Dataset...* dialog: Kosmo Desktop will load them as a mosaic.


Databases
--------------------------------------------------------------------------------

We're going to load a database table as an example:

#. Choose the option *View > Load Dataset...* or push the button with the green plus from the main toolbar

#. In the *Format* combobox, select *Database* (**1**)

#. Fill the fields host, port, database name, user name and password with the values:

   * Host: localhost
     
   * Port: 5432
    
   * Database name: natural_earth
    
   * User name: user
    
   * Password: user        

#. Press the *Connect* button to load the tables present at the *natural_earth* database (**2**)

#. Select the checkbox corresponding to the table *10m_populated_places_simple* (**3**)

#. Press the *Ok* button to load the selected database table (**4**)

   .. image:: ../../images/screenshots/800x600/kosmo_database_connection.png
  
#. In the layer tree, press the visibility checkbox to make the layer visible

   .. image:: ../../images/screenshots/1024x768/kosmo_load_database_example.jpg
     :scale: 70 %


OGC services
--------------------------------------------------------------------------------

#. Start the :doc:`GeoServer <../overview/geoserver_overview>` WMS included in the OSGeo-Live DVD by selecting the option |osgeolive-appmenupath-geoserver| (or from the desktop, go into *Web Services* folder and double-click the Start GeoServer icon)

#. Press the *Load SDI Service* (IDE) button at the main toolbar to open the wizard

#. In the *Select SDI service type* panel, select the option *WMS Service* (**1**) and press the *Next* button (**2**)

   .. image:: ../../images/screenshots/800x600/kosmo_wms_1.png

#. In the *Select Uniform Resource Locator (URL)*, type the URL http://localhost:8082/geoserver/ows?VERSION=1.1.1 (**1**) in the corresponding text field and press the *Connect* button (**2**)

#. If the connection is successful, press the *Next* button to go to the next panel (**3**)

   .. image:: ../../images/screenshots/800x600/kosmo_wms_2.png

#. Select the layer `North America Sample Imagery` (**1**) and press the *>* button (**2**) to move it to the right list. Press *Next* button. (**3**)

   .. image:: ../../images/screenshots/800x600/kosmo_wms_3.png

#. Leave the default options loaded and press the *Finish* button (**1**) to start the layer loading

   .. image:: ../../images/screenshots/800x600/kosmo_wms_4.png

#. In the layer tree, press the visibility checkbox to make the layer visible

#. Select the layer in the layer tree and press the *Zoom To Layer* button to center the map in the WMS layer view

#. Reorder the layer tree by dragging the new layer and put it over the *HYP_50M_SR_W* raster layer

   .. image:: ../../images/screenshots/1024x768/kosmo_load_wms_results.jpg


.. note::
  Kosmo Desktop contains a list of WMS servers by default (most of them are from Spain). 
  If you're connected to internet, you can use them as described in the example with the local server.


Map navigation tools
================================================================================

You can control where in the world is the map using the navigation tools present at the main toolbar:

1. |ZOOM| Zoom In/Out

  .. |ZOOM| image:: ../../images/screenshots/800x600/kosmo_zoom.gif
  
  * It's the tool selected by default when you start your session
  * Use the mouse left button to zoom in a fixed ammount at the clicked map point
  * Use the mouse right button to zoom out a fixed amount at the clicked map point
  * Press the mouse left button, move the mouse, draw a rectangle and release the button if you want to zoom to that rectangle
  
2. |PAN| Pan
  
  .. |PAN| image:: ../../images/screenshots/800x600/kosmo_pan.gif

  * Allows to move around the world without changing the scale
  * Press the mouse left button, move the mouse and release it in order to move the map to the desired location
      
3. |ZOOM_PREV| Zoom Previous

  .. |ZOOM_PREV| image:: ../../images/screenshots/800x600/kosmo_zoom_prev.gif
  
  * Allows to zoom to the previous viewing envelope from the zoom history (if available)
  
4. |ZOOM_NEXT| Zoom Next

  .. |ZOOM_NEXT| image:: ../../images/screenshots/800x600/kosmo_zoom_next.gif
  
  * Allows to zoom to the next viewing envelope from the zoom history (if available)
    
5. |ZOOM_FULL_EXTENT| Zoom To Full Extent

  .. |ZOOM_FULL_EXTENT| image:: ../../images/screenshots/800x600/kosmo_zoom_to_full_extent.gif
  
  * Allows to change the current map envelope to include all the visible layers
  
6. |ZOOM_TO_LAYER| Zoom To Layer

  .. |ZOOM_TO_LAYER| image:: ../../images/screenshots/800x600/kosmo_zoom_to_layer.gif
  
  * Allows to change the current map envelope to adjust to the selected layer
    
7. |ZOOM_TO_SELECTED_ITEMS| Zoom To Selected Items

  .. |ZOOM_TO_SELECTED_ITEMS| image:: ../../images/screenshots/800x600/kosmo_zoom_to_selected_items.gif
  
  * Allows to change the current map envelope to adjust to the selected features
    
8. |PAN_TO_CLICK| Pan To Click

  .. |PAN_TO_CLICK| image:: ../../images/screenshots/800x600/kosmo_pan_to_click.gif
  
  * Centers the map in the clicked map point, without changing the current scale
  
9. |COORDINATE_LOCALIZATION| Coordinate Localization

  .. |COORDINATE_LOCALIZATION| image:: ../../images/screenshots/800x600/kosmo_coordinate_localization.gif
  
  * Centers the map in the given X - Y coordinates

Apart from those tools, it's also available the possibility to zoom in/out by using the mouse wheel.

.. note::
  If any tool/menu option is disabled, you can place the cursor over the button/option to see a tooltip where the reason is shown 



Styling
================================================================================

In this section we're going to style a layer by range using the country population as styling attribute:

#. Select the layer `10m_admin_0_countries` in the layer tree

#. Right click on it and select the option *Simbology > Change Styles...*

#. Click on the tab `Colour theming`

#. Activate the options *Enable colour theming* and *by range* (**1**)

#. Select `POP_EST` as *Attribute* (**2**), 8 as *Range count* (**3**) and RYG (Color Brewer) as *Color schema* (**4**)

#. Press the *Ok* button to apply the changes (**5**)

   .. image:: ../../images/screenshots/800x600/kosmo_basic_style_classification.png

#. The layer will change its style to reflect the changes:

   .. image:: ../../images/screenshots/1024x768/kosmo_styled_layer_by_range.jpg
     :scale: 70 %


Things to Try
================================================================================

* Use the advanced style editor (`Symbology > Advanced style editor...`) to create more complex styles

* Use the `Query wizard` to select those features that accomplish a given criteria

* Activate the layer editing mode and use the available tools to edit it

* Generate a set of topology rules for a layer and try to edit it

* Activate the set of extensions that form part of the application and see the new tools that are present


What Next?
================================================================================

There is a set of manuals and video-tutorials available at http://www.opengis.es/index.php?lang=en
