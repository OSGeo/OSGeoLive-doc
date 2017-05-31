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

Sensor Observation Service (SOS) 传感器数据传输标准
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

　　OGC Sensor Observation Service (SOS) 接口是一项数据服务标准。它定义了从各类传感器获取信息的接口与操作。它采用 Observation and Measurements (O&M) 观测与测量数据标准格式提供结果，以 SensorML 标准描述传感器系统。(http://www.opengeospatial.org/standards/sos)

.. image:: ../../images/standards/sos.jpg
  :scale: 55%
  :alt: SOS in Context

　　SOS 定义了抽象的传感器模型，不针对特定的领域，可以广泛、通用地实现。

　　一次观测（observation）是对目标对象某种属性的一次估计行为，由传感器系统通过特定的方法实现。在 SOS 中它被定义为：

* eventTime – 观测时间
* featureOfInterest – 观测目标
* observedProperty - 观测属性
* procedure  - 观测方法

　　SOS 操作必须包括：
* GetObservation - 以时空信息和现分类过滤获取观测数据
* GetCapabilities - SOS 服务元数据
* DescribeSensor - 目标传感器及其平台（SensorML）

.. Optional operations include: GetResult, GetFeatureOfInterest, GetFeatureOfInterestTime, DescribeFeatureofInterest, DescribeObservationType, DescribeResultModel, Register Sensor, and InsertObservation.

.. Link below is a dead link, so we have commented out this paragraph
.. There are numerous excellent implementations of SOS. The OpenIOOS.org has thirteen organizations providing SOS service instances providing access to over 1400 oceans sensors (http://www.openioos.org/real_time_data/gm_sos.html). This operational demonstration “represents an effort to develop a Web Services Architecture for Ocean Observing”.

相关信息
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`wcs_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* Sensor Planning Service
* Coordinate Transformation Service

