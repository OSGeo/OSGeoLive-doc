:Author: Richard R. Schneider Dept. Biological Sciences University of Alberta Edmonton, Alberta, Canada 
:Author: Paul Meems, TopX Geo-ICT The Netherlands (RST conversion)
:Product: MapWindow GIS 4.8.6
:Version: OSGeo-Live 5.5 Draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
:PDF: http://www.mapwindow.org/apps/wiki/lib/exe/fetch.php?media=quick_guide_to_mapwindows_4.8.6.pdf
:Editor: http://rst.ninjs.org/
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Copyright: 2011 Richard R. Schneider

.. image:: ../../images/project_logos/logo-MapWindow.png
  :alt: MapWindow GIS
  :align: right
  :width: 220
  :height: 38
  :target: http://www.mapwindow.org
  
===============
1. 简介
===============
　　本文介绍了 MapWindow GIS V4.8.6 系统的一部分功能及如何利用该系统进行常见的 GIS 业务。对于希望进行显示 GIS 数据、进行简单数据查询、输出高质量地图图件用于演示和发表等常见 GIS 工作的用户，本文提供了一套简单的指导。本文只会设计很有限一部分功能，且只关注 MapWindow 的基本功能，除了“shapefile editor“外不涉及插件。

　　MapWindow 可以自由地下载和安装。它提供单一的 .exe 安装文件，可从 website: www.mapwindow.org 下载。MapWindow 是 **原生 Windows 程序** ，需要 Microsoft .NET 框架。它能够允许于 XP 、Vista 、Windows 7 并具备 64 位版本。MapWindow 界面用户友好，容易上手。其大部分功能和操作体验，尤其是本文介绍的部分类似 ArcMap 。

　　MapWindow 是一个更大的开源软件工程的一部分。其核心功能为 ActiveX 组件，适用于开发用户自定义的 GIS 系统，扩展特定的功能。 有关 MapWindow 所提供的功能，更多信息可以在其官方网站获取。

　　MapWindow 处在持续的开发当中。如果您使用了一个较新的版本，或者希望了解有关开发工作的细节，可以查看官网上的网页版说明。

===================
2. 基本操作
===================
--------------
2.1 Projects 工程
--------------
　　Project 工程文件用于存储一系列图层、标注、渲染样式和颜色等。MapWindow 启动时会建立一个空工程。点击工具栏上的 **New** 也可以新建工程。工程的配置不会自动保存，可以通过点击工具栏的 **Save** 或退出程序时的提示进行保存。点击工具栏的 **Open** 按钮并选择 **File**，在 **Recent Projects** 可以找到之前存储的文件。在文件管理器中双击工程文件亦可于新的 MapWindow 示例开启工程。工程文件的扩展名为 .mwprj 。

　　除了以上介绍的部分，工程文件还存储了一些额外的设定。例如度量单位、投影系统等。在 **File** 菜单的 **Settings** 选项可以修改这些设定。本文不关注这一部分。

--------------
2.2 插件
--------------
　　除了核心系统，安装程序还将安装一些常用的插件，例如 **Shapefile Editor** shp 文件编辑器，用于扩展 MapWindow 的功能。用于可以从官方网站下载更多的插件。只需解压下载的文件至 MapWindow 插件文件夹（默认 C:\\Program Files\\MapWindow\\Plugins）即可实现安装。插件可以是单一的 .dll 动态链接库或含有多个文件的文件夹。对于后者，整个文件夹都应当解压至 \\MapWindow\\Plugins 。 

　　插件在启用前应当被激活。在系统主菜单的 **Plug-ins** 选项中选中所需的插件即可。插件的激活状态会得到保存。一个新的工具栏将显示激活的插件所具有的功能。

----------------------
2.3 添加数据层
----------------------
　　地图工程通常包含多个数据层。这些数据可以由文件管理器拖拽或点击工具栏 **Add** 按钮添加。工程中使用的图层在图例面板显示（**View -> Panels -> Show Legend** 开启）。双击一个图层可以开启其 **Properties** 属性窗口。该窗口包含多个选项卡。例如，**General** 选项卡的 **Name** 用于改变图层名称。选中一个图层并点击 **Remove** 可以删除图层。点击 **Clear** 可以清除所有图层。

