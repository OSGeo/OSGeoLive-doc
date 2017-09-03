:Author: Simon Cropper
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-gvSIG.png
   :scale: 50 
   :align: right

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
gvSIG 快速入门文档
********************************************************************************

项目简介
================================================================================

　　gvSIG 是一套桌面 GIS 系统，用于获取、存储、管理、分析和发布各类地理信息数据，从而解决复杂的管理与规划问题。gvSIG 具有用户友好的界面，支持众多常见矢量或栅格数据格式。它包含了大量的工具用于数据查询、空间分析、网络分析等地理信息处理，适用于多种应用需求。
　　 `gvSIG <http://www.gvsig.org/web/projects/gvsig-desktop/description2/view?set_language=en>`_

本文档包含内容
==============

* 启动 gvSIG，创建一个视图
* 定义显示的投影系统
* 添加矢量和栅格数据
* 移动视点
* 改变图层显示设置
* 选中并导出一定范围的市镇数据到文件
* 创建具备坐标格网等的地图文件
* 保存工程和退出

启动 gvSIG 并创建工程
================================================================================

　　从 Application 菜单选择 gvSIG 。程序启动需要花费较长的时间。

#. gvSIG 默认在启动时将新建一个类型为“View”的空工程。
#. 点击 [New] 新建一个视图。

.. image:: /images/projects/gvsig/gvsig_qs_001.png
   :scale: 55 

定义视图坐标系统
================================================================================

开启视图配置面板
--------------------------------------------------------------------------------

#. 选择默认名为 ``Untitled - 0`` 或 ``Untitled - 1`` 的默认视图。
#. 点击 [Properties] 开启 **View properties 视图配置** 面板。
#. 点击 'Current projection' 旁边的 [...] 按钮，开启 **New CRS 新坐标系统** 对话框。

.. image:: /images/projects/gvsig/gvsig_qs_002.png
   :scale: 55 

定义坐标系统
--------------------------------------------------------------------------------

#. 在 'Type' 下拉菜单选择 'EPSG' 。
#. 输入 EPSG 坐标系统编码。本例中使用的是 EPSG=4326（WGS84 2D Geographic Projection）。点击 [Search] 按钮搜索。列表中将会显示所需项目。（注：EPSG 坐标系统编码可以在 spatialreference.org 查询。）
#. 点击 [OK] 回到 **View Properties** 面板。

.. image:: /images/projects/gvsig/gvsig_qs_003.png
   :scale: 55 

保存视图配置
--------------------------------------------------------------------------------

#. EPSG code 将更新为 4326 ，地图单位也将变为度。
#. 点击 [OK] 回到 **Project Manager 工程管理页面** 。

.. image:: /images/projects/gvsig/gvsig_qs_004.png
   :scale: 55 

开启视图
--------------------------------------------------------------------------------

#. 选择新创建的视图；
#. 点击 [Open] 开启视图；
#. 视图界面包含三个面板；
#. 左上角 Table-of-Contents 显示着所有数据集和图层关系；
#. 左下角通过一个可选的矢量数据集显示视点的位置；
#. 右侧主要面板为地图显示面板；
#. 点击 'Maximise window' 可最大化显示。

.. image:: /images/projects/gvsig/gvsig_qs_005.png
   :scale: 55 

视图－添加栅格与矢量数据
================================================================================

图层管理面板
--------------------------------------------------------------------------------
   
#. 点击 'Add layer' 图标开启 **Add layer 添加图层** 面板。
#. 点击 **Add layer** 的 [Add] 按钮。默认选项为 *File 文件*，**Open 打开文件** 面板将开启。
#. 选择 ``/usr/local/share/data/natural_earth/HYP_50M_SR_W`` 示例数据目录。

.. image:: /images/projects/gvsig/gvsig_qs_006.png
   :scale: 55 

选择栅格文件
--------------------------------------------------------------------------------
   
#. 从 `file type` 下拉菜单选择 *gvSIG Raster Driver* 。由于默认选择是 *shapefile driver* ，文件类表开始是空置的。
#. 选择 ``HYP_50M_SR_W.tif`` 文件。
#. 点击 [OK] 按钮回到 **Add layer** 面板。

.. image:: /images/projects/gvsig/gvsig_qs_007.png
   :scale: 55 

选择矢量文件
--------------------------------------------------------------------------------
  
