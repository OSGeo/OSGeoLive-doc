:Author: OSGeoLive
:Author: Jody Garnett
:Author: Frank Gasdorf
:Version: osgeolive5.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Thanks: udig-devel list
:Reviewer: Cameron Shorter, Jirotech

@LOGO_udig@
@OSGEO_KIND_udig@
@VMDK_udig@



********************************************************************************
@NAME_udig@ Quickstart
********************************************************************************

.. Writing Tip:
  First sentence defines what the application does.
  You may also need to include a sentence of two describing the domain.
  Eg: For a Business Intelligence application, you should describe what
  Business Intelligence is.

uDig (User Friendly Internet Desktop GIS), is a GIS Desktop client for
editing and viewing Geospatial data.

.. Writing Tip:
  Describe what will be covered in this Quick Start.

This Quick Start describes how to:

  * load a map layers from a shapefile and |WMS|
  * use the standard map tools
  * apply colour to map features using styling

.. contents:: Contents

start uDig
================================================================================

.. Writing Tip:
  Describe steps to start the application
  This should include a graphic of the pull-down list, with a red circle
  around the application menu option.
  #. A hash numbers instructions. There should be only one instruction per
     hash.

.. TBD: Add menu graphic to this uDig Quickstart

#. Choose |osgeolive-appmenupath-udig| from menu
#. The application will take a few moments to start up

.. image:: /images/projects/udig/udig_Quickstart1Splash.png
   :scale: 70 %
.. Writing Tip:
  For images, use a scale of 50% from a 1024x768 display (preferred) or
  70% from a 800x600 display.
  Images should be stored here:
    https://github.com/OSGeo/OSGeoLive-doc/tree/master/doc/images/projects


If you have any difficulties, or are running uDig please review the Running uDig reference page.

Welcome View
================================================================================

#. When you start up uDig for the first time the Welcome view takes up the entire display. This screen
   has links to tutorials, documentation and the project website.

#. Click the arrow labelled Workbench in the upper right corner, to reveal the contents of the uDig workbench.

  .. image:: /images/projects/udig/udig_welcome.png
   :scale: 70 %

You can return to the Welcome view at any time by selecting the :menuselection:`Help --> Welcome` from the menu bar.

Workbench
================================================================================

The Workbench window offers multiple Editors (each showing a Map) and supporting Views (offering
information about the current Map).

  .. image:: /images/projects/udig/udig_workbench.png
   :scale: 70 %

Shown above is a typical uDig session with the

	#. Layers view (1),
	#. Projects view (2),
	#. Catalog view (3) and
	#. Map editor (4).

These views will be described further as we demonstrate their use.

Files
================================================================================

To start out with we are going to load some of the sample data included on the DVD.

#. Choose :menuselection:`Layer --> Add` from the menu bar to open up the **Add Data** wizard

#. Select **Files** from the list of data sources

#. Press :guilabel:`Next` to open up a file dialog

#. The OSGeoLive DVD contains sample data in:

   * :file:`~/data` (a short cut to :file:`/usr/local/share/data`)

#. Select the following file from the :file:`natural_earth2` folder:

   * :file:`ne_10m_admin_0_countries.shp`

#. Press :guilabel:`Open`

   * A new Map editor will be opened based on the contents of your shapefile. The default name and
     projection of the Map has been taken from your shapefile.

   * You can see the **Catalog view** has been updated with an entry for :file:`ne_10m_admin_0_countries.shp`. This
     view is used to track the use of resources by the uDig application.

   * The **Layers** view shows a single layer is displayed on this map. This view is used to change
     the order and appearance of information in your Map.

   * The **Projects** view has been updated to show that your map is stored in `projects > ne 10m admin 0 countries`.
     You can have multiple projects open at a time, each project can have several maps.

#. Open up the :file:`~/data/natural_earth2/` folder on the desktop

#. Drag :file:`HYP_50M_SR_W.tif` onto the Map Editor, a new layer is added to to the map.

