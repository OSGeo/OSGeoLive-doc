:Author: Simon Cropper
:Reviewer: Jorge Sanz
:Reviewer: Manuel Madrid
:Reviewer: Mario Carrera
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live7.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-gvSIG.png
   :scale: 50
   :align: right

********************************************************************************
gvSIG Quickstart
********************************************************************************

gvSIG is a Geographic Information System (GIS), that is, a desktop application
designed for capturing, storing, handling, analyzing and deploying any kind of
referenced geographic information in order to solve complex management and
planning problems. gvSIG is known for having a user-friendly interface, being
able to access the most common formats, both vector and raster ones. It
features a wide range of tools for working with geographic-like information
(query tools, layout creation, geoprocessing, networks, etc.), which turns
gvSIG into the ideal tool for users working in the land realm.

This quickstart describes how to...

* Add projection, raster and vector data to a view
* Navigate around
* Change layers
* Select features
* Create a map with a graticule
* Save the project and exit gvSIG
* Install an add-on (OpenStreetMap service)
* Load a WMTS layer

.. contents:: Contents

.. note:: If gvSIG user interface becomes unresponsive, try :kbd:`Alt+f` to open
          the file menu for example. User interface should work again, then. This
          bug only happens in the gvSIG distro for OSGeo-Live. It doesn't appear
          in a normal gvSIG installation.

.. note:: Note for version gvSIG 2.3.1: To load raster files the user must
          have write permission in the folder where the file is. Otherwise the
          application will ask for a valid folder (with write permission). Since
          the "user" user doesn't have write permission in the "data" folder, it
          will be necessary to select, when asked, a folder where the user does
          have write permission, like for example, "/home/user".

Start gvSIG and create a view
================================================================================

Select gvSIG from the application menu,
:menuselection:`Geospatial --> Desktop GIS --> gvSIG`. The application usually takes
about a minute to startup.

#. By default gvSIG opens with an empty project file with the 'View' document
   type selected. However, on OSGeo-Live, gvSIG has been configured to
   start with a default project. Click on the :guilabel:`New Project` button or go to
   :menuselection:`File --> New Project`. When prompted, you can select
   :guilabel:`Discard Changes` as we won't be using the last project.

#. Click on the :guilabel:`New` button to create a view. It will be opened automatically.

.. image:: /images/screenshots/1024x768/gvsig_qs_001_.png
   :scale: 55

Define the projection of your view
================================================================================

Open the view properties dialog
--------------------------------------------------------------------------------

#. Select :menuselection:`View --> Properties`.

.. image:: /images/screenshots/1024x768/gvsig_qs_002_.png
   :scale: 55

Defining your Coordinate Reference System
--------------------------------------------------------------------------------

#. Click on the :guilabel:`...` button following the :guilabel:`Current projection`.
   This will open the **New CRS** dialog.
#. Using the dropdown list for :guilabel:`Type`, select EPSG.
#. Enter the EPSG code for the Coordinate Reference System. For this example
   we are using EPSG=4326, which is the WGS84 2D Geographic Projection. Then
   click on the :guilabel:`Search` button. This will list the selected CRS in the table
   below the search input field.
#. Select :guilabel:`OK` to return to the **View Properties** dialog.

.. note:: The EPSG code is now 4326 and that the map units have changed to degrees.

#. Select :guilabel:`OK` to return to the **Project Manager**.

.. image:: /images/screenshots/1024x768/gvsig_qs_003_.png
   :scale: 55


Knowing the parts of a view
--------------------------------------------------------------------------------

#. The view window consists of three zones.
#. The top-left cell contains a list of vector or raster layers being used in
   the view (i.e. Table-of-Contents).
#. The bottom-left cell displays the extent of the main view over a selected
   vector file.
#. The right cell is the main display area where raster and vector data is
   rendered.

.. image:: /images/screenshots/1024x768/gvsig_qs_005_.png
   :scale: 55

The View - adding raster and vector data
================================================================================

Adding layers from files
--------------------------------------------------------------------------------

#. Click on the :guilabel:`Add layer` icon in the main toolbar to open the **Add layer** dialog.
#. Select :guilabel:`Add` in the **Add layer** dialog. By default the first tab is :guilabel:`File`
   so the **Open** file dialog will appear.
