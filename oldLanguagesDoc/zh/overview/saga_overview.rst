:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-saga.png
  :alt: project logo
  :align: right
  :target: http://www.saga-gis.org


SAGA
================================================================================

桌面 GIS 系统
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　SAGA（System for Automated Geoscientific Analyses 自动化地学分析系统）是一套开源的地理信息系统，用于编辑和分析各类空间信息数据。它包含了大量用于分析矢量（点、线、面）、数据表、栅格（影象或其它格网）等形式数据的组件，包括地理统计、影象分类、投影变换、动态过程模拟（水文、地形等）、地形分析等。通过一套图形界面或命令行界面及 C++ API 均可使用这些功能。

　　SAGA 从 2001 年开始开发，主要由汉堡大学地理学系进行，并有一支来自世界各地且不断增长的开发者团队参与。

.. image:: /images/projects/saga/saga_overview.png
  :scale: 40%
  :alt: screenshot
  :align: right

核心功能
--------------------------------------------------------------------------------

* 通过图形界面或命令行使用大量的功能模块：

 * 输入/输出各类数据格式
 * 数据投影转换与重采样
 * 矢量数据操作（并集、交集、属性等）
 * LiDAR 激光测距点云数据处理
 * 栅格数据：插值、花费分析等
 * 影象分析：滤波器、边界探测、聚类分析、影象切分等
 * 地形分析：地形参数计算、径流网络分析、剖面、等高线等
 * 地理统计：统计参数匹配，克里格估计等

* 高性能的用户界面用于高效地数据管理和可视化

 * 三维可视化

* 通过易用的 C++ API 创建新的功能模块
* 通过命令行可进行脚本设计，并支持 Python 接口
* 通过 RSAGA 模块，R 语言可以使用 SAGA 的功能

详细信息
--------------------------------------------------------------------------------

**官方网站：** http://www.saga-gis.org

**开源协议：** LGPL v2.1（API）; GPLv2（分析组件与图形界面）

**软件版本：** 2.0.8

**平台支持：** Windows, GNU/Linux, FreeBSD

**API 接口：** C++

**技术支持：** http://www.saga-gis.org


快速入门
--------------------------------------------------------------------------------

* :doc:`快速入门文档 <../quickstart/saga_quickstart>`


