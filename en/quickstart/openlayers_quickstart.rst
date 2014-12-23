:Author: Antonio Santiago
:Author: Chris Schmidt
:Version: osgeo-live8.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
OpenLayers Quickstart 
********************************************************************************

Previous concepts
--------------------------------------------------------------------------------

Before start working with OpenLayers we need to understand how it organize and represents all the concepts related to GIS application.

The main concept is the *map*, which allows to organize and render geographic 
information. Each map has a *view* attached that determines how map is 
rendered. It is used to set the resolution, the center location, etc. It is like 
a camera through which we look the map content.

*Layers* allows us to organize data into sets. We can found two distinct types 
of layers: *raster layers* and *vector layers*. Layers are added to the map in
a stacked order, that is, lower layers are rendered before upper layers.

Each layer has a *source* attached, which knows how to load the layer content.
In the case of vector layers, its sources are responsible to read vector data 
using a given *format* class (for example GeoJSON or KML) and fill the layer 
with a set of *features*.

OpenLayers offers an extensive set of sources, both for raster and vector data,
among we can found raster sources to load from MapQuest, OpenStreetMap, Stamen, 
Bing or WMS compliant servers, or vector sources to load from GeoJSON, TopoJSON, 
WFS compliant servers or KML.

*Features* represent real world things and can be rendered using different 
*geometries* (like point, line or polygon) using a given *style*, which determines
its look (line color, fill color, etc).


Basic code structure
--------------------------------------------------------------------------------

Application can be as complex as you want, but a the basic code structure you 
need to set up an OpenLayers page looks as follows:

.. code-block:: html
  
  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>Your app title</title>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width">

          <!-- OpenLayers CSS -->
          <link rel="stylesheet" href="http://ol3js.org/en/master/build/ol.css" type="text/css">
          
          <!-- Your app custom styles -->
          <style>
            #map {
              width: 100%;
              height: 500px;
            }
          </style>
      </head>
      <body>
          <!-- Your app HTML tags here -->
          <div id="map"></div>

          <!-- OpenLayers JS-->
          <script src="http://ol3js.org/en/master/build/ol.js" type="text/javascript"></script>
          
          <!-- your app code -->
          <script>
          </script>
          
      </body>
  </html>

**Ex. 1**: Basic code structure

Note, the code follows the best practice of loading JavaScipt code at the end.

A basic map
--------------------------------------------------------------------------------

Let's go to see the code needed to create a basic map:

.. image:: ../../images/openlayers-basic-map.png
  :alt: Basic map
  :align: right

.. code-block:: html
  
  <!DOCTYPE html>
  <html lang="en">
      <head>
          <title>Basic map</title>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width">

          <!-- OpenLayers CSS -->
          <link rel="stylesheet" href="http://ol3js.org/en/master/build/ol.css" type="text/css">
          
          <!-- Custom styles -->
          <style>
            #map {
              width: 100%;
              height: 500px;
            }
          </style>
      </head>
      <body>
          <h1>Basic map</h1>

          <div id="map"></div>

          <!-- OpenLayers JS-->
          <script src="http://ol3js.org/en/master/build/ol.js" type="text/javascript"></script>
          
          <!-- App code -->
          <script>
            var map = new ol.Map({
              target: 'map',
              renderer: 'canvas',
              layers: [
                new ol.layer.Tile({
                  source: new ol.source.OSM()
                })
              ],
              view: new ol.View({
                center: ol.proj.transform([2.1833, 41.3833], 'EPSG:4326', 'EPSG:3857'),
                zoom: 6
              })
            });
          </script>
          
      </body>
  </html>

**Ex. 2:** A basic map

An OpenLayers map is always related with a DOM element, so we have created a 
``<div>`` element identified by the *map* tag.

Maps are represented by the ``ol.Map`` class. It requires we specify at construction
time the DOM element where to render the map and its content. This is done through
the **target** property.

OpenLayers allows to render map using different three different mechanisms: Canvas, WebGL and DOM. Here we are forcing to use *canvas* by setting it in the **renderer**
property.

A map shows data contained within layers, so we have created a tiled layer (represented
by the ``ol.layer.Tile`` class) that loads content from the OpenStreetMap 
project, using the ``ol.source.OSM`` source class.

Finally, we need to set the initial position of the *camera*, that is the map's 
view, to render the map. The map's view is represented by the ``ol.View`` class
and requires we set the initial zoom level and center location.


Adding raster layers
--------------------------------------------------------------------------------

