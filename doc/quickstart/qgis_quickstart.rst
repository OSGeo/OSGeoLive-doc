:Author: OSGeoLive
:Author: Pirmin Kalberer
:Author: Hamish Bowman
:Author: Zoltan Siki
:Author: Andrew Jeffrey
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Nicolas Roelandt
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. TBD: Cameron's review comments:
  This document is in "DRAFT" state until these comments have been removed.
  I've added a number of review comments, starting with TBD: ...
  Overall: Each section needs to explain what it is about to do and the
  benefits of it. (target audience is a new user).
  We also need screen shots after each significant step.
  Once these comments have been addressed, please remove my comment.

@LOGO_qgis@
@OSGEO_KIND_qgis@


********************************************************************************
@NAME_qgis@ Quickstart
********************************************************************************

QGIS is a user friendly Desktop GIS client which lets
you visualize, manage, edit, analyse data and compose printable maps.

.. contents:: Contents


Opening QGIS for the first time
================================================================================

Learning goal:

* Open QGIS
* Identify parts of the Interface

QGIS can be opened from the 'Desktop GIS' folder on the OSGeoLive desktop. Follow the steps below
to launch QGIS.

#. Open the 'Desktop GIS' folder.
#. Double click on the 'QGIS' icon.

When QGIS is launched for the very first time the user will be asked if they would like to 'Import
settings from QGIS 2' or proceed with a clean start. If presented with this window do the following:

#. Selection the option 'I want a clean start. Don't import my QGIS 2 settings.'
#. Click the button that reads "Let's get started!"

  .. image:: /images/projects/qgis/qgis_welcome.png
    :scale: 70 %
    :alt: QGIS import settings

The user will the see QGIS launch with an empty project. The various parts of the QGIS Interface
are listed below.

    .. image:: /images/projects/qgis/qgis_interface.png
      :scale: 70 %
      :alt: Open a QGIS project

#. Menu bar: Access to various QGIS features using a standard hierarchical menu.
#. Toolbars: For interaction with the map, layers, attributes and selections.
#. Browser Panel: A spatial file browser allowing drag and drop content into the map frame.
#. Layer Panel: Controls the map layers, their order, and visibility.
#. Status Bar: General information about the map and access to a universal search bar.

Starting a new project
================================================================================

Learning goal:

* Start a new QGIS project
* Add vector layers to a project
* Add raster layers to a project
* Save a project

After opening QGIS for the first time, you will be presented with an empty project that you
can add layers to.

#. Go to the 'Project' menu on the menu bar.
#. Select 'New'.

   .. image:: /images/projects/qgis/qgis_new_project.png
      :scale: 70 %
      :alt: QGIS new project

Now with an empty QGIS project we can start adding data to the project.

Let's start by adding a vector layer to the map. Layers can be added to QGIS using the browser
panel, located on the left of screen.

#. Go the browser panel on the left of the screen.
#. Navigate the folder tree to 'home/data/natural_earth2'.
#. Select 'ne_10m_admin_0_countries.shp'.
#. Drag the layer from the browser panel and drop it in the map frame.

  .. image:: /images/projects/qgis/qgis_browser_panel.png
     :scale: 70 %
     :alt: QGIS browser add vector layer

Once the layer has been dragged onto the map frame, the user will see a layer showing
countries.

.. image:: /images/projects/qgis/qgis_add_vector_layer.png
   :scale: 70 %
   :alt: QGIS vector layer

Now let's try adding a raster layer to the project. Again we will use the browser panel.

#. Go the browser panel on the left of the screen.
#. Navigate the folder tree to 'home/data/natural_earth2'.
#. Select 'HYP_50M_SR_W.tif'.
#. Drag the layer from the browser panel and drop it in the map frame.

.. image:: /images/projects/qgis/qgis_browser_panel_raster.png
   :scale: 70 %
   :alt: QGIS browser add raster layer

Once the layer has been dragged onto the map frame, the user will see a layer raster layer
showing land cover and bathymetry.

.. image:: /images/projects/qgis/qgis_add_vector_raster.png
   :scale: 70 %
   :alt: QGIS raster layer

Now that we have added some content to our project we can save this project so that we
can come back to it at a later time.

To save the QGIS project, follow these steps:

#. Go to the 'Project' menu on the menu bar.
#. Select 'Save'.

   .. image:: /images/projects/qgis/qgis_save_project.png
      :scale: 70 %
      :alt: QGIS save

#. Make the location to save the project '/home/user/desktop'.
#. Call the project 'My QGIS project'.

   .. image:: /images/projects/qgis/qgis_save_project_location.png
      :scale: 70 %
      :alt: QGIS project location

