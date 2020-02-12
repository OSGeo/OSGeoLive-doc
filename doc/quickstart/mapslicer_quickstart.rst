:Author: OSGeoLive
:Author: Petr Pridal
:Author: Christopher Fleet
:Author: Angelos Tzotsos
:Version: osgeolive8.5
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_mapslicer@
@OSGEO_KIND_mapslicer@

@NAME_mapslicer@ Quickstart
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`MapSlicer <https://wiki.osgeo.org/wiki/MapSlicer>`_ provides a simple way of creating a set of tiles from any georeferenced map image. The tiles can then be presented as a georeferenced map overlay on a web server. It follows the `Open Source Geospatial Foundation's (OSGeo's) <http://www.osgeo.org/>`_ `Tile Map Service (TMS) <http://wiki.osgeo.org/wiki/Tile_Map_Service_Specification>`_ specification.

* **Input options**: Any georeferenced image file, eg. a TIFF, JPEG from ArcGIS, QGIS.
* **Output options**: A set of directories with tiled images which can be copied to a web server for presentation as a georeferenced overlay. 
* **Strengths**: MapSlicer is simple, free, open-source software, with an easy wizard, described below, to guide through the options.

MapSlicer takes advantage of the fact that `Google Maps <http://maps.google.com/>`_ , `Microsoft Bing <http://maps.bing.com>`_ , `Yahoo Maps <http://maps.yahoo.com/>`_ , and other online mapping providers including `OpenStreetMap <http://www.openstreetmap.org/>`_  use the same projection and tiling profile and the tiles are therefore compatible. MapSlicer prepares tiles using this specification as an easy and quick way of preparing a georeferenced map in a mashup web page.

Start MapSlicer
--------------------------------------------------------------------------------

1. Start MapSlicer from the Geospatial menu, under the Spatial Tools sub-menu.

2. Select the **Tile Profile**. Choose *Image Based Tiles (raster)* for standard web publishing. Click *Continue*.

   .. image:: /images/projects/mapslicer/mapslicer1.jpg
       :scale: 70 %
       :align: center

3. Choose the **Source Data Files**. Browse to select the raster image you want to tile. It is also possible to select a NODATA colour that will appear as transparent in the resulting image. Click *Continue*.

   .. image:: /images/projects/mapslicer/mapslicer2.jpg
       :scale: 70 %
       :align: center

4. Specify the **Spatial Reference System / Coordinate System** of the image. Specify the id-number from the EPSG database. Click *Continue*.

   .. image:: /images/projects/mapslicer/mapslicer3.jpg
       :scale: 70 %
       :align: center

5. Specify details about the **Tile Pyramid**. The default settings for zoom levels and file format are often best. Click *Continue*.

   .. image:: /images/projects/mapslicer/mapslicer4.jpg
       :scale: 70 %
       :align: center

6. Specify details about the **Destination folder and Addresses / URLs** for the tileset. If you do not know these, they can be added into the default *googlemaps.html* and *openlayers.html* files after tile generation. Click *Continue*.

   .. image:: /images/projects/mapslicer/mapslicer5.jpg
       :scale: 70 %
       :align: center

7. Tick the **Viewers that should be generated**. By default, a *openlayers.html* file is generated. Click *Continue*.

   .. image:: /images/projects/mapslicer/mapslicer6.jpg
       :scale: 70 %
       :align: center

8. Specify the **Details for generating the Viewers**, such as the title, copyright notice, and API keys. If you do not know these, they can be added into the default *googlemaps.html / openlayers.html* files after tile generation. Click *Continue*.

   .. image:: /images/projects/mapslicer/mapslicer7.jpg
       :scale: 70 %
       :align: center

9. Click **Render** to start rendering the image. 

   .. image:: /images/projects/mapslicer/mapslicer8.jpg
       :scale: 70 %
       :align: center

10. When complete, MapSlicer provides a link to the finished tileset. 

   .. image:: /images/projects/mapslicer/mapslicer9.jpg
       :scale: 70 %
       :align: center

11. Open the *openlayers.html* files in a web browser to view the tileset as an overlay on the live online map. To present this on the web, just copy the entire tileset and all subdirectories to a web server, and edit the googlemaps.html or openlayers.html files as required.

   .. image:: /images/projects/mapslicer/mapslicer10.jpg
       :scale: 70 %
       :align: center


Using gdal2tiles to create a MBTiles database
--------------------------------------------------------------------------------

MapSlicer is essentially a GUI frontend to the `gdal2tiles.py` script. An updated
version of `gdal2tiles.py` is also present on the Live disc. The resulting tile
trees created by these software can be used with the `mb-util` program to create
an mbtiles database, for use with smartphone software
like `Geopaparazzi <http://geopaparazzi.github.io/geopaparazzi/>`_.

To create an MBTiles SQLite database from the newly created tile tree, open a
terminal, then

::

  cp data/raster/bluemarble.tif .
  mapslicer    # (select /home/user/bluemarble.tif for input, JPEG as format)
  mb-util --scheme=tms --image_format=jpg bluemarble bluemarble.mbtiles
  qgis bluemarble.mbtiles

See `gdal2tiles.py --help` and `mb-util --help` for additional information on
running these tools.

