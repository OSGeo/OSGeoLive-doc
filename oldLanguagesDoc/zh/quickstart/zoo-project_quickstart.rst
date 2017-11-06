:Author: Gérald Fenoy
:Reviewer: Angelos Tzotsos
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.5
:Translator: Zhengfan Lin
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-ZOO-Project.png
  :scale: 100 %
  :alt: project logo
  :align: right

.. image:: /images/logos/OSGeo_community.png
  :scale: 100
  :alt: OSGeo Community Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
ZOO 快速入门
********************************************************************************

　　ZOO-Project 提供了一套对开发者友好的网络空间信息处理（WPS）框架，用于创建和连接服务。WPS 是一种远程运行空间数据处理算法的服务。

　　本文演示从网页向 WFS 请求服务的基本操作。

.. contents:: 目录
  

运行
================================================================================

*	选择 |osgeolive-appmenupath-geoserver| 的 "ZOO Project" 启动 ZOO 的示例服务。

*	火狐将打开 ZOO Project Spatial Tools 演示。


.. image:: /images/projects/zoo-project/zoo-project-demo-1.png
  :scale: 50 %
  :alt: screenshot
  :align: center
  
  
*	点击地图上要素可以从 :doc:`GeoServer <../overview/geoserver_overview>` WFS 服务器选择地理要素。选中对象高亮显示。选择缓冲区（Buffer），中心点（Centroid）、包围凸多边形（ConvexHull）、坐标边界框（Boundary）等运算。结果将以黄色显示。

.. image:: /images/projects/zoo-project/zoo-project-demo-2.png
  :scale: 50 %
  :alt: screenshot
  :align: center
  

*	选择一个临近的要素，执行并（Union）、交（Intersection）、对称作差（Symmetric Difference）、减（Difference）等多对象操作。

.. image:: /images/projects/zoo-project/zoo-project-demo-3.png
  :scale: 50 %
  :alt: screenshot
  :align: center

其它信息
================================================================================

*	从以下界面可以建立自定义的请求发送至 ZOO：
		http://localhost/zoo-demo/test_services.html

*	该页面显示该 ZOO WPS 服务的功能（capabilities）：
		http://localhost/zoo/?Request=GetCapabilities&Service=WPS
	
*	ZOO Project 邮件列表：
	zoo-discuss@gisws.media.osaka-cu.ac.jp
