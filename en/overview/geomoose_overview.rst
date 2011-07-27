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

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project in Incubation
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

.. Writing Tip: Name of application

GeoMoose
========

Web GIS Portal
~~~~~~~~~~~~~~

- GeoMOOSE has a number of strengths including modularity, configurability, integration with existing services and speed. GeoMOOSE extends the functionality of MapServer and OpenLayers. It is implemented as a very light footprint for the Browser, allowing it to perform very well with hundreds of layers and/or services.

- The GeoMOOSE core is written using JavaScript and HTML which allows it to make the least number of requests to the server needed while still providing an immersive user experience. 

- It is entirely possible to run GeoMOOSE with nothing more than a basic web page and a WMS feed, even as a locally stored configuration, no server needed.  The GeoMoose interface can be stored locally and opened from a Web Browser.

- Adding a server component, allows GeoMOOSE a level of flexibility by adding a number of pre-built services written in PHP. These services add the ability to perform drill-down identify operations, selection operations, and searching datasets. 

- Existing web services that perform similar functions can be easily integrated within GeoMOOSE, no matter the language they were written in originally.

- GeoMoose extends other open source projects with a user level configuration tool set for viewing and organizing many layers and displaying of layer specific tools, information links and view controls like fading and Z-index ordering.

.. image:: ../../images/screenshots/800x600/geomoose-screenshot-800x600.png
  :scale: 55 %
  :alt: geomoose-screenshot-800x600.png
  :align: right

Core Features
-------------

* Data management is abstracted down to the layer level.  This allows a distributed maintenance and update configuration where data owners can update and manage their respective datasets without affecting any other dataset in the display or catalog.
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
* Adheres to standards defined by it's underlying libraries, MapServer and OpenLayers
* WMS client GetMap requests via dynamic templating. The GeoMoose interface can be configured to selectively retrieve from a WMS server via any of the MapServer supported methods.
* WMS GetMap services can be accessed directly from the GeoMoose configuration.


Details
-------

**Website:** http://www.geomoose.org/
Licence: The GeoMOOSE license is an MIT based license.
http://www.geomoose.org/info/license.html

**Software Version:** 2.4

**Promotional Material:** `Tri-fold brochure "GeoMoose at a glance" <../overview/Geomoose_tri-fold_8.5x11_V3.1bb.pdf>`_

**Supported Platforms:** Windows, Linux, Mac

**Support:** http://www.geomoose.org/info/commercial_support.html

**Mailing Lists:** http://www.geomoose.org/info/mailing_lists.html


Quickstart
----------
    
* `Quickstart documentation <../quickstart/geomoose_quickstart.html>`_

