:Author: Gabriele Prestifilippo
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logoNasaJWW.png
  :alt: project logo
  :align: right
  :target: http://goworldwind.org/

Java World Wind
================================================================================
Desktop Virtual Globe
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Cameron Comment: This implies that Java World Wind is not a product in its
  own right, but just an API. Ie, before I can use Java World Wind, I need to
  write a program. Is that correct? (This would be an issue for many new users)

Java World Wind provides an Application Programming Interface (API) to display and interact with a virtual globe. 

.. Cameron Comment: There is overlap with sentence above and below. I think these sentences could merge.

Written in Java so as to be cross-platform and easy-to-use, Java World Wind allows developers to quickly and easily create interactive visualizations of a 3 dimensional globe and geographical information.

World Wind provides a rich set of features for displaying and interacting with geographic data and representing a wide range of geometric objects.

Organizations across the world use World Wind to monitor weather patterns, visualize cities and terrain, track the movement of planes, vehicles and ships, analyze geospatial data, and educate people about the earth.

.. Cameron Comment: I sugges that referencing an award in 2009, without noting a more recent achievement implies the project was great once, but is no longer relevant. Might be better to remove the reference. 

In November 2009 was awarded NASA Software of the Year.  Since then it has developed a global community of users, from government, education, the non-profit sector, as well as private industry.

.. image:: ../../images/screenshots/1024x768/javaworldwind_main.png
 :scale: 50 %
 :alt: Java World Wind Example
 :align: right

Core Features
--------------------------------------------------------------------------------

* High-performance 3 dimensional Virtual globe API and Software Development Kit (SDK)
* Adds 3 dimensional geographic visualization to any application
* Runs on Windows, Mac OS X, Linux, iOS and Android
* Runs in web pages in Java applets
* Accesses a huge collection of high-resolution imagery and terrain from NASA servers
* Displays high-resolution imagery, terrain and geographic information from any open-standard public or private source

.. Cameron comment: Try not to duplicate statements, this "open standard" line below can probably be removed or merged with one above.

* Open-standard interfaces to GIS services and databases
* Large collection of geometric and geographic shapes
* Simple to extend and modify
* Uses Java and OpenGL

Graphics Capabilities:

* Point, Path, Polygon, Curtain
* Volumes: Extruded Polygon, Ellipsoid, Sphere, Cylinder, Cone, Pyramid, Box, Airspaces (see below)
* Terrain conforming shapes: Path, Polygons, Ellipse, Circle, Quadrilateral, Rectangle, Square, Text, Image, Icon
* Airspaces: Box, Cake, Capped Cylinder (full and partial), Curtain, Orbit, PolyArc, Polygon, Route, Sphere, Track
* Annotation: Text, Text Balloon, HTML5 web-browser Balloon, Image, Icons, all with geo-located and screen versions
* Placenames, Political boundaries
* 2.5D “Flat Globe” with terrain
* Transparency
* Picking, Selection
* Navigation and Viewing: Orbit View, First Person, Stereo, application-defined
* Multiple World Wind windows
* Interactive shape editors
* 2525C Tactical Symbols and Tactical Graphics

Data Formats:

* Imagery: JPG, PNG, GeoTIFF, JPEG2000 and many others
* Government formats: NITF, MrSID, RPF (CADRG, CIB, etc.), DTED and many others
* GIS formats: Shapefile, KML, VPF, GML, GeoJSON, GeoRSS, GPX, NMEA and many others
* Coordinate Systems: Lat/Lon, UTM, MGRS.
* Datums: WGS84, NAD27 and many others

Analysis Capabilities:

*  Measurement,  geometric and terrain following
* Line of site with high-resolution terrain and shapes
* Terrain intersection
* Shape interactions

Implemented Standards
--------------------------------------------------------------------------------

* GML 2.0, 1
* KML 2.3, 2.2
* WFS 2.0, 1.0
* WMS 1.1, 1.3
* WMTS 1.0
* OWS 1.0

Details
--------------------------------------------------------------------------------

**Website:** http://goworldwind.org/

**Licence:** NASA Open Source Agreement Version 1.3

**Software Version:** World Wind Java SDK 2.0

**Supported Platforms:** Windows, Linux, Mac, Android, iOS

**Forum:** http://forum.worldwindcentral.com/

Quickstart
--------------------------------------------------------------------------------
    
:doc: `Quickstart documentation <../quickstart/javaworldwind_quickstart>`_