#. You can see the order the layers are drawn in the layer view. Right now the `HYP_50M_SR_W` layer is drawn
   on top of the `ne 10m admin 0 countries` layer.

#. Select the `HYP_50M_SR_W` layer in the catalog view and drag it to the bottom of the list

  .. image:: /images/projects/udig/udig_QuickstartCountriesMap.png
   :scale: 70 %

.. Writing Tip:
  Notes are used to provide descriptions and background information without
  getting in the way of instructions. Notes will likely be rendered in
  the margin in some printed formats.

.. note::
   One of the most common questions asked when uDig is considered for an organization is how much memory
   the application uses. Unlike most GIS applications uDig can get by with a fixed amount of memory. The
   above shapefile is not loaded into memory, we have a policy of keeping data on disk and drawing data
   like this shapefile onto the screen as needed.

.. Writing Tip:
  Tips are used to provide extra useful information, and will
  likely be rendered in the margin in some printed formats.

.. tip:: You can also drag and drop shapefiles directly into the uDig application!

Map
================================================================================

You can control where in the world the Map Editor is looking by using the navigation tools in the tool bar along the top of the screen.


#. The |ZOOM| Zoom tool is available by default

   .. |ZOOM| image:: /images/projects/udig/udig_zoom_mode.png

   * Use the zoom tool by drawing a box using the left mouse button around the area of the world you wish
     to see.
   * To zoom out draw a box with the right mouse button. The current map extents will be located within
     the box you draw.

#. The |PAN| Pan tool can be used to scroll around your map with out changing scale.

   .. |PAN| image:: /images/projects/udig/udig_pan_mode.png

#. There are also several navigation buttons that can be used at any time:

   * |SHOWALL| Show All, can be used to return to the full extents at any time

     .. |SHOWALL| image:: /images/projects/udig/udig_zoom_extent_co.png

   * |ZOOM_IN| Zoom In and |ZOOM_OUT| Zoom Out can be used to change the scale by a fixed amount.

     .. |ZOOM_IN| image:: /images/projects/udig/udig_zoom_in_co.png
     .. |ZOOM_OUT| image:: /images/projects/udig/udig_zoom_out_co.png

   * You can use Navigation Back |BNAV| and Forward |FNAV| in the menu bar to cycle though previously
     visited locations.

     .. |BNAV| image:: /images/projects/udig/udig_backward_nav.png
     .. |FNAV| image:: /images/projects/udig/udig_forward_nav.png

.. tip:: Most tools allow you to Pan by holding the center button and control the scale using the
   scroll wheel.

Web Map Server
================================================================================

One of the reasons to use an application like uDig is to access all the great free geospatial
information available on the web. This section covers the use of Web Map Servers which make
available layers of information that you can mix into your own maps.

.. note:: If you are not connected to the Internet run |osgeolive-appmenupath-geoserver|
   for a local WMS. The script will open a page with a "Service Capabilities" section and two links for WMS Services
   you can drag into your empty map.

.. tip:: You can copy a WMS URL (e.g. for `WMS 1.1.1`_) from right panel of `GeoServer Welcome page`_ and "paste" it either on the **Map** view or the **Layers** view. A wizard shows you the layers you can add to the **Map**. You can also connect to Web Map Servers using the **Add Data** (:menuselection:`Layer --> Add...`) Wizard and paste WMS URL right there.

	.. _GeoServer Welcome page: http://localhost:8082/geoserver/web
	.. _WMS 1.1.1: http://localhost:8082/geoserver/ows?service=wms&version=1.1.1&request=GetCapabilities

#. Select :menuselection:`File --> New --> New Map` from the menu bar

#. Change to the **Web** view, click on the tab next to the **Catalog** view to reveal the *Web* view.

	.. image:: /images/projects/udig/udig_WebViewClick.png
		:scale: 50 %

#. Click on the link ``WMS\:http://www2.dmsolutions.ca/cgi-bin/mswms_gmap?Service=WMS&VERSION=1.1.0&REQUEST=GetCapabilities``