#. Then click 'Save'.

You will now the project has been saved because there will be a project file on the desktop
called 'My QGIS project' and the top of your project document will no longer read as 'untitled'
but instead will read as 'My QGIS project'.

.. image:: /images/projects/qgis/qgis_saved_project.png
   :scale: 70 %
   :alt: QGIS saved project


Open an existing project
================================================================================

Learning goal:

* Understand what a QGIS project is
* Open an existing project
* Interact with layers

A QGIS project is a way to save layers, styles, map extents and settings for use at a later time.
This information is stored as a QGIS project and these files have an extension of '.qgs' or '.qgz',
with '.qgz' being the default file format in QGIS going into the future.

Let's open an existing QGIS project and have a look at how it works.

#. Open QGIS. Note that when QGIS is opened a user will be presented with a list of recent
projects to chose from. This is a quick way of entering into recent projects.
#. Go to the 'Project' menu on the menu bar.
#. Select 'Open'.
#. Navigate to '/home/user/qgis-example'.
#. Select the project 'QGIS-NaturalEarth-Example.qgs'.
#. Then click 'Open'.

.. image:: /images/projects/qgis/qgis_project_open.png
   :scale: 70 %
   :alt: QGIS Open project

This will open a QGIS project with a number of Natural Earth datasets, as shown below.
This project contains a number of layers in the layers panel and is displaying the spatial
content in the map frame.

.. image:: /images/projects/qgis/qgis_project_open_result.png
   :scale: 70 %
   :alt: QGIS Open project result

Layers can be turned on or off by clicking the checkbox next to the layer name in the layers panel.
When a layer is turned on in the layer panel, the map frame will be updated to display the layer.
A close up of the layer panel is shown below.

.. image:: /images/projects/qgis/qgis_layer_panel.png
   :scale: 70 %
   :alt: QGIS layer panel

Let's interact with the layer panel and change the visibility of some map layers.

#. Click the checkbox next to the 'ne_10m_populated_places' layer to turn it on.
#. Click the checkbox next to the 'Water' layer to turn the layer off.

Notice how the map frame has been updated to reflect the changes in the layer list.
We can now see the 'ne_10m_populated_places' layer as points, but can no longer see the
rivers and lakes which are within the 'Waters' layer.

.. image:: /images/projects/qgis/qgis_layer_visibility.png
   :scale: 70 %
   :alt: QGIS result of layer visibility changes

In addition to controlling layer visibility, we can also change the order in which layers
are drawn in the layer panel. This is done by selecting a layer in the layer panel and dragging
it up or down the list. The order that the layers appear in the layer list, is the order which they
will draw on in the map frame.

To change the order of the layers:

#. Left-Click on the layer 'HYP_50M_SR_W'.
#. While holding the mouse button down drag the layer to the top of the list.

Notice how the raster layer is now on top of all other layers in the layer panel. This now renders the
raster layer on top of all other layers in the map frame.

.. image:: /images/projects/qgis/qgis_modified_layer_order.png
   :scale: 70 %
   :alt: QGIS modified the order of layers

Try moving the 'HYP_50M_SR_W' layer to the bottom of the layer list. This would be a more appropriate
position for a map layer like this.

Navigation tools
================================================================================

Learning goals:

* Identify the navigation toolbar
* Modify the extent of the map

The navigation toolbar as shown below allows users to move around the map and change the map extent.

.. image:: /images/projects/qgis/qgis_navigation_toolbar.png
   :scale: 70 %
   :alt: QGIS navigation toolbar

For this quick start guide, we will focus on the basics of navigation which can be achieved with only
five tools. These tools are listed below, with the number corresponding to the toolbar image above to
show the location on the toolbar.

#. Pan: Allows the map to be dragged 'Panned' to a new location.
#. Zoom in: Allows the map extent to be zoomed in.
#. Zoom out: Allows the map to be zoomed out.
#. Zoom to full extent: Changes the map extent to fit all of the map layers into the map frame.
#. Zoom to layer: Changes the map extent to fit the extent of the layer highlighted in the layer panel.

Let's try changing the map extent with the zoom-in tool, this will allow the user to zoom in closer on
an area of interest.

#. Select the 'Zoom in' tool from the navigation toolbar.
#. Move the cursor over the map frame.
#. Click and hold the left mouse button.
#. While still holding the mouse button move the cursor diagonally in any direction. Notice this draws a rectangle which is the area that will be zoomed to.
#. Release the mouse button when happy with the area created.

.. note:: The process of using the zoom out tool is the same as the zoom-in tool. The result is just the opposite.

