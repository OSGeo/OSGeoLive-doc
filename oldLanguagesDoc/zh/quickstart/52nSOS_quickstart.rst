:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Reviewer: TBD
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/sos
  
********************************************************************************
52° North SOS Quickstart 
********************************************************************************

Getting Started
================================================================================

　　52° North SOS 是一套用于提供和获取传感器数据（探测数据及元数据）的网络服务。

1) 选择 :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North SOS` 或 `该链接 <http://localhost:8080/52nSOS/>`_ 打开 52° North SOS 服务。若服务页面无法正常显示，请尝试启动 Tomcat，详见本页底部。

2) Firefox 浏览器将开启 52° North SOS 演示客户端的欢迎页面（见图1）。请选择你希望使用的版本，例如此图中的 1.0.0 版：

.. image:: /images/projects/52n_sos/52n_sos_test_client_start.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS test client welcome page
  :align: center

**图 1**: 52°North SOS 演示客户端－欢迎页面

3) 演示客户端将会显示。

.. image:: /images/projects/52n_sos/52n_sos_test_client_v1_0_0_GetCapabilities.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS test client version 1.0.0
  :align: center
  
**图 2**: 52°North SOS 演示客户端 - 1.0.0 版本演示
  
4) 首先，请从“Request Examples”旁边的下拉菜单选择 GetCapabilities_allSections.xml 这一请求。（见图2 中的 [1]）。
  
5) 点击 **Send 按钮** （见图2 中的 [2]）将请求发送至 52°North SOS 。返回结果是一个 XML 文档（见图3），显示出目标传感器的信息，包括提供者、关键字、可用操作、滤波器等元数据以及观测数据。按 Ctrl+U 可以显示源码。

.. image:: /images/projects/52n_sos/52n_sos_response.png
  :scale: 70 %
  :alt: screenshot of 52°North SOS output - GetCapabilities response encoded in XML
  :align: center
  
**图 3**: 52°North SOS - GetCapabilities 响应（XML 编码）
  
6) 为设计特定的请求，你需要了解目标 52°North SOS 服务（此处为 1.0.0 版）的 `capabilities <http://localhost:8080/52nSOS/sos?REQUEST=GetCapabilities&SERVICE=SOS&ACCEPTVERSIONS=1.0.0>`_ （功能参数）。通过这些信息（尤其是 contents 部分），你可以调整演示客户端中所给出的请求。这里，请从下拉菜单选择 GetObservation 观测请求（GetObs...）并以之作为模板来创建一个请求。

其它信息
================================================================================

　　进一步学习 52° North SOS 或 52° North Sensor 社区的有关信息：

* 52°North :doc:`SOS 简介文档 <../overview/52nSOS_overview>`
* 52°North Sensor 邮件列表：swe@52north.org
* 52°North `传感器系统论坛 <http://sensorweb.forum.52north.org/>`_
* 52°North `SOS 客户端线上演示 <http://sensorweb.demo.52north.org/SOSclient/>`_
* 52°North `SOS 官方网站 <http://52north.org/communities/sensorweb/sos/>`_
* 52°North `传感器系统社区网站 <http://52north.org/communities/sensorweb/>`_

* 若没有 SOS 服务，请用以下命令检查 Tomcat 服务运行状态：

::

  user@osgeolive:~$ sudo /etc/init.d/tomcat6 status
  * Tomcat servlet engine is running with pid 1234          <-- Tomcat 正在运行
  [...]
  * Tomcat servlet engine is not running.                   <-- Tomcat 未运行，需启动：
  user@osgeolive:~$ sudo /etc/init.d/tomcat6 start
  * Starting Tomcat servlet engine tomcat6           [ OK ] <-- 正在运行
  
**附录 1:** Tomcat 状态与启动（超级管理员密码为 user）

* 这一版本的 52°North SOS 由 European FP7 的 `EO2HEAVEN <http://www.eo2heaven.org/>`_ 科研项目支持开发，并得到了欧盟委员会 n°244100 协议的支持：

.. image:: /images/project_logos/logo_52North_other_200px.png
  :scale: 100 %
  :alt: EO2HEAVEN - Earth Observation and ENVironmental Modeling for the Mitigation of HEAlth Risks
  :align: center
  :target: http://www.eo2heaven.org/
