:Author: OSGeo-Live
:Author: Bob Basques
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported  (CC BY 3.0)

.. _geomoose-overview:

.. Cameron Comment: It would be preferable, but not essential, if you could provide a logo without the words "GeoMoose". This would look a little more professional.

.. image:: ../../images/project_logos/logo-geomoose.png
  :scale: 50 %
  :alt: project logo
  :align: right
  :target: http://www.geomoose.org/

GeoMoose
========

Web GIS Portal
~~~~~~~~~~~~~~

.. Cameron Comment: A general comment is try to be more concise with your descriptions. "Less words get read more". From your original doc, we should be able to reduce the number of words by 30% to 50%. Also, for this document, we are looking for more of a business focus, and less of a technical focus, which means, talk about the features, but not about how they are implemented. Eg: A user feature is that the application is fast and responsive, (this is achieved by using Javascript in the browser to reduce server calls).

.. Cameron Comment: Nice image.

.. image:: ../../images/screenshots/800x600/geomoose-screenshot-800x600.png
  :scale: 70 %
  :alt: geomoose-screenshot-800x600.png
  :align: right

GeoMOOSE is a browser based mapping framework for displaying distributed cartographic data which is modular and configurable. It extends the functionality of MapServer and OpenLayers to provide 

.. Cameron Comment: I suspect that the following statement is not as applicable any more, as most (all) of the major browser mapping frameworks could claim the same. (Eg: Openlayers, Geomajas, MapBender). Hence I've commente out the following line.
.. GeoMOOSE is also very light weight for servers making it easy to handle a large number of users, with a large number of layers, and a large number of services without stressing a server.

.. Commented out: Nothing special here. This is how most of the webmapping applications work. Also this document is more targeted at managers rather than developers, so we have less of an emphasis on technology, and more emphasis on the business case.
.. The GeoMOOSE core is written using JavaScript and HTML. It is entirely possible to run GeoMOOSE with nothing more than a basic webserver (Nginx, Apache, IIS).

.. Cameron Comment: The following is where we are starting to get interesting, where you are talking about features. I suggest expanding out by a sentence or two. Be specific about why people have chosen to use GeoMOOSE. I think I've heard you mention that it is used for local councils? Why? Is it because GeoMOOSE has a good set of features for local council use cases? Is it fast and intuitive? Is it fast to get an application up and running?

a number of built in services, like drill-down identify operations, selection operations and dataset searches. Additionally, operations which may have been previously developed in other languages, are easily incorporated.

.. Cameron Comment: No need to mention Open Source, everything on OSGeo-Live is Open Source. I've mentioned MapServer and OpenLayers in the opening sentence now. What is still not very clear is what does GeoMOOSE provide beyond what is already provided by MapServer and OpenLayers?
.. Being an open source project GeoMOOSE is also built upon other open source projects like MapServer and OpenLayers.

Core Features
-------------

.. Cameron Comment: Text for the following needs to be much more concise. Make use of concise points rather than full sentences. Occasionally explaining the value of a feature is ok, but only if it is not obvious from the bullet point.

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

.. Cameron Comment: This needs to be spelled out here. I assume that the standards support would be WMS, WFS, and maybe WFS-T? If you know which versions, then you can add it here.

* GeoMoose adheres to standards defined by it's underlying libraries, MapServer and OpenLayers

Details
-------

**Website:** http://www.geomoose.org/

**Licence:** MIT based Open Source license: http://www.geomoose.org/info/license.html

**Software Version:** 2.4

.. Cameron Comment: If you support additional plugin features, then you should be able to add the following line:
.. **API Interfaces:** PHP

**Supported Platforms:** Windows, Linux, Mac

**Support:** http://www.geomoose.org/info/commercial_support.html

**Mailing Lists:** http://www.geomoose.org/info/mailing_lists.html

Quickstart
----------
    
* `Quickstart documentation <../quickstart/geomoose_quickstart.html>`_

