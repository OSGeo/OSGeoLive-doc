:Author: Stefan Tzeggai
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-AtlasStyler.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://en.geopublishing.org/AtlasStyler

********************************************************************************
Atlas Styler 快速入门文档
********************************************************************************

手册
================================================================================
* `AtlasStyler 手册（德语），对应 1.2 版本 <../../geopublishing/AtlasStyler_v1.2_DE_Handbuch_090601.pdf>`_  

教程
================================================================================

AtlasStyler（使用 SLD 标准的图册渲染风格控制）
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* `AtlasStyler 标注教程（英语），对应 1.3 版本 <../../geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.3_EN_LabellingTutorial_091012.pdf>`_
* `AtlasStyler tutoriel d'étiquetage SLD（法语），对应 1.3 版本 <../../geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.3_FR_Tutoriel_etiquetage_091012.pdf>`_

　　官方博客中发布了更多的教程 `http://en.geopublishing.org <http://en.geopublishing.org>`_ （需网络连接）

运行
================================================================================

基本操作
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　AtlasStyler 用于让终端用户创建 .SLD 样式文件以控制矢量要素渲染。

0) OSGeo-Live DVD 使用的 Lubuntu 系统目前在显示 Java 程序时存在一些兼容性问题。建议右键单击屏幕顶部状态栏，选择“Customize Panel“选项，并开启“Autohide”（自动隐藏）功能以回避这一问题。将光标移至屏幕顶部可以临时显示状态栏。

1) 选择 :menuselection:`Geospatial --> Desktop GIS --> AtlasStyler` 开启 AtlasStyler 。
 
2) 点击 import 按钮向工程导入 ESRI Shp 文件或 PostGIS 数据库。

3) PostGIS 演示数据库的信息已经预设在 Live 系统中了。只要输入密码“user”并选择“10m_land”这一图层添加即可。

4) 导入 Shp 文件时，可以选择 /home/user/data/natural_earth/10m_lakes.shp 这一示例。

5) 点击图例显示区的工具图标即可选择样式。AtlasStyler 主对话框打开。开启对话框底部的“Automatic Preview”（自动预览）功能可以在调整样式的过程中实时渲染。若添加的数据过大，建议关闭注意功能。

6) 请尝试样式编辑的各种具体功能。欢迎将反馈信息发至 tzeggai@wikisquare.de 。

