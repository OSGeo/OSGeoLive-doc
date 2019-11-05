:Author: OSGeoLive
:Version: osgeolive14.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Reviewer: Cameron Shorter
.. Writing Tip Logo:
 Insert your logo here and if applicable, the OSGeo logo.
@LOGO_slug@
@OSGEO_KIND_slug@

********************************************************************************
@NAME_slug@ Quickstart
********************************************************************************

.. Writing Tip: Overview section
 This section is required and has no heading. Start with a sentence describing what the application is and does.

ProjectName is a desktop client for editing and viewing geospatial data.

.. Writing Tip:
   Next, describe what will be covered in the Quick Start. Choose a few features to show. If you're showing one or two things, write that in sentence format. If it's three or more, use a bullet list. Optionally, you can also manage expectations about the length of the Quick Start - how much time should the user expect to commit to this activity?

This Quick Start describes how to:

  * load a map layer from a shapefile
  * use the standard map tools
  * apply colour to map features using styling

  .. Writing tip: prerequisites section
       This section is optional. Mention any prerequisites that are required to complete the Quick Start, for example, internet connection or data to test with.

This guide requires an internet connection. It also uses sample data included with OSGeo Live. Make sure you can access /usr/local/share/data.

.. contents:: Contents
.. Writing Tip:
  Use headings in your document to automatically generate a table of contents. The headings should start with verbs, and should be the same or similar to what you have said the Quick Start will cover.
Start @NAME_slug@
================================================================================

.. Writing Tip:
  The heading title for the first section is "Start application name". Use numbered steps to describe what to do (the hash symbol renders numbered steps). Steps start with a verb or action word. Include only one action per step. A description of the expected result is not a new step.
  Use Sphinx inline markup such as :guilabel: for buttons and field names; and :menuselection: for selecting menu items. Also refer to this page to describe elements on the UI https://developers.google.com/style/ui-elements

#. From the Start menu, choose :menuselection:`Geospatial ‣ Desktop GIS ‣ uDig`. The application will take a few moments to start up.

.. image:: /images/projects/udig/udig_Quickstart1Splash.png
   :scale: 70 %

.. Writing Tip:
 Include a screenshot here of the UI. For images, use a scale of 50% from a 1024x768 display (preferred) or 70% from a 800x600 display. Markup the graphic with red circles to highlight any particular areas of note on the GUI (if required).
  Store images here:
    https://github.com/OSGeo/OSGeoLive-doc/tree/master/images/projects/1024x768/

When you start ProjectName for the first time the Welcome view takes up the entire display. This screen has links to tutorials, documentation and the project website. You can return to the Welcome view at any time by selecting the :menuselection:`Help --> Welcome` from the menu bar.

Load a map
================================================================================
..  Writing tip:
   You can include an introductory sentence here or you can just launch straight in to numbered steps, if your heading is descriptive enough. It's okay to use "we" to make the user feel like you are stepping them through the actions.
To start out with we are going to load some of the sample data included with OSGeo Live.

#. From the menu bar, choose :menuselection:`Layer --> Add` to open up the **Add Data** wizard.
#. Select **Files** from the list of data sources.
#. Press :guilabel:`Next` to open up a file dialog. OSGeoLive contains sample data in:

   * :file:`~/data` (a short cut to :file:`/usr/local/share/data`)

#. Select the following file from the :file:`natural_earth2` folder:

   * :file:`ne_10m_admin_0_countries.shp`

#. Press :guilabel:`Open`.

   * A new Map editor will open based on the contents of your shapefile.
   * The **Catalog view** has been updated with an entry for :file:`ne_10m_admin_0_countries.shp`.
   * The **Layers** view is used to change the order and appearance of information in your Map.
   * The **Projects** view has been updated to show that your map is stored in `projects > ne 10m admin 0 countries`. You can have multiple projects open at a time, each project can have several maps.

#. Open up the :file:`~/data/natural_earth2/` folder on the desktop.
#. Drag :file:`HYP_50M_SR_W.tif` onto the Map Editor. A new layer is added to the map.
#. You can see the order the layers are drawn in the layer view. Right now the `HYP_50M_SR_W` layer is drawn on top of the `ne 10m admin 0 countries` layer.
#. Select the `HYP_50M_SR_W` layer in the catalog view and drag it to the bottom of the list.

  .. image:: /images/projects/udig/udig_QuickstartCountriesMap.png
   :scale: 70 %

.. Writing Tip: Note box
  Notes are optional. You can use them to provide descriptions and background information without getting in the way of instructions.

