:Author: Barbara Angerer
:Author: Angelos Tzotsos, OSGeo
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive13.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_geonode@
@OSGEO_KIND_geonode@


********************************************************************************
@NAME_geonode@ Quickstart
********************************************************************************

Open Source Geospatial Content Management System

GeoNode is a web-based application and platform for developing geospatial information systems (GIS) and for deploying spatial data infrastructures (SDI). 


.. contents:: Contents
   :local:


Start GeoNode
=============

To start GeoNode on your OSGeoLive DVD you have to
choose :menuselection:`Geospatial --> Browser Clients --> GeoNode --> Start GeoNode` and
after a few moments the GeoNode webpage will automatically
open at http://geonode. The page will look like the image below.

    .. figure:: /images/projects/geonode/geonode_screenshot.png
      :scale: 70%


Sign in as a registered user
============================

From the interface shown above, one can view and modify existing spatial layers and maps, as well as find information on other GeoNode users. But, without being logged in, you are limited to read-only access of public layers. In order to create a map and add layers to it, you have to sign in first.

From any page in the web interface, you will see a *Sign in* link on the top-right of the page. Click that link, and in the dialog that displays, fill in the user credentials. Try "admin" and "admin" for the Username and Password.

   .. figure:: /images/projects/geonode/geonode_signin_quickstart.png
     :scale: 70%


Add a new layer
===============

Layers are a published resource representing a raster or vector spatial data source. Layers also can be associated with metadata, ratings, and comments.

1. To see existing layers, from the navigation bar on the top of any page, select *Data* menu and click on the *Layers* link.

    .. figure:: /images/projects/geonode/geonode_menu_data.png
      :scale: 70%

The result will look like this:

    .. figure:: /images/projects/geonode/geonode_layers_page.png
      :scale: 70%

2. To add a layer to your account, select the *Upload* button on the top right of the *Layers* page:

    .. figure:: /images/projects/geonode/geonode_data_upload2.png
      :scale: 70%

In case you want to upload data from any other page, from the navigation bar, select *Data* menu and click on the *Upload Layers* link.

    .. figure:: /images/projects/geonode/geonode_data_upload1.png
      :scale: 70%

By clicking one of the above *Upload* links you will be brought to the upload page.

   .. figure:: /images/projects/geonode/geonode_upload_page.png
     :scale: 70%

3. You have two possibilities to add your files. You can either do that by using *drag & drop* on the *Drop Files Here* area or you can use the *Choose Files* button to select them.
   Be aware that you have to upload a complete set of files, consisting of a *shp*, a *prj*, a *dbf* and a *shx* file. If one of them is missing,
   GeoNode will warn you before you upload them.

4. Now click *Choose Files* button and you'll see a file selection window. Navigate to :file:`/home/user/data/natural_earth2` folder and select all the :file:`ne_10m_admin_0_countries` files.

   .. figure:: /images/projects/geonode/geonode_upload_select_files.png
     :scale: 70%

You should now be able to see all the files you want to upload.

   .. figure:: /images/projects/geonode/geonode_files_to_be_uploaded.png
     :scale: 70%

 .. Tip:: GeoNode has the ability to restrict who can view, edit, and manage layers. On the right side of the page you can see the *Permission* section, where you can limit the access on your layer. 
   Under *Who can view and download this data*, select *Any registered user*. This will ensure that anonymous view access is disabled.
   In the same area, under *Who can edit this data*, select your username. This will ensure that only you are able to edit the data in the layer.

    .. figure:: /images/projects/geonode/geonode_permission.png
      :scale: 70%
    
5. To upload data, click the *Upload* button at the bottom.

    .. figure:: /images/projects/geonode/geonode_upload_bar.png
      :scale: 70%

6. After the layer upload is completed, you can either preview the layer with *Layer Info* button, or edit the layer metadata with *Edit Metadata* or edit layer style on GeoServer with *Manage Styles* button.

    .. figure:: /images/projects/geonode/geonode_upload_result.png
      :scale: 70%

7. Press the *Layer Info* button to see the layer page

    .. figure:: /images/projects/geonode/geonode_new_layer.png
      :scale: 70%


Create a new map
================

The next step for you is to create a map and add the newly created layers to this map.

1. Click the *Explore Maps* link on the *Maps* toolbar. This will bring up the list of maps.

   .. figure:: /images/projects/geonode/geonode_maps_quickstart.png
     :scale: 70%

2. Currently, there aren't any maps here. To add one click the *Create a New Map* button.

   .. figure:: /images/projects/geonode/geonode_createmap2.png
     :scale: 70%

  A map composition interface will display.

   .. figure:: /images/projects/geonode/geonode_createmap.png
     :scale: 70%

   If a 404 popup message appears, ignore it, this is due to a missing GeoServer plugin that is not installed on OSGeoLive.

   In this interface there is a toolbar, layer list, and map window. The map window contains the OpenStreetMap layer by default.

3. Click on the *New Layers* button and select *Add Layers*. 

   .. figure:: /images/projects/geonode/geonode_addlayerslink.png
     :scale: 70%


 Now you should be able to see all the available layers. In this case, this should include the ones you've added before.

4. Select some layers by clicking the first entry and Ctrl-clicking the rest. Click *Add Layers* to add them all to the map.

   .. figure:: /images/projects/geonode/geonode_addlayersselect_quickstart.png
     :scale: 70%

 The layers will be added to the map.

5. To save the map click on the *Map* button in the toolbar, and select *Save Map*.

   .. figure:: /images/projects/geonode/geonode_savemaplink.png
     :scale: 70%


6. Enter a title and abstract for your map.

   .. figure:: /images/projects/geonode/geonode_savemapdialog.png
     :scale: 70%


7. Click *Save*. Notice that the link on the top right of the page changed to reflect the map's name.

   .. figure:: /images/projects/geonode/geonode_mapname.png
     :scale: 70%


   This link contains a permalink to your map. If you open this link in a new window, your map will appear exactly as it was saved.

8. Click *Done* next to the *Add Layers* button to see the legend of your map.

Share your map
==============

Now let's finish our map.

#. Right click on the *USA Population* layer and select *Zoom to layer extend*

   .. figure:: /images/projects/geonode/geonode_mapcomposition.png
     :scale: 70%


#. Make any final adjustments to the map composition as desired, including zoom and pan settings.

#. Click the *Map* button in the toolbar, and then click *Publish Map*.

   .. figure:: /images/projects/geonode/geonode_publishmaplink.png
     :scale: 70%


#. The title and abstract as previously created should still be there. Make any adjustments as necessary, and click *Save*.

#. A new dialog will appear with instructions on how to embed this map in a webpage, including a code snippet. You can adjust the parameters as necessary.

   .. figure:: /images/projects/geonode/geonode_publishmap.png
     :scale: 70%


Your map can now be shared.


What next?
==========

Now you've gotten a quick insight in the possibilities of GeoNode. To learn more about GeoNode and its features, visit our webpage www.geonode.org. 

To install GeoNode on your own server, follow our `Quick Installation Guide <https://docs.geonode.org/en/master/start/index.html#quick-installation-guide>`_ .

In order to get started with GeoNode our `documentation <https://docs.geonode.org/en/master/>`_ might be useful.

If you need help or want to get some information about a specific topic please
don't hasitate to ask us! You can do this through the #geonode IRC channel using
https://webchat.freenode.net/, through the `GeoNode Gitter channel <https://gitter.im/GeoNode/general>`_
or by asking your question in our `mailing list <https://lists.osgeo.org/cgi-bin/mailman/listinfo/geonode-users>`_ !
    
    