　　图例窗口中的各色图标指示了其类型（多边形、线、面）及其现有的样式设置。图层的显示顺序对应着其实际渲染的顺序，位置较高者压盖位置较低者。注意有时位置低的图层可能被完全压盖而无法显示。图层顺序可以拖拽修改。图层前的方框用于开关图层显示。

　　MapWindow 支持矢量（多边形、线、面）和栅格数据。包括 .shp, .asc, .aux, .bgd, .bil, .dem, dt1, .hdr, .img, .jpg, .sid, .std, .tif
等在内的众多文件格式都具备支持。ESRI shapefile（.shp）是 MapWindow 默认的矢量数据格式。GeoTiff 和 .bgd 是默认的栅格数据格式。

　　通过 **View** 的 **Show Floating Scale Bar** 可以开启比例尺。 

-----------------
2.4 投影系统
-----------------
　　投影系统是将地表及附近三维空间的位置转换到二维显示空间的坐标变换。不同的投影系统有着各自的优缺点及适用条件。对于一般的 GIS 应用而言，所有图层必须以一致的投影系统显示才能叠合。MapWindow 使用 .prj 投影信息文件了解部分数据的原始投影。这是一种常见的公开格式，也被 ArcMap 所使用。在 **Layer Properties** 的**General** 可以查看该信息。

　　一个工程中最先添加的数据的投影信息默认作为该工程的显示投影依据。若之后添加的数据投影不同，MapWindow 会显示警告，并提供继续或对数据重投影的选项。由于重投影过程不仅改变 .prj 文件，也会改变数据自生的坐标记录。因此，建议不要用重投影的结果覆盖原有文件。若 .prj 文件缺失则需要定义。MapWindow 的 **Toolbox** 工具箱包含了定义数据集投影系统的功能。

----------------------------
2.5 基本工具
----------------------------
　　主工具栏提供了一些列基本的操作工具，均为易于理解的常见操作。某些工具需要先选中目标图层。工具栏可以拖拽移动，右键可以开关文字标签显示。

================================================================================
================================================================================
.. image:: ../../images/screenshots/800x600/mapwindow-toolbar-zoomin.png          放大：点击放大的中心点或推拽显示范围方框。缩放亦可用鼠标滚轮实现。
.. image:: ../../images/screenshots/800x600/mapwindow-toolbar-zoomout.png         缩小
.. image:: ../../images/screenshots/800x600/mapwindow-toolbar-zoomfullextent.png  缩放至所有图层全部可见
.. image:: ../../images/screenshots/800x600/mapwindow-toolbar-zoomselected.png    缩放至选中要素
.. image:: ../../images/screenshots/800x600/mapwindow-toolbar-zoomprevious.png    回退至上一视窗设置
.. image:: ../../images/screenshots/800x600/mapwindow-toolbar-zoomnext.png        递进至下一视窗设置
.. image:: ../../images/screenshots/800x600/mapwindow-toolbar-zoomlayer.png       缩放至目标图层范围
.. image:: ../../images/screenshots/800x600/mapwindow-toolbar-pan.png             移动视窗
.. image:: ../../images/screenshots/800x600/mapwindow-toolbar-select.png          选择目标图层中的要素。Ctrl-单击 或拖拽用于多选，详见 4.2 节说明。
.. image:: ../../images/screenshots/800x600/mapwindow-toolbar-measure.png         测量（要素周长、面积等）
.. image:: ../../images/screenshots/800x600/mapwindow-toolbar-identify.png        属性浏览
================================================================================  =================================================================

==============================
3. 地图渲染与输出
==============================
--------------------------------
3.1 矢量渲染样式
--------------------------------
　　数据添加后默认采用一样的渲染样式（颜色、边线形式等）。MapWindow 通过两个对话框调节该设置，其中之一是 **Layer Properties** 对话框。双击目标图层即可开启。

.. image:: ../../images/screenshots/800x600/mapwindow-categories.png
  :alt: Categories toolbar button
  :align: right
  :width: 76 
  :height: 51

　　另一个是工具栏中的 **Categories** 。两者功能类似。

