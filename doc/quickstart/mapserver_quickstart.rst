:Author: OSGeoLive
:Author: Alan Boudreault
:Author: Steve Lime
:Author: Astrid Emde
:Reviewer: Stephan Meissl
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_mapserver@
@OSGEO_KIND_mapserver@


================================================================================
@NAME_mapserver@ Quickstart
================================================================================

MapServer is an `Open Source <http://www.opensource.org>`_ server based 
application that allows you to publish geographic map images and vector data 
through the internet using `OGC standards <http://www.opengeospatial.org/standards>`__ 
such as `WMS <http://www.opengeospatial.org/standards/wms>`__, `WFS 
<http://www.opengeospatial.org/standards/wfs>`__, and `WCS <http://www.opengeospatial.org/standards/wcs>`__.

.. contents:: This Quick Start Contents
    :local:
    :depth: 1


Configure MapServer using the MapFile configuration file
================================================================================

.. note:: 

  **What will I learn ?** In this section, you will learn what a 
  MapFile is and how to configure it to allow MapServer to serve a shapefile 
  as images using WMS requests.

What is a MapFile ?
--------------------------------------------------------------------------------

The `Mapfile <http://mapserver.org/mapfile/index.html>`_ is the 
configuration file that MapServer uses to render geospatial data as images 
or vector data. Its main purpose is to define the layers it can draw, how to 
read necessary data, and how to render it (e.g. color, symbol, label, etc...).

Creating my first MapFile
--------------------------------------------------------------------------------

#. Open any text editor (e.g. :menuselection:`Applications --> Accessories --> 
   Leafpad`).
#. Create the file "mapserver_quickstart.map" in your home directory: 
   :file:`/home/user/mapserver_quickstart.map`

Put the following content in it::

  MAP
    NAME "MAPSERVER_QUICKSTART"
    EXTENT -137 29 -53 88
    UNITS DD
    SHAPEPATH "/home/user/data/natural_earth2/"
    SIZE 800 600

    IMAGETYPE PNG24
  
    PROJECTION
      "init=epsg:4326" 
    END

    WEB
      METADATA
        ows_title "MapServer Quickstart"      
        ows_enable_request "*"
        ows_srs "EPSG:4326 EPSG:25832 EPSG:25833"        
      END
    END

    LAYER
      NAME "Countries"
      STATUS ON
      TYPE POLYGON
      DATA "ne_10m_admin_0_countries"
      CLASS 
        STYLE
          COLOR 246 241 223
          OUTLINECOLOR 0 0 0
        END
      END 
    END

  END

.. note::

  The example uses the natural earth dataset, which is already on OSGeoLive at :file:`~/data/natural_earth2` (a short cut to 
  :file:`/usr/local/share/data/natural_earth2`).

Each object in a MapFile starts with its name (for example **MAP**) and ends 
with an **END**.  A MapFile always starts with the **MAP** object and should 
contain a list of **LAYER** objects the MapFile can read and draw. In our 
MapFile, we currently have only one layer defined.

Let's take a look at some of the objects (and properties) defined in our 
MapFile: 

 * EXTENT: sets the default geospatial bounding box for this configuration.
 * LAYER: defines access and display properties for a spatial dataset.  We'll 
   add another layer later.
 * SHAPEPATH: sets a base path for file-based data (e.g. shapefiles or tiff 
   images). 

If we look closer at the **LAYER** in our MapFile, we'll see that it 
contains a bunch of properties and objects too. Among them are:

 * STATUS: defines whether the layer can be drawn (*ON*), can't be drawn 
   (*OFF*) or is always drawn (*DEFAULT*).
 * TYPE: the geometry type that MapServer should use when rendering the data 
   as an image. In our MapFile, the data will be drawn as *polygons*.
 * DATA: the name of the spatial data file this layer uses, in this case a 
   shapefile.
 * CLASS: determines how to draw a layer (styling). We'll cover this object in 
   more detail later.

.. note::

  A complete list of the available objects and properties a MapFile can have 
  can be found in the `MapServer documentation page 
  <http://mapserver.org/mapfile/index.html>`_.



Render a map image with MapServer using a WMS **GetMap** request
================================================================================

.. note::

  **What will I learn ?** You will learn how to use to render an image with 
  layers from a MapFile with MapServer using an OGC WMS request.

Open a web browser and enter the following URL::

  http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Countries&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=PNG&WIDTH=800&HEIGHT=600

What does the above mean?  If we put it in simple words, it's a `Web Map 
Service (WMS) <http://www.opengeospatial.org/standards/wms>`_ **GetMap** 
request that tells MapServer to "*use the following MapFile to render the 
specified layers as a png image based on some user-supplied parameters such 
as image size, geographical extent, projection, etc.*".  All layers 
specified in the "*&LAYERS=...*" property having *STATUS ON* in the MapFile 
will be rendered in addition to all layers with *STATUS DEFAULT*. The 
result looks like the following:

  .. image:: /images/projects/mapserver/mapserver_map.png
    :scale: 70 %

.. note::

  All parameters of the request are WMS-specific, except 
  "*?map=/home/user/mapserver_quickstart.map*", which is MapServer-specific.



Render a map image with MapServer using the command line
========================================================

Although MapServer is geared towards web applications, it can also produce 
images on the command line. This can be useful if you are looking for 
repetitive mapping, or while debugging.

