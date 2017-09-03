:Author: Petr Pridal, Christopher Fleet
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-mapslicer.png
  :scale: 100 %
  :alt: project logo
  :align: right

MapSlicer 快速入门文档
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　 `MapSlicer <https://wiki.osgeo.org/wiki/MapSlicer>`_ 提供了一套简单的解决方案，用于对任何具备地理参考的地图图像生成切片。这些切片可以用于网络地图服务。它遵循 `Open Source Geospatial Foundation (OSGeo) <http://www.osgeo.org/>`_ 的 `Tile Map Service (TMS) <http://wiki.osgeo.org/wiki/Tile_Map_Service_Specification>`_ 标准。

* **数据输入**: 任何具备地理配准信息的栅格图像，例如 TIFF 、JPEG 等。可以利用 ArcGIS 、QGIS 等 GIS 系统准备数据。
* **数据输出**: 一组目录包含图像切片，可导入网络服务中。部分示例位于  。 
* **软件特点**: MapSlicer 是一款简单易用的自由/开源软件。它提供方便的向导服务用于用户进行配置。

　　MapSlicer 的开发者注意到 `Google Maps <http://maps.google.com/>`_ 、 `Microsoft Bing Maps <http://maps.bing.com>`_ 、 `Yahoo Maps <http://maps.yahoo.com/>`_ 及包括 `Open Street Map <http://www.openstreetmap.org/>`_  在内的一系列服务使用了同样的投影系统和切片格网，切片数据可以兼容。在 `Tiles à la Google Maps <http://www.maptiler.org/google-maps-coordinates-tile-bounds-projection/>`_ 页面可以看到对此的详细说明。MapSlicer 可以使用这一切片格网定义进行快速的切片服务配置。

启动 MapSlicer
--------------------------------------------------------------------------------

1. 下载 MapSlicer 或直接在 Live 系统启动。

2. 选择 **Tile Profile 切片格网定义** 。选择 *Google Maps Compatible (Spherical Mercator)* 适合标准的地图服务。若需要生成 KML 文件用于 Google Earth 等软件，请选择 *Google Earth (KML SuperOverlay)* 。点击 *Continue* 继续。

.. image:: /images/screenshots/mapslicer/mapslicer1.jpg
    :width: 60 %
    :align: center

3. 选择 **Source Data Files 源文件** 。指定需要制作切片的影象即可。 点击 *Continue* 继续。

.. image:: /images/screenshots/mapslicer/mapslicer2.jpg
    :width: 60 %
    :align: center

4. 定义 **Spatial Reference System / Coordinate System 坐标投影系统** 。定义可以使用 EPSG/ESRI 投影库的 ID 号。比如 `EPSG:27700 with TOWGS84 <http://help.maptiler.org/coordinates/europe/uk>`_ 是英国范围内常用的一个投影。点击*Continue* 继续。

.. image:: /images/screenshots/mapslicer/mapslicer3.jpg
    :width: 60 %
    :align: center

5. 确定 **Tile Pyramid 切片层级** 的具体设置。默认的比例和文件格式一般能够满足要求。点击 *Continue* 继续。

.. image:: /images/screenshots/mapslicer/mapslicer4.jpg
    :width: 60 %
    :align: center

6. 设定 **Destination folder and Addresses / URLs 目标路径** 。如果不能明确的话，可以在生成切片后将其加入 *googlemaps.html* 、*openlayers.html* 等配置。点击 *Continue* 继续。

.. image:: /images/screenshots/mapslicer/mapslicer5.jpg
    :width: 60 %
    :align: center

7. 勾选 **Viewers that should be generated 目标视图** 。默认配置为 *googlemaps.html* 和 *openlayers.html* 。若需要，可以生成一个 KML 图层用于 Google Earth 。点击 *Continue* 继续。

.. image:: /images/screenshots/mapslicer/mapslicer6.jpg
    :width: 60 %
    :align: center

8. 设置 **Details for generating the Viewers 视图配置细节** 。这里设计名称、版权声明、API Key 等。若不能明确，可以在生成切片后再编辑 *googlemaps.html / openlayers.html* 文件。点击 *Continue* 继续。

.. image:: /images/screenshots/mapslicer/mapslicer7.jpg
    :width: 60 %
    :align: center

9. 点击 **Render** 开始渲染切片。完成后，MapSlicer 将显示存储切片的路径。于浏览器中打开 *googlemaps.html* / *openlayers.html* 等文件即可查看生成切片叠加于底图之上的显示效果。发布切片数据时，只需将生成数据全部导入服务器中，并相应配置 googlemaps.html 、openlayers.html 等文件即可。

