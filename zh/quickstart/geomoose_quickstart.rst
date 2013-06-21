:Author: Bob Basques
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: GeoMoose 2.4
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-geomoose.png
  :width: 50px
  :height: 50px
  :alt: project logo
  :align: right
  :target: http://www.geomoose.org

********************************************************************************
GeoMoose 快速入门文档
********************************************************************************

入门文档
================================================================================

　　GeoMoose 是一款 GIS 数据管理框架。OSGeo Live 中安装的 GeoMoose 是一套示例配置和一些示例数据。

.. image:: ../../images/screenshots/1024x768/geomoose-screenshot-1024x786.jpg
  :scale: 50 %
  :alt: Geomajas Showcase
  :align: right

* 在 Geospatial 菜单选择“Browser Clients”。

* 点击“Start GeoMoose”。示例服务会在默认浏览器打开。

  .. image:: ../../images/screenshots/1024x768/geomoose-osgeo-menu.png
    :scale: 50 %

* 这是一个 GeoMoose 服务实例。

  .. image:: ../../images/screenshots/1024x768/geomoose-2_4-screenshot002.jpg
    :scale: 50 %

　　该实例的界面包含了：

  1. 标题栏
  #. 工具栏
  #. 地图显示窗口，包含：

    - 导航与缩放控制
    - 由示例数据显示的地图

  4. 侧边栏，包含：

    - “Jump to“地理书签菜单
    - 若干选项卡用于“Catalog”数据列表、“Information”元数据、“Custom”自定义输出
  
  5. 底部面板显示：

    - 多套坐标显示：X,Y（数据集内部坐标），LAT/LON（经纬度）和“USNG”（美国标准地图参考）
    - 可自定义的缩放比例设置


在 GeoMoose 中查询地点
================================================================================

　　通过点击顶部工具栏中的“identify”（蓝色圆圈中的“i”字幕）按钮，然后点击地图上的目标位置即可获取该地点的信息。

  .. image:: ../../images/screenshots/1024x768/geomoose-2_4-screenshot003.jpg
    :scale: 50 %

　　右侧面板中将显示该地点的信息。在 OSGeo Live 的演示版中，此功能默认显示“Parcel”图层的信息。

测量长度
================================================================================

　　GeoMoose 提供了一些测量工具。工具栏中直尺图标启动距离测量工具。多次点击可以测量任意折线；双击结束一次测量；侧边栏的“Total Length”将会显示折线的总长度。

  .. image:: ../../images/screenshots/1024x768/geomoose-2_4-screenshot006.jpg
    :scale: 50 %

　　这些工具均以 GeoMoose 服务的形式加载，也可以存储于 MAPBOOK 配置文件之中。


带有缓冲区的要素选择
================================================================================
　　基于点、线、面或选择框，可以建立缓冲区用于选择要素。点击“Buffered Select”按钮（图标为多边形加铅笔），绘制一个多边形选择区，双击结束即可。在下图中，一个选择框正在绘制，右侧面板显示了缓冲区的设置。在该例中的选择区是对“Parcels”图层的，缓冲距离尚未设置，为 0 。

  .. image:: ../../images/screenshots/1024x768/geomoose-2_4-screenshot008.jpg
    :scale: 50 %

　　以上示例在选择和属性获取中都使用了“PARCEL”图层。GeoMoose 支持层级选择，可以对一个图层建立选择，再通过该选择查询另外一个图层的信息。以下截图显示了对选择区设置 100 英尺（30.5 米）缓冲时的效果。

  .. image:: ../../images/screenshots/1024x768/geomoose-2_4-screenshot010.jpg
    :scale: 50 %

　　点击侧边栏的“Go“按钮可以生成一份报告。报告可以在侧边栏或新窗口中显示。

  .. image:: ../../images/screenshots/1024x768/geomoose-2_4-screenshot012.jpg
    :scale: 50 %

　　以上截图显示了服务器对一组选择操作的响应。紫色区域为绘制的选择区，桔黄色要素为该选择区选中的对象，明黄色要素则为选择区在有 100 英尺缓冲的条件下新增的选中对象。侧边栏显示出相应的报告和输出选项。

打印输出
================================================================================

　　以下截图显示了 GeoMoose 包含的地图打印输出系统。

  .. image:: ../../images/screenshots/1024x768/geomoose-2_4-screenshot013.jpg
    :scale: 50 %

　　输出菜单显示了输出的选项。GeoMoose 默认支持栅格文件、HTML 文件和 PDF 文件 3 种输出方式。选择 PDF 输出会开启以下对话框：

  .. image:: ../../images/screenshots/1024x768/geomoose-php-pdf-download-dialog.png
    :scale: 50 %

　　以下示例是一份以纸张横置方式输出的 PDF 地图文件。

  .. image:: ../../images/screenshots/1024x768/geomoose-php-pdf-download.png
    :scale: 50 %


其它信息
================================================================================
　　更多教程请见 `GeoMoose 官方网站 <http://www.GeoMoose.org/>`_ 。

