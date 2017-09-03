:Author: Astrid Emde
:Reviewer: Cameron Shorter, Jirotech
:Translator: (Zh) Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-Mapbender3.png
  :alt: project logo
  :align: right
  :target: http://www.mapbender3.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


Mapbender
================================================================================

地理信息集成框架
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　 `Mapbender <http://www.Mapbender.org>`_ 是一个成熟的 OSGeo 项目。作为一个基于网页的地理信息集成服务，它可以用于发布、注册、浏览、监控和管理各种空间数据服务。

　　Mapbender 前端服务是整个地理空间信息服务体系的“冰山一角”，作为整套应用中的一层，参与和组成一套符合国际通用标准的地理信息服务系统。Mapbender 让用户可以轻松地的建立针对具体应用需求的网页客户端，而只需少量甚至无需编程工作。这些客户端同远程服务交互，实现安全代理、数字化、对象自动吸附（“捕捉”）等高级的功能。

　　基于 Mapbender 的信息管理应用简介高效，功能专一，适用于大型的分布式空间数据服务体系，是需要对地图和地理要素服务进行的维护、分类、监控的数据服务管理人员的理想选择。

　　Mapbender 前端通过 HTML 和 JavaScript 实现，并采用了应用广泛的 jQuery 及 jQuery UI 开发框架。服务器断则是通过 PHP 和 PostgreSQL/PostGIS 实现的。

　　Mapbender 为空间数据服务体系的管理提供了完全依赖标准网页浏览器实现的全新解决方案。

.. image:: /images/projects/mapbender/mapbender3_basic_application.png
  :scale: 50%
  :alt: Mapbender application
  :align: right


核心功能
--------------------------------------------------------------------------------

* 利用模板轻松创建网页地图界面

  * 增删和自定义 jQuery 组件 
  * 基于 jQuery UI 界面主题控制的自定义界面
 
* 上传和共享 OGC WMS 网络地图服务（Capabilities caching 服务缓存机制） 

  * 用上传的 WMS 数据作叠加图层
  * 半透明图层
  * 层序
  * 符号格式
  * 注释编辑 
  * 基于 CS-W 网络编录服务的扩展元数据服务（ISO 标准描述）

* 上传及设定 WFS 要素服务以搜索、高亮和分析地理要素
* 将 WFS-T 事务处理同 WMS 地图服务结合，提供包括跨数据源要素位置吸附、几何编辑（分割、组合、复制等）的线上数字化服务
* 通过用户及用户组身份认证管理权限
* WMC 网络地图数据索引标准
* 连接远程地理信息编录服务及 GeoNetwork 服务
* 通过 OWS 安全代理机制的数据保护
* 通过加密协议进行的远程 OGC 服务监控与报警
* OpenLayers 客户端部署
* 基于自定义 PDF 模板的高质量地图输出
* 更多实用功能

标准实现
--------------------------------------------------------------------------------

* OGC Web Map Service（网页地图服务）1.1.1, 1.3.0

详细信息
--------------------------------------------------------------------------------

**官方网站：** http://mapbender3.org/ 

**开源协议：** `MIT license <http://opensource.org/licenses/MIT>`_

**软件版本：** |version-mapbender|

**平台支持：** Windows, Linux, Mac

**技术支持：** http://mapbender3.org/en/community


快速入门
--------------------------------------------------------------------------------

* :doc:`快速入门文档 <../quickstart/mapbender_quickstart>`


