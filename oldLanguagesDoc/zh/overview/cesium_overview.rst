:Author: Balasubramaniam Natarajan
:Translator(Zh): Bu Kun (OSGeo ID: bukun)
:Version: osgeo-live8.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

欢迎使用中文文档中国镜像： http://lab.osgeo.cn/osgeo-live/

.. image:: /images/project_logos/logo-cesium.png 
  :alt: project logo
  :align: right
  :target: http://cesiumjs.org

Cesium
================================================================================

.. 3D Globes and 2D Maps in a Browser

基于浏览器的3维地图与2维地图
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Cesium is a JavaScript library for creating 3D globes and 2D maps in a web browser without any plugins. 
.. It uses WebGL for hardware-accelerated graphics, and is cross-platform, cross-browser, and tuned for dynamic-data visualization.

Cesium 是一个用来在Web浏览器中创建3维地球与2维地图的JavaScript库，不需要使用任何的插件。\
它使用WebGL进行硬件图形加速，并且跨平台，跨浏览器，适合用来进行动态数据可视化。

.. image:: /images/screenshots/1024x768/cesiumjs_3in1.png
  :scale: 50 %
  :alt: Cesium example
  :align: right

核心功能
--------------------------------------------------------------------------------

* 地理空间动态可视化

  * 使用 `CZML <https://github.com/AnalyticalGraphicsInc/cesium/wiki/CZML-Guide>`_ 数据驱动的、时间动态的场景。
  * 世界范围的高精度地形可视化。
  * 使用WMS、TMS、OpenStreetMaps、Bing及Esri标准绘制影像图层。 
  * 使用GeoJSON和TopoJSON绘制矢量数据。
  * 使用COLLADA 和 glTF绘制3维模型。
  * 使用 `插件 <http://cesiumjs.org/plugins/index.html>`_ 来扩展 Cesium.

* 为性能和精度进行设计

  * Optimized WebGL with batching and culling efficiently uses hardware-accelerated graphics.
  * Draw a wide range of geometries including polylines, polygons, billboards, labels, extrusions, and corridors.
  * Control the camera and create flight paths.
  * Use standard widgets to control animation time, select imagery layers, and zoom to a location.

* 一个API，三种视图： 

  * Cesium supports a 3D globe, 2D map, and 2.5D Columbus View with the same API.

标准实现
--------------------------------------------------------------------------------
* WMS and WMTS

细节
--------------------------------------------------------------------------------

**网站:** http://cesiumjs.org

**授权:** Apache 2.0 license

**软件版本:** 1.4

**平台支持:**  Platform independent, depends only on a browser which supports WebGL

**社区支持:** Mailing list cesium-dev@googlegroups.com

快速开始
--------------------------------------------------------------------------------

* :doc:`快速入门文档 <../quickstart/cesium_quickstart>`