One of the most used kind of raster layers are tiled provided layers, like 
OpenStreetMap, MapQuest, Bing, etc. Tiled layers are represented by the 
``ol.layer.Tile`` class and must use a source that knows how to load tiles from
a given provider, like ``ol.source.OSM`` or ``ol.source.MapQuest`:

.. code-block:: javascript

  var osm = new ol.layer.Tile({
    source: new ol.source.OSM()
  });

  var mq = new ol.layer.Tile({
    source: new ol.source.MapQuest({
      layer: 'osm'
    })
  });

**Ex. 3:** Raster layers

Layers can be added to the map in two ways:

1. Passing to the map at construction time with the ``layers`` property:

.. code-block:: javascript

  var map = new ol.Map({
    ...
    layers: [osm, mq]
    ...
  });

**Ex. 4:** Adding layers on map initialization

2. Adding manually with the ``map.addLayer()`` method:

.. code-block:: javascript

  map.addLayer(osm);
  map.addLayer(mq);

**Ex. 5:** Adding layers manually

Adding vector layers
--------------------------------------------------------------------------------

Vector layers are represented by the ``ol.layer.Vector`` and must use a kind of 
source suitable to read a vector data format, like ``ol.source.GeoJSON``,
``ol.source.KML`` or ``ol.source.TopoJSON``.

.. code-block:: javascript

  var vectorLayer = new ol.layer.Vector({
    source: new ol.source.GeoJSON({
      url: 'url_to_geojson_file'
    })
  });

**Ex. 6:** A GeoJSON vector layer

.. image:: ../../images/openlayers-vector.png
  :alt: Vector layer
  :align: right

Note, in the previous code we must change the ``url_to_file`` to point to a 
valid GeoJSON file placed in our server (note you must be aware of cross domain 
issues).

Features can also be created manually. In this case we need to create a geometry
that represents the feature:

.. code-block:: javascript

  // Geometries
  var point = new ol.geom.Point(
      ol.proj.transform([3,50], 'EPSG:4326', 'EPSG:3857')
  );
  var circle = new ol.geom.Circle(
      ol.proj.transform([2.1833, 41.3833], 'EPSG:4326', 'EPSG:3857'),
      1000000
  );

  // Features
  var pointFeature = new ol.Feature(point);
  var circleFeature = new ol.Feature(circle);

  // Source
  var vectorSource = new ol.source.Vector({
      projection: 'EPSG:4326'
  });
  vectorSource.addFeatures([pointFeature, circleFeature]);

  // Vector layer
  var vectorLayer = new ol.layer.Vector({
    source: vectorSource
  });

**Ex. 7:** Adding features by hand

Styling features
--------------------------------------------------------------------------------

Vector layers or, better said, the features within a vector layer can be styled.
The style is determined by a combination of fill, stroke, text  and image, which are all optional. In addition, a style can be applied to a layer, which determines the style of all contained features, or to an individual feature.

An style is represented by the ``ol.style.Style`` class which has properties to set the ``fill``, ``stroke``, ``text`` and ``image`` to be applied. Next example shows the World's administrative limits styled to use a green fill and stroke:

.. image:: ../../images/openlayers-styling.png
  :alt: Styling features
  :align: right

.. code-block:: javascript

  var limitsLayer = new ol.layer.Vector({
    source: new ol.source.StaticVector({
      url: 'data/world_limits.json',
      format: new ol.format.TopoJSON(),
      projection: 'EPSG:3857'
    }),
    style: new ol.style.Style({
      fill: new ol.style.Fill({
        color: 'rgba(55, 155, 55, 0.3)'
      }),
      stroke: new ol.style.Stroke({
        color: 'rgba(55, 155, 55, 0.8)',
        width: 1
      }),
      image: new ol.style.Circle({
        radius: 7,
        fill: new ol.style.Fill({
          color: 'rgba(55, 155, 55, 0.5)',
        })
      })
    })
  });

**Ex. 8:** Styling features

In the code, we have loaded a TopoJSON file and styled it trough the ``style``property.
We have set a ``fill`` and ``stroke``, required for lines and polygons, and an 
``image`` (in this case a circle) used for point features.

Working with events
--------------------------------------------------------------------------------

Most of the components, like map, layers or controls, trigger events to notify changes. For example we can be notified each time mouse is moved over the map, when a featured is added to a vector layer, etc.

Events can be easily registered on object with the ``on()`` method and unregistered with ``un()``.

Next code, registers an event on a map instance that is notified each time the pointer is moved. Within the callback function we obtain the pointer coordinates and print in the browser console in two different projections.

.. code-block:: javascript

  map.on('pointermove', function(event) {
    var coord3857 = event.coordinate;
    var coord4326 = ol.proj.transform(coord3857, 'EPSG:3857', 'EPSG:4326');

    console.log(coord3857, coord4326);
  });

**Ex. 9:** Printing pointer position.


OpenLayers Examples
--------------------------------------------------------------------------------
Sometimes the quickest way to work out how OpenLayers works is to look at examples
and its source code. You can find OpenLayers3 examples installed at: `http://localhost/openlayers/examples <../../openlayers/examples>`_.
