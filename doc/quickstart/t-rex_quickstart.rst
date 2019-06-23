:Author: OSGeoLive
:Author: Pirmin Kalberer
:Version: osgeolive13.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Reviewer: 

@LOGO_t-rex@
@OSGEO_KIND_t-rex@

********************************************************************************
@NAME_t-rex@ Quickstart
********************************************************************************

t-rex is a vector tile server specialized on publishing MVT tiles from your own data.

This Quick Start describes how to:

  * generate vector tiles without configuration and inspect them with built-in viewers
  * generate a tile cache

.. contents:: Contents
  
Start t-rex
================================================================================

#. Choose :menuselection:`Geospatial --> Web Services --> T-Rex` from menu
#. t-rex is started in zero-config mode connecting to PostGIS database `osm_local`
#. A browser window is opened showing the t-rex backend:

  .. image:: /images/projects/t-rex/backend-info.png
   :scale: 50 %


Built-in viewers
================================================================================

t-rex comes with built-in viewers for inspecting generated vector tiles.

#. Click on th `X-Ray` entry in the upper right menu, to open the x-ray viewer.
#. Hover the mouse on a line to inspect the content of a feature.
  
  .. image:: /images/projects/t-rex/backend-x-ray.png
   :scale: 50 %
   
Try also the other viewers. Remark: The Mapbox GL viewer and and Maputnik require
WebGL support, which is probably not available when running OSGeo Live in a VM.


Cache seeding
================================================================================

#. Close the browser and the terminal window running t-rex.
#. Open any text editor (e.g. :menuselection:`Applications --> Accessories --> 
   Leafpad`).
#. Create the file "ne.toml" in your home directory: 
   :file:`/home/user/ne.toml`

Put the following content in it::

  [service.mvt]
  viewer = true

  [[datasource]]
  dbconn = "postgresql://user:user@localhost/natural_earth2"
  name = "dbconn"
  default = true

  [grid]
  predefined = "web_mercator"

  [[tileset]]
  name = "ne_countries"
  extent = [-180.00000, -90.00000, 180.00000, 83.63410]
  minzoom = 0
  maxzoom = 6

  [[tileset.layer]]
  name = "country"
  geometry_field = "the_geom"
  geometry_type = "MULTIPOLYGON"
  srid = 4326
  buffer_size = 3
  #make_valid = true
  simplify = false
  [[tileset.layer.query]]
  sql = """SELECT the_geom, adm0_a3, mapcolor7 FROM ne_10m_admin_0_countries WHERE the_geom && !bbox!"""

  [cache.file]
  base = "/home/user/mvtcache"
  baseurl = "http://example.com/tiles"

  [webserver]
  # Bind address. Use 0.0.0.0 to listen on all adresses.
  bind = "127.0.0.1"
  port = 6767

  [[webserver.static]]
  path = "/static"
  dir = "./static/"

Open a terminal (:menuselection:`System Tools --> LXTerminal`) and type::

  t_rex generate --config ne.toml --maxzoom 4 2>/dev/null

To inspect the generated tiles type::

  find mvtcache


What Next?
================================================================================

To create your own map viewer you can use the snippets on the info page in the t-rex backend.

After that you can use the built-in Maputnik editor (also linked from the info page) to create
your own Mapbox GL Json style.