Open a terminal (:menuselection:`Applications --> System Tools --> Terminal 
Emulator`) and type::

  shp2img -m mapserver_quickstart.map -o mymap.png

If this command runs successfully, you are able to see your rendered map at 
file:///home/user/mymap.png.



Add a new layer to the MapFile to serve a local shapefile
================================================================================

.. note::

  **What will I learn ?** You will learn how to add a new layer object 
  definition to your MapFile.

We will now add a new layer to our MapFile. Before the last *END* statement 
in the MapFile, add the following layer configuration::

  LAYER
    NAME "Lakes"
    STATUS ON
    TYPE POLYGON
    DATA "ne_10m_lakes"
    CLASS 
      STYLE
        COLOR 153 179 204
      END
    END 
  END

Now we have 2 layer definitions in our MapFile. Note that the new one we 
just added has the "STATUS" property set to "ON". That means that unless we 
specifically request it, it won't be rendered.

Let's take our previous WMS **GetMap** request and add our new "Lakes" layer 
to the image rendered. We simply need to add the new layer name to the 
"LAYERS" property list::

  http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Countries,Lakes&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=PNG&WIDTH=800&HEIGHT=600

The image rendered by MapServer looks like our previous map, but with the 
addition of the lakes from our new layer:

  .. image:: /images/projects/mapserver/mapserver_lakes.png
    :scale: 70 %



Style a layer using MapFile configurations
================================================================================

.. note::

  **What will I learn ?** You will see an example of styling elements inside 
  a layer depending on some of its data properties.

In a MapFile, a LAYER object can contain an infinite number of CLASS 
objects. These are used to style the elements contained in the spatial data 
file (DATA). For example, if we look closer at our "ne_10m_lakes" data file 
using a tool such as `ogrinfo <http://www.gdal.org/ogrinfo.html>`_, we'll 
see the geometry and attribute definitions it contains. These attribute 
values can be used as a way to draw the elements inside a dataset 
differently using multiple CLASS objects.

In our "ne_10m_lakes" dataset, we have a *ScaleRank* attribute, which seems 
to be related to the size of the lakes. We can use this as a way to render 
the lakes differently. In the LAYER object, we'll add another CLASS object 
just before our current one::

  LAYER
    NAME "Lakes"
    STATUS ON
    TYPE POLYGON
    DATA "ne_10m_lakes"
    CLASSITEM "ScaleRank"
    CLASS 
      EXPRESSION /0|1/
      STYLE
        COLOR 153 179 204
        OUTLINECOLOR 0 0 0
      END
    END 
    CLASS
      STYLE
        COLOR 153 179 204
      END
    END
  END

What does our new CLASS object do? It basically tells MapServer to draw the 
elements having the "ScaleRank" property equal to "0" or "1" with a black 
outline. Class objects are always read from the top to the bottom for each 
feature to be drawn. When a feature matches the "EXPRESSION" specified in a 
class, that class is going to render the feature. If the feature does not 
match a class the next class is checked. If a feature does not match any 
class then it is not rendered at all but if the last class in a layer 
contains no EXPRESSION then that class acts as a default. The LAYER 
"CLASSITEM" property tells MapServer which attribute to use when evaluating 
EXPRESSIONs defined in the CLASS objects.

The result of this new addition should make the big lakes in our map image 
rendered with a black outline:

  .. image:: /images/projects/mapserver/mapserver_lakes_scalerank.png
    :scale: 70 %

.. note::

  Learn more about `EXPRESSIONS 
  <http://mapserver.org/mapfile/expressions.html>`_ in MapServer.


Publish your data as OGC WMS (Web Map Service)
================================================================================

MapServer supports different OGC Standards like OGC WMS, WFS or WCS. With OGC WMS you can publish your data as a Map Service and integrate the service in a Desktop GIS like QGIS or in a Web Client like OpenLayers or Mapbender.

Using QGIS Desktop to load your OGC WMS
--------------------------------------------------------------------------------

Start QGIS via :menuselection:`Geospatial --> Desktop GIS --> QGIS Desktop`. Go to :menuselection:`Layer --> Add Layer --> Add WMS/WMTS Layer...`.

Click button **New** and add a name and your Service URL and save your settings:

http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=GetCapabilities&VERSION=1.3.0  

Then you can connect to your service and add one or more layers of the service to your QGIS project. If you choose the layer with the ID 0 you can load the whole service with all layers at once.

  .. image:: /images/projects/mapserver/mapserver_load_wms_to_qgis.png
    :scale: 70 %


What Next?
================================================================================

This is a simple example, but you can do much, much more. The MapServer 
project website contains many resources to help you get started. Here's a 
few resources to check out next:

* Read the `Introduction to MapServer 
  <http://mapserver.org/introduction.html#introduction>`_.
* Have a look at the `MapServer Tutorial 
  <http://www.mapserver.org/tutorial/index.html>`_ which contains more MapFile 
  examples.
* Check the `OGC Support and Configuration 
  <http://www.mapserver.org/ogc/index.html>`_ to learn more about OGC 
  standards in MapServer (WMS, WFS, SLD, WFS Filter Encoding, WCS, SOS, etc.).
* Ready to use MapServer? Then join the community on the `Mailing Lists 
  <http://www.mapserver.org/community/lists.html>`_ to exchange ideas, discuss 
  potential software improvements and ask questions.
