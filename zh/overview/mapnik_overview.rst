:Author: Dane Springmeyer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapnik.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://mapnik.org/


Mapnik
================================================================================

地图渲染引擎
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mapnik是一个渲染精美地图的工具包，其清晰的匀称柔性图形边缘的实现依赖于高质量的抗锯齿形图形、智能标签定位，和可扩展的SVG标记。众所周知，mapnik常用于渲染OpenStreetMap的主要地图图层。

Mapnik通常被嵌入在Python应用程序中，用于在网络上发布地图。最近Mapnik被扩展，也用来绘制高分辨率的纸质地图。

.. image:: ../../images/screenshots/1024x768/mapnik-screenshot-barcelona.png
  :scale: 40 %
  :alt: screenshot
  :align: right


Mapnik的地理对象集合（地图、图层、数据源、特征、地理几何）和系统库不依赖于"windowing systems"系统，可以部署在任何服务环境下。它可以在多线程环境下很好的运行，起始目标面向Web应用开发，但不限于此。

高层次的Python绑定（boost.python库）支持快速应用程序开发，支持zope3和django等。

Mapnik是一个跨平台应用程序。大多数linux具有软件代码包，而Mac OS X和Windows常采用installers安装程序。


详情请见
--------------------------------------------------------------------------------

**网站:** http://www.mapnik.org/

**版权:** LGPL (GNU Lesser General Public Licence)

**软件版本:** 0.7.1

**支持平台:** Windows, Linux, Mac

**API接口:** C++, Python



快速入门
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation  <../quickstart/mapnik_quickstart>`


