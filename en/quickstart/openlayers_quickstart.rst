:Author: Chris Schmidt
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _openlayers-quickstart:

********************************************************************************
OpenLayers Quickstart 
********************************************************************************

OpenLayers Examples
--------------------------------------------------------------------------------
Sometimes the quickest way to work out how OpenLayers works is to look at examples, which are installed at: `http://localhost/openlayers/examples <../../openlayers/examples>`_.

Creating Your First Map
--------------------------------------------------------------------------------
The OpenLayers API has two concepts which are important to understand in
order to build your first map: 'Map', and 'Layer'. An OpenLayers Map
stores information about the default projection, extents, units, and so
on of the map. Inside the map, data is displayed via 'Layer's. A Layer
is a data source -- information about how OpenLayers should request data
and display it.

Crafting HTML
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Building an OpenLayers viewer requires crafting HTML in which your
viewer will be seen. OpenLayers supports putting a map inside of any
block level element -- this means that it can be used to put a map in
almost any HTML element on your page.

In addition to a single block level element, it is also required to
include a script tag which includes the OpenLayers library to the
page. 

.. code-block:: html
  
  <html>
  <head>
    <title>OpenLayers Example</title>
      <script src="http://localhost/OpenLayers-2.9.1/OpenLayers.js"></script>
      </head>
      <body>
        <div style="width:100%; height:100%" id="map"></div>
      </body>
  </html>
    
**Ex. 1**: Creating your first HTML Page   

Creating the Map Viewer
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

In order to create the viewer, you must first create a map. The
OpenLayers.Map constructor requires one argument: This argument must
either be an HTML Element, or the ID of an HTML element. This is the
element in which the map will be placed.

.. code-block:: javascript

  var map = new OpenLayers.Map('map');
  
**Ex. 2:** Map Constructor

The next step to creating a viewer is to add a layer to the Map.
OpenLayers supports many different data sources, from WMS to Yahoo! Maps
to WorldWind. In this example, the WMS layer is used. The WMS layer is
an example provided by MetaCarta.

.. code-block:: javascript

  var wms = new OpenLayers.Layer.WMS(
    "WMS",
    "http://localhost/cgi-bin/qgis_mapserv.fcgi", 
    {
    'map': '/usr/local/share/qgis/QGIS-NaturalEarth-Example.qgs',
    'layers':'HYP_50M_SR_W,10m_lakes,10m_rivers_lake_centerline'} );
  map.addLayer(wms);

**Ex. 3:** Layer Constructor

The first parameter in this constructor is the name of the layer,
which is used for some display purposes. The second 
argument is the URL of the WMS server.
The third argument is an object containing the parameters to be 
appended to the WMS request.

Finally, in order to display the map, you must set a center and zoom
level. In order to zoom to fit the map into the window, you can use the
zoomToMaxExtent function, which will zoom as close as possible while
still fitting the full extents within the window.

Putting it All Together
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
The following code block puts all the pieces together to create an 
OpenLayers viewer.

.. code-block:: html

  <html>
  <head>
    <title>OpenLayers Example</title>
      <script src="http://localhost/OpenLayers-2.9.1/OpenLayers.js"></script>
      </head>
      <body>
        <div style="width:100%; height:100%" id="map"></div>
        <script defer="defer" type="text/javascript">
          var map = new OpenLayers.Map('map');
          var wms = new OpenLayers.Layer.WMS(
            "WMS",
            "http://localhost/cgi-bin/qgis_mapserv.fcgi", 
            {
            'map': '/usr/local/share/qgis/QGIS-NaturalEarth-Example.qgs',
            'layers':'HYP_50M_SR_W,10m_lakes,10m_rivers_lake_centerline'} );
          map.addLayer(wms);
          map.zoomToMaxExtent();
        </script>
  
  </body>
  </html>

**Ex. 4:** Full HTML and Javascript for simple WMS browser

Adding an Overlay WMS
--------------------------------------------------------------------------------

WMS layers have the capability to be overlaid on top of other WMS layers in
the same projection. There are several ways to mark a layer as an overlay,
rather than a base layer. With WMS, the best way to do this is by setting the
'transparent' parameter to 'true'. The example here uses a political borders
WMS to demonstrate overlaying a transparent WMS.

.. code-block:: javascript

    var twms = new OpenLayers.Layer.WMS( "World Map", 
        "http://world.freemap.in/cgi-bin/mapserv?", 
        { map: '/www/freemap.in/world/map/factbooktrans.map', 
          transparent: 'true', layers: 'factbook'} 
        );
    map.addLayer(twms);

**Ex. 5:** How to add a transparent WMS overlay to your map.

Using the transparent: 'true' parameter sets two flags automatically:
 
 * format parameter. The format option of the WMS layer is set to image/png if
   the browser supports transparent PNG images. (This is all browsers except
   for Internet Explorer 6.) In Internet Explorer 6, this will instead be set
   to image/gif.
   
 * isBaseLayer option. The isBaseLayer option controls whether the layer
   can be displayed at the same time as other layers. This option defaults
   to false for the WMS layer, but setting transparent to true changes
   it to true by default.

Adding a Vector Marker to the Map
--------------------------------------------------------------------------------

To add a single marker at a latitude and longitude to the map, you can use
a Vector Layer to add an overlay.

.. code-block:: html  
   
   var vectorLayer = new OpenLayers.Layer.Vector("Overlay");
   var feature = new OpenLayers.Feature.Vector(
    new OpenLayers.Geometry.Point(-71, 42),
    {some:'data'},
    {externalGraphic: 'img/marker.png', graphicHeight: 21, graphicWidth: 16});
   vectorLayer.addFeatures(feature);
   map.addLayer(vectorLayer);

This is a simple demonstration -- more information is available on overlays,
how to interact with them, and how to control and style them via the
OpenLayers documentation on openlayers.org.