#. Drill down to the ``/usr/local/share/data/natural_earth2/`` directory.
#. Select the files as shown in the picture.

.. image:: /images/screenshots/1024x768/gvsig_qs_006_.png
   :scale: 55

.. note:: By default all formats are shown so we can select both vector and raster files at a time by keeping pressed the :kbd:`CTRL` key.

#. Click on the :guilabel:`OK` button to return to the **Add layer** dialog.
#. Click on the :guilabel:`OK` button on the **Add layer** dialog to return to the view.

The View - basic navigation
================================================================================

Preparing the view
--------------------------------------------------------------------------------

#. Click on the :guilabel:`Maximize` icon for a better viewing of the data.
#. The size of the Table-of-Contents column can be adjusted using the mouse to
   help see long file names.
#. In case the raster layer is on the top it should be moved manually to the bottom.

.. image:: /images/screenshots/1024x768/gvsig_qs_008_.png
   :scale: 55

Zoom into a region
--------------------------------------------------------------------------------

#. By default the *Zoom in* tool is selected on the main toolbar.
#. Use the mouse pointer to draw a bounding box around South-east Australia.
   Do this by selecting the top-left corner of the bounding box, holding
   down the left-mouse-button, and dragging the bottom-right corner of
   the bounding box over the selected area. Release the left-mouse button once
   you have the approximate area defined.

.. image:: /images/screenshots/1024x768/gvsig_qs_009_.png
   :scale: 55

The View - changing how layers look
================================================================================

Making a polygon transparent
--------------------------------------------------------------------------------

#. Select the ``ne_10m_admin_1_states_provinces.shp`` layer using the
   left-mouse-button and click again with the right-mouse-button.
#. Select the :menuselection:`Properties` submenu.
#. The **Layer properties** dialog box will appear.

.. image:: /images/screenshots/1024x768/gvsig_qs_010_.png
   :scale: 55

Changing the symbology of a vector layer
--------------------------------------------------------------------------------

#. Select the :guilabel:`Symbols` tab at the top of the **Layers properties** dialog.
#. Select :guilabel:`Choose symbol` button so the **Symbol selector** dialog appears.

Removing the fill symbol and changing the border color
---------------------------------------------------------------------------------

#. Uncheck the :guilabel:`Fill color` box so the polygons are transparent.
#. Click on the :guilabel:`...` close to :guilabel:`Border color:`.
#. Choose white as color.
#. Click on the :guilabel:`OK` button to return to the **Symbol selector** dialog.
#. Click on the :guilabel:`OK` button to return to the **Layers properties** dialog.

.. image:: /images/screenshots/1024x768/gvsig_qs_012_.png
   :scale: 55

Changing the labelling of a vector layer
--------------------------------------------------------------------------------

#. Select the :guilabel:`Labelling` tab at the top of the **Layers properties** dialog.
#. Change the text attributes to those shown on the image, then click on the
   :guilabel:`Accept` button.

.. image:: /images/screenshots/1024x768/gvsig_qs_013_.png
   :scale: 55

The result
--------------------------------------------------------------------------------

Note that this is a very basic view showing a point, a line and a polygon vector
file superimposed over a raster file. It is just as easy to have an aerial
photograph or Digital Terrain Model as a backdrop to your vector data, or
to show other vector data stored in different formats.

.. image:: /images/screenshots/1024x768/gvsig_qs_014_.png
   :scale: 55

A user exercise - change the symbology and labelling of the point and line layers
---------------------------------------------------------------------------------

Following the previous few steps change the symbols, colour and labelling
of the rivers and towns to generally match the following screen shot.

.. image:: /images/screenshots/1024x768/gvsig_qs_015_.png
   :scale: 55

Adding an overview or locator
================================================================================

Opening the Locator setup
--------------------------------------------------------------------------------

#. Select :menuselection:`View --> Locator setup`.

.. image:: /images/screenshots/1024x768/gvsig_qs_016_.png
   :scale: 55

Adding a layer to the overview zone
--------------------------------------------------------------------------------

#. Click on the :guilabel:`Add layer…` button.
#. Within the Add layer window, click on the :guilabel:`Add` button.
#. Select the ``HYP_50M_SR_W.tif`` layer.
#. Click on the :guilabel:`Open` button to return to the Add layer window.
#. Click on the :guilabel:`Ok` button and close the Configure locator window.