+++++++++++++++++++++++++
3.1.1 依据特定值的样式
+++++++++++++++++++++++++

.. image:: ../../images/screenshots/800x600/mapwindow-button-plus.png
  :alt: Categories generation
  :align: right
  :width: 56
  :height: 48

　　适合对于由某个属性彼此独立的不同值区分的对象。点击工具栏的 **Categories** 开启 **Symbology** 对话框。选择 **Generate Categories**（左下角）开启 **Category generation** 。

.. image:: ../../images/screenshots/800x600/mapwindow-category-generation.png
  :alt: Categories generation
  :align: right
  :width: 502
  :height: 573

+ 在 **Classification type** 选择 **Unique values** 。
+ 在 **Classification field** 选择用于分类的属性。
+ **Color scheme** 用于选择颜色系列。最右侧的按钮可用于编辑。
+ 若 **Choose color randomly 随机选定** **未** 选中，颜色将顺序选择。
+ 若 **Set gradient 渐变色** 选中，则每个多边形内部将具有不同的颜色深浅。当多边形要素较少时该选项效果较为明显。
+ 其它选项不用。
+ 点击 **Ok** 完成。

+++++++++++++++++++++++++
3.1.2 连续分布数据
+++++++++++++++++++++++++
　　若用于区分的属性是连续分布的，则使用本方案。在 **Category generation** 选择分类所用属性，在 **Number of categories** 选择所需的分类数。在 **Classification type** 选择 **Equal intervals 等间距** / **Natural breaks 自然间断点** / **Quantiles 分位数** 三种中的一种。这些分类是针对数值型数据的。点击 **Ok** 结束。

　　若不希望进行分类，而是根据属性实现连续渐变的样式渲染，选择一个连续的颜色系列即可。不要选择 **Set gradient** ，该功能是针对要素 **内部** 的。

　　对于点、线要素，样式的尺寸设定更加重要。（例如高线宽或较大的点用于强调）。选中 **Use variable line width** 可以选择相应的最大及最小值。要素将根据 **Classification field** 设置的属性使用相应的尺寸渲染。

+++++++++++++++++++++++++++++++++
3.1.3 进一步的样式调整
+++++++++++++++++++++++++++++++++

.. image:: ../../images/screenshots/800x600/mapwindow-categories.png
  :alt: Categories toolbar button
  :align: right
  :width: 76 
  :height: 51

　　选定的样式颜色会显示在 **Shapefile categories** 以及图例面板中。双击图例面板上的图标可以进一步修改，或者通过 **Categories** 可以获取更多的选项。

.. image:: ../../images/screenshots/800x600/mapwindow-shapefile-categories.png
  :alt: Shapefile categories
  :width: 831 
  :height: 507

　　在 **Shapefile categories** 面板，点击选中需要编辑的项目：

+ 名称前的方框用于勾选开关该类别的显示。
+ 在 **Name** 一览可以改变各分类的显示名称。该设置至影响显示，不会改变原有数据。
+ 界面底部的上下箭头可以调整次序。
+ 减号用于删除某一分类。
+ 右上角用于调节填色的基本设置。
+ 点击 **More options** 或点击目标类别的样式实例图标可以实现更多的设置：
    - 开关填色、边界线和节点的显示。
    - 调节各项显示的透明度。
    - 设置填充类型。
    - 条件边线的宽度和类型。

　　通过将上部的图层调节至半透明可以显示下部被遮盖的对象。

　　对于某些连续数值的数据集，精确的颜色系列调整是必要的。例如，对所有空值（零）的要素以一个明显的颜色显示，而其它所有数值则为渐变的颜色。默认的颜色系列不能实现这一要求。在 **Expression** 面板可以看到当前设置对应的渲染控制表达式，手工修改其内容可以实现更复杂的公能。点击 **Apply** 应用新表达式。

.. image:: ../../images/screenshots/800x600/mapwindow-legend.png
  :alt: Categories in the legend
  :align: right
  :width: 156 
  :height: 143

