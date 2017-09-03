:Author: Hamish Bowman
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons

.. image:: /images/project_logos/logo-mb-system.png
  :alt: project logo
  :align: right
  :target: http://www.ldeo.columbia.edu/res/pi/MB-System/


MB-System
================================================================================

海底地形测量制图系统
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　MB-System 是一套开源的制图软件，用于处理和显示测深及后向散射声纳所收集的包括多点测量、干涉测量、侧向扫描等信号。该系统很大程度上基于 :doc:`GMT <gmt_overview>` 软件开发。

　　MB-System 从 1993 年开始开发，一直受到多个大学和科研机构的积极支持。

.. comment .. 注:: 由于空间的限制，MB-System 目前没有安装在 OSGeo-Live 上。请在命令行（Terminal Emulator）中输入“cd gisvm/bin; sudo ./install_mb-system.sh”安装。

核心功能
--------------------------------------------------------------------------------

.. image:: /images/screenshots/mb-system/mb-system_screenshot.png
  :scale: 60 %
  :alt: screenshot
  :align: right

* 读取和转换众多的声纳条带数据
* 大规模的数据批量处理
* 利用声速—水深模型矫正数据
* 定位及惯导系统数据分析和编辑
* 传感器矫正数据分析
* 自动或交互式的测深数据清理去噪
* 交互式 3D 可视化清理去噪工具
* 网格化、统计分析，测深数据导出等
* 地图重投影
* 测视声纳数据和反射强度数据分析与拼接
* 格网化模型渲染
* 勘测线设计
* 基于 Post Script 语言的图像输出
* 数据输出至 GIS 系统及可视化工具等
* 海床盖层测深数据处理
* 潮汐建模和矫正

详细信息
--------------------------------------------------------------------------------

**官方网站：** http://www.ldeo.columbia.edu/res/pi/MB-System/

**开源协议：** GNU General Public License (GPL) version 3

**软件版本：** 5.4.2191

**平台支持：** GNU/Linux, Mac OS X, MS Windows（需 Cygwin 支持）

**API 接口：** Command line


快速入门
--------------------------------------------------------------------------------

* :doc:`快速入门文档 <../quickstart/mb-system_quickstart>`