.. image:: /images/screenshots/1024x768/gvsig_qs_017_.png
   :scale: 55

The result
--------------------------------------------------------------------------------

Now we can easily know where the view is located in the world.

.. image:: /images/screenshots/1024x768/gvsig_qs_018_.png
   :scale: 55


Simple analysis - select towns within a region
================================================================================

Selecting the region
--------------------------------------------------------------------------------

#. Select the ``ne_10m_admin_1_states_provinces.shp`` layer using the
   left-mouse-button.
#. Select the :guilabel:`Select by point` icon in the main toolbar.
#. Click the polygon representing the State of New South Wales. The polygon will
   go yellow or some other colour depending on your user preferences.

.. image:: /images/screenshots/1024x768/gvsig_qs_019_.png
   :scale: 55

Opening the Selection by layer tool
--------------------------------------------------------------------------------

#. Select the ``ne_10m_populated_places.shp`` layer using the left-mouse-button.
#. Select :menuselection:`Selection --> Select by layer` to open the **Selection by Layer** dialog

.. image:: /images/screenshots/1024x768/gvsig_qs_020_.png
   :scale: 55

Selecting the towns contained within a region
--------------------------------------------------------------------------------

#. Change the first selection criteria using the dropdown boxes on the left-hand
   side of the **Selection by Layer** dialog as shown in the picture.
#. Change the second selection criteria as shown in the picture.
#. Click the :guilabel:`New set` button to select towns within the selected polygon.
#. Select the :guilabel:`Cancel` button in the **Selection by Layer** dialog to return
   to the view.

.. image:: /images/screenshots/1024x768/gvsig_qs_021_.png
   :scale: 55

Unselect the polygon so you can see what has happened
--------------------------------------------------------------------------------

#. Select the ``ne_10m_admin_1_states_provinces.shp`` layer using the left-mouse-button.
#. Select the 'Clear selection' icon in the main toolbar.
#. You can now see that only those towns within New South Wales are selected.

.. image:: /images/screenshots/1024x768/gvsig_qs_022_.png
   :scale: 55

Export selected features to a new shapefile
===============================================================================

Selecting the output file format
--------------------------------------------------------------------------------

#. Select the ``ne_10m_populated_places.shp`` layer using the left-mouse-button.
#. Select :menuselection:`Layer --> Export to...` to start the export.
#. Select *Shape Format*.
#. Click on *Next*.

.. image:: /images/screenshots/1024x768/gvsig_qs_023_.png
   :scale: 55

Selecting the output file name
--------------------------------------------------------------------------------

#. Choose a folder and type the file name.
#. Click on *Open* and then on *Next*.

.. image:: /images/screenshots/1024x768/gvsig_qs_024_.png
   :scale: 55

Reference system
--------------------------------------------------------------------------------

#. Choose the option *Original (EPSG:4326)* in order to keep the reference system of the view.
#. Click on *Next*.

Export options
--------------------------------------------------------------------------------

#. Choose the option *Selected features* in order to export only the towns of
   New South Wales.
#. Click on *Export*.

.. image:: /images/screenshots/1024x768/gvsig_qs_025_.png
   :scale: 55

The Result
--------------------------------------------------------------------------------

#. The new layer has been added to the view.
#. In order to check that the export was ok set the original file as invisible.
   Only the towns of New South Wales should be shown.

.. image:: /images/screenshots/1024x768/gvsig_qs_026_.png
   :scale: 55

How to create a map
================================================================================

Create a new map 
--------------------------------------------------------------------------------

#. Select the *Map* document type in the **Project Manager**.
#. Click on the :guilabel:`New` button to create a map.
#. A new window is shown, where you can select the view to insert on the Map. 
   Select the only view that you have and press *Accept*. 
#. Select the :guilabel:`Maximise window` icon to have the map occupy the entire
   screen.

.. image:: /images/screenshots/1024x768/gvsig_qs_028_.png
   :scale: 55

What else can you do to a map?
--------------------------------------------------------------------------------

#. Additional elements like a scale and north arrow can be added to the map
   using the icons in the main toolbar or with the submenus in the :menuselection:`Map` menu.
#. The map can be printed or exported to PDF or Postscript for incorporation
   into other works.
#. Select the :guilabel:`Close window` icon to return to the **Project manager**

