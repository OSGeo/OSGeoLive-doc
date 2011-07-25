:Author: OSGeo-Live
:Author: Bob Basques
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported  (CC BY 3.0)

.. _geomoose-overview:

.. image:: ../../images/project_logos/logo-geomoose.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://www.geomoose.org/

GeoMoose
========


Web GIS Portal
~~~~~~~~~~~~~~

GeoMOOSE is a Web Client Javascript Framework for displaying distributed cartographic data. GeoMOOSE has a number of strengths including modularity, configurability, and delivers a number of core functionalities in its packages. GeoMOOSE is also very light weight for servers making it easy to handle a large number of users, with a large number of layers, and a large number of services without stressing a server.

The GeoMOOSE core is written using JavaScript and HTML. It is entirely possible to run GeoMOOSE with nothing more than a basic webserver (Nginx, Apache, IIS). But besides the basic client core, GeoMOOSE also comes prepackaged with a number of built in services written in PHP. These services add the ability to perform drill-down identify operations, selection operations, and search datasets. If you have existing scripts that perform similar functions, GeoMOOSE can be tuned to work with those services, no matter which language they were written in.
Being an open source project GeoMOOSE is also built upon other open source projects like MapServer and OpenLayers.

.. image:: ../../images/screenshots/800x600/geomoose-screenshot-800x600.png
  :scale: 55 %
  :alt: geomoose-screenshot-800x600.png
  :align: right

Core Features
-------------

* Data management is abstracted down to the layer level.  This allows a distributed maintenance and update configuration where data owners can update and manage their respective datasets without affect any other dataset in the display.
* Easily configure multiple end user layouts against the same spatial data stores.
* Easily discover and filter spatial datasets among large catalog datasets.
* Easily integrate any outside URL based services into the GeoMoose interface with it's MapBook connector configuration tools.
* End user controls on each layer can make a layer active for querying or for modifying their display characteristics, layers can be faded out incrementally, reorder vertically (z-order) by the user.
* Configuration of the GeoMoose interface is all XML based.  The Mapviewer, Birdseye, side menu, navigation and data manipulation tools are all configured via XML in a MapBook file.
* The Tabbed user controls in the Side menu can be cutomized and added to.
* A "Jump-to" menu list can be added into the side menu for zooming to a location from a pre-defined list of options.
* MapServer can be used as a data server and a MapServer MapFile is used on a layer by layer basis for the cartography and publishing aspects of each layer.
* WMS services can be accessed directly via the MapBook XML file, and even reprojected in the browser to other coordinate systems.
* Other service types can be integrated with GeoMoose, both spatial and tabular based.
* Multiple mouse tracking readout are configurable int he interface, even more than one at a time can be displayed.  Lat/Lon, Cartesian, and U.S. National Grid (USNG/MGRS) coordinate systems are supported out of the box.
* Measuring and drawing tools are incorporated into the interface.
* An almost unlimited numbers of layers can be published via a GeoMoose interface. This is a by product of the layer by layer configuration design of the data storage and access tools.

Implemented Standards
---------------------

* GeoMoose adheres to standards defined by it's underlying libraries, MapServer and OpenLayers
* WMS client GetMap requests via dynamic templating. 

Details
-------

**Website:** http://www.geomoose.org/
Licence: The GeoMOOSE license is an MIT based license.
http://www.geomoose.org/info/license.html

**Software Version:** 2.4

**Supported Platforms:** Windows, Linux, Mac

**Support:** http://www.geomoose.org/info/commercial_support.html

**Mailing Lists:** http://www.geomoose.org/info/mailing_lists.html


Quickstart
----------
    
* `Quickstart documentation <../quickstart/geomoose_quickstart.html>`_

