:Author: OSGeoLive
:Author: Pirmin Kalberer
:Author: Hamish Bowman
:Author: Zoltan Siki
:Author: Andrew Jeffrey
:Reviewer: Cameron Shorter
:Reviewer: Nicolas Roelandt
:Reviewer: Angelos Tzotsos, OSGeo
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive13.0
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

QGIS is a user-friendly Desktop GIS client which lets
you visualize, manage, edit, analyse data and compose printable maps.

.. contents:: Contents
   :local:


Start QGIS 
==========

#. Open the 'Desktop GIS' folder.
#. Double click on the 'QGIS' icon.

You will see QGIS launch with an empty project. The various parts of the QGIS Interface are listed below.

    .. image:: /images/projects/qgis/qgis_interface.png
      :scale: 70 %
      :alt: Open a QGIS project

* [1] Menu bar: Access to various QGIS features using a standard hierarchical menu.
* [2] Toolbars: For interaction with the map, layers, attributes and selections.
* [3] Browser Panel: A spatial file browser allowing drag and drop content into the map frame.
* [4] Layer Panel: Controls the map layers, their order, and visibility.
* [5] Status Bar: General information about the map and access to a universal search bar.

Create a project
================

#. Choose :menuselection:`Project --> New`.

   .. image:: /images/projects/qgis/qgis_new_project.png
      :scale: 70 %
      :alt: QGIS new project

Let's start by adding a vector layer to the map. Layers can be added to QGIS using the browser panel, located on the left of the screen.

#. Go the browser panel on the left of the screen.
#. Navigate the folder tree to 'home/data/natural_earth2'.
#. Select 'ne_10m_admin_0_countries.shp'.
#. Drag the layer from the browser panel and drop it in the map frame.

  .. image:: /images/projects/qgis/qgis_browser_panel.png
     :scale: 70 %
     :alt: QGIS browser add vector layer

Once the layer has been dragged onto the map frame, you will see a layer showing
countries.

.. image:: /images/projects/qgis/qgis_add_vector_layer.png
   :scale: 70 %
   :alt: QGIS vector layer

Now let's try adding a raster layer to the project. 

#. Go the browser panel on the left of the screen.
#. Navigate the folder tree to 'home/data/natural_earth2'.
#. Select 'HYP_50M_SR_W.tif'.
#. Drag the layer from the browser panel and drop it in the map frame.

.. image:: /images/projects/qgis/qgis_browser_panel_raster.png
   :scale: 70 %
   :alt: QGIS browser add raster layer

Once the layer has been dragged onto the map frame, you will see a raster layer
showing land cover and bathymetry.

.. image:: /images/projects/qgis/qgis_add_raster_layer.png
   :scale: 70 %
   :alt: QGIS raster layer

Now that we have added some content to our project we can save this project so that we
can come back to it at a later time.

#. Choose :menuselection:`Project --> Save`.

   .. image:: /images/projects/qgis/qgis_save_project.png
      :scale: 70 %
      :alt: QGIS save

#. Make the location to save the project '/home/user/desktop'.
#. Call the project 'My QGIS project'.

   .. image:: /images/projects/qgis/qgis_save_project_location.png
      :scale: 70 %
      :alt: QGIS project location

#. Click 'Save'.

You will know the project has been saved because there will be a project file on the desktop called 'My QGIS project' and the top of your project document will no longer read as 'untitled' but instead will read as 'My QGIS project'.

.. image:: /images/projects/qgis/qgis_saved_project.png
   :scale: 70 %
   :alt: QGIS saved project


Open an existing project
========================

A QGIS project saves layers, styles, map extents and settings for use at a later time.
This information is stored as a QGIS project file and has an extension of '.qgs' or '.qgz',
with '.qgz' being the default file format in QGIS going into the future.

Let's open an existing QGIS project and have a look at how it works.

#. Open QGIS. Note that when QGIS is opened you will be presented with a list of recent projects to chose from. This is a convenient way to open a project you have used recently.
#. Choose :menuselection:`Project --> Open`.
#. Navigate to '/home/user/qgis-example'.
#. Select the project 'QGIS-NaturalEarth-Example.qgs'.
#. Click 'Open'.

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
it up or down the list. The order that the layers appear in the layer list is the order which they
will draw on in the map frame.

#. Left-Click on the layer 'HYP_50M_SR_W'.
#. While holding the mouse button down drag the layer to the top of the list.

Notice how the raster layer is now on top of all other layers in the layer panel. This now renders the
raster layer on top of all other layers in the map frame.

.. image:: /images/projects/qgis/qgis_modified_layer_order.png
   :scale: 70 %
   :alt: QGIS modified the order of layers

Try moving the 'HYP_50M_SR_W' layer to the bottom of the layer list. This would be a more appropriate
position for a map layer like this.

Navigate the map
================

The navigation toolbar allows users to move around the map and change the map extent.

.. image:: /images/projects/qgis/qgis_navigation_toolbar.png
   :scale: 70 %
   :alt: QGIS navigation toolbar

* [1] Pan: Allows the map to be dragged ('panned') to a new location.
* [2] Zoom in: Allows the map extent to be zoomed in.
* [3] Zoom out: Allows the map to be zoomed out.
* [4] Zoom to full extent: Changes the map extent to fit all of the map layers into the map frame.
* [5] Zoom to layer: Changes the map extent to fit the extent of the layer highlighted in the layer panel.

Let's try changing the map extent with the zoom-in tool.

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

Style your layers
=================

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

Things to try
=============

* Extend QGIS functionality with `Plugins <https://docs.qgis.org/3.4/en/docs/user_manual/plugins/plugins.html>`_.

* Start manipulating data with the `Processing toolbox <https://docs.qgis.org/3.4/en/docs/user_manual/processing/toolbox.html>`_.

* Use QGIS to view content from a `PostGIS database <https://docs.qgis.org/3.4/en/docs/training_manual/spatial_databases/index.html>`_.

* Try publishing your QGIS map to the web using `QGIS Map Server <../overview/qgis_mapserver_overview.html>`_. in the :menuselection:`Geospatial --> Web Services` menu.


What next?
==========

To learn more about QGIS, a good starting point is the `Documentation page`_ on
the QGIS homepage and `A Gentle Introduction to GIS`_ eBook.

.. _`Documentation page`: http://docs.qgis.org/
.. _`A Gentle Introduction to GIS`: https://docs.qgis.org/3.4/en/docs/gentle_gis_introduction/index.html
.. _`QGIS User Guide`: https://docs.qgis.org/3.4/en/docs/user_manual/
