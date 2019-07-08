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

Styling Layers
================================================================================

Learning goals:

* Access the style dock
* Modify the colour of a layer

Layers can be styled in QGIS using the style dock. The style dock is not visible by default, but
easily accessible via a button at the top of the layer panel as shown below.

.. image:: /images/projects/qgis/qgis_style_dock_button.png
   :scale: 70 %
   :alt: QGIS style dock

The above button acts as a toggle so the style dock can be easily hidden from view by clicking the
same button again. When the style dock is enabled it will appear on the right-hand side of the screen
ready to style the active layer highlighted in the layer panel.

With the style dock open, we can modify the appearance of the layer shown at the top of the style dock.

.. image:: /images/projects/qgis/qgis_style_dock_layer.png
   :scale: 70 %
   :alt: QGIS style dock layer

With the style dock now open, we can modify the colour and the width of the lines in the
'ne_10m_rivers_lakes_centrelines' layer. Let’s try modifying the colour first.

#. Click on the 'Color' swatch shown below. This will launch a colour palette allowing you to choose a different colour.

   .. image:: /images/projects/qgis/qgis_style_dock_color.png
      :scale: 70 %
      :alt: QGIS style dock color

#. In the 'Select Color' palette, move the cross-hair to your preferred colour.

   .. image:: /images/projects/qgis/qgis_style_color_palette.png
      :scale: 70 %
      :alt: QGIS color palette

#. Then click the back arrow to return to the symbol render preview.

   .. image:: /images/projects/qgis/qgis_style_back.png
      :scale: 70 %
      :alt: QGIS style return

#. The symbol preview will be updated with the new colour, and so will the layer in the map frame.

   .. image:: /images/projects/qgis/qgis_style_result.png
      :scale: 70 %
      :alt: QGIS style result

In the style dock, we can also modify the size of the map features. To modify the thickness of the
lines follow these steps:

#. Make sure that the 'ne_10m_rivers_lakes_centrelines' is selected at the top of the style panel.
#. In the style panel enter the value '0.5' in the 'width' input.

   .. image:: /images/projects/qgis/qgis_style_width.png
      :scale: 70 %
      :alt: QGIS style width

Notice the line in the symbol preview increase in width, and so do the lines that are in the map frame.

Things to Try
================================================================================

* Extend QGIS functionality with `Plugins <https://docs.qgis.org/3.4/en/docs/user_manual/plugins/plugins.html>`

* Start manipulating data with the `Processing toolbox <https://docs.qgis.org/3.4/en/docs/user_manual/processing/toolbox.html>`

* Use QGIS to view content from a `PostGIS database <https://docs.qgis.org/3.4/en/docs/training_manual/spatial_databases/index.html>`

* Try publishing your QGIS map to the web using :doc:`QGIS Map Server <../overview/qgis_mapserver_overview>` in the :menuselection:`Geospatial --> Web Services` menu.


What Next?
================================================================================

Tutorials for more advanced features of QGIS are collected as `OSGeoLive QGIS tutorials`_.

To learn more about QGIS, a good starting point is the `Documentation page`_ on
the QGIS homepage and `A Gentle Introduction to GIS`_ eBook.


.. _`OSGeoLive QGIS tutorials`: ../../qgis/
.. _`Documentation page`: http://docs.qgis.org/
.. _`A Gentle Introduction to GIS`: https://docs.qgis.org/3.4/en/docs/gentle_gis_introduction/index.html
.. _`QGIS User Guide`: https://docs.qgis.org/3.4/en/docs/user_manual/
