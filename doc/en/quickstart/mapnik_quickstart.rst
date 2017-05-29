:Author: OSGeo-Live
:Author: Dane Springmeyer
:Version: osgeo-live10.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-mapnik.png
  :scale: 80 %
  :alt: project logo
  :align: right

Mapnik Quickstart
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mapnik is an toolkit for developing mapping applications. Above all Mapnik is about making beautiful maps. It is easily extensible and suitable for both desktop and web development.


Mapnik & Python
--------------------------------------------------------------------------------

Mapnik and its python bindings are installed and ready to be used for scripting on this machine.

Creating maps in python is easy with Mapnik. Type `python` on the command line to enter a python interpreter and try this::

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
      with the Quantumnik plugin: http://plugins.qgis.org/plugins/quantumnik/


Mapnik & Leaflet
--------------------------------------------------------------------------------

In addition a basic demo application is available, which highlights using Mapnik to serve tiles into an OpenLayers web map in the OSM/Google tile scheme.

The demo uses a tileserver designed for Mapnik called "TileStache"

  * More information about TileStache: http://tilestache.org/

To run the demo just follow these steps:

  #. Click :menuselection:`Desktop --> Spatial Tools --> Start Mapnik & TileStache`

    * The server should start in a terminal window (which stays open and outputs basic debugging information).

  #. Check to make sure the server is working by requesting a tile from the server at http://localhost:8012/example/0/0/0.png

  #. Then visit the Leaflet demo application page:
    
    * This page is at `http://localhost/leaflet-demo.html <../../../leaflet-demo.html>`_


What Next?
--------------------------------------------------------------------------------

* Mapnik Tutorials

  Follow the tutorials_ to learn more about Mapnik.

.. _tutorials: https://github.com/mapnik/mapnik/wiki/MapnikTutorials

* Explore files on the DVD

  See also the included files_ on this DVD.

.. _files: file:///usr/local/share/mapnik/