.. image:: /images/screenshots/1024x768/gvsig_qs_029_.png
   :scale: 55

Saving your project or exiting gvSIG
================================================================================

#. Projects can be saved for use later by using the :menuselection:`File --> Save as...`
   menu option, or
#. Projects can be exited or closed by using the :menuselection:`File --> Exit` menu option.

.. image:: /images/screenshots/1024x768/gvsig_qs_030_.png
   :scale: 55

Installing an add-on
================================================================================

Opening the add-ons manager
--------------------------------------------------------------------------------

#. Select :menuselection:`Tools --> Addons manager`. After a while, the
   *Install package* window will appear.
#. Within the *Install package* window, select the option *Installation from URL*.
#. Choose the repo URL shown in the picture.
#. Click on the *Next* button.

.. image:: /images/screenshots/1024x768/gvsig_qs_031_.png
   :scale: 55

Finding an add-on
--------------------------------------------------------------------------------

#. At the add-ons manager we can find plugins and symbol libraries. 
#. Type 'Forestry' in the *Fast filter* text box.
#. Check the add-on called *Symbols: Forestry* (it's a symbol library).
#. Click on *Next*.

.. image:: /images/screenshots/1024x768/gvsig_qs_032__.png
   :scale: 55

Finishing the installation
--------------------------------------------------------------------------------

#. Click on *Start downloading*.
#. Then click on *Next*.
#. Finally click on *Finish*.

Adding a OpenStreetMap layer
--------------------------------------------------------------------------------

#. Now we are going to add OpenStreetMap cartography. Within a new view, in EPSG 3857, click on the :guilabel:`Add layer…` button.
#. Choose the *OSM* tab.
#. Select 'Mapnik' from the available layers.
#. Click on *Ok*.

.. image:: /images/screenshots/1024x768/gvsig_qs_036__.png
   :scale: 55

The result
--------------------------------------------------------------------------------

A new layer has been added to the view. Just doing zoom over a region we could see
the detailed Open Street Map data.

.. image:: /images/screenshots/1024x768/gvsig_qs_037_.png
   :scale: 55
.. image:: /images/screenshots/1024x768/gvsig_qs_038_.png
   :scale: 55
.. image:: /images/screenshots/1024x768/gvsig_qs_033_.png
   :scale: 55

Although the new message indicates that a restart is needed, for symbol libraries it's not necessary. We only have to restart when we install plugins. 

Adding a WMTS layer
================================================================================

WMTS is an evolution of WMS OGC standard based on tile management.

Selecting a server
--------------------------------------------------------------------------------

#. Within a view, click on the :guilabel:`Add layer…` button.
#. Choose the *WMTS* tab.
#. Choose the URL shown in the picture.
#. Click on *Connect*.
#. Click on *Next*.

.. image:: /images/screenshots/1024x768/gvsig_qs_039_.png
   :scale: 55

Selecting one of the available layers
--------------------------------------------------------------------------------

#. Select one of the available layers (e.g. bluemarble)
#. Click on *Add*.
#. Click on *Next*.

.. image:: /images/screenshots/1024x768/gvsig_qs_040_.png
   :scale: 55

Selecting image format and reference system
--------------------------------------------------------------------------------

#. Select *image/jpeg* as image format.
#. Select *EPSG:4326* (notice that the view must have the same SRS. If not then
   cancel, change it and start again).
#. Click on *Accept*.

.. image:: /images/screenshots/1024x768/gvsig_qs_041_.png
   :scale: 55

The result
--------------------------------------------------------------------------------

A new layer has been added to the view.

.. image:: /images/screenshots/1024x768/gvsig_qs_042_.png
   :scale: 55

Where to from here...
================================================================================

* `User manuals <http://downloads.gvsig.org/download/web/en/build/html/index.html>`_
* `Courses and tutorials <http://www.gvsig.com/en/diffusion/educational-material?p_p_id=122_INSTANCE_A9eo37KAqtxs&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&p_p_col_id=column-2&p_p_col_count=1&p_r_p_564233524_resetCur=true&p_r_p_564233524_categoryId=25973>`_
* `Learning gvSIG in 30 minutes <https://blog.gvsig.org/2017/05/23/learning-gvsig-in-30-minutes/>`_
* `gvSIG Blog <http://blog.gvsig.org/category/languages/english/>`_
