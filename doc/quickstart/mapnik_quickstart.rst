:Author: OSGeoLive
:Author: Dane Springmeyer
:Author: Astrid Emde
:Reviewer: Angelos Tzotsos, OSGeo
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Reviewer: Astrid Emde
:Version: osgeolive14.0
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

Creating maps in python is easy with Mapnik. Open a terminal window and type `python3` on the command line to enter a python interpreter. Then try this::

:: 
    
    import mapnik, os
    m = mapnik.Map(600,400)
    style = '/usr/local/share/mapnik/world_population.xml'
    mapnik.load_map(m,style)
    m.zoom_all()
    mapnik.render_to_file(m,'world_population.png')
    os.system('xdg-open world_population.png')


.. note::
    
      The above code depends on having an XML stylesheet that Mapnik can read (world_population.xml), defining the layers
      to read data from and the styles to apply to those layers.


Mapnik & MapProxy
=================

A basic demo application is available which demonstrates using Mapnik with MapProxy

The demo uses the world_population.xml from the Mapnik demo. 

#. Click :menuselection:`Geospatial --> Web Services --> MapProxy --> Start MapProxy`. The server starts in a terminal window (which stays open and outputs basic debugging information).

#. Open the MapProxy demo application http://0.0.0.0:8011/demo/

#. You find the world population demo by Mapnik as a WMS layer and also the wolrd population in combination with a the GeoServer layer topp:states (make sure GeoServer is running)


#. You can usethe MapProxy WMS in other applications f.e in QGIS or in Mapbender (http://localhost/mapbender/application/mapbender_user).
 

#. Observe the output in the server terminal window.


What next?
==========

* Follow the tutorials to learn more about Mapnik: https://github.com/mapnik/mapnik/wiki/MapnikTutorials

* Explore the included files on the latest OSGeoLive distribution, in this directory: file:///usr/local/share/mapnik/

* Visit the Mapnik website: https://mapnik.org
