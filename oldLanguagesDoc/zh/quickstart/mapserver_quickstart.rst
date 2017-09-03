:Author: OSGeo-Live
:Author: Alan Boudreault, Steve Lime
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-mapserver-new.png
  :scale: 65 %
  :alt: Project logo
  :align: right
  :target: http://mapserver.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

================================================================================
 MapServer 快速入门文档
================================================================================

　　MapServer 是一款 `开源 <http://www.opensource.org>`_ 的服务程序，用于以 `OGC 标准服务 <http://www.opengeospatial.org/standards>`_ 发布影象、矢量要素等地理信息。其提供的服务包括 `WMS 网络地图服务 <http://www.opengeospatial.org/standards/wms>`_ 和 `WFS 网络地理要素服务 <http://www.opengeospatial.org/standards/wfs>`_ 。

　　本的内容包括：
     
  * :ref:`mapserver-quickstart-configure-with-mapfile-zh`
  * :ref:`mapserver-quickstart-wms-request-zh`
  * :ref:`mapserver-quickstart-add-new-layer-zh`
  * :ref:`mapserver-quickstart-styling-a-layer-zh`

.. _mapserver-quickstart-configure-with-mapfile-zh:

使用 "mapfile" 配置文件配置 MapServer
================================================================================

.. note:: **教学内容** 本节讲述 mapfile 及其配置，并设置一个示例用于控制 MapServer 将 shp 变换为栅格用于 WMS 服务。

MapFile 配置文件
--------------------------------------------------------------------------------

　　MapServer 的 `Mapfile <http://mapserver.org/mapfile/index.html>`_ 用于控制对数据的栅格或矢量输出。其中包含了数据源和渲染样式（颜色、符号、标准等）信息。

创建 MapFile
--------------------------------------------------------------------------------

#. 开启文本编辑器（Mousepad 是 Live 默认的文本编辑器： :menuselection:`Applications --> Accessories --> Mousepad` ）；
#. 在 :file:`/home/user/mapserver_quickstart.map` 创建  "mapserver_quickstart.map" ；

　　输入以下示例配置：
::

  MAP
    NAME "MAPSERVER QUICKSTART"
    EXTENT -137 29 -53 88
    UNITS DD
    SHAPEPATH "/home/user/data/natural_earth/"
    SIZE 800 600

    IMAGETYPE PNG24
  
    PROJECTION
      "init=epsg:4326" 
    END

    WEB
      METADATA
        ows_enable_request "*"
      END
    END

    LAYER
      NAME "Admin Countries"
      STATUS ON
      TYPE POLYGON
      DATA "10m_admin_0_countries"
      CLASS 
        STYLE
          COLOR 246 241 223
          OUTLINECOLOR 0 0 0
        END
      END 
    END

  END

.. note::
    
   　　这个配置使用了位于 :file:`~/data/natural_earth` （或 :file:`/usr/local/share/data/natural_earth` ）的 Natural Earth 数据集。

　　在一个 MapFile 配置文件中，一个对象以其名称（例如 **MAP**）开始，并以 **END** 结束。每个配置应当以 **MAP** 对象名开始，并包含一组 **LAYER** 图层对象。在以上示例中只定义了一个图层。

　　部分对象和属性含义如下：
 * EXTENT：默认的地理坐标范围
 * LAYER：图层数据源与显示属性
 * SHAPEPATH：文件目录（针对 shp 、tiff 等文件，非数据库或网络服务）

　　在 **LAYER** 中存在一系列的属性，例如：
 * STATUS：图层允许显示(*ON*)、不显示(*OFF*)或强制显示(*DEFAULT*)
 * TYPE：渲染对象的几何类型，此处为 *polygons* 多边形（面要素）
 * DATA：所使用的源文件名称，此处为一 shp 文件
 * CLASS：渲染样式控制，详见后述

.. note:: 　　详细的 `Mapfile <http://mapserver.org/mapfile/index.html>`_ 对象与属性说明可以在 MapServer 文档中找到。

.. _mapserver-quickstart-wms-request-zh:


在 MapServer 以命令行渲染图像
========================================================

　　MapServer 主要是为网络服务设计的，但也可以在本地以命令行方式执行处理图像等操作。对于大量重复操作或调试，这种功能会很有用。

　　在命令行界面（Applications/Accessories/Terminal Emulator）输入：

::
 shp2img -m mapserver_quickstart.map -o mymap.png

　　执行成功后，在 file:///home/user/mymap.png 将可以获得成果图像。

通过 MapServer 进行 WMS **GetMap** 请求
================================================================================

.. note:: **提示** 以下演示如何利用 mapfile 根据 OGC WMS 请求 在 MapServer 中渲染 OGC WMS 请求提供的多个图层的数据。

　　在浏览器中访问 URL
::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=PNG&WIDTH=800&HEIGHT=600