　　需要注意的是，这些设置是覆盖在默认样式之上的。如截图所示，根据分类已经设置了一个红色的颜色系列，但默认的蓝色设置依然存在。通常生成的设置会覆盖所有的属性值，因此默认样式不会显示。对于手工设置的断点，如果有一部分属性值被漏掉了，则该部分要素会以默认样式显示。默认样式也是生成其它样式的参考。例如，若不希望生成的样式具有边缘线，应当先将默认样式的边缘线关闭。同样的，开启默认样式的填色后生成的样式也会的有填色。

---------------------------------
3.2 栅格数据样式设置
---------------------------------
.. image:: ../../images/screenshots/800x600/mapwindow-coloringscheme-editor.png
  :alt: Coloring scheme editor
  :align: right
  :width: 380 
  :height: 400

　　栅格数据的样式使用 **Legend Editor** 面板编辑。, 双击目标图层可以开启该面板。在 **Symbology** 部分的 **Coloring Scheme** 点击 **Edit** 开启 **Coloring Scheme Editor** 编辑面板。

　　该面板顶部按钮的功能同 3.1 节描述的 **Symbology** 内的相似。**Wizard** 对应于之前的 **Generate categories** 。对于栅格图像，只有 **Continuous Ramp** 带有内置的颜色系列。

　　在 **Coloring Scheme Editor** 点击一个分类即可改变其颜色。对于栅格图像，没有边线或节点的设置。在 **Text** 可以改变分类名称。在 **Value** 栏可以改变断点。Hillshade 效果暂不叙述。

　　在 **Legend Editor** 还可以设置透明度（位于 **Coloring Scheme** 下四行）。使用半透明的栅格数据叠加可以同时显示其下部的信息。例如，在一个生态图层上方叠加高程图使得生态图层上越高的位置显示越亮。

------------------
3.3 标注
------------------
　　双击目标图层，在 **Layer Properties** 的 **Labels** 可以设置标注。点击 **Setup** 即可。点击图层右侧的小图标可以实现同样的功能。在开启的 **Label Style** 对话框，默认选项卡为 **Expression** 。首先，在 **Fields** 选择需要的属性。双击即可将其导入 **Expression** 表达式。点击 **Apply** ，选择标注锚点的设置。

.. image:: ../../images/screenshots/800x600/mapwindow-labels-setup.png
  :alt: Label set-up
  :align: right
  :width: 833 
  :height: 507

.. image:: ../../images/screenshots/800x600/mapwindow-label-expression.png
  :alt: Label expression
  :align: right
  :width: 833 
  :height: 507

　　在 **Font** 字体选项卡选择字体。有时默认的字体会不存在，必须指定一个。点击 **Apply** 应用设置。**Label style** 面板还有其它一些选项。点击 **Ok** 完成。

　　完成以上操作后，点击工具栏的 **Categories** 可以调节具体分类的标注。此时面板中较之前多了 **Labels** 选项卡。默认状态下，所有分类都使用 **Setup** 中的统一设置，故该项目是空的。同 3.1 节一样，需要对标注样式生成分类。后续操作同前述 **Shapefile categories**（3.1.3 节）的内容是一致的。

.. image:: ../../images/screenshots/800x600/mapwindow-labelmover.png   
  :alt: Label mover
  :align: right
  :width: 88 
  :height: 54
  
　　在 **Label Mover** 拖拽可以调节标注相对位置。

---------------------------------
3.4 将样式保存到
---------------------------------

.. image:: ../../images/screenshots/800x600/mapwindow-symbology.png
  :alt: Symbology toolbar button
  :align: right
  :width: 81 
  :height: 49

　　在 **Symbology manager** 可以存储样式供以后使用。在 **Symbology** 工具栏可以开启它。该面板默认显示之前配置的样式，点击 **Add Current** 即可保存。该文件以 .mwsymb 为扩展名，位于图层数据源的目录下。该对话框也有是否覆盖原有样式的选项。在 MapWindow 4.8.6 暂不支持对样式配置的拖拽操作。

　　在一个新工程添加图层后，在 **Symbology manager** 的 **Available options** 选择之前保存的样式文件并点击 **Apply options** 应用配置。对于含有标注的样式，可能需要点击 **Layer** 目录下 **Relabel** => **shapefile** 刷新显示。

.. image:: ../../images/screenshots/800x600/mapwindow-button-more.png
  :alt: Save - load symbology
  :align: right
  :width: 104 
  :height: 46

