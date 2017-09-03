:Author: Gérald Fenoy
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-Zoo.png
  :alt: project logo
  :align: right
  :target: http://zoo-project.org/

.. image:: /images/logos/OSGeo_community.png
  :scale: 100
  :alt: OSGeo Community Project
  :align: right
  :target: http://www.osgeo.org

ZOO-Project
================================================================================

网络地理数据处理服务
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　ZOO 项目为开发人员提供了一个友好的网络地理数据处理服务框架。

　　网络地理数据处理服务用于远程使用各类空间运算等处理功能。ZOO 项目支持多种高级编程语言，并带有两套演示程序，使用基于 GEOS 和 OGR 函数库的 Spatialtools Services Providers（一套 C 语言空间运算函数库和 Python 模块）演示其处理能力与设计。

ZOO 包含三个部分：

.. image:: /images/projects/zoo/zoo-project-demo-2.png
  :scale: 40 %
  :alt: screenshot
  :align: right

*ZOO 核心* : 以 C 语言编写的高性能服务器端核心，能够管理和连接以各种语言编写的服务程序 

*ZOO 服务* : 一套以各种开源空间分析函数库为基础，不断增长和完善的服务功能组件

*ZOO API* : 服务器端 JavaScript API 用于调用服务模块，使得开发与整合更加容易

　　ZOO 基于其底层系统，即 ZOO 内核，通过其功能调用各种分析处理模块满足服务请求。该内核用 C 语言编写，支持各种常见高级语言程序的连接，从而充分利用各类已有函数库，帮助终端开发人员快速地实现应用需求。

　　一个 ZOO 服务实例是由一个元数据文件（.zcfg）和相应的处理功能模块组成的。元数据文件描述了所有可被 WPS 执行请求调用的处理模块及对应的输入/输出操作。处理模块算法与函数可以由 C/C++, Fortran, Java, Python, PHP 和 JavaScript 实现。 

核心功能
--------------------------------------------------------------------------------

* 具备多语言支持的 WPS 服务器 
* 简单的服务创建与部署流程
* 通过 ZOO API 轻松实现 WPS 服务串联

标准实现
--------------------------------------------------------------------------------

* OGC WPS 网络地理数据处理服务 1.0.0

演示
--------------------------------------------------------------------------------

* `基于 GEOS 和 OGR 函数库的简单 C 语言服务端 <http://localhost/zoo-demo/spatialtools.html>`_
* `基于 GEOS 和 OGR 函数库的简单 Python 语言服务端 <http://localhost/zoo-demo/spatialtools-py.html>`_
* `请求 ZOO 服务的简单 HTML 表单 <http://localhost/zoo-demo/spatialtools.html>`_


详细信息
--------------------------------------------------------------------------------

**官方网站：** http://zoo-project.org

**开源协议：** MIT x/11

**软件版本：** 1.2.0

**支持平台：** MS Windows, GNU/Linux, Mac

**编程语言：** C, Python, Java, PHP, Fortran, Javascript

**技术支持：** http://zoo-project.org/trac


快速入门：
--------------------------------------------------------------------------------

* :doc:`快速入门文档 <../quickstart/zoo-project_quickstart>`