.. note::
   One of the most common questions asked about this application is how much memory
   it uses. Unlike most GIS applications, this one relies on a fixed amount of memory. The
   above shapefile is not loaded into memory. We have a policy of keeping data on disk and drawing data
   onto the screen as needed.

.. Writing Tip: Tip box
  Tips are optional. You can use them to provide extra information or other ways of performing an action like keyboard shortcuts or drag and drop.

.. tip:: You can also drag and drop shapefiles directly into application.

Navigate the map
================================================================================

You can control where in the world the Map Editor is looking by using the navigation tools in the tool bar along the top of the screen.

#. The |ZOOM| Zoom tool is available by default.
#. The |PAN| Pan tool can be used to scroll around your map without changing scale.
#. |SHOWALL| Show All can be used to return to the full extents at any time

Use Navigation Back |BNAV| and Forward |FNAV| in the menu bar to cycle though previously visited locations.

.. tip:: Most tools allow you to Pan by holding the center button and control the scale using the
   scroll wheel.

Create a map using Web Map Server
================================================================================

One of the reasons to use an application like this is to access all the great free geospatial
information available on the web. This section covers the use of Web Map Servers which make
available layers of information that you can mix into your own maps.

#. From the menu bar, choose :menuselection:`File --> New --> New Map`.
#. Click on the tab next to the **Catalog** view to display the *Web* view.
#. Click on the link WMS\:`dm solutions`_ link.

	.. _dm solutions: http://www2.dmsolutions.ca/cgi-bin/mswms_gmap?Service=WMS&VERSION=1.1.0&REQUEST=GetCapabilities

#. From the Resource Selection page, select the following layers:

   * Elevation/Bathymetry
   * Parks
   * Cities

#. Press :guilabel:`Finish` to add these layers to your map.

	.. image:: /images/projects/udig/udig_WMSMap.png
		:scale: 70 %

#. Use the |ZOOM| Zoom Tool to move closer to one of the Parks.
#. Switch to the |INFO| Info Tool and click on one the parks to learn more about it.

.. |INFO| image:: /images/projects/udig/udig_info_mode.png

.. tip:: You can switch between the zoom and info tools by pressing `Z` and `I` on the keyboard.

Apply color using Styles
================================================================================

#. Select the `project > ne 10m admin 0 countries`, you can double click to open this Map, or Right Click and choose Open Map

#. Select the countries layer in the Layer view.

#. Open up the **Style Editor** by right clicking on `ne 10m admin 0 countries` layer and choosing :guilabel:`Change Style`.

#. We are going to change a few things about how countries are displayed.

   * Line: Click :guilabel:`Border`, click on the Color button and change the color to BLACK.
   * Fill: On Tab :guilabel:`Fill` uncheck the box :guilabel:`enable/disable fill` to turn off fill.
   * Label: On Tab :guilabel:`Labels` check the box :guilabel:`enable/disable labeling`, and choose the attribute **NAME** from the list of attributes.

   .. image:: /images/projects/udig/udig_StyleEditor.png
      :scale: 70 %

#. Press :guilabel:`Apply` to see what this looks like on your Map, the **Layer** view will also be updated to reflect the current style.

#. When you are happy with the result you can press :guilabel:`Close` to dismiss the dialog.

Things to Try
================================================================================
.. Writing tip: Things to Try section
 This section is optional. Suggest one or several activities for people to try out on their own. It could be something very specific that is easily achievable, or it could be a bit of a challenge that involves a small bit of research (limited to something that can be found in documentation packaged on OSGeoLive.
Here are some additional challenges for you to try:

#. Try viewing your own GIS map layers, or try adding a layer from a `Web Feature Service (WFS) <http://www.opengeospatial.org/standards/wfs>`__.
#. Try styling the WFS layer.

What Next?
================================================================================

.. Writing tip: What's Next section
  This section is required. Provide links to any further documentation or tutorials. If your project has no further documentation, include a link to your project's website or wiki or include a contact email or mailing list to join.

There is a lot more great material for you to discover in our **walkthrough** documents.

* Walkthrough 1 - Try out the use of :doc:`PostGIS <../overview/postgis_overview>`, extract data from a Web Feature Server and explore the
  use of **Themes** with our powerful `Color Brewer` technology.

  :file:`/usr/local/share/udig/udig-docs/uDigWalkthrough 1.pdf`

* Walkthrough 2 - Learn how to create shapefiles and use the Edit tools to manipulate
  feature data, covers the installation of :doc:`GeoServer <../overview/geoserver_overview>` and editing with a Web Feature
  Server.

  Available on http://udig.refractions.net/
