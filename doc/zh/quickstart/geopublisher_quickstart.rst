:Author: Stefan Tzeggai
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-Geopublisher.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://en.geopublishing.org/GeoPublisher

********************************************************************************
GeoPublisher 快速入门文档
********************************************************************************

线上示例地图集
================================================================================
* `小型的示例地图集，显示全球尺度的人文信息，使用 1.5 版本创建 <../../geopublishing/ChartDemoAtlas_WorkingCopy.zip>`_

线上入门教程
================================================================================
GeoPublisher（地图集创建与发布）
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* `“Hands on GeoPublisher”教程（英语）第一部分，基于 1.3 版本 <../../geopublishing/tutorial_GeoPublisher_1/HandsOn-GeoPublisher1_EN.pdf>`_
* `“Hands on GeoPublisher“教程（法语）第一部分，基于 1.3 版本 <../../geopublishing/tutorial_GeoPublisher_1/HandsOn-GeoPublisher1_FR.pdf>`_
* `”Hands on GeoPublisher”教程（英语）第二部分，基于 1.3 版本 <../../geopublishing/tutorial_GeoPublisher_2/HandsOn-GeoPublisher2_EN.pdf>`_
* `“Hands on GeoPublisher”教程（法语）第二部分，基于 1.3 版本 <../../geopublishing/tutorial_GeoPublisher_2/HandsOn-GeoPublisher2_FR.pdf>`_

线上 AtlasStyler（基于 SLD 的地图图层渲染）教程
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* `“AtlasStyler Labelling”标注教程（英语），基于 1.3 版本 <../../geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.3_EN_LabellingTutorial_091012.pdf>`_
* `“AtlasStyler tutoriel d'étiquetage SLD”渲染样式教程（法语），基于 1.5 版本 <../../geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.5_FR_Tutoriel_d_etiquetage_101006.pdf>`_

More tutorials are posted as blog entries at `http://en.geopublishing.org <http://en.geopublishing.org">`_ (you have to be online to visit this webpage).

用户手册
================================================================================

GeoPublisher（地图集创建与发布）
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* `GeoPublisher 用户手册（法语），基于 1.2 版本 <../../geopublishing/GeoPublisher_v1.2_FR_Handbuch_090803.pdf>`_
* `GeoPublisher 用户手册（德语），基于 1.2 版本 <../../geopublishing/GeoPublisher_v1.2_DE_Handbuch_090801.pdf>`_    

AtlasStyler（基于 SLD 的地图图层渲染）
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* `AtlasStyler 手册（法语），基于 1.2 版本 <../../geopublishing/AtlasStyler_v1.2_DE_Handbuch_090601.pdf>`_  

AtlasViewer（如何使用 GeoPublisher 生成的地图集）
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* `AtlasViewer 手册（法语），基于 1.3 版本 <../../geopublishing/AtlasViewer_v1.3_FR_Manual_090522.pdf>`_
* `AtlasViewer 手册（英语），基于 1.3 版本 <../../geopublishing/AtlasViewer_v1.3_EN_Manual_090522.pdf>`_ 
* `AtlasViewer 手册（英语），基于 1.3 版本 <../../geopublishing/AtlasViewer_v1.3_DE_Handbuch_090522.pdf>`__  


运行 GeoPublisher
================================================================================

基本操作
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　GeoPublisher 是一套终端用户工具，用于制作和渲染地图样式，并迅速发布。在 OSGeo Live 中包含了一套小型的地图集，用于用户尝试添加自己的数据的基础。

1) 解压示例地图集：在 Live 内点击 `该链接 <../../geopublishing/ChartDemoAtlas_WorkingCopy.zip>`_ ，选择 'Open with Archive Manager (default)' 。这将打开地图集所在的 ZIP 文件。将文件解压到“Desktop（桌面）”或其它位置。解压结果是一个名为“ChartDemoAtlas”的文件夹。退出解压缩程序。

3) 在 :menuselection:`Geospatial --> Desktop GIS --> GeoPublisher` 启动 GeoPublisher 。程序将询问需要打开的地图集。选择 ChartDemoAtlas 文件夹中的 atlas.gpa 即可。载入完成后，包括地图显示、三个面板的主界面将开启。

4) 要添加一个 shp 文件到地图集中，请选择 :menuselection:`File --> Import... --> Import files` 并选取目标文件，例如 '/home/user/data/natural_earth/10m_lakes.shp' 。GeoPublisher 将要求输入新图层的名称和描述。若地图集是多语言的，每种语言都将有独立的输入。新图层会出现在 DataPool 一栏。

5) 在 Map Pool 一栏（右侧顶部）开启 'The digital divide 数字鸿沟' 地图集。相应的显示窗口将会开启。在 Data Pool 中点击一个图层并拖拽至地图显示窗口的图例区即可加入新图层。拖拽也可以用于改变图层顺序。在工具栏点击 style 可以开启 AtlasStyler 设定渲染样式。完成后关闭窗口。

5) 输出地图集：点击 :menuselection:`File --> Export` 并按照提示操作。线上和线下版本均可以输出。示例地图集的默认输出位置为 'Desktop/ChartAtlasExported' 。完成输出后，点击“open folder”按钮，可以前往输出路径查看结果。

6) 查看地图集：在 `Desktop/ChartAtlasExported/DISK` 或你所选择的输出目录执行 `start.sh` 脚本即可。 

7) GeoPublisher 拥有丰富的功能。点击 :menuselection:`Applications --> Education --> Geopublishing documentation` 可以查看进一步的说明。

8) 希望你使用愉快。若有任何问题或建议，请发送邮件至 tzeggai@wikisquare.de 。

