:Author: GeoNetwork Community
:Version: osgeolive13.0
:Reviewer: Jo Cook
:Reviewer: Cameron Shorter
:Reviewer: Angelos Tzotsos, OSGeo
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Thanks: GeoNetwork Community

.. |GN| replace:: GeoNetwork

@LOGO_geonetwork@
@OSGEO_KIND_geonetwork@


********************************************************************************
@NAME_geonetwork@ Quickstart
********************************************************************************

GeoNetwork is a catalog application to manage spatially referenced resources. It provides powerful metadata editing and search functions as well as an interactive web map viewer. It is currently used in numerous Spatial Data Infrastructure initiatives across the world.

.. contents:: This Quick Start Guide will take you through the following steps:

Prerequisites
-------------

This guide assumes that you have Geonetwork installed and running, and know the URL so you can connect to it from your browser. If not, refer to the `Installation Guide <https://geonetwork-opensource.org/manuals/trunk/en/maintainer-guide/installing/index.html>`_.

Throughout this guide we will use the URL ``http://localhost:8880/geonetwork`` to refer to the catalog, please substitute a different URL if this is not correct for your system.


1. Access the catalog
---------------------

In the Web Services folder on the Desktop, double-click **start GeoNetwork**. This will open the Firefox web browser at the URL ``http://localhost:8880/geonetwork``. This will be referred to throughout this document as the *homepage*. 

You can return to the  homepage at any point by selecting the catalogue logo in the top left of the top toolbar. In the screenshot below, this is labelled  “My GeoNetwork catalogue” but it may have a different name and logo.


.. figure:: /images/projects/geonetwork/geonetwork_home-page.png
  :scale: 70 %


2. Sign in
----------

Select **Sign in** in the top right of the top toolbar in the homepage to visit the sign in page. Enter the username ``admin`` and password ``admin`` and select the blue **Sign in** button to sign in as the catalog administrator. 

.. figure:: /images/projects/geonetwork/geonetwork_signin.png
  :scale: 70 %


Once signed in, the top toolbar will change to include some additional elements, namely a link to the Admin console, the name of the signed in user, a link to Sign out, and a dropdown box for changing the interface language.


.. figure:: /images/projects/geonetwork/geonetwork_identified-user.png
  :scale: 70 %

3. Load Sample Data
-------------------

Select **Admin console** in the top toolbar to access the administrative functions in the catalog, then select the blue **Metadata and templates** button to access the sample data and templates tab.


.. figure:: /images/projects/geonetwork/geonetwork_metadata-and-templates.png
  :scale: 70 %


This tab lists all the metadata standards loaded in the catalog. The default standards in GeoNetwork 3.2 are:

- Geographic information - Metadata (iso19139)
- Dublin Core (for CSW only) (csw-record)
- Dublin Core (dublin core)
- Geographic information - Methodology for feature cataloguing (iso9110)

For the purposes of this Quick Start Guide, select Geographic information - Metadata (iso19139) and then select the blue **Load samples for selected standards** button below the list.


.. figure:: /images/projects/geonetwork/geonetwork_templates.png
  :scale: 70 %


*When this process is complete, a notice will appear in the right of the window indicating that 5 record(s) have been added for schema ‘iso19139’.*

4. Search for spatial data
--------------------------

Return to the catalog homepage by selecting the catalog name in the top left of the top toolbar. The homepage will now show icons representing the loaded records, classified by topic (in blue) and resource type (in green). Below this are tabs classifying the records by date added (latest news) and popularity (most popular).

.. figure:: /images/projects/geonetwork/geonetwork_screenshot.png
  :scale: 70 %

Select **Search** in the top toolbar to access the Search page.

The Search page provides different ways for search:

- a full text search box providing suggestions as you type,


.. figure:: /images/projects/geonetwork/geonetwork_full-text.png
  :scale: 70 %

- *Search facets*, or  filters, that provide ways of narrowing down the search results, such as *Type of Resource*, *Topic*, *Keywords*,

.. figure:: /images/projects/geonetwork/geonetwork_facets.png
  :scale: 70 %

* An overview map, where you can draw a box to filter results spatially (Hint- if you can’t see this, select MAP in the bottom right corner of your page)

.. figure:: /images/projects/geonetwork/geonetwork_spatial-filter.png
  :scale: 70 %

