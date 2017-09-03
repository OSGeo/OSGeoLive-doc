:Author: Sergio Baños Calvo
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-Kosmo.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.opengis.es/index.php?lang=en

********************************************************************************
Kosmo 快速入门文档
********************************************************************************

　　Kosmo 是一套用户友好的地理信息系统桌面程序，用于浏览、编辑和分析各类矢量或栅格的地理信息数据，并支持多种数据库。

　　本文档包含：

* 程序的启动    
* 文件、数据库和 OGC 网络服务的载入
* 地图显示的导航操作
* 数据图层的样式设置



启动 Kosmo 桌面系统
================================================================================

　　请以以下步骤启动 Kosmo：

#. 从系统菜单选择 *Other > Kosmo* 或从 *Desktop GIS* 菜单选择 Kosmo；

#. 程序可能需要几分钟进行初始化并启动；

   .. image:: /images/projects/kosmo_splash_screen.png

#. 在 Welcome 欢迎界面，选择 *Create a new project > With a new view* (**1**) 并点击 *Ok* (**2**) 。

   .. image:: /images/projects/kosmo_welcome_dialog.png

#. 在 Spatial Reference System 坐标系统面板点击 *...* 按钮。

   .. image:: /images/projects/kosmo_select_srs.png

#. 在 SRS 坐标系统类型中选择 *EPSG* (**1**)，输入示例数据所用的 `4236` 并点击 *Search* 搜索 (**2**) 。

#. 选择 SRS EPSG:4326 - WSG4 (**3**) 并点击 *Ok* (**4**) 。

   .. image:: /images/projects/kosmo_select_srs_epsg_4326.png

#. 点击 *Ok* ，以 EPSG:4326 作为显示坐标系开启显示。
    
  
.. tip::
  注：在各个视图的顶部名称栏也显示了其坐标系统。


Kosmo 主界面操作
================================================================================

　　Kosmo 桌面系统的主界面分为以下几个部分：

  .. image:: /images/projects/kosmo_main_window.jpg

* 主菜单

* 主工具栏

* 图层管理器

  此处显示当前工程中载入的各个类别的数据

* 数据显示区

* 状态栏

  显示运行状态与警告信息
  
* 光标所在点坐标



载入图层
================================================================================

载入文件
--------------------------------------------------------------------------------

　　此处载入 OSGeo-Live 上的一些示例文件：

#. 选择 *View > Load Dataset...* 或点击工具栏上显示绿色加号的图标；

#. 在 *Format 格式* 面板选择 *Shapefile* (**1**) ；

#. 在开启的文件选择器中找到位于 :file:`/usr/local/share/data/natural_earth` (**2**) 的 :file:`10m_admin_0_countries.shp` 文件；

#. 点击 *Ok* 按钮读取文件 shapefile (**3**)；

   .. image:: /images/projects/kosmo_select_shape_file.png

#. 在图层表中勾选添加的图层使之显示；

#. 重新选择 *View > Load Dataset...* 或绿色加号；

#. 在 *Format* 中选择 *Image file* (**1**)；

#. 选择 :file:`/usr/local/share/data/natural_earth/HYP_50M_SR_W` (**2**) 中的 :file:`HYP_50M_SR_W.tif` 文件；

#. 点击 *Ok* 读取影象 (**3**)

   .. image:: /images/projects/kosmo_select_raster_file.png

#. 在图层列表中，同样开启该图层的显示；

#. 图层的渲染顺序为从上到下，通过拖拽可以改变顺序；

   .. image:: /images/projects/kosmo_load_file_example.jpg

.. note::
  在 OSGeo-Live 的以下位置还有其它示例数据：
  
  * :file:`~/data` (也即 :file:`/usr/local/share/data` 或 :file:`/home/user/data`)
  * :file:`/usr/local/share/openjump/data`
      
　　你可以尝试从这些目录导入其它的数据。注意在 *Format* 中选择适当的数据类型。

.. tip:: 
  　　在 *Load Dataset...* 选择一个包含多个影象数据集的文件目录，系统将会读取其中的所有影象并拼接显示。


数据库
--------------------------------------------------------------------------------

　　此处导入一个示例数据表：

#. 选择 *View > Load Dataset...* 或绿色加号；

#. 在 *Format* 选择 *Database* (**1**)；

#. 输入 host 服务器地址、port 端口号、database name 数据库名称、user name 用户名和 password 密码。以下是示例数据库的信息：

   * Host: localhost
     
   * Port: 5432
    
   * Database name: natural_earth
    
   * User name: user
    
   * Password: user        

#. 点击 *Connect* 读取 *natural_earth* 数据库 (**2**)；

#. 勾选 *10m_populated_places_simple* (**3**)；

#. 点击 *Ok* 读取数据表 (**4**)；

   .. image:: /images/projects/kosmo_database_connection.png
  
#. 在图层窗口勾选该图层使之显示。

   .. image:: /images/projects/kosmo_load_database_example.jpg


OGC 服务
--------------------------------------------------------------------------------

#. 启动 :doc:`GeoServer <../overview/geoserver_overview>` WMS 服务。使用 |osgeolive-appmenupath-geoserver| 或 *Web Services* 菜单中的 'Start GeoServer' 图标即可。

