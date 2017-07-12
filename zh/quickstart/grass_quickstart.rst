:Author: Hamish Bowman
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: /images/project_logos/logo-GRASS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://grass.osgeo.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


********************************************************************************
GRASS GIS 快速入门文档
********************************************************************************

启动
================================================================================

　　在 Live 系统中，点击桌面上的 GRASS 图标，即可启动 GRASS GIS 。在“Welcome to GRASS”页面可以选择 Spearfish 或 simplified North Carolina (nc_basic_spm) 数据集，“user1”工程，并点击 [Start Grass] 启动。本文档中使用的示例数据集是 Spearfish 。

.. image:: /images/screenshots/800x600/grass-startup.png
  :scale: 40 %
  :alt: screenshot
  :align: right

　　这将启动 GRASS GIS 。本版本的 GRASS 使用了 `基于 wxPython 的新界面 <../../grass/wxGUI.html>`_ 。

.. tip::  　　若屏幕分辨率很小（例如 800x600），界面可能过于拥挤，以至于 [Start GRASS] 可能被覆盖。此时按住 Alt 将窗口部分拖出屏幕，并将窗口边框拖拽扩大可以解决问题。

地图显示
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/800x600/grass-layerman.png
  :scale: 50 %
  :alt: screenshot
  :align: left

　　根据所选择的数据集位置，从 PERMANENT mapset 添加 `elevation.10m` 或 `elevation` 数据集。在 Layer Manager 图层管理器点击显示一个格网和加号的图标，并从 "*map to be displayed*" 下拉菜单，点击 [Ok] 。

　　同样，点击 V 型折线和加号图标可以添加 `roads` 或 `roadsmajor` 等矢量线图层。

　　右键单击一个图层选择 `Zoom to selected map(s)` 可以缩放至全局。


绘制地形剖面
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/800x600/grass-profile.png
  :scale: 50 %
  :alt: screenshot
  :align: right

　　在 Layer Manager 图层管理窗口，选中 `elevation` 图层，点击工具栏中的折线图图标，并选择 **Profile surface map** 。若没有自动选中，在对话框中选中所需图层亦可。点击 [Ok] 。选择左侧第二个图标可以创建剖面线。

生成随机表面
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　首先，在 :menuselection:`Settings --> Region --> Set region` 选择 `Set from default region` 设定默认区域，点击 [Run] ，然后使用 :menuselection:`Raster --> Generate surfaces --> Fractal surface` 创建一个基于分形算法的随机表面。在 `Optional` 可以进一步调整设置。点击 [Run] 执行。点击 [Close] 可以关闭 *r.surf.fractal* 模块的界面。

.. image:: /images/screenshots/800x600/grass-fractal.png
  :scale: 50 %
  :alt: screenshot
  :align: right

颜色设置
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　执行前述步骤后，在 `user1` 地图集下应当存在两个栅格数据图层。取消勾选 `elevation` 可以关闭该图层的显示。若需要，点击眼睛图标刷新显示。

　　这里要改变分形图层的渲染颜色设置。选中该图层，在 `Raster` 菜单选择 :menuselection:`Manage colors --> Color tables` 。在 `Colors` 选项卡的下拉菜单 `Type of color table` 中选择一个。示例截图中选择的是 `srtm` 。完成后点击 [Run] 并关闭 *r.colors* 窗口。

　　显示将自动刷新。通过改动图层的元数据设置也可以强制刷新显示缓存。工具栏上的刷新按钮（第二个）亦可用于刷新。
  
地形阴影图
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/800x600/grass-shadedrelief.png
  :scale: 50 %
  :alt: screenshot
  :align: right

　　这里使用 `elevation` 高程模型生成地形阴影图。首先，在主图层列表中右键单击 `elevation` 图层，选择 `Set computation region
from selected map(s)` ，然后在 `raster` 目录选择 :menuselection:`Terrain
analysis --> Shaded relief` （位于菜单中部），参数面板将会显示。