#. 经过前述操作，在 **Add layer** 对话框中以完成栅格数据的添加。
#. 再次点击 [Add] 添加栅格数据，开启 **Open** 对话框。
#. 点击 [Up one level] 向上一级，进入 ``/usr/local/share/data/natural_earth`` 目录。
#. 选择 *gvSIG shp driver* 。
#. 选择 ``10m_admin_1_states_provinces.shp`` 、``10m_populated_places_simple.shp`` 和 ``10m_rivers_lake_centerlines.shp`` 三个文件。（按住 Ctrl 选择多个文件）
#. 点击 [OK] 回到 **Add layer** 。
#. 点击 **Add layer** 中的 [OK] 回到主界面。

.. image:: /images/projects/gvsig/gvsig_qs_008.png
   :scale: 55 

视图和基本导航操作
================================================================================

缩放至特定区域
--------------------------------------------------------------------------------

　　回到主界面后，你将看见矢量数据叠加在栅格数据之上。取决于默认样式的不同，实际显示的颜色可能与截图有所区别。
       
#. 默认条件下，主工具栏中激活的工具是 *Zoom in 放大显示* 。
#. 本示例中，可以在澳大利亚东南部绘制一个缩放显示框。按住鼠标键拖拽即可。

.. image:: /images/projects/gvsig/gvsig_qs_009.png
   :scale: 55 

高精度导航
--------------------------------------------------------------------------------

　　以上操作应当会将显示放大至框选的范围。 

#. 左侧面板的宽度可以调整以方便显示长文件。
#. 使用截图中高亮的工具可以进一步实现显示调整。这里将 Victoria 地图放置于画面中央。

.. image:: /images/projects/gvsig/gvsig_qs_010.png
   :scale: 55 

视图－图层样式设置
================================================================================

设置透明多边形
--------------------------------------------------------------------------------
   
#. 选择 ``10m_admin_1_states_provinces.shp`` 图层，右键单击；
#. 选择 *Properties 属性* 菜单；
#. **Layer properties 图层属性** 对话框将开启。

.. image:: /images/projects/gvsig/gvsig_qs_011.png
   :scale: 55 

矢量图层渲染样式设置
--------------------------------------------------------------------------------

#. 在 **Layers properties** 选择 *Symbols* 选项卡；
#. 选择 [Choose symbol] ，**Symbol selector 样式选择** 面板开启；
#. 取消 *Fill color* 勾选使多边形内部透明；
#. 点击 [OK] 回到 **Layers properties** 。

.. image:: /images/projects/gvsig/gvsig_qs_012.png
   :scale: 55 

矢量图层标注设置
--------------------------------------------------------------------------------

#. 在 **Layers properties** 选择 *Labelling* 。
#. 根据截图尝试更改设置，选择 [Accept] 确认。

.. image:: /images/projects/gvsig/gvsig_qs_013.png
   :scale: 55 

显示效果
--------------------------------------------------------------------------------
   
　　如图，以上操作获得了一个基本的矢量图形叠加于栅格图像之上的 GIS 显示。运用同样的方法可以使用其它各类影象、数字高程模型及其它格式的矢量数据。

.. image:: /images/projects/gvsig/gvsig_qs_014.png
   :scale: 55 

练习－改变点、线图层的样式和标注
---------------------------------------------------------------------------------

　　同前述类似，尝试改变河流和市镇图层的设定，使得其样式和标注与截图一致。

.. image:: /images/projects/gvsig/gvsig_qs_015.png
   :scale: 55 

简单分析操作－选定一定区域内的城镇
================================================================================

设定选择区域
--------------------------------------------------------------------------------
   
#. 选中 ``10m_admin_1_states_provinces.shp`` 图层；
#. 点击 'Select by point' 图标；
#. 选中代表 Victoria 州的多边形（如图）。默认设置下，该多边形将变为明黄色。

.. image:: /images/projects/gvsig/gvsig_qs_016.png
   :scale: 55 

选择区域内的市镇
--------------------------------------------------------------------------------
   
#. 选择 ``10m_populated_places_simple.shp`` 图层；
#. 在 ``View > Selection > Selection by layer`` 选择 **Selection by Layer** 对话框；
#. 在 **Selection by Layer 以图层选择** 对话框设置相应的选择标准，点击 [New set] 执行选择。
#. 点击 **Selection by Layer** 中的 [Cancel] 回到主界面。