Now, let’s look at the zoom to full extent tool. This tool will zoom the map out to an
extent that will fit in all the layers in the map. To use this tool, click on the
'Zoom to full extent' button.

Finally, try the zoom to layer tool. To use this tool follow these steps:

#. Click on a layer name in the layer panel.
#. Click on the 'Zoom to layer' button.

The map should zoom to the extent of the selected ('active') layer.

Using the GRASS Toolbox
================================================================================

There have been many plugins written for QGIS which extend QGIS's core
functionality. One of the more powerful is the GRASS plugin, which taps
into the hundreds of geospatial processing modules available
from :doc:`GRASS GIS <../overview/grass_overview>`.

.. note::
    You will need to change permissions of the grass data folder in order
    to carry out the following steps. Please open a terminal and execute the following:
    "sudo chmod -R 775 /usr/local/share/grass/nc_basic_spm_grass7"

#. Clear the slate with :menuselection:`Project --> New`.

   .. image:: /images/projects/qgis/qgis_plugin.png
      :scale: 70 %
      :alt: Enable GRASS plugin

#. Choose :menuselection:`Plugins --> Manage and Install Plugins...`, then scroll down or
   type ``grass`` into the Search box, and select the `GRASS 7` plugin.

   * Notice that a new GRASS icon has been added to the Toolbar, a docked window named "GRASS Tools" has appeared on the right of the map area and a new `GRASS` menu item has been added to the `Plugins` menu.

#. Connect to an existing GRASS workspace with :menuselection:`Plugins --> GRASS --> Open mapset`.

   * The GRASS GIS data base (Gisdbase) has already been set to `/home/user/grassdata` on
     the disc for you.

#. Within the central GRASS data base are a number of sample datasets. We'll
   load the North Carolina location, and the ``user1`` mapset within it. Choose
   the `nc_basic_spm_grass7` Location and `user1` working mapset, then click :guilabel:`Ok`.

#. To add a raster map to the QGIS layer list, navigate from QGIS Browser Panel to Home/grassdata/nc_basic_spm_grass7.

   * In the PERMANENT mapset select the `elevation` map and double click to add to the map.

     .. image:: /images/projects/qgis/qgis_grass_layers.jpg
       :scale: 50 %
       :alt: GRASS GIS layers loaded into QGIS

#. Add another GRASS raster layer, this time the `geology` map from the
   PERMANENT mapset.

   * Double click on the `geology` map in the QGIS Layers list and in
     the Transparency tab set its global transparency to 70%.

#. To add a vector map, select a vector layer from the QGIS Browser, similar to the previous steps.

   * From the PERMANENT mapset select the `roadsmajor` map with a double click.

#. Change the layer order if necessary (roadsmajor, geology, elevation).

The plugin also gives you access to many of the powerful GRASS analysis
modules and visualization tools:

#. From the top menu select :menuselection:`Plugins --> GRASS --> Open GRASS tools` and
   drag the edge to make the window a bit bigger.

   * A long list of analysis tools will appear. Go to the `Modules Tree` tab and
     select :menuselection:`Region settings --> g.region.multiple.raster`.
     Clicking on it will open a new tab. Select ``elevation`` from the
     menu list and press :guilabel:`Run`. The `elevation` map will
     now have a thin red line around it, indicating the extent of
     GRASS's `computational region` bounds.

#. Back in the `Modules Tree` tab of the `GRASS Tools` window, go down
   to :menuselection:`Raster` and select :menuselection:`Surface Management --> Generate Vector contour lines`.

#. In the new module tab that pops open, select the `elevation` map as the
   input.

#. Add some contour levels (e.g. 20, 40, 60, 80, 100)

#. Select the output layer name (e.g. contour_lines), then click :guilabel:`Run`.

   .. image:: /images/projects/qgis/qgis_contours.jpg
      :scale: 70 %
      :alt: Contour creation


Using the Processing Toolbox
================================================================================

A core plugin for QGIS which opens the door to a large family of
processing tools is the Processing Toolbox (formerly named the SEXTANTE Toolbox).
It acts as a standardized wrapper around a number of other sets of tools.

.. TBD: Cameron's review comments:
  If we are to include Sextante, then we need to describe using one of the
  Sextane features.

#. Choose :menuselection:`Processing --> Toolbox`.

   * A new toolbar will open on the right side of the screen with many
     processing tools to choose from. Take some time and have a look around.

   .. image:: /images/projects/qgis/qgis_toolbox.png
      :scale: 70 %
      :alt: Processing Toolbox

   * You may need to enable a Processing provider in order to use it.
     The following screenshot shows how to enable GRASS GIS 7 support in
     the processing tools. Be sure to disable GRASS support (i.e., GRASS 6).
     Additionally, switch to the "Advanced Interface" (see lower right corner
     in the screenshot) in order to see the providers:

   .. image:: /images/projects/qgis/qgis_enable_provider.png
      :scale: 70 %
      :alt: Enabling the GRASS GIS 7 provider in the Processing settings.


