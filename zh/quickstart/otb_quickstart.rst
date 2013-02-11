:Author: Manuel Grizonnet
:Translator(Zh): Zhengfan Lin
:Version: OSGeo-Live 4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-otb.png
  :scale: 80 %
  :alt: project logo
  :align: right

********************************************************************************
OTB 快速入门 
********************************************************************************

　　ORFEO Toolbox library (OTB) 工具箱是一套用于遥感领域的高性能图像处理系统。

　　本文包含的内容有：

  * 从影像获取元数据；
  * 组合不同波段进行代数运算；
  * 使用 Monteverdi 程序对影像进行中心偏移聚类法分割和 SVM 监督分类，并可视化输出结果。

　　OTB 系统提供了一系列工具用于影像处理。这些工具可以通过以下方法使用：

  * 命令行界面
  * QT GUI 图形界面
  * Quantum GIS 插件

　　以下使用的示例数据位于：
  * http://www.orfeo-toolbox.org/packages/OTB-Data-Examples.tgz

显示影像元数据
================================================================================

　　通过 `otbReadImageInfo-cli` 命令可以显示元数据。主要输入参数为目标文件名，例如： `otbReadImageInfo-cli -in qb_RoadExtract.tif` 。

波段运算
================================================================================

　　通过 `otbBandMath-cli` 可以方便地执行波段代数运算。该命令的语法并不复杂。例如，对 SpotBefore.tif 和 SpotAfter.tif 作差的命令为： `otbBandMath-cli -ims SpotBefore.tif SpotAfter.tif -out difference.tif -exp "im1b1-im2b1"` 。通过 -exp 可以进行复杂的运算，包括阀值、对数转换等。该程序也支持自定义函数运算以提取信息。例如，对于 NDVI 标差植被指数的运算： `otbBandMath-cli -ims qb_RoadExtract.tif -out ndvi.tif -exp "ndvi(im1b3,im1b4)"` 。


Monteverdi 影象分割
================================================================================

* 从桌面 Spatial Tools 菜单启动 Monteverdi；
* 通过 :menuselection:`File --> Open Dataset --> /home/user/otb/qb_RoadExtract.tif` 选择示例影像；
* 选择 :menuselection:`Filtering --> Mean Shift clustering` 聚类算法；
* 选择输入影像（Reader0）；
* 调节分割参数，点击 "Run" 测试效果；
* 点击 "Close" 完成；
* 在主界面中对生成的 "MeanShift0" 右击 "Clustered Image" 并选择 "Display in viewer" 显示。

  .. image:: ../../images/screenshots/800x600/otb-mean_shift.jpg
     :scale: 100 %

Monteverdi SVM 监督分类
================================================================================

* 从桌面 Spatial Tools 菜单启动 Monteverdi；
* 通过 :menuselection:`File --> Open Dataset --> /home/user/otb/qb_RoadExtract.tif` 选择示例影像；
* 选择 :menuselection:`Learning --> SVM classification` 开始分类；
* 选择输入数据（Reader0）；
* 点击 `Add Class` 按钮并绘制多边形添加分类；
* 在 :menuselection:`Setup --> SVM` 设定参数；
* 点击 `Learn` 学习；
* 点击 `Display` 执行分类。

  .. image:: ../../images/screenshots/800x600/otb-svm.jpg
     :scale: 100 %

　　完整的教程见 `该网页`_ 。

.. _`该网页`: http://www.orfeo-toolbox.org/otb/monteverdi.html


其它信息
================================================================================

* OTB 软件指南

　　OTB 软件指南是一份约 600 页的完整手册，详细叙述了 OTB 的安装与使用。其中的操作均有详尽的图示。
  
  * `OTBSoftwareGuide.pdf <http://orfeo-toolbox.org/packages/OTBSoftwareGuide.pdf>`_
  * `线上版本 <http://orfeo-toolbox.org/SoftwareGuide/>`_

* OTB 操作手册

　　这是一套针对非开发人员的简明的 OTB/Monteverdi 操作说明，包含了常见遥感处理流程的教学。

  * `OTBCookBook.pdf <http://orfeo-toolbox.org/packages/OTBCookBook.pdf>`_

* OTB 实例教学

  通过这些 教学_ 可以掌握 OTB 的更多内容。

.. _教学: http://www.orfeo-toolbox.org/SoftwareGuide/SoftwareGuidepa2.html#x17-49000II

* Live 本地教程

  本地教程位于：

.. _documentation: ../../otb/

