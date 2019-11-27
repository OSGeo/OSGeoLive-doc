:Author: Ian Turton
:Author: Frank Gasdorf
:Reviewer: Angelos Tzotsos
:Reviewer: Cameron Shorter
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive12.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Thanks: geoserver-user list

@LOGO_geoserver@
@OSGEO_KIND_geoserver@

.. |GS| replace:: GeoServer
.. |UG| replace:: uDig 


********************************************************************************
@NAME_geoserver@ Quickstart
********************************************************************************

GeoServer is a java application for serving maps (and data) for other clients (such as web browsers) to draw. GeoServer comes with a browser-based management interface and connects to multiple data sources at the back end.

This Quick Start describes how to:

  * add a vector and raster data source to GeoServer
  * apply color to map features using styling
  * test the layers in a simple web map
  * learn about clients that can display your maps
  * add a layer from a NetCDF file

.. contents:: Contents
   :local:
  
Start Geoserver
===============

#. From the Start menu, select :menuselection:`Geospatial --> Web Services --> GeoServer --> Start GeoServer`. The application will take a few moments to start up and will open a web page at http://localhost:8082/geoserver/web 

   .. image:: /images/projects/geoserver/geoserver-login.png
    :scale: 70 %

#. Log in using the username **admin** and password **geoserver**. You will now see the *admin page*.

   .. image:: /images/projects/geoserver/geoserver-welcome.png
    :scale: 70 %

#. Select the **Layer Preview** link at the top of the *Data* section in the left hand menu to see a preview of the layers that are loaded on the server. 
  
   .. image:: /images/projects/geoserver/geoserver-layerpreview.png
    :scale: 70 %

#. Scroll to the bottom of the page and click on the **OpenLayers** link in the **tiger-ny** row. This will open a new window with a preview of some of the sample data. 

   .. image:: /images/projects/geoserver/geoserver-preview.png
    :scale: 70 %
    
#. You can zoom in to the map in three ways:

        * by clicking on the zoom bar on the left, the higher you click on it the more zoomed in you will see.

        * by using the mouse scroll wheel (if you have one), scrolling up will zoom in and down will zoom out.

        * by dragging a box on the map while holding down the :kbd:`shift key` - this will zoom in to the box selected (or as near as will fit in the screen).

Experiment with this view and look at some of the other previews.  Once you are comfortable viewing existing data you can move on to adding some new data.

Loading data
============

.. HB comment: is the following still true? 6.5rc2 worked for me from a DVD+R

.. note::
    You will not be able to carry out the following steps if you are
    running with a **read only** file system (such as the DVD). You
    will either need to run in a Virtual Machine, or from a USB, or install
    OSGeoLive (or just GeoServer) onto your hard drive.

In this example we are going to use the :doc:`Natural Earth data set <../overview/naturalearth_overview>`
that is included on OSGeoLive (:file:`/usr/local/share/data/natural_earth2/`).

#. We need to create a Store for our data. From the |GS| admin page go to :guilabel:`Stores`.
#. Click on :guilabel:`Add new Store`. You will see this page:

   .. image:: /images/projects/geoserver/geoserver-newstore.png
      :scale: 70 %
      :align: center
      :alt: The New Store page

#. Select the :guilabel:`Directory of spatial files`. You will see the following: 

   .. image:: /images/projects/geoserver/geoserver-new-vector.png
      :scale: 70 %
      :align: center
      :alt: Filling in the New Store page

#. Type in a name for the Data Store (for example, *Natural Earth*) and fill in the URL to the data set - in this case :file:`/usr/local/share/data/natural_earth2/`. You can use the browse button to find the directory if your data is somewhere else. 
#. Press :guilabel:`save`.

   .. image:: /images/projects/geoserver/geoserver-naturalearth.png
      :align: center 
      :scale: 70 %
      :alt: The Natural Earth Datastore

#. Press :guilabel:`publish` next to one of the layers to finish adding the data. This will take you to the *Layers* page:

   .. image:: /images/projects/geoserver/geoserver-publish.png
      :align: center
      :scale: 70 %
      :alt: The layer publishing page

   As you scroll down the page you will see that |GS| has filled in many of the fields for you. When you reach :guilabel:`Coordinate Reference System` you will notice that under *Native SRS* it says UNKNOWN you will need to fill in the next box (*declared SRS*) to make sure |GS| knows where the data is. 

#. You can type epsg:4326 in the box, or go to `http://prj2epsg.org/search <http://prj2epsg.org/search>`_ and paste in the string you see if you click on the link next to "UNKNOWN".
#. Click on :guilabel:`Compute from data` and :guilabel:`Compute from native bounds` to fill in the Bounding Boxes. 
#. Finally hit :guilabel:`save` and you have published your first layer.

.. note::
    Don't worry if the layer preview doesn't look very good as it is using the default style. In the next section we will look at producing a nicer style.

You can follow the same step with the other layers in the directory by using the :guilabel:`Add a new resource` button on the layers page. Just select the natural earth store from the drop down box to get back to the store's page.

Styling data
============

Styling a data set into a map layer |GS| uses an OGC standard called `Styled Layer Descriptors (SLD) <http://www.opengeospatial.org/standards/sld>`__. These are represented as XML files which describe the rules that are used to apply various symbolizers to the data.

To get started, lets style the Land and Ocean datasets. 
You can create SLD files using a simple text editor, but sometimes a graphical editor is better. There are several options here but |UG| allows you to open the shapefiles directly and apply simple styles using a GUI. It also provides a simple editor to modify the XML if I need to. 

Using |UG| to create simple styles
----------------------------------

.. note::

   For more details on how to use |UG| see the :doc:`uDig Quickstart <../quickstart/udig_quickstart>`