Importing OpenStreetMap data
================================================================================

.. TBD: Cameron comment
  Need a sentence here introducing what the OpenStreetMap tools provide.

#. Open the LX Terminal Emulator from the main :menuselection:`Accessories` menu.

   * Cut and paste the following commands into the Terminal window to create
     a working copy of the OSM data in the home directory:

     ::

       cp data/osm/feature_city.osm.bz2 .
       bzip2 -d feature_city.osm.bz2

#. In QGIS, choose :menuselection:`Project --> New`. If you had the
   Processing Toolbox open you might want to close it.


   .. image:: /images/projects/qgis/qgis_osm_plugin.png
     :scale: 50 %
     :alt:  The OpenStreetMap plugin

#. Choose :menuselection:`Vector --> OpenStreetMap --> Import topology from XML`.

#. Click on the "..." button next to "Input XML file (.osm)" and select
   the `feature_city.osm` file you just copied into the home directory.
   The "Output SpatialLite DB file" name will be automatically set. Click
   :guilabel:`Ok` to convert the dataset to SpatiaLite format and create
   a connection to the SpatialLite DB within QGIS.

#. Next we need to extract points, lines, and areas, then add topology to
   each of these three new layers. To do this we need to run the tool three times.
   Select :menuselection:`Vector --> OpenStreetMap --> Export toplogy to SpatiaLite` and
   use the "..." button to select the newly created `feature_city.osm.db` file.
   The `Output layer name` will be automatically filled in for you depending
   on the `Export type` selected. Click the :guilabel:`Load from DB` button
   to load in the available tags. For the "points" layer tick the `amentity` box;
   for the "polylines" layer tick the `highway` layer; and for
   the "polygon" layer select the `building` layer. You may wish to change
   the `Output layer name` to reflect the feature tags that you've selected.
   When you are ready, press :guilabel:`Ok` to load in the layer. You will
   need to again press the :guilabel:`Load from DB` button after changing
   the export type from points to polylines, and polylines to polygons.

#. Once topology is loaded, you can also refine the SpatiaLite layer by
   querying just certain features from within it.
   Select :menuselection:`Layer --> Add Layer --> Add SpatiaLite Layer...` from the
   menu and from the `Databases` list select `feature_city@...` and
   then click on :guilabel:`Connect`. Double click on
   the `feature_city_polylines` table and then double click on "highway"
   to start building your SQL query. Then click on the :guilabel:`=` button,
   then the :guilabel:`All` button, and double click on `motorway` from the
   Values list. Click the :guilabel:`Test` button to verify the result,
   and finally click on :guilabel:`Ok`. Back in the `Add SpatiaLite Table`
   window click :guilabel:`Add` to restrict the rendering to just major
   highways. You can repeat this process with new layers to render different
   road types with different widths and styles.

   .. image:: /images/projects/qgis/QGIS_spatialite_add_layer.png
     :scale: 50 %
     :alt:  The OpenStreetMap add layer

#. You can now explore this rich dataset. Use the ``i`` information cursor
   button in the QGIS toolbar to query individual map features.

Things to Try
================================================================================

* Try viewing data sources with the `QGIS Data Browser <http://planet.qgis.org/planet/tag/qgis%20browser/>`_ in the :menuselection:`Geospatial --> Databases` menu

* Try publishing your QGIS map to the web using :doc:`QGIS Map Server <../overview/qgis_mapserver_overview>` in the :menuselection:`Geospatial --> Web Services` menu.


What Next?
================================================================================

Tutorials for more advanced features of QGIS are collected as `OSGeoLive QGIS tutorials`_.

To learn more about QGIS, a good starting point is the `Documentation page`_ on
the QGIS homepage and `A Gentle Introduction to GIS`_ eBook.

The `QGIS User Guide`_ `[1]`_ is also included on the OSGeoLive disc.

.. _`OSGeoLive QGIS tutorials`: ../../qgis/
.. _`Documentation page`: http://docs.qgis.org/
.. _`A Gentle Introduction to GIS`: http://docs.qgis.org/2.8/en/docs/gentle_gis_introduction/
.. _`QGIS User Guide`: http://docs.qgis.org/2.8/en/docs/user_manual/
.. _`[1]`: ../../qgis/QGIS-2.2-UserGuide-en.pdf
