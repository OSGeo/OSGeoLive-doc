:Author: Vladimir Agafonkin, adopted for live dvd by Johan Van de Wauw
:Reviewer: Angelos Tzotsos, OSGeo
:Reviewer: Nicolas Roelandt, OSGeoLive
:Reviewer: Shubham Sharma
:Version: osgeolive12.0

@LOGO_leaflet@
@OSGEO_KIND_leaflet@

********************************************************************************
@NAME_leaflet@ Quickstart
********************************************************************************

Leaflet is a JavaScript library for browser-based, mobile-friendly, interactive maps.  It is lightweight, yet has all the features most developers ever need for online maps. Leaflet is designed with simplicity, performance and usability in mind.

.. contents:: Contents

Running
================================================================================

Prior to running this quick start you should start TileStache. On the live dvd this can be found under **Geospatial\\Spatial Tools\\Start Mapnik & TileStache**.
This will provide background tiles that will be used in this demo. 

View the example_

.. tip :: If you are reading this quickstart outside the live dvd you may prefer reading the original demo on: http://leafletjs.com/examples/quick-start/, since this demo uses tilestache on the live dvd.

Preparing your page
===================
Before writing any code for the map, you need to do the following preparation steps on your page:

* Include Leaflet CSS files in the head section of your document

.. code-block:: html

 <link rel="stylesheet" href="/leaflet/leaflet.css" />
 <!--[if lte IE 8]>
     <link rel="stylesheet" href="/leaflet/leaflet.ie.css" />
 <![endif]-->

* Include Leaflet JavaScript file:

.. code-block:: html

 <script src="/leaflet/leaflet.js"></script>

* put a **div** element with a certain **id** where you want your map to be:

.. code-block:: html

 <div id="map"></div>

* Make sure the map container has a defined height, for example by setting it in CSS:

.. code-block:: css

 #map { height: 180px; }

Now you are ready to initialize the map and do some stuff with it.

Setting up the Map
================================================================================
Let's create a map of eastern Africa with an indication of the 2018 FOSS4G conference. First we'll initialize the map and set its view to our chosen geographical coordinates and a zoom level:

.. code-block:: javascript 

 var map = L.map('map').setView([-6.8110533,39.292251], 5);

By default (as we didn't pass any options when creating the map instance), all mouse and touch interactions on the map are enabled, and it has zoom and attribution controls.

Note that setView call also returns the map object - most Leaflet methods act like this when they don't return an explicit value, which allows convenient jQuery-like method chaining.

Next we'll add a tile layer to our map.
In this case we will be using the tile images provided by TileStache on the live dvd. Note that using nicer background maps such as openstreetmap will result in a much better user experience.

Creating a tile layer usually involves setting the URL template for the tile images, the attribution text and the maximum zoom level of the layer:

::

 L.tileLayer('http://localhost:8012/example/{z}/{x}/{y}.png,{}).addTo(map);

If you have online access you may want to use a nicer tilemap as the background:

::

L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',{maxZoom:18, attribution: '© <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'}).addTo(map);

Make sure all the code is called after the **div** and **leaflet.js** inclusion. That's it! You have a working Leaflet map now.

It's worth noting that Leaflet is provider-agnostic, meaning that it doesn't enforce a particular choice of providers for tiles, and it doesn't even contain a single provider-specific line of code, so you're free to use other providers if you need to.

Markers, circles and polygons
================================================================================

Besides tile layers, you can easily add other things to your map, including markers, polylines, polygons, circles and popups.
Let's add a marker:

.. code-block:: javascript 

 var marker = L.marker([-6.8110533,39.292251]).addTo(map);

Adding a circle is the same (except for specifying the radius in meters as a second argument), but lets you control how it looks by passing options as the last argument when creating the object:

.. code-block:: javascript

 var circle = L.circle([-7.09, 39.50], 25000, {
    color: 'red',
    fillColor: '#f03',
    fillOpacity: 0.5
 }).addTo(map);

Adding a polygon is as easy:

.. code-block:: javascript

 var polygon = L.polygon([
    [-6.60, 38.97],
    [-6.68, 38.37],
    [-6.68, 38.37]
 ]).addTo(map);


Working with popups
===================

Popups are usually used when you want to attach some information to a particular object on a map. Leaflet has a very handy shortcut for this:

.. code-block:: javascript 

 var popup = L.popup()
    .setLatLng([-7.01, 39.13])
    .setContent("I am a standalone popup.")
    .openOn(map);

Here we use **openOn** instead of **addTo** because it handles automatic closing of a previously opened popup when opening a new one which is good for usability.

Dealing with events
===================

Every time something happens in Leaflet, e.g. user clicks on a marker or map zoom changes, the corresponding object sends an event which you can subscribe to with a function. It allows you to react to user interaction:

.. code-block:: javascript

 function onMapClick(e) {
    alert("You clicked the map at " + e.latlng);
 }
 
 map.on('click', onMapClick);

Each object has its own set of events - see documentation_ for details. The first argument of the listener function is an event object - it contains useful information about the event that happened. For example, map click event object (e in the example above) has latlng property which is a location at which the click occured.

Let's improve our example by using a popup instead of an alert:

.. code-block:: javascript

 var popup = L.popup();

 function onMapClick(e) {
    popup
         .setLatLng(e.latlng)
         .setContent("You clicked the map at " + e.latlng.toString())
          .openOn(map);
 } 
 
 map.on('click', onMapClick);

Try clicking on the map and you will see the coordinates in a popup. View the full example_

What Next?
================================================================================

Now you've learned Leaflet basics and can start building map apps straight away! Don't forget to take a look at the detailed documentation_ or other examples_.


.. _documentation: http://leafletjs.com/reference.html
.. _example: http://localhost/leaflet-demo.html
.. _examples: http://leafletjs.com/examples.html
