.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  This Quick Start should describe how to run a simple example, which
    covers one of the application's primary functions.
  The Quick Start should be able to be executed in around 5 minutes.
  The Quick Start may optionally include a few more sections
    which describes how to run extra functions.
  This document should describe every detailed step to get the application
    to work, including every screen shot involved in the sequence.
  Finish off with "Things to Try" and "What Next?" sections.
  Assume the user has very little domain expertise, so spell everything out.
  If using example data, please use the general layers from naturalearth
   and Open Street Map. These layers are loaded by install_gisdata.sh into:
   Open Street Map:
     /home/user/data/osm/
   Vector Data: Available as .shp files
     /home/user/data/natural_earth/
       cultural/10m-populated-places-simple
       cultural/10m-admin-0-countries
       cultural/10m-populated-places-simple
       cultural/10m-urban-area
       physical/10m-land
       physical/10m-ocean
       physical/10m-lakes
       physical/10m-rivers-lake-centerlines
   Raster Raster basemap Cross Blended Hypso with Shaded Relief and Water
     1:50 million (40mb). Available as .tif
     /home/user/data/natural_earth/HYP_50M_SR_W/

.. Writing Tip:
  Metadata about this document

:Author: Ian Turton
:Version: osgeo-live4.0
:License: Creative Commons
:Thanks: geoserver-user list

.. |GS| replace:: GeoServer
.. |PG| replace:: PostGIS
.. |UG| replace:: uDig 



.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _geoserver-quickstart:
 
.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    images/project_logos/logos-<application>.png

.. image:: images/project_logos/logo-GeoServer.png
  :alt: project logo
  :align: right

********************
GeoServer Quickstart 
********************

.. Writing Tip:
  First sentence defines what the application does.
  You may also need to include a sentence of two describing the domain.
  Eg: For a Business Intelligence application, you should describe what
  Business Intelligence is.

GeoServer is a java application for serving maps (and data) for other
clients to draw.

.. Writing Tip:
  Describe what will be covered in this Quick Start.

This Quick Start describes how to:

  * add a vector and raster data source to GeoServer
  * apply colour to map features using styling
  * test the layers in a simple web map
  * learn about clients that can display your maps

Start |GS|
==========

.. Writing Tip:
  Describe steps to start the application
  This should include a graphic of the pull-down list, with a red circle
  around the application menu option.
  #. A hash numbers instructions. There should be only one instruction per
     hash.

.. TBD: Add menu graphic to this uDig Quickstart

#. Select the "Start GeoServer" icon.
#. The application will take a few moments to start up
#. Goto the GeoServer web page at http://localhost:8082/geoserver/web 

.. Writing Tip:
  For images, use a scale of 50% from a 1024x768 display (preferred) or
  70% from a 800x600 display.
  Images should be stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/screenshots/1024x768/
  and accessed here:
    images/screenshots/1024x768/<application>_<screen_description>.png

.. image:: images/screenshots/800x600/geoserver-login.png
    :width: 90 %
    :align: left


First Views
===========

#. When you first open the |GS| page you will see the screen above, first you need to log in using the username admin and password geoserver. You will now see the *admin page* 

    .. image:: images/screenshots/800x600/geoserver-welcome.png
        :width: 90%
        :align: left

#. The **Layer Preview** link at the bottom of the left hand menu allows you to see a preview of the layers that are loaded on the server. 
  
    .. image:: images/screenshots/800x600/geoserver-layerpreview.png
        :width: 90%
        :align: left

#. Scroll to the bottom of the page and click on the **OpenLayers** link in the **tiger-ny** row, this will open a new window with a preview of some of the sample data. 

    .. image:: images/screenshots/800x600/geoserver-preview.png
        :width: 90%
        :align: left
    
    You can zoom in to the map in three ways:

        * by clicking on the zoom bar on the left, the higher you click on it the more zoomed in you will see.

        * by using the mouse scroll wheel (if you have one), scrolling up will zoom in and down will zoom out.

        * by dragging a box on the map while holding down the :kbd:`shift key` - this will zoom in to the box selected (or as near as will fit in the screen).

#. Experiment with this view and look at some of the other previews.  Once you are happy with looking at data you can move on to adding some new data.

Loading Data
============
In this example we are going to use the `Natural Earth data set <http://naturalearthdata.com>`_ that is included on the Live-DVD (:file:`/usr/local/share/data/natural_earth/`).