#. 点击工具栏上的 *Load SDI Service* 按钮；

#. 在 *Select SDI service type* 面板选择 *WMS Service* (**1**) 并点击 *Next* button (**2**) 继续；

   .. image:: /images/projects/kosmo_wms_1.png

#. 在 *Select Uniform Resource Locator (URL)* 输入 http://localhost:8082/geoserver/ows?VERSION=1.1.1 (**1**) 并点击 *Connect* (**2**) 连接；

#. 若成功连接，点击 *Next* (**3**) 继续；

   .. image:: /images/projects/kosmo_wms_2.png

#. 选择 `North America Sample Imagery` (**1**) 图层并点击 *>* (**2**) 将其加入右侧列表中。点击 *Next* (**3**) 继续；

   .. image:: /images/projects/kosmo_wms_3.png

#. 直接点击 *Finish* (**1**) 按钮开始载入；

   .. image:: /images/projects/kosmo_wms_4.png

#. 在图层列表勾选显示新图层；

#. 选择新图层并通过 *Zoom To Layer* 调整显示范围至该图层的数据范围；

#. 将新图层拖拽至 *HYP_50M_SR_W* 上方；

   .. image:: /images/projects/kosmo_load_wms_results.jpg


.. note::
  　　Kosmo 中预装了一些 WMS 服务，大部分来自一些西班牙的相关机构。在有网络连接的情况下，可以尝试这些服务。


地图显示的导航操作
================================================================================

　　主菜单的一些工具可以用于改变显示范围：

1. |ZOOM| Zoom In/Out 缩放

  .. |ZOOM| image:: /images/projects/kosmo_zoom.png
  
  * 这是开启新对话后的默认工具；
  * 鼠标左键用于放大；
  * 鼠标右键用于缩小；
  * 左键拖拽可以用于放大至特区域。
  
2. |PAN| Pan 移动
  
  .. |PAN| image:: /images/projects/kosmo_pan.png

  * 用于平移视窗；
  * 点击左键拖拽操作；
      
3. |ZOOM_PREV| Zoom Previous 缩放回退

  .. |ZOOM_PREV| image:: /images/projects/kosmo_zoom_prev.png
  
  * 回退到上个选择的缩放比率；
  
4. |ZOOM_NEXT| 缩放复进

  .. |ZOOM_NEXT| image:: /images/projects/kosmo_zoom_next.png

  * 复进到回退前的缩放比率；
    
5. |ZOOM_FULL_EXTENT| Zoom To Full Extent 全局视图

  .. |ZOOM_FULL_EXTENT| image:: /images/projects/kosmo_zoom_to_full_extent.png
  
  * 浏览整个工程涉及的范围；
  
6. |ZOOM_TO_LAYER| Zoom To Layer 缩放至图层；

  .. |ZOOM_TO_LAYER| image:: /images/projects/kosmo_zoom_to_layer.png
  
  * 缩放至某个图层的数据范围；
    
7. |ZOOM_TO_SELECTED_ITEMS| Zoom To Selected Items 缩放至所选对象

  .. |ZOOM_TO_SELECTED_ITEMS| image:: /images/projects/kosmo_zoom_to_selected_items.png
  
  * 缩放至被选择的对象；
    
8. |PAN_TO_CLICK| Pan To Click 点击居中

  .. |PAN_TO_CLICK| image:: /images/projects/kosmo_pan_to_click.png
  
  * 将视窗居中到点击位置；
  
9. |COORDINATE_LOCALIZATION| Coordinate Localization 坐标居中

  .. |COORDINATE_LOCALIZATION| image:: /images/projects/kosmo_coordinate_localization.png
  
  * 以给定坐标居中；

　　缩放也可以通过鼠标滚轮操作；

.. note::
  若某个工具被禁用，将光标至于其上会显示说明。



样式设置
================================================================================

　　此处通过前述数据中国家的人口数控制显示样式。

#. 选择 `10m_admin_0_countries` 图层；

#. 右击选择 *Simbology > Change Styles...*；

#. 选择 `Colour theming` 选项卡；

#. 开启 *Enable colour theming* 和 *by range* (**1**)；

#. 以 `POP_CNTRY 人口数` 作为 *Attribute 参考属性* (**2**)；8 作为 *Range count* (**3**)，RYG 作为 (Color Brewer) *Color schema* (**4**)；

#. 点击 *Ok* (**5**) 应用设置；

   .. image:: /images/projects/kosmo_basic_style_classification.png

#. 图层的显示将会改变。

   .. image:: /images/projects/kosmo_styled_layer_by_range.jpg


其它示例
================================================================================

* 使用 `Symbology > Advanced style editor...` 高级样式编辑器进行进一步的样式控制；

* 使用 `Query wizard` 检索工具进行高级检索；

* 使用提供的各类工具编辑数据；

* 为特定数据创建拓朴规则并编辑；

* 开启系统的各类插件尝试其功能。


其它信息
================================================================================

　　在 http://www.opengis.es/index.php?lang=en 可以获得进一步的文档与演示视频。

