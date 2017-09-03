:Author: Bastian Schaeffer, Kristof Lange
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live 6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :alt: project logo
  :align: right
  :target: http://52north.org/wps


52°North WPS
================================================================================

Web 服务
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　52° North WPS 'Web Processing Service (WPS) <../standards/wps_overview>' 网络地理数据处理服务支持从网络访问由 Sextane、ArcGIS Server、或定制开发功能提供的地理空间数据处理算法。算法可能如区分两个季节的流感病例一样简单，也可能如全球变化模型般复杂。

.. image:: /images/projects/52nWPS/52nWPS_test_client.png
  :scale: 50 %
  :alt: screenshot
  :align: right

主要功能
--------------------------------------------------------------------------------

核心GIS功能:

* 简单缓冲算法
* 道格拉斯-普克算法
* 求交算法
* 由栅格数据获得参数
* 投影变换
	
后端算法的支持软件:

* Sextante
* ArcGIS 服务器
* R
* GRASS 7

支持输入和输出格式:

* 矢量数据: GML2, GML3, SHP files, KML, WKT, DGN
* 栅格数据: GeoTiff, AsciiGrid, NetCDF, JPEG, PNG, HDF-EOS, ERDAS HFA

基于浏览器的客户端

已实现的标准规范
--------------------------------------------------------------------------------

* OGC Web Processing Service (WPS)
* OGC GML2 SimpleFeatures
* OGC GML3 SimpleFeatures


详情请见
--------------------------------------------------------------------------------

**官方网站:** http://52north.org/wps

**版权协议:** GPL

**软件版本:** WPS |version-52nWPS|

**支持平台:** Windows, Linux, Mac

**商业支持:** http://www.52north.org


快速入门
--------------------------------------------------------------------------------

* :doc:快速入门文档  <../quickstart/52nWPS_quickstart>`


