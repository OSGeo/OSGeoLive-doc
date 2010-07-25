:Author: OSGeo Live
:Author: Dane Springmeyer
:Version: osgeo-live4.0
:License: Creative Commons

.. _mapnik-quickstart:
 
.. image:: images/project_logos/logo-mapnik.png
  :scale: 80 %
  :alt: project logo
  :align: right

Mapnik Quickstart
~~~~~~~~~~~~~~~~~

Mapnik is an OpenSource Toolkit for developing mapping applications. Above all Mapnik is about making beautiful maps. It is easily extensible and suitable for both desktop and web development.


Mapnik & Python
---------------

Mapnik and its python bindings are installed and ready to be used for scripting on this machine.

For example, creating maps in python is easy with Mapnik. Type `python` on the command line to enter a python interpreter and try this::

    >>> import mapnik, os
    >>> m = mapnik.Map(600,400)
    >>> style = '/usr/local/share/mapnik/demo/population.xml'
    >>> mapnik.load_map(m,style)
    >>> m.zoom_all()
    >>> render_to_file(m,'map.png')
    >>> os.system('xdg-open map.png')


.. note::
    
      The above map-making just depends on having an XML stylesheet that Mapnik can read. You can create one of these inside QGIS with the Quantumnik plugin: http://bitbucket.org/springmeyer/quantumnik/


Mapnik & OpenLayers
-------------------

In addition a basic demo application is available, which highlights using Mapnik to serve tiles into an OpenLayers web map in the OSM/Google tile scheme.

The demo using an easy to install and run tileserver designed around Mapnik called "TileLite"

  * More information about TileLite at: http://bitbucket.org/springmeyer/tilelite/

To run the demo just follow these steps:

  #. Click :menuselection:`Desktop --> Servers --> Start Mapnik & TileLite`

    * The server should start in a terminal window (which stays open and outputs basic debugging information).
        
    * If the server does not start, then try to re-installing TileLite and starting the server from the command line::
      
        $ sudo easy_install tilelite
        $ liteserv.py /usr/local/share/mapnik/demo/population.xml


  #. Check to make sure the server is working by visiting the TileLite Welcome page at http://localhost:8000

  #. Then visit the example TileLite OpenLayers "World Population" demo application page:
    
    * This page is at file:///usr/local/share/mapnik/demo/openlayers.html


What Next?
----------

* Mapnik Tutorials

  Follow the tutorials_ to learn more about Mapnik.

.. _tutorials: http://trac.mapnik.org/wiki/MapnikTutorials

* Explore files on the DVD

  See also the included files_ on this DVD.

.. _files: file:///usr/local/share/mapnik/