　　以上 URL 为一个 `Web Map Service (WMS) <http://www.opengeospatial.org/standards/wms>`_ **GetMap** 请求。MapServer 通过其中指定的 mapfile 将指定图层渲染为 PNG 图像，并且符合用户指定的参数（图像大小、地理区域范围、投影等）。在 mapfile 的 "*&LAYERS=...*" 中指定的各图层都具备 *STATUS ON* 属性，同时 *STATUS DEFAULT* 的图层也会被渲染。渲染结果如图所示。

  .. image:: /images/screenshots/mapserver/mapserver_map.png
    :scale: 70 %

.. note:: 除了 "*?map=/home/user/mapserver_quickstart.map*" 参数针对 MapServer 外，其它参数都是 WMS 标准规定的。

.. _mapserver-quickstart-add-new-layer-zh:

在 mapfile 添加本地 shp 文件图层
================================================================================

.. note:: **提示** 以下演示向 mapfile 添加一个新的图层对象。

　　此处将向 mapfile 添加图层对象。在最后一个 *END* 前添加以下图层配置：
::

 LAYER
   NAME "Lakes"
   STATUS ON
   TYPE POLYGON
   DATA "10m_lakes"
   CLASS 
     STYLE
       COLOR 153 179 204
     END
   END 
  END

　　目前示例 MapFile 中定义了两个图层。注意新图层具备 "STATUS ON" 属性，即允许调用但默认并不渲染。

　　改动之前的 WMS **GetMap** 请求可以加入新的 "Lakes" 图层。这里只需改变 "LAYERS" 列表，即：
::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries,Lakes&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=PNG&WIDTH=800&HEIGHT=600

　　请求的结果与上一次的相似，但添加了湖泊图层：

  .. image:: /images/screenshots/mapserver/mapserver_lakes.png
    :scale: 70 %

.. _mapserver-quickstart-styling-a-layer-zh:

在 mapfile 中设置样式配置
================================================================================

.. note:: **提示** 以下演示根据数据属性配置控制图层内要素的渲染样式。

　　在 MapFile 中，一个 LAYER 要素可以包含任意多个 CLASS 对象。这些用于控制数据中空间要素的渲染样式。例如，在 "10m_lakes" 数据集使用 `ogrinfo <http://www.gdal.org/ogrinfo.html>`_ 可以看到要素的属性信息。利用不同的 CLASS 对象，可以通过这些属性控制渲染样式。

　　在 "10m_lakes" 数据集包含了一个 *ScaleRank* 属性用于标识湖泊对象的大小。据此可以对不同湖泊采用不同的渲染样式。在 LAYER 中添加一个新的 CLASS 对象：
::

  LAYER
   NAME "Lakes"
   STATUS DEFAULT
   TYPE POLYGON
   DATA "10m_lakes"
   CLASSITEM "ScaleRank" 
   CLASS 
     EXPRESSION /0|1/  
     STYLE
       COLOR 153 179 204
       OUTLINECOLOR 0 0 0
     END
   END 
   CLASS 
     STYLE
       COLOR 153 179 204
     END
   END 
  END

　　新的 CLASS 对象使得 MapServer 根据 "ScaleRank" 属性控制样式。ScaleRank 为 "0" 或 "1" 者边界线以黑色显示。CLASS 列表以从前到后的顺序调用。当一个要素满足了 "EXPRESSION" 的定义，该要素会使用相应 CLASS 进行渲染。不满足时，系统将检查下一个。若没有任何条目满足，该要素默认不会渲染，除非该对象包含 no EXPRESSION 作为默认。图层的 "CLASSITEM" 参数指导 MapServer 调用所需的属性用于 EXPRESSION 对比。

　　以上改动使得渲染图像上较大的湖泊出现黑边，如图所示。

  .. image:: /images/screenshots/mapserver/mapserver_lakes_scalerank.png
    :scale: 70 %

.. note:: 在 `EXPRESSIONS <http://mapserver.org/mapfile/expressions.html>`_ 可以学习更多有关属性匹配表达式的内容。

其它信息
================================================================================

　　以上只是一个简单的示例，MapServer 提供了其它大量的功能。MapServer 项目网站提供了大量的培训资源，以下是其中一些：

* `MapServer 入门 <http://mapserver.org/introduction.html#introduction>`_.
* `MapServer 教程 <http://www.mapserver.org/tutorial/index.html>`_ （含有更多示例）
* `OGC 配置与支持 <http://www.mapserver.org/ogc/index.html>`_ （有关 OGC 标准，包括 WMS, WFS, SLD, WFS Filter Encoding, WCS, SOS, 等）
* `社区邮件列表 <http://www.mapserver.org/community/lists.html>`_ 欢迎有关 MapServer 的问题和建议。