* By selecting the vertical ellipsis in the search box you can access the **advanced search** panel and search by *category*, *keyword*, *contact*, or records within a specific time period.

.. figure:: /images/projects/geonetwork/geonetwork_advanced.png
  :scale: 70 %


5. Display Results
-----------------------

The search results are depicted as “cards”, showing the Categories the metadata is classified with, the title of the record, a thumbnail, an abstract (if present) and links to downloads and other resources (if present).

.. figure:: /images/projects/geonetwork/geonetwork_a-result.png
  :scale: 70 %

Select a card to take you to a page showing the full details for that record. Select the blue **Back to search** button to return to the Search page when you’re done.

.. figure:: /images/projects/geonetwork/geonetwork_a-record.png
  :scale: 70 %


In the top right of the record are icons for:

- Editing the record
- Deleting the record
- Managing the record (such as assigning viewing or editing privileges, transferring ownership to a different user)
- Downloading the record as multiple formats
- Switching to **Full view** or **XML view**

Switching to **Full view** will show more detailed metadata. To switch back to the original view select **Default view** from the list.

6. Add layers to the map
------------------------

From the **Search tab**, click on the card for **Physiographic Map of North and Central Eurasia (Sample record, please remove!)** to view the metadata. Move down the page until the **Download and links** section is visible.

The **Download and links** section shows external resources associated with the metadata record, such as:

- A file download of the data,
- Further information such as a web page,
- A Web Mapping Service (WMS) or Web Feature Service (WFS) link to the data.

Locate the link labelled as **This dataset is published in the view service (WMS) available at http://data.fao.org/maps/wms with layer name GEONETWORK:phy_landf_7386.** and select **Add to map**.

This step will switch you to the **Map** tab in the catalog, and after a short delay the WMS layer will be added to the map.

Tools for using the Map are arranged in two groups in the right-hand side of the map. The top group looks like this:

.. figure:: /images/projects/geonetwork/geonetwork_maptools_top.png
  :scale: 70 %


The tools are as follows:

- Add new layers to the map. You can search the catalog, add layers from web services, or KML,
- Manage existing layers or change the background map (the default is openstreetmap),
- Filter layers on the map (if configured),
- Manage the Map, by setting it back to default settings, loading a new map definition, downloading the current map, or saving the map configuration as a layer in the catalog,
- Print the map,
- Synchronise layers with the small map on the Search tab,
- Measure distances on the map,
- Draw annotations on the map.

The lower group of tools look like this:

.. figure:: /images/projects/geonetwork/geonetwork_maptools_bottom.png
  :scale: 70 %


They are as follows:

- Zoom in on the map,
- Zoom out on the map,
- Zoom to the initial extent of the map,
- Zoom to your position (if your browser is location-enabled),
- Add a graticule (grid lines) to your map.

Additionally there is a geographic search tool in the top left.

Using the Manage Layers tool, select the cog symbol next to **Physiography of North and Central Eurasia Landform** and select **Zoom to layer**. 

.. figure:: /images/projects/geonetwork/geonetwork_manage_layers_cog.png
  :scale: 70 %


The map will zoom to the extent of this layer. 

.. figure:: /images/projects/geonetwork/geonetwork_zoom_to_layer.png
  :scale: 70 %

Select the **paintbrush** icon next to the layer to see the legend, showing you the classification used for the display. You can dismiss this dialog by selecting the **X** in the top right corner.

.. figure:: /images/projects/geonetwork/geonetwork_layer_legend.png
  :scale: 70 %

Select a feature on the map corresponding to a category in the legend, such as an area of water. Zoom and pan around the map as needed to identify a suitable area. Clicking on the feature will bring up an identification box at the bottom of the map showing details about the area selected.

.. figure:: /images/projects/geonetwork/geonetwork_maplayer_infoclick.png
  :scale: 70 %



7. Where to go next
-------------------

Visit the `Geonetwork User Guide <https://geonetwork-opensource.org/manuals/trunk/en/user-guide/index.html>`_ and try the chapter on **Describing Information**, to learn how to create and edit metadata records. Follow up by visiting subsequent chapters to learn how to associate resources with your metadata, tag it with keywords and add it to categories, and publish your metadata to the outside world.