　　确认输入数据选择无误后点击 [Run] 。完成后将生成的 `elevation.shade @user1` 加入显示，关闭其它的图层。


河流和汇水区分析。
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　同样选择 `elevation` @PERMANENT 图层，在 `Raster` 菜单选择 :menuselection:`Hydrologic modeling --> Watershed analysis` 。 ``r.watershed`` 模块将启动。设置 `elevation` 图层为输入，在 'Input options' 设置 *threshold 最小汇水区面积* 为 10000 像元，在 'Output options' 的 `watershed basin` 设置 "elev.basins" ，`stream segments` 设置 "elev.streams" 。点击 [Run] 执行。

　　在图层列表窗口选中新生成的两个图层，右击 "elev.basins" 选择 "Change opacity level 设置透明度" ，设为 50% 左右。若有需要，鼠标拖拽可以改变图层顺序，从而将该图层至于上方。

.. image:: /images/screenshots/800x600/grass-watersheds.png
  :scale: 50 %
  :alt: screenshot
  :align: left

　　在图层窗口点击右侧第二个图标，选择 `Add a grid layer` 。在 `size of grid` 输入 0:03（0 度 3 分，格式为 D:M:S），在 "Optional" 选项卡勾选 `Draw geographic
grid`，点击 [Ok] 并刷新。

　　下面添加比例尺。点击工具栏右侧的 `Add map elements` 按钮，选择 "Add scalebar and north arrow" 并勾选 ``show`` ，点击 [Ok] 。比例尺默认将出现在地图的左上角。拖拽可以改变其位置。同样，选择 "Add legend" ，点击 "Set Options" 并选中 "elev.basins" 并点击 [Ok] 可以生成其图例。

　　目前显示使用的是默认的字体。在图层管理窗口打开 :menuselection:`Settings --> Preferences` ，在 "Map Display" 选项卡点击 [Set font] ，选择偏好的字体，点击 [Apply] 。完成后刷新显示。

矢量处理模块
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
　　以上演示均为栅格数据操作。另一方面，作为一套完善的 GIS 系统，GRASS 同样具有强大的矢量数据处理能力，具备完备的拓扑构建和分析功能。

.. image:: /images/screenshots/1024x768/grass-vectattrib.png
  :scale: 30 %
  :alt: screenshot
  :align: right

　　以上使用栅格方法生成了汇水区模型，这里要将其转换为矢量数据。在 `Raster` 菜单选择 :menuselection:`Map type conversions --> Raster to vector` 在 `r.to.vect` 对话框中，选中 ``basins @user1`` 作为 `input 输入` ，设置一饿该输出名称（例如 ``basins_areas``，应当满足 SQL 语言的格式要求）， `feature type` 设为 `area` 。在 `Attributes` 选项卡选择 “raster values as category numbers”，使用之前创建的栅格数据的参数作为多边形号。点击 [Run] 运行即可。矢量数据生成并显示后，建议调整其透明度。右击 ``basins_areas`` 图层，在 `Properties` 的 `Selection` 选项卡可以取消 `rendering of area centroids` 以关闭中心点显示。

　　下一步将要为新的多边形添加属性数据。这里输入的是各个汇水区的平均高程。在 `Vector` 选择 :menuselection:` Update attributes --> Update area attributes from raster` 启动 ``v.rast.stats`` 模块。使用 ``basin_areas`` 作为多边形图层，使用 `elevation` 作为栅格输入，输入栏目名称的前缀如 ``ele`` ，点击 [Run] 运行。在地图显示窗口，点击工具栏第五个图标可以查询任意位置对应多边形的属性。

　　使用 ``v.colors`` 模块可以依据属性改变多边形的颜色显示。在 `Vector` 选择 :menuselection:` Manage colors --> Color tables` ，以 ``basin_areas`` 作为  "input vector map" ，以 ``ele_mean`` 标注上一项生成的统计参数栏，并在 `Colors` 选项卡中复制 `elevation` 栅格的颜色数据。运行后，在图层列表点击 ``basin_areas`` 选择 `Properties` ，在 `Colors` 勾选 "getting colors from the map table column" ，点击 [Apply] ，显示将刷新。

