:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _52nSOS-overview:

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/sos


52°North SOS
================================================================================

Web服务
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

52°North :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>` 
支持访问来自当地与远程传感器实时获取或者历史存档的数据。传感器可以是安装在卫星上的照相机或者河流里的水位仪。
 
.. image:: ../../images/screenshots/1024x768/52n_sos_test_client.png
  :scale: 100 %
  :alt: screenshot of sos test client
  :align: right

功能
--------------------------------------------------------------------------------

目前，52°North SOS (版本3.1.1) 实现了SOS规范的核心、事务性处理、以及增强配置文件部分。
当前的发布实现了最新的架构版本（1.0.0）和以下操作：

**SOS核心操作**:

* GetCapabilities, 服务请求的详细信息
* GetObservation, 请求编程成Observations & Measurements (O&M)的纯粹的传感器数据 
* DescribeSensor, 请求传感器本身的元数据信息，该信息编码成为传感器模型语言(SensorML)实例文档

**事务性SOS操作**:

* RegisterSensor, 注册新的传感器
* InsertObservation, 为已注册的传感器添加新的观测项

**其它的SOS操作**:

* GetResult, 支持定期轮询传感器数据。
* GetObservationById, 检索特定个体传感器的观测值
* GetFeatureOfInterest, 请求观测目标特征的GML编码格式数据
* GetFeatureOfInterestTime,确定传感器数据的时间可得性

**客户端**:

* 一个基于浏览器的客户端，对于所有的支持操作提供测试XML查询。

已实现的标准规范
--------------------------------------------------------------------------------

* `OGC Sensor Observation Service (SOS) <http://www.ogcnetwork.net/SOS>`_

详情请见
--------------------------------------------------------------------------------

**网站:** http://52north.org/communities/sensorweb/sos

**版权:** GNU General Public License (GPL) version 2

**软件版本:** SOS 3.2.0

**支持平台:** Windows, Linux, Mac

**API接口:** Java

**商业支持:** http://52north.org/

**社团支持:** http://sensorweb.forum.52north.org/

**社团网址:** http://52north.org/communities/sensorweb/

快速入门
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/52nSOS_quickstart>`

