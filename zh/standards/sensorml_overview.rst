.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip: 
  Project logos are stored here:
    https://github.com/OSGeo/OSGeoLive-doc/tree/master/images/project_logos
  and accessed here:
    ../../images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: ../../images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: ../../images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Sensor Model Language (SensorML) 传感器描述语言
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

　　OGC Sensor Model Language (SensorML) 标准定义了一种模型和 XML 编码，用于实现对网络中传感器的发现和观测数据的获取。它让开发者定义模型与 XML 模板描述传感器的观测和后观测处理过程。(http://www.opengeospatial.org/standards/sensorml)

.. image:: ../../images/standards/sensorml.jpg
  :scale: 55%
  :alt: sensorML in Context

　　具体地说，SensorML 可以：

* 描述传感器及传感器系统，用于支持设备的管理和使用
* 支持观测数据的处理与分析
* 支持数据空间定位
* 提供性能数据（精度、量程等）
* 描述传感器工作流程
* 为按需获取观测数据提供可执行的操作链
* 获取传感器系统特性

　　不同的 SensorML 模板描述具体的不同传感器。

　　NASA MSFC SMART program (http://smartdev.itsc.uah.edu/casestudy/documents/paper_nstc_2007_A1P1.pdf) 是 SensorML 实现的一例。它支持了对 Atmospheric Infrared Sounder (AIRS) 红外大气观测卫星温湿数据智能的自动获取，应用于美国南部地区的气象预报模型中。

相关信息
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`sos_overview`
* Sensor Planning Service
* Observations and Measurements
* Transducer Markup Language
