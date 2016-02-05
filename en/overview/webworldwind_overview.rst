:Author: Gabriele Prestifilippo
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. Cameron Comment:
.. Logo size needs to be 125x125 pixles (Currently it is 250x250)
.. Cameron Comment:
.. The logo for Web World Wind, and World Wind Java are the same. 
.. I suggest making them different.

.. Gabriele Comment: Resized the logo and add the "WWW" in the web version. Even If i'm waiting to have an official one that will come   .. soon.

.. image:: ../../images/project_logos/logoNasaWWW.png
  :alt: project logo
  :align: right
  :target: http://webworldwind.org/

.. Cameron Comment:
.. I notice you are using terms:
.. "Java World Wind" and "World Wind Java"
.. My vote would be to use "World Wind Java" and "World Wind Web", as I feel
.. is provides better branding, but this is your call
.. Gabriele Comment: As for now the official one is "Web World Wind", so let's use this and "Java World Wind"

Web World Wind
================================================================================

Desktop Virtual Globe
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Cameron Comment:
  This introduction doesn't sell Web World Wind very well to a new
  GIS user. Users should be able to understand why select World Wind over
  similar products such as Cesium, QGIS, GRASS etc (based on their OSGeo-Live
  descriptions).
  Refer to writing guidelines:https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/en/overview/postgis_overview.rst which include:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.
  * First sentence should explain the application.
  * Usually the application domain will not be familiar to readers. So the
    next line or two should explain the domain. Eg: For GeoKettle, the next
    line or two should explain what GoeSpatial Business Intelligence is.
  * Remaining paragraph or 2 in this overview section should provide a
    wider description and advantages from a user perspective.
  * Try to avoid acronyms. Assume very basic technical understanding of users.
    Ie, say "3 Dimentional" instead of "3D", and "Library" is usually better
    than "Application Program Interface" or "API".

Web World Wind is a 3 dimensional virtual globe. It allows any user to zoom from satellite altitude into any place on Earth and experience the Earth in visually rich 3 dimensional, just as if they were really there. 
Particular focus was put into the ease of usability so people of all ages can enjoy World Wind. All one needs to control World Wind is a two button mouse. 


.. Cameron comment: there is overlap between introduction setence and following
   body. Try not to repeat yourself. I've removed reference to "open source".
   All applications on OSGeo-Live are Open Source.

Web World Wind is a globe for web pages. Written in JavaScript, Web World Wind enables web page and web application builders to quickly create interactive visualizations of geographic information on an interactive 3 dimensional globe or 2 dimensional map.

Organizations around the world use Web World Wind to monitor weather patterns, visualize cities and terrain, track the movement of planes, vehicles and ships, analyze geospatial data, and educate people about the Earth.

Web World Wind is designed to be extensible, extending the functionality and API is simple and easy to do, creating a powerful platform for giving any web page the means to express, manipulate and analyze spatial data.

Web World Wind provides an Application Programming Interface (API) that enables JavaScript programs to control every detail of visualization and interaction. 

.. Cameron Comment: Following line can be removed. (It is covered at the bottom)

.. Web World Wind runs on all major operating systems, desktop and mobile devices, and web browsers.

.. Cameron Comment: Following sentence doesn't help user understand what
   World Wind offers. Suggest getting ideas from World Wind demos.

Web World Wind provides a rich set of features for displaying and interacting with geographic information.
You can create a globe containing terrain and high-resolution imagery, include a compass, a layer that shows the current map coordinates, and a layer with view controls. Moreover lot of features are available to create an interactive communication between the users and the globe.

.. Gabriele Comment: I didn't want to put too much effort on the features provided since they are mentioned as a list, and listing them    .. one by one would create a too long explanation. I tried then to stay a bit general here.


.. Cameron Comment:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in
  images/screenshots/1024x768/<application>_<name>.png . Eg: udig_main_page.png
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.
  
.. image:: ../../images/screenshots/1024x768/webworldwind_main.png
 :scale: 50 %
 :alt: Web World Wind Example
 :align: left

Core Features
--------------------------------------------------------------------------------

.. Cameron Comment: "WGS84" is a technical term which shouldn't be included
  without explaination. I suggest it be removed rather than explained.

* High-performance, 3 dimensional virtual globe for web pages and web applications
* 2 dimensional map mode with selectable and extensible map projections
* JavaScript Application Programming Interface (API) for automating all aspects of interaction and visualization

.. Cameron Comment: I assume we won't have space for all the built in imagery
.. on OSGeo-Live. It is also not typical to provide large datasets with a 
.. download, but rather to provide separately.
.. Gabriele Comment: They are automatically downloaded upon available connection and stored in browser cache  
.. temporarily, maybe we can avoid to show this point.

* Large collection of built-in high-resolution imagery and terrain

.. Cameron Comment: How is the imagery displayed? What standard format is being
.. used? WMS. Anything else? 
.. Gabriele Comment: Apart from WMS it supports normal images (JPG, PNG) which could be georeferenced, so no standards.

* Display high-resolution imagery, terrain and geographic data from any public or private source
* Supports REST, WMS and Bing
* Large collection of geometric and geographic shapes for representing information
* Navigation and Viewing, Picking
* Display multiple globes and maps on the same page
* Simple to use, extend and modify

Graphics Capabilities:

* Placemark, Path and Curtain, Polygon and Extruded Polygon, Text
* Terrain conforming shapes: Path, Polygon, Ellipse, Circle, Quadrilateral, Square
* Imagery: JPEG, PNG
* Graticules
* Shapefiles

Implemented Standards
--------------------------------------------------------------------------------

.. Cameron Comment: Which versions of WMS are supported? 1.1? 1.3? Suggest say
.. "WMS 1.1,1.3" if that is correct.

* WMS 1.1, 1.3
* WMTS 1.0
* OWS 1.0

.. Gabriele Comment: Yes, it supports 1.1 and 1.3

Details
--------------------------------------------------------------------------------

**Website:** http://webworldwind.org/

**Licence:** NASA Open Source Agreement Version 1.3

.. Cameron Comment: I don't believe that Web World Wind should be made
  publicly visible until it has a version number. Even if that number
  is something like 0.1beta1.
.. Gabriele Comment: We are working on that, hope to have that version asap.

**Software Version:** World Wind Pre-release

**Supported Platforms:** Windows, Linux, Mac

**Forum:** http://forum.worldwindcentral.com/forumdisplay.php?60-Web-World-Wind

Quickstart
--------------------------------------------------------------------------------

:doc: `Quickstart documentation <../quickstart/webworldwind_quickstart>`