.. image:: /images/projects/gvsig/gvsig_qs_017.png
   :scale: 55 

取消多边形选择并查看市镇图层的选择结果
--------------------------------------------------------------------------------
   
#. 选中 ``10m_admin_1_states_provinces.shp`` 图层；
#. 点击工具栏中的 'Clear selection' 图标；
#. 现在画面上被选中的市镇要素得以清晰显示。

.. image:: /images/projects/gvsig/gvsig_qs_018.png
   :scale: 55 

将选中的要素输出至 shp 文件
--------------------------------------------------------------------------------
   
#. 选择 ``10m_populated_places_simple.shp`` 文件；
#. 选择 ``Layer > Export to... > SHP`` 进行输出；
#. **Export to... 输出选项对话框** 中，gvSIG 识别了 26 个要素，并警告输出结果将是原数据集的一部分。点击 [Yes] 确认；
#. 在 **Save 保存** 保存对话框，设置文件名和路径，点击 [Save] 。若在设置路径已有同名文件，程序将给出警告；
#. 在 **Add layer 添加图层** 对话框，点击 [Yes] 确认将新数据添加到工程中。

.. image:: /images/projects/gvsig/gvsig_qs_019.png
   :scale: 55 

显示特定区域的市镇
--------------------------------------------------------------------------------

#. 回到主界面后，关闭 ``10m_populated_places_simple.shp`` 图层；
#. 改变 ``test.shp`` 图层的样式至截图效果；
#. 显示中只包括了
#. Select the 'Close window' icon to return to the **Project manager** so we
   can create a map using this view.

.. image:: /images/projects/gvsig/gvsig_qs_020.png
   :scale: 55 
   
创建地图
================================================================================

创建新地图并打开
--------------------------------------------------------------------------------

#. 在 **Project Manager 工程管理** 选择 *Map* 类型；
#. 点击 [New] 按钮创建新的地图文档；
#. 选中新创建的文档。其默认名称为 ``Untitled - 0`` ；
#. 点击 [Open] 打开；
#. 一个空地图文档将会在其独立窗口显示。其标题为 ``Map: Untitled - 0`` ；图上显示的点是用于帮助调整页面布局的参考点；
#. 点击 'Maximise window' 最大化窗口。

.. image:: /images/projects/gvsig/gvsig_qs_021.png
   :scale: 55 

创建坐标格网
----------------------------------- 
   
#. 在主菜单点击 'Insert view' 图标；
#. 通过拖拽指定地图显示区域。**Properties of view framework** 面板将打开；
#. 选择之前创建的 *view* ；
#. 勾选 *Show Grid 显示格网* 选项创建格网；
#. 点击 [Configure] 打开 **Grid settings 格网设置** 对话框；
#. 在 **Grid settings** 中将 'grid interval 格网间距' 设为 1.0 ，即两相邻线的间距为 1 度；
#. 选择 'grid format' ，这里使用线（line）较点（point）更易于观察；
#. 设置 'font size' 字体大小为 14 左右较为合适；
#. 点击 [Ok] 回到 **Properties of view framework** 并选择 [Accept] 回到主界面。

.. image:: /images/projects/gvsig/gvsig_qs_022.png
   :scale: 55 

其它操作示例
--------------------------------------------------------------------------------
   
#. 在主菜单选择 ``Map > Properties`` 打开 **Map Properties** 。取消勾选 *Visualise Grid* 并点击 [OK] 确认。页面上的格点将会消失（如图），版面调整中的吸附功能也不再作用。
#. 通过工具栏的图标及 ``Map`` 菜单可以添加比例尺（scale bar）、指北针（north arrow）等元素。
#. 地图可以打印或输出到 PDF/Postscript 用于外部程序编辑。
#. 点击 'Close window' 图标回到 **Project manager** 。

.. image:: /images/projects/gvsig/gvsig_qs_023.png
   :scale: 55 

保存工程和退出
================================================================================
   
#. 工程文件通过 ``File > Save as...`` 可以保存。
#. 通过 ``File > Exit`` 可以退出程序。

.. image:: /images/projects/gvsig/gvsig_qs_024.png
   :scale: 55 

其它信息
================================================================================

　　在 `gvSIG 官方网站 <http://www.gvsig.org/web/docusr/learning/>`_ 有进一步的教学材料。