.. TODO #. Click on the link WMS\:`dm solutions`_ lin

.. TODO .. _dm solutions: http://www2.dmsolutions.ca/cgi-bin/mswms_gmap?Service=WMS&VERSION=1.1.0&REQUEST=GetCapabilities

#. From the Resource Selection page we are going to choose the following layers:

   * Elevation/Bathymetry
   * Parks
   * Cities

	.. image:: /images/projects/udig/udig_AddWMSLayers.png
		:scale: 70 %

#. Press :guilabel:`Finish` to add these layers to your map

	.. image:: /images/projects/udig/udig_WMSMap.png
		:scale: 70 %

#. Use the |ZOOM| Zoom Tool to move closer to one of the Parks

#. Switch to the |INFO| Info Tool and click on one the parks to learn more about it

.. |INFO| image:: /images/projects/udig/udig_info_mode.png

.. tip:: You can switch between the zoom and info tools by pressing `Z` and `I` on the keyboard.

Style
================================================================================

#. Select the `project > ne 10m admin 0 countries`, you can double click to open this Map, or Right Click and choose Open Map

#. Select the countries layer in the Layer view

#. Open up the **Style Editor** by right clicking on `ne 10m admin 0 countries` layer and choosing :guilabel:`Change Style`

#. We are going to change a few things about how countries are displayed

   * Line: Click :guilabel:`Border`, click on the Color button and change the color to BLACK

   * Fill: On Tab :guilabel:`Fill` uncheck the box :guilabel:`enable/disable fill` to turn off fill

   * Label: On Tab :guilabel:`Labels` check the box :guilabel:`enable/disable labeling`, and choose the attribute **NAME** from the list of attributes

   .. image:: /images/projects/udig/udig_StyleEditor.png
      :scale: 70 %

#. Press :guilabel:`Apply` to see what this looks like on your Map, the **Layer** view will also be updated
   to reflect the current style

#. When you are happy with the result you can press :guilabel:`Close` to dismiss the dialog

.. note:: Some files include style settings. The Style definition can be found in files with the :file:`*.sld` extension. The name itself should be equal to the file containing the data. If such a |SLD| file exists, the style will be applied automatically.

Sometimes it is a bit hard to see what is going on with layer providing much details. To get focused on the task you like to work on, you can choose :menuselection:`Map --> Mylar` from the menu bar. Using the *Layer* view select different layers in turn to see the effect. You can turn off this effect at any time using :menuselection:`Map --> Mylar` from the menu bar.

	.. image:: /images/projects/udig/udig_MapMylar.png
		:scale: 70 %

.. Writing tip
  The final heading should provide pointers to further tutorials,
  documentation or further things to try.
  Present a list of ideas for people to try out. Start off very specific
  with something most people can do based on the materials as presented.
  Continue on with a challenge that involves a small bit of research (it
  is recommended that research be limited to something that can be
  found in documentation packaged on OSGeoLive, as users might not be
  connected to the Internet.

Things to Try
================================================================================

Here are some additional challenges for you to try:

#. Try viewing your own GIS map layers, or try adding a layer from a |WFS|
#. Try styling the WFS layer.

What next?
================================================================================

.. Writing tip
  Provide links to further tutorials and other documentation.

This is only the first step on the road to using uDig. There is a lot more great material (and ability) left for you to discover in our **walkthrough** documents.

* Walkthrough 1

  Try out the use of :doc:`PostGIS <../overview/postgis_overview>`, extract data from a Web Feature Server and explore the
  use of **Themes** with our powerful `Color Brewer` technology.

  :file:`/usr/local/share/udig/udig-docs/uDigWalkthrough 1.pdf`

* Walkthrough 2 - Learn how to create shapefiles and use the Edit tools to manipulate
  feature data, covers the installation of :doc:`GeoServer <../overview/geoserver_overview>` and editing with a Web Feature
  Server.

  Available on http://udig.refractions.net/