#. Open |UG| and add the shapefiles (using the add data button in the top left hand corner). 
#. Drag the ne_10m_land and ne_10m_ocean tables into the map window. |UG| automatically applies a style (so you can see the data).

   .. image:: /images/projects/geoserver/geoserver-udig_startup.png
     :align: center
     :scale: 70 %
     :alt: Default Styling in uDig

#. In the :ref:`Layer list <Layer_list>` select the style button (it looks like an artist's palette). 

   .. _Layer_list:
   .. image:: /images/projects/geoserver/geoserver-layer-chooser.png
     :align: center
     :scale: 70 %
     :alt: The Layer list window

   This will open the :ref:`Style Pane <Style_Pane>`. 
#. In the simple window we can easily select a nice blue for the oceans by clicking on the colored box on the fill tab and choosing from the color picker it produces. We can also increase the opacity of the fill to 100% to make the color look better. Pick the same blue for the border color so it will match.

   .. _Style_Pane:
   .. image:: /images/projects/geoserver/geoserver-style-pane.png
     :align: center
     :scale: 70 %
     :alt: The Style Pane 

#. Click ``OK`` and |UG| will display the changes. 

   .. image:: /images/projects/geoserver/geoserver-blue-ocean.png
     :align: center
     :scale: 70 %
     :alt: Blue Oceans

#. Repeat the steps above to change the color of the land layer. You can use the ``define custom colors`` section to create your preferred color.

   .. image:: /images/projects/geoserver/geoserver-custom-colour.png
     :align: center
     :scale: 70 %
     :alt: Defining a nicer land color

This gives a nice looking basic world map.

.. image:: /images/projects/geoserver/geoserver-basic-world.png
   :align: center
   :scale: 70 %
   :alt: A basic word map

Adding the style to GeoServer
-----------------------------

Now we need to transfer these styles to |GS|.

#. On the style window there is an export button which allows you to save the SLD file that defines your style. 
#. Once saved, you can go to the |GS| admin page again and select ``Styles`` (at the bottom of the ``Data`` section). 
#. Select the ``Add New Style`` link. At the bottom of that page is a file upload box and a browse button. 
#. Clicking browse to find the files you just saved. 
#. Click the upload link (next to the browse button) and a copy of the file appears in the editor. 
#. If you click on the validate button the highlighted lines will give you an error but you can safely ignore the error (or delete those lines as they don't do anything).
#. Press the :guilabel:`Submit` at the bottom of the page.

.. image:: /images/projects/geoserver/geoserver-add-style.png
   :align: center
   :scale: 70 %
   :alt: Adding a Style to GeoServer


Adding the style to the layer
-----------------------------

#. Click on the :guilabel:`Layers` link in the Menu on the left of the |GS| window. 
#. Click on the layer (e.g. *ne_10m_land*), then select the :guilabel:`Publishing` tab.
#. Change the :guilabel:`Default Style` box to the name of the style you uploaded in the previous section.
#. Now click :guilabel:`Save` and go to the Layer Preview page to check that it looks good.


.. note:: There are example style files for all of the example Natural Earth layers in :file:`/usr/local/share/geoserver`. 

.. TBD (needs more memory)
    Adding a Raster
    ===============

    In the Natural Earth folder is a folder :file:`HYP_50M_SR_W` which
    contains a raster image. You can serve this up in |GS| directly by
    going to the stores page and selecting :menuselection:`New Stores --> World Image` 
    and type
    :file:`/home/user/data/natural_earth2/HYP_50M_SR_W.tif`
    into the :guilabel:`URL` box.

    .. image:: /images/projects/geoserver/geoserver-raster.png
        :align: center
        :scale: 70 %
        :alt: Adding a Raster

    The click :guilabel:`Save` this will take you to the *New Layers
    Chooser* then click publish and :guilabel:`Save` to finish adding the
    raster. If you go to the Layers Preview page you
    can see the new image. 


Add a layer from a NetCDF file
===============================

The GeoServer NetCDF plugin allows the publication of rasters from NetCDF files.

Configure a NetCDF store
------------------------

#. After running "Start GeoServer"
#. Login as the administrator.
#. Click on :guilabel:`Add stores` then :guilabel:`NetCDF`. 
#. Enter a value for Data Source Name (this example uses "netcdf") and a NetCDF URL. You can use this sample file::

    file:///usr/local/share/data/netcdf/polyphemus_20120401.nc

#. Press "Save", "Publish" the "O3" layer.
#. Scroll down to the bottom of the "Data" tab and press "Save" again.

    .. image:: /images/projects/geoserver/geoserver-netcdf-store.png
        :align: center
        :scale: 100 %
        :alt: Adding a NetCDF store

Preview the NetCDF layer
------------------------

#. Select "Layer Preview" from the menu on the left
#. Scroll down to find the "cite:O3" entry, and click on the "OpenLayers" link to show a preview of the layer. 
#. Clicking on points will cause the value of "Ozone_concentration" to be shown in a table at the bottom of the map.

    .. image:: /images/projects/geoserver/geoserver-netcdf-preview.png
        :align: center
        :scale: 100 %
        :alt: OpenLayers preview of a NetCDF layer

.. note::
    This GeoServer instance has been configured with the ``NETCDF_DATA_DIR`` Java system property to allow the publication of NetCDF files in read-only directories.

What next?
==========

This is only the first step on the road to using GeoServer. There is a lot more functionality you can try.

* GeoServer Project home - http://geoserver.org/

* GeoServer User Manual - http://docs.geoserver.org/latest/en/user/

* GeoServer Tutorials - http://docs.geoserver.org/latest/en/user/tutorials/index.html

* GeoServer Styling Workshop - http://docs.geoserver.org/latest/en/user/styling/workshop/index.html