　　可以对一个图层保存 .mwleg 并将其应用到其它相同结构的数据层上。在 **Categories** 点击 **More** 即可使用 **Save Categories 保存分类** 和 **Load Categories 读取分类** 选项。

--------------------
3.5 输出地图
--------------------
++++++++++++++++++++++++++++
3.5.1 Low resolution export
++++++++++++++++++++++++++++
　　MapWindow 可以通过两种方式输出低分辨率图像，其中一种方案使用 Windows 的剪贴板。在 **View** 选择 **Copy** 可以复制地图、比例尺、指北针等要素到剪贴板。在 **File** 菜单选择 **Export** 则可以输出到文件。有一系列输出格式可选，多数地图文档适用 .png 格式。对于适量图件而言，该格式可以无损地实现高压缩。通过输入扩展名（例如 Map1.png）可以快速地设定格式。

　　低分辨率输出相当于截屏（**Preview Map** 与此输出无关）。因此，输出结果同屏幕显示总是一致的。对于最小化窗口的情况，输出分辨率也等同于屏幕分辨率。低分辨率输出的地图适合于 PowerPoint、Word 等用途，但不适用于打印。

++++++++++++++++++++++++++++++++++++++++++
3.5.2 可用于出版的高质量地图输出
++++++++++++++++++++++++++++++++++++++++++
　　在准备好地图的内容和样式之后，还需要若干步骤用于准备高质量的输出。例如，如果要在文章中插入一个插图，可能需要确保输出文件适合宽 7cm 的单栏文字，具有 300dpi 的分辨率用于印刷，并有很窄的空白边。它还应当具有图例、比例尺和指南针。在 **File** 菜单的 **Print Layout** 面板可以实现一部分要求，但功能有限。目前，利用专门的图像编辑器（例如 Photoshop）调整输出是较好的方案。

　　首先，应当对输出定义一个视窗（边界框）。只需建立一个新的 shp 文件并以矩形绘制其范围即可（详见 4.3 节）。该图层需存在于工程中，但无需处于显示状态。也可以利用现有的图层范围进行输出控制。请注意输出视窗是严格根据控制图层设置的，不会留边。使用一个专门的图层控制输出视窗对于输出同一区域的多个工程很有效。

.. image:: ../../images/screenshots/800x600/mapwindow-export.png
  :alt: Export map
  :align: right
  :width: 406 
  :height: 260

　　完成以上步骤后，在 **File** 菜单打开 **Export** 选择 **Georeferenced Map** 。在 **File** 一栏填入名称，注意包含扩展名。在 **Clip to layer** 选择控制视窗的图层。**Width** 控制输出图像的宽度（像素）。与图像同时输出 .wld 文件可以安全地删除。

　　以 3.5.1 节叙述的方式输出图例、比例尺、指北针等。当前版本的 MapWindow 还不能对这些元素进行高质量输出，也没有丰富的自定义选项。相比之下，使用 Photoshop 等工具绘制这些要素是更好的方案。

===================
4. 高级操作
===================
　　注意，一下操作可能会改变原始数据，且不能撤销。请小心操作。建议先将重要的数据设置为只读，或进行备份。

------------------------
4.1 属性表
------------------------

.. image:: ../../images/screenshots/800x600/mapwindow-table.png
  :alt: Table editor
  :align: right
  :width: 58 
  :height: 50

　　矢量数据的各个要素对应着属性表中的特定记录。例如，一份森林数据可能包含了树木的类别、高度、年龄等。使用工具栏中的 **Identify** 可以查看一个要素的属性。通过 **Table** 可以开启 **Attribute Table Editor** 用于查看和编辑完整的属性表，并提供了一些基本的数据库查询功能。

===============================================================================  ===
**功能**　－－　**方法**
===============================================================================  ===
编辑单一字段　　　　－－　选中并输入即可
复制粘贴一条记录　　－－　邮件单击并选择 **Copy 复制** 或 **Paste 粘贴**
添加一栏新字段　　　－－　**Edit -> Add field**
删除一栏字段　　　　－－　**Edit -> Remove field**
重命名一个字段　　　－－　**Edit -> Rename field**
字段升／降排序　　　－－　右键单击字段名选择 **Sort Asc 升序** 或 **Sort Desc 降序**
字段统计信息　　　　－－　右键单击字段名选择 **Statistics**
数学表达式输入字段　－－　右键单击字段名选择 **Calculate values**
选中记录输入任意值　－－　右键单击字段名选择 **Assign values**
为要素生成唯一标识　－－　**Tools -> Generate MWShapeID Field**
===============================================================================  ===