　　以下演示属性表和 SQL 工具的操作。在图层表点击形似表格的图标（底部第二个），将显示当前连接的数据表。这里仅就前述汇水盆地进行简单的标准差查询。在 ``SELECT * FROM basin_areas WHERE`` 的下拉菜单选择 ``ele_stddev`` （标准差）作为查询对象，输入 ``< 50`` 并点击 [Apply] 确认。执行后，显示的数据项目将会减少，高程标准差较大的对象被排除了。右击表格选择 ``Select all`` 选中全部，再次右击选择 ``Highlight selected features`` 。选中的要素将会高亮显示。

3D 可视化
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/1024x768/grass-nviz.png
  :scale: 30 %
  :alt: screenshot
  :align: right

　　在 :menuselection:`File --> NVIZ` 开启 3D 可视化工具。选择 `elevation` 作为 "raster elevation" 。在开启的界面中，选择 :menuselection:`Visualize --> Raster Surfaces` ，设置 `fine resolution` 为 "1"。调节视角控制滚动条尝试不同的视角。

　　为在 DEM 上叠加影象，在 **Raster Surfaces** 选择 **Surface Attributes** 菜单，在 "color" 项目中创建 "New Map" 。在前述 Spearfish 数据集选择 `spot.image` 是较好的选择。在 North Carolina 数据集可用 `lsat7_2002_50` 。点击 "Accept" 并在主窗口点击 "Draw"（左上角）。

其它操作
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　很多用户可能想尝试 Cartographic Composer 制图工具和 object-oriented Graphical Modeling 面向对象的影象建模系统。其启动图标位于主界面底部工具栏。有关说明位于 `wxGUI <../../grass/wxGUI.html>`_ 。

　　新图形界面系统是使用 Python 语言编写的。对于 Python 开发人员，以下工具可能会很有用：
　　在图层窗口底部点击 `Python shell` ，使用 ``help(grass.core)`` 可以查看全部的核心 Python GIS 组件。此外，`array` (NumPy)、`db` (database)、`raster` 和 `vector` 都是重要的组件。为使用 GRASS 丰富的 C 函数库，可使用 `Pythons CTypes` 。

命令行和关闭
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　使用 :menuselection:`File --> Exit GUI` 关闭图形界面。在关闭 GRASS 命令行之前，尝试使用 ``g.manual --help`` 获取帮助信息。GRASS 是一套倾向于丰富的命令行函数库功能而非图形界面开发的 GIS 系统，适用于通过脚本实现批处理。脚本语言支持 Bourne Shell 和 Python ，两者均有良好的开发环境。应用这些工具，一个包含语法分析器、图形界面和文档模板的 GRASS 模块框架只需 5 分钟左右即可完成。

　　使用 ``g.manual -i`` 可以于浏览器中开启帮助文档。

　　输入 ``exit`` 关闭 GRASS 系统。

其它信息
================================================================================
* GRASS 官方网站 `http://grass.osgeo.org <http://grass.osgeo.org>`_
* GRASS Wiki `http://grasswiki.osgeo.org/wiki/ <http://grasswiki.osgeo.org/wiki/>`_
* 更多介绍与教程 `here <http://grasswiki.osgeo.org/wiki/GRASS_Help#Getting_Started>`_.
* GRASS 功能模块详解 <http://grass.osgeo.org/gdp/grassmanuals/grass64_module_list.pdf>`_, including
  图形界面选项位置参考 (`HTML 版本 <http://grass.osgeo.org/grass70/manuals/full_index.html>`_)
* 除了内建的约 400 个模块，GRASS 还提供大量用户制作的附加模块 `http://grass.osgeo.org/grass70/manuals/addons/ <http://grass.osgeo.org/grass70/manuals/addons/>`_

