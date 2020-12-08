:Author: OSGeoLive
:Author: Dane Springmeyer
:Reviewer: Angelos Tzotsos, OSGeo
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive13.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_mapnik@
@OSGEO_KIND_mapnik@
@VMDK_mapnik@



========================
@NAME_mapnik@ Quickstart
========================

Mapnik is an toolkit for developing mapping applications. Above all Mapnik is about making beautiful maps. It is easily extensible and suitable for both desktop and web development.

.. contents:: Contents
   :local:


Mapnik & Python
===============

Mapnik and its python bindings are installed and ready to be used for scripting on this machine.

Creating maps in python is easy with Mapnik. Open a terminal window and type `python` on the command line to enter a python interpreter. Then try this::

    >>> import mapnik, os
    >>> m = mapnik.Map(600,400)
    >>> style = '/usr/local/share/mapnik/demo/population.xml'
    >>> mapnik.load_map(m,style)
    >>> m.zoom_all()
    >>> mapnik.render_to_file(m,'map.png')
    >>> os.system('xdg-open map.png')


.. note::
    
      The above code depends on having an XML stylesheet that Mapnik can read, defining the layers
      to read data from and the styles to apply to those layers. You can create one of these inside QGIS
      with the Quantumnik plugin: https://plugins.qgis.org/plugins/quantumnik/


Mapnik & Leaflet
================

A basic demo application is available which highlights using Mapnik to serve tiles into an OpenLayers web map in the OSM/Google tile scheme.

The demo uses a tileserver designed for Mapnik called "TileStache". Visit the TileStache website for more information: http://tilestache.org/

#. Click :menuselection:`Desktop --> Spatial Tools --> Start Mapnik & TileStache`. The server starts in a terminal window (which stays open and outputs basic debugging information).

#. Check that the server is working by requesting a tile from the server. Click this link http://localhost:8012/example/0/0/0.png and observe the output in the server terminal window. 

#. Visit the Leaflet demo application page `http://localhost/leaflet-demo.html <../../../leaflet-demo.html>`_.


What next?
==========

* Follow the tutorials to learn more about Mapnik: https://github.com/mapnik/mapnik/wiki/MapnikTutorials

* Explore the included files on the latest OSGeoLive distribution, in this directory: file:///usr/local/share/mapnik/

* Visit the Mapnik website: https://mapnik.org