　　编辑后关闭面板时会出现覆盖数据的警告。**Yes** 确认覆盖，**No** 放弃编辑。

　　目前，MapWindow 不支持表的连接（类似 ArcMap 的 Join 和 Relate）。若需要使用其它表单的数据进行分类等操作，需要将相应数据复制到数据集的属性表中。通过 Microsoft Access 等数据库软件可以实现这一操作。Excel 也具备该功能，但是新版本需要插件支持 .dbf 格式（MapWindow 和 ArcMap 都是用该格式存储属性表）。我们推荐 http://es.sourceforge.jp/projects/sfnet_exceltodbf/ 提供的插件。合并操作也可以利用 MapWindow de **Swift-D** 插件中的 **Import External Data** 功能，但该工具的性能可能不及前述的方案。在属性表编辑器中使用 **Generate MWShape ID field** 生成唯一标识可以帮助合并。


----------------
4.2 要素选择
----------------
.. image:: ../../images/screenshots/800x600/mapwindow-select.png
  :alt: Select
  :align: right
  :width: 89 
  :height: 55

　　矢量要素的选择有 4 种方法。

.. image:: ../../images/screenshots/800x600/mapwindow-query.png
  :alt: Query
  :align: right
  :width: 65 
  :height: 52

　　(1) 工具栏 **select** 选择按钮　(2) 工具栏 **Query** 查询按钮
　　(3) 属性表　(4) Spatial Query 空间查询插件
　　在 **Layer Properties** 面板的 **Appearance** 选项卡可以改变选中要素的高亮颜色。在 **View** 的 **Clear selection** 可以清除选择。通过属性表界面的 **selection** 菜单可以将选中要素输出。选择工具也适用于可视化查询结果和为后续空间运算减小范围。

+++++++++++++++++++++++++++++++++
4.2.1 Select 选择按钮
+++++++++++++++++++++++++++++++++
　　**select** 用于手工点选要素。使用该功能前要指定目标图层，之后点击需要选择的对象即可。按住 Ctrl 进行多选，否则每次只选中一个新的对象。推拽可以选中一个方框内的全部对象。目前尚无取消部分选择的功能。 

+++++++++++++++++++++++++++++++
4.2.2 Query 查询按钮
+++++++++++++++++++++++++++++++
.. image:: ../../images/screenshots/800x600/mapwindow-querybuilder.png
  :alt: Query builder
  :width: 803 
  :height: 507

　　**Query** 按钮开启 **Query builder** 面板用于构建查询。通过一个特定的查询表达式，可以根据属性选择需要的要素。在 **Fields** 可以见到各个属性栏。通过属性名、逻辑运算符和值的组合可以构建表达式。完成后点击 **select** 执行检索。在该模式下可以从扩展选择（adding to an existing selection）、缩减选择（excluding
from an existing selection）、新建选择（starting a new selection）三者中挑选合适的一项。对话框将显示选中的要素数量。

　　之前的截图所演示的是从所有麋鹿种群中选择名字不包括“Chinchaga”的部分。执行结果是 19 个种群要素被选中。

++++++++++++++++++++++++++
4.2.3 属性表
++++++++++++++++++++++++++

.. image:: ../../images/screenshots/800x600/mapwindow-table-editor.png
  :alt: Table editor
  :align: right
  :width: 26 
  :height: 23

　　属性表界面可用于查看和定义选择。选中 **Show only selected shapes**（上方工具栏）可以只显示选中的记录。点击一条记录左侧的灰色方块可以选中该记录并使之高亮。使用 Windows 标准的 shift-单击 或拖拽可以多选。Ctrl-单击 可用于不连续的多选。这里无需 **Apply** 应用选择的操作。