Styling
-------

To style a data set into a map layer |GS| uses an OGC standard called
Styled Layer Descriptors (SLD). These are represented as XML files
which describe the rules that are used to apply various symbolizers to
the data.

To get started I styled the Land and Ocean datasets from the Natural Earth data (in :file:`/usr/local/share/data/natural_earth/`). 
You can create SLD files using a simple text editor, but
sometimes a graphical editor is better. There are several options here
but I like to use |UG| (http://udig.refractions.net/) as it allows me
to open the shapefiles directly and apply simple styles using a
GUI, but also provides a simple editor to modify the XML if I need to. 

Using |UG| to create simple styles
``````````````````````````````````

.. note::

   For more details on how to use |UG| see `<udig_quickstart.html>`_

Once I opened |UG| up and added the shapefiles (using the
add data button in the top left hand corner). I dragged the 10m_land
and 10m_ocean tables into the map window. |UG| automatically applies
a style (so you can see the data).

.. figure:: images/screenshots/800x600/geoserver-udig_startup.png
   :align: center
   :width: 90%

   *Default Styling in UDig*

Now obviously an orange ocean will not work (even if I could live
with the green land). So in the `Layer list`_ select the style
button (it looks like an artist's palette). 

.. figure:: images/screenshots/800x600/geoserver-layer-chooser.png
   :align: center

   The _`Layer list` window


This will open the `Style Pane`_ - in the simple window I can easily
select a nice blue for the oceans by clicking on the colored box by
the fill label and choosing from the color picker it produces. I also
increased the opacity of the fill to 100% to make the color look
better. 

.. figure:: images/screenshots/800x600/geoserver-style-pane.png
   :align: center

   The _`Style Pane` 


I also turned the line (or stroke) off by unchecking the box
by ``line``. Once I was done I clicked ``OK`` and |UG| showed me the
changes. 


.. figure:: images/screenshots/800x600/geoserver-blue-ocean.png
   :align: center
   :width: 90%

   *Blue Oceans*

Finally I prefer a more understated land color than green [#fn1]_ so
I repeated the steps above to change the color of the land layer.
None of the default colors seemed right to me so I went into the
``define custom colors`` section to create one I liked.

.. figure:: images/screenshots/800x600/geoserver-custom-colour.png
   :align: center

   *Defining a nicer land color*

This gives me a nice looking basic world map

.. figure:: images/screenshots/800x600/geoserver-basic-world.png
   :align: center
   :width: 90%

   *A basic word map*

Adding the Style to |GS|
````````````````````````

Now I need to transfer these styles to |GS| - on the style window
there is an export button which allows me to save the SLD file that
defines my style. Once I've saved the two styles I can go to the |GS|
admin page again and select ``Styles`` (at the bottom of the ``Data``
section). Then I select the ``Add New Style`` link, at the bottom of
that page is a file upload box and a browse button. Clicking this
allows me to hunt around on my hard drive to find the files I just
saved. Once I've found one I want, I click the upload link (next to the browse
button) and a copy of my file appears in the editor. 

.. figure:: images/screenshots/800x600/geoserver-add-style.png
   :align: center
   :width: 90%

   *Adding a Style to GeoServer*


Adding the data store to |GS|
------------------------------

Now that I have some styles available we can actually the shapefiles 
to |GS|. Going to the :menuselection:`Data->Layers` page gives me the
option to :menuselection:`add a new resource`. Selecting that presents a drop down
list of data stores, select the store added above and it will show you
a list of the available layers in that store. Click on the ``publish``
link next to the one we want (``10m_oceans``). 

|GS| will recognize the projection of the data but you
need to click on the ``compute from data`` link under the bounding
boxes [#fn3]_. Make sure to click on the ``publish`` tab to set the
style to the one you have just uploaded.


Clients for WMS layers
======================

A large variety of clients exist to make use of the WMS layers you are serving
from |GS|. This is a list of just some of them 

    * `uDig <udig_quickstart.html>`_

    * `OpenLayers <openlayers_quickstart.html>`_

    * `Atlas Styler <atlasstyler_quickstart.html>`_

    * `MapBender <mapbender_quickstart.html>`_


.. Rubric:: Footnotes
.. [#fn1] If you lived in central Pennsylvania in the summer you
   wouldn't expect green either.
.. [#fn3] in this case the figures will be the same as our data is in
   lat/lon anyway. If the data was projected then they would be
   different.

