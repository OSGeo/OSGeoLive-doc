:Author: Kristof Lange
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
52°North WPS 快速入门文档
********************************************************************************

运行
================================================================================

* 启动 52°North WPS： 选择 :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WPS` 启动 52°North WPS，或使用 `该链接 <http://localhost:8080/52nWPS/>`_ 。 若服务页面无法正常显示，请尝试启动 Tomcat，详见 :doc:`SOS 快速入门页面 <../quickstart/52nSOS_quickstart>` 底部。

* 52n WPS 欢迎页面将会显示

.. image:: /images/projects/52nWPS/52nWPS_welcome_page.png
  :scale: 100 %
  :alt: screenshot
  :align: center

* 点击 52nWPS-TestClient 的链接启动测试客户端 
* 请确保 :doc:`GeoServer <../overview/geoserver_overview>` 处于运行状态。以下需要用到来自 GeoServer 的数据支持。


.. image:: /images/projects/800x600/52n_test_client.png
  :scale: 100 %
  :alt: screenshot
  :align: center
  
  
* 点击“Send”按钮发送测试请求。返回的结果是以 XML 文档编码的坦桑尼亚主要道路半径 0.05 度的缓冲区。

.. image:: /images/projects/1024x768/52n_wps_response.png
  :scale: 100 %
  :alt: screenshot
  :align: center
  

* 以下请求用于获取 52°North WPS 的功能信息：

  http://localhost:8080/52nWPS/WebProcessingService?Request=GetCapabilities&Service=WPS

	
* 若有疑问，欢迎使用 52°North WPS 邮件列表：

  geoprocessingservices@52north.org

