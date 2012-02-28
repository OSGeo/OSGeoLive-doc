:Author: Jan Drewnak (j.drewnak@52north.org)
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _52nWSS-overview:

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/security

52°North WSS
================================================================================

相关内容
--------------------------------------------------------------------------------

52North Web Security Service (WSS)采用基于角色的权限许可，很容易限制了对空间服务及其资源的访问。

使用52North WSS可以定义如下访问策略:

  *所有具有角色'external'的用户都被允许访问WMS的GetMap服务的图层A和B。*

或者

  *GetFeatureInfo服务仅被允许访问图层A上由某个边框定义的特定区域。*

52North WSS是一个Java编写的Web应用程序，通常运行在Apache Tomcat Servlet容器。
它作为任意一个OGC Web服务的代理程序，接收所有请求并根据规定策略执行程序。如此，已实现的服务不需要改变。
策略和用户被定义在XML配置文件中，通过一个通用管理界面维护。

.. image:: ../../images/screenshots/1024x768/52n_wss_mgmt.png
  :scale: 70 %
  :alt: Screenshot of WSS Management UI
  :align: right

功能
--------------------------------------------------------------------------------

**授权**

包括以下保护:

* Web Mapping Service (WMS): 图层,空间范围
* Web Feature Service (WFS): 要素类型, 要素及其属性,空间范围
* Sensor Observation Service (SOS): 提供内容, 程序, 空间范围, 时间范围
* Web Processing Service (WPS): 进程

**认证**

支持多种用户认证方法,比如:

* HTTP基本身份认证
* SAML断言(安全断言标记语言)
* 其他


详情请见
--------------------------------------------------------------------------------

**网站:** http://52north.org/communities/security

**版权:** GNU General Public License (GPL) version 2

**软件版本:** WSS 2.2.0

**支持平台:** Windows, Linux, Mac

**API接口:** Java

**商业支持:** http://52north.org/


快速入门
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/52nWSS_quickstart>`