　　在 **selection** 菜单可以选中几个重要的选择操作，包括反选（invert selection）、清空（select none）和全选（select all）等。该菜单也提供了输出（export）选项用于通过选中的要素创建新数据集。

　　对于要素很多的情形，直接查看特定要素可能会较为困难。通过 **View** 菜单或主界面的 **selected** 按钮可以将视窗跳转到特定要素的位置。


++++++++++++++++++++++++++++++++
4.2.4 Spatial Query 空间查询
++++++++++++++++++++++++++++++++

.. image:: ../../images/screenshots/800x600/mapwindow-toolbox.png
  :alt: Toolbox
  :align: right
  :width: 193 
  :height: 290
  
　　**Spatial Query** 查询是 GIS **Toolbox** 工具箱（位于图例面板下方）的一部分。其中，**Spatial Query** 位于 **Legend -> Toolbox -> Vector Operations -> Standard** 。

　　空间查询是指根据对另一个图层的空间关系从目标图层选择部分要素。例如，从图层 A 选择同图层 B 要素有交集的要素。支持的空间关系有交（intersect）、包含（contain）、接触（touch）、覆盖（overlap）等。对于参考图层，可以限制至使用选中的要素。

------------------------------------
4.3 SHP 文件的创建和编辑
------------------------------------
　　SHP 文件（Shapefile）可以通过 **Shapefile Editor** 插件创建和编辑。使用该插件前请通过 **Plug-ins** 菜单确保其处于激活状态。激活后它将产生一个工具栏。以下说明均针对该工具栏。这个工具栏较大，可能会挤占已有工具栏的空间。通过拖拽可以将其至于独立的行。

　　请注意，该插件总是针对当前选中的图层操作。如果用户意外地选择了错误地图层，该插件可能会不加警告地执行操作。在 **Layer Properties** 的 **Mode** 选项卡开启 **Editing mode** 可以为图层建立一个缓冲。在结束编辑会话时可以选择是否保存修改。

+++++++++++++++++++++++++++++++
4.3.1 新建 shp 文件
+++++++++++++++++++++++++++++++
　　点击 **New** 可以开启新建面板。这里输入新建文件的名称和路径，并可以从几何要素类别（点 point、线 line、面 polygon）中选择。新建 shp 文件前建议向工程中加入一个图层用于定义投影和提供空间参考。

.. image:: ../../images/screenshots/800x600/mapwindow-coordinates.png
  :alt: Coordinates
  :align: right
  :width: 285 
  :height: 47

　　新建的 shp 是空白的。点击 **Add** 添加新要素。鼠标左键添加新节点，右键结束。使用坐标窗口输入精确值亦可。注意输入坐标时不要让光标离开坐标面板，以免读出新数据导致覆盖。

　　对于长方形、圆等规则图形，使用 **Insert** 添加。在 **Add this** 选择需要的形状，输入相应的参数，并在地图上点击新要素的中心点。多次点击或创建多个要素。点击 **Done** 结束。

+++++++++++++++++++++++++++++++++
4.3.2 编辑已有要素
+++++++++++++++++++++++++++++++++
　　SHP 编辑器具有三种基本编辑功能：**Move vertex 移动节点**、**Add vertex 添加节点** 和 **Remove vertex 删除节点**。节点无需在渲染样式中设为可见。光标靠近一个节点时将进行高亮显示，此时可以用相应工具拖拽移动节点或单击删除节点。新建节点时，新建的位置会跟随光标移动高亮显示。该操作无需选择目标要素。编辑会被立刻写入，因此建议备份。

　　选择目标要素并点击 **Remove** 将删除这些要素。此时会弹出确认对话框。

　　使用 **Merge** 工具可以合并要素。该工具会弹出一个对话框用于选择合并操作的对象。合并对象必须位于同意图层。

------------------
4.4 地理空间运算
------------------
　　MapWindow 的 **Toolbox** 提供了常规 GIS 的地理空间运算及分析功能。另外有一些插件可供使用。以下是其中一些重要的功能：

+ 缓冲区运算
+ 矢量要素交与并
+ 使用 shp 或单多边形的裁切
+ 基于属性的同类要素融合
+ 多边形面积计算
+ 多种投影处理功能
+ 裁切、凭借、重分类等栅格数据操作

