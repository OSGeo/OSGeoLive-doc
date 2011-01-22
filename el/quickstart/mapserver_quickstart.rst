:Author: OSGeo Live
:Author: Alan Boudreault
:Version: osgeo-live4.0
:License: Creative Commons

.. _mapserver-quickstart:

.. image:: ../../images/project_logos/logo-mapserver-new.png
  :scale: 65 %
  :alt: Project logo
  :align: right
  :target: http://mapserver.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


********************
MapServer Quickstart
********************

MapServer is an `Open Source <http://www.opensource.org>`_ geographic data rendering engine. It allows you create "geographic image maps".

This Quick Start describes how to:
     
  * Create a mapfile
  * Visualize a map using Web Map Service (WMS)
  * Add a new layer from a shapefile
  * Style a layer

Create a mapfile
================

Firstly, we are going to create a simple mapfile. 

#. Open any text editor (Mousepad is the default text editor on the live dvd: :menuselection:`Applications --> Accessories --> Mousepad`).
#. Create the file "mapserver_quickstart.map" in your home directory: :file:`/home/user/mapserver_quickstart.map`

The file should contains the following content::

  MAP
    NAME "MAPSERVER QUICKSTART"
    STATUS ON
    EXTENT -137 29 -53 88
    UNITS DEGREE
    SHAPEPATH "/home/user/data/natural_earth/"
    SIZE 800 600
  
    PROJECTION
      "init=epsg:900913" 
    END

    OUTPUTFORMAT
      NAME 'AGG/PNG'
      DRIVER AGG/PNG
    END

    LAYER
      NAME "Admin Countries"
      STATUS DEFAULT
      TYPE POLYGON
      DATA "10m-admin-0-countries"
      CLASS 
        STYLE
          COLOR 246 241 223
          OUTLINECOLOR 0 0 0
        END
      END 
    END

  END

.. note::
    
   The example uses the natural earth dataset, which is already installed on the live dvd: :file:`~/data/natural_earth` (a short cut to :file:`/usr/local/share/data/natural_earth`)


Visualize the map using WMS
============================================

Open the web browser and enter the following URL::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=AGG/PNG&WIDTH=800&HEIGHT=600

You should see a map of north america.

  .. image:: ../../images/screenshots/800x600/mapserver_map.png
    :scale: 70 %

Add a new layer from a shapefile
================================

We will now add a new layer to our mapfile. Before last *END* statement in the mapfile, add the following layer configuration::

 LAYER
   NAME "Lakes"
   STATUS DEFAULT
   TYPE POLYGON
   DATA "10m_lakes"
   CLASS 
     STYLE
       COLOR 153 179 204
     END
   END 
  END
 

In your browser, visualize the map using this URL::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries,Lakes&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=AGG/PNG&WIDTH=800&HEIGHT=600

You should now see the initial map with the lakes from our new layer.

  .. image:: ../../images/screenshots/800x600/mapserver_lakes.png
    :scale: 70 %

Style a layer
=============

For example, we are going to style our lakes layer. The dataset contains an attribute named *ScaleRank*, which is probably related to the size of the lake. Modify the layer configuration to get::

  LAYER
   NAME "Lakes"
   STATUS DEFAULT
   TYPE POLYGON
   DATA "10m_lakes"
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

The above layer configuration draws big lakes in a light blue with a black outlines and all other lakes will be drawn in a dark blue.

  .. image:: ../../images/screenshots/800x600/mapserver_lakes_scalerank.png
    :scale: 70 %

What Next?
==========

This is only the first step on the road to using MapServer. There is a lot more great material (and ability) left for you to discover on our website.

* Check MapServer documentation, tutorials and examples available on http://mapserver.org/en/documentation.html
