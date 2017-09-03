:Author: OSGeo-Live
:Author: Landon Blake
:Author: Stefan Steiniger
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
:Thanks: OpenJUMP Community

********************************************************************************
OpenJUMP 快速入门
********************************************************************************

　　OpenJUMP 是一套桌面 GIS 应用程序，用于浏和编辑矢量数据。它同时具备一定的栅格数据支持。

　　本文叙述：

  * 在 OpenJUMP 开启 ESRI shp 文件；
  * 设置新图层的显示样式方便浏览；
  * 对要素进行几何编辑。

启动 OpenJUMP
================================================================================

　　OSGeo Live：在桌面点击 OpenJUMP 或运行 /usr/bin/openjump；

　　一般安装：在 Windows 下，启动 OpenJUMP bin 文件夹的 openjump.exe 或 openjump.bat 。在 Linux 下，启动 oj_linux.sh 。在 MacOSX 下，点击 OpenJUMP 应用图标。

　　注：该软件需要 Java 运行环境。在 http://java.com/en/download/index.jsp 可以下载该环境。Live 系统使用的 OpenJDK 可在 http://openjdk.java.net 下载。

基本界面操作
================================================================================

　　OpenJUMP 的主要图形界面同许多 GIS 系统一样，由四个部分组成。(i) 第一个为顶部的菜单栏，提供了众多命令。(ii) 第二个是菜单栏下方的主要工具栏，提供重要的显示与导航功能。(iii) 第三个是左侧的图层列表窗口。(iv) 第四个为主要显示区，显示各个图层的空间数据。最下方的状态栏给出了光标位置、操作结果提示和内存消耗。一个项目窗口包含了一个图层列表和一个主显示。每一个 OpenJUMP 实例可以显示多个项目窗口。

.. image:: /images/projects/openjump/openjump_ss_01.png
   :scale: 55 

开启 ESRI Shp 文件
================================================================================

　　本节叙述如何打开 ESRI shp 文件。

　　在 OpenJUMP 的顶部工具栏中，选择 [File] 文件菜单中的 [Open File...] 打开文件。这将开启一个窗口用于选择文件。这里打开一个任意的 .shp 文件并点击 [Finish] 完成。稍候该文件的内容将显示于主显示区，图层列表会显示一个以文件名命名的新图层。

.. image:: /images/projects/openjump/openjump_ss_02.png
   :scale: 55 

　　直接拖拽数据文件也可以实现载入。

图层样式配置
================================================================================

　　本节叙述如何配置图层样式。

　　在图层列表中右键单击*图层名，在弹出菜单的 [Style] 样式中点击 [Change Styles] 开启样式配置面板。其中包含 5 个选项卡。这里可以改变线条颜色、填充颜色、线形、透明度、标签、显示比例范围。

* MacOSX 中可以按 :guilabel:`Apple` 键。

.. image:: /images/projects/openjump/openjump_ss_03.png
   :scale: 55 
   
.. image:: /images/projects/openjump/openjump_ss_04.png
   :scale: 55 

要素几何编辑
================================================================================

　　在图层列表中选中图层右击。选中“Editable”可编辑选项。在顶部将显示一个新的浮动工具栏，其中包含一系列工具用于地理要素的几何编辑。

.. image:: /images/projects/openjump/openjump_ss_05.png
   :scale: 55 
   
.. image:: /images/projects/openjump/openjump_ss_06.png
   :scale: 55 

　　尝试简单的编辑。这里需要选中一个要素并拖拽其中的节点。选择编辑工具条中形如一般光标的工具，点击选中主面板中的一个要素。目标将显示为明黄色，各个节点会以方框显示。

.. image:: /images/projects/openjump/openjump_ss_07.png
   :scale: 55 

　　选择蓝色十字中央显示黄色方框的工具，即 :guilabel:`Move Vertex Tool` 按钮（光标悬浮与工具上会显示提示）。光标在主面板应显示为黑色十字。

.. image:: /images/projects/openjump/openjump_ss_08.png
   :scale: 55 

　　选中节点并拖拽可以移动节点。

.. image:: /images/projects/openjump/openjump_ss_09.png
   :scale: 55 

进一步学习 OpenJUMP
================================================================================

　　以上是最基本的功能示例。通过下面的文档可以学习更多有关 OpenJUMP 系统的内容。

　　OpenJUMP 教程：
　　http://sourceforge.net/projects/jump-pilot/files/Documentation/

　　OpenJUMP wiki：
　　http://sourceforge.net/apps/mediawiki/jump-pilot/index.php?title=Main_Page

　　OpenJUMP 用户右键列表：
　　http://groups.google.com/group/openjump-users

