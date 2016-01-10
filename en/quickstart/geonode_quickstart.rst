:Author: Barbara Angerer
:Version: osgeo-live7.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

==================
Geonode Quickstart
==================

Open Source Geospatial Content Management System

GeoNode is a web-based application and platform for developing geospatial information systems (GIS) and for deploying spatial data infrastructures (SDI). 

In this Quickstart guide you will learn the following:

    #. to register a new account to get started
    #. add a new layer
    #. create a map using your new layer
    #. share your map with others

To start GeoNode on your OSGeoLive DVD you have to
choose :menuselection:`Geospatial --> Browser Clients --> GeoNode --> Start GeoNode` and
after a few moments the GeoNode webpage will automatically
open at http://geonode. The page will look like the image below.

    .. figure:: ../../images/screenshots/800x600/geonode_start_page.png

1. Sign in as a registered user
-------------------------------

From the interface shown above, one can view and modify existing spatial layers and maps, as well as find information on other GeoNode users. But, without being logged in, you are limited to read-only access of public layers. In order to create a map and add layers to it, you have to sign in first.

From any page in the web interface, you will see a *Sign in* link. Click that link, and in the dialog that displays, fill in the user credentials. Try "admin" and "admin" for the Username and Password.

   .. figure:: ../../images/screenshots/800x600/geonode_signin_quickstart.png


2. Add a new layer
------------------

Layers are a published resource representing a raster or vector spatial data source. Layers also can be associated with metadata, ratings, and comments.

#. To add a layer to your account, navigate to the welcome page. There the following toolbar can be seen:

    .. figure:: ../../images/screenshots/800x600/geonode_toolbar_quickstart.png

#. By clicking the *Layers* link you will be brought to the *Layers* menu where a new subtoolbar can be seen. This toolbar allows you to *Explore*, *Search* and *Upload* layers. 

   .. figure:: ../../images/screenshots/800x600/geonode_layerstoolbar_quickstart.png

#. Now click *Upload Layers* and you'll see the upload form.

   .. figure:: ../../images/screenshots/800x600/geonode_uploadform_new_quickstart.png

#. You have two possibilities to add your files. You can either do that by using *drag & drop* or you choose to *browse* them.
   Be aware that you have to upload a complete set of files, consisting of a *shp*, a *prj*, a *dbf* and a *shx* file. If one of them is missing,
   GeoNode will warn you before you upload them.

#. You shold now be able to see all the files you want to upload. 

   .. figure:: ../../images/screenshots/800x600/geonode_files_to_be_uploaded.png

#. GeoNode has the ability to restrict who can view, edit, and manage layers. On the right side of the page you can see the *Permission* section, where you can limit the access on your layer. 
   Under *Who can view and download this data*, select *Any registered user*. This will ensure that anonymous view access is disabled.
   In the same area, under *Who can edit this data*, select your username. This will ensure that only you are able to edit the data in the layer.

    .. figure:: ../../images/screenshots/800x600/geonode_permission.png
    
#. To upload data, click the *Upload* button at the bottom.


3. Create a new map
-------------------

The next step for you is to create a map and add the newly created layers to this map.

#. Click the *Maps* link on the top toolbar. This will bring up the list of maps. 

   .. figure:: ../../images/screenshots/800x600/geonode_maps_quickstart.png


#. Currently, there aren't any maps here. To add one click the *Create a New Map* button and a map composition interface will display.

   .. figure:: ../../images/screenshots/800x600/geonode_createmap.png


   In this interface there is a toolbar, layer list, and map window. The map window contains the MapQuest OpenStreetMap layer by default. There are other service layers available here as well:  Blue Marble, Bing Aerial With Labels, MapQuest, and OpenStreetMap.

#. Click on the *New Layers* button and select *Add Layers*. 

   .. figure:: ../../images/screenshots/800x600/geonode_addlayerslink.png


#. Now you should be able to see all the availabel layers. In your case, this should only be the ones you've added before (San Andreas?).

#. Select all of the layers by clicking the top entry and Shift-clicking the bottom one. Click *Add Layers* to add them all to the map.

   .. figure:: ../../images/screenshots/800x600/geonode_addlayersselect_quickstart.png

#. The layers will be added to the map. Click *Done* (right next to *Add Layers* at the bottom) to return to the main layers list.
   

#. To save the map click on the *Map* button in the toolbar, and select *Save Map*.

   .. figure:: ../../images/screenshots/800x600/geonode_savemaplink.png


#. Enter a title and abstract for your map.

   .. figure:: ../../images/screenshots/800x600/geonode_savemapdialog.png


#. Click *Save*. Notice that the link on the top right of the page changed to reflect the map's name.

   .. figure:: ../../images/screenshots/800x600/geonode_mapname.png


   This link contains a permalink to your map. If you open this link in a new window, your map will appear exactly as it was saved.


4. Share your map
-----------------

Now let's finish our map.

#. Check the box next to the *highway* layer to activate it. If it is not below the *POI* layer in the list, click and drag it down.

   .. figure:: ../../images/screenshots/800x600/geonode_mapcomposition.png


#. Make any final adjustments to the map composition as desired, including zoom and pan settings.

#. Click the *Map* button in the toolbar, and then click *Publish Map*.

   .. figure:: ../../images/screenshots/800x600/geonode_publishmaplink.png


#. The title and abstract as previously created should still be there. Make any adjustments as necessary, and click *Save*.

#. A new dialog will appear with instructions on how to embed this map in a webpage, including a code snippet. You can adjust the parameters as necessary.

   .. figure:: ../../images/screenshots/800x600/geonode_publishmap.png


Your map can now be shared!

To be continued
---------------

Now you've gotten a quick insight in the possibilities of GeoNode. To learn more about GeoNode and its features, visit our webpage www.geonode.org. 
To install GeoNode on your own server, follow our `Quick Installation Guide <http://docs.geonode.org/en/latest/intro/install.html>`_ or the `Complete Installation Guide <http://docs.geonode.org/en/latest/deploy/install.html>`_. 
In order to get started with GeoNode our `documentation <http://docs.geonode.org/en/latest/index.html>`_ might be useful.

If you need help or want to get some information about a specific topic please don't hasitate to ask us! You can do this through the #geonode IRC channel using http://webchat.freenode.net/
or by asking your question in our `google group <https://groups.google.com/forum/#!forum/geonode-users>`_ !
    
    
