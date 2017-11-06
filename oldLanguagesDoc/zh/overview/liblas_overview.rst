:Author: Howard Butler
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-libLAS.png
  :alt: project logo
  :align: right
  :target: http://liblas.org/

LibLAS
================================================================================

LiDAR 激光测距数据处理
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　LibLAS 是一套用于处理常见的 “LAS” `LiDAR`_ 格式数据的 C/C++ 函数库。 其 `ASPRS LAS 格式`_ 是一种 LiDAR 数据点云的序列二进制编码，可用于 LiDAR 传感器数据的存储和相应软件的交换、存档与处理。

.. image:: /images/projects/liblas/liblas.jpg
  :alt: LiDAR Acquisition
  :align: right
  :scale: 80 %
  
　　LiDAR（Light Detection and Ranging 光信号测距技术）是一种高精度的测距方法。其采用类似无线电雷达的原理，但采用激光信号实现。LiDAR 产生一种称为“点云”的产品，其中各个点代表反射信号源到传感器的距离。ASPRS LAS 是其产品的常见存储格式。

核心功能
--------------------------------------------------------------------------------

* C/C++/Python 接口用于读取、编辑和存储 LAS 数据
* 基于 `LAStools`_ 的 `命令行工具`_
* 基于 `GDAL <http://gdal.org>`_ 的坐标系变换

详细信息
--------------------------------------------------------------------------------
 
**官方网站：** http://liblas.org

**开源协议：** BSD

**软件版本：** 1.7.0

**平台支持：** 跨平台 C++ 实现 —— Mac OS X, Windows (通过 `OSGeo4W`_), 及 Linux

**API 接口：** C, C++, Python

**技术支持：** `Communication and Support <http://liblas.org/community.html>`_

快速入门：
--------------------------------------------------------------------------------

* :doc:`快速入门文档 <../quickstart/liblas_quickstart>`

.. _`LIDAR`: http://en.wikipedia.org/wiki/LIDAR
.. _`LAStools`: http://www.cs.unc.edu/~isenburg/lastools/
.. _`LAS Format`: http://www.lasformat.org/
.. _`ASPRS Standards Committee`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`ASPRS LAS 格式`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`命令行工具`: http://liblas.org/utilities/index.html
.. _`OSGeo4W`: http://trac.osgeo.org/osgeo4w/
.. _`Wikipedia`: http://en.wikipedia.org/wiki/LIDAR

