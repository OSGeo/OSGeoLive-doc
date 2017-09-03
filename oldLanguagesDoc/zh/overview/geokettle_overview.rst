:Author: Thierry Badard 
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5 (Draft)
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-geokettle.png
  :alt: project logo
  :align: right
  :target: http://www.geokettle.org/

GeoKettle
================================================================================

抽取、转换与装载（Extract Transform Load ，即 ETL）
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　GeoKettle 是一套以 `Pentaho Data Integration <http://kettle.pentaho.com>`_ 数据集成工具（又名 Kettle）为基础而具备空间信息处理功能的软件系统。作为一套强大的抽取、转换与装载平台，GeoKettle 通过基于元数据的工作方法建立和更新各类地理信息数据库、数据仓库与网络服务。

　　GeoKettle 使用户得以从数据源抽取所需的信息，完成数据的清理、纠错和结构转换，从而得到符合一定标准的数据，并将其装载进入数据库管理系统、GIS 数据库文件或网络服务平台中。对于解决复杂、海量数据的自动化处理，数据格式转换，数据库输入、迁移等问题，GeoKettle 能够提供无需编程工作即可实现的有效解决方案。

　　在地理空间信息软件领域，GeoKettle 类似于 Feature Manipulation Engine ，一款私有的商业性 ETL 工具。作为一款稳定，高效，兼容国际标准，拥有数百种功能，支持读写大量的数据格式、服务和数据库的 ETL 产品，GeoKettle 被全球包括政府机构、银行、保险、空间信息集成在内的众多机构选用。

.. image:: /images/screenshots/geokettle/geokettle-overview.png
  :scale: 50 %
  :alt: project logo
  :align: right

基本特性
--------------------------------------------------------------------------------

* 数据抽取： 

  * 超过 35 种数据库，包括 MySQL 、PostgreSQL/PostGIS 、Oracle 等
  * XML 文件
  * XLS 文件
  * Xbase 文件（dBase 、Foxpro 等）
  * 文件系统信息
  * 派生数据
  * 微软 Access 系统数据
  * LDAP 轻量名录存取协议
  * GeoMondrian 空间信息联机处理系统（SOLAP）
  * 空间数据文件：Shapefile 、GML 3.1.1 、KML 2.2 及所有 OGR 开放向量数据格式
  * OGC 开放地理空间信息联盟标准网络服务：地理要素（WFS）、传感器数据（SOS）、编目数据（CSW）

* 数据转换：

  * 引擎式处理系统（非代码生成器）
  * 从数据库、数据文件或内存读取
  * 基本运算功能
  * Javascript 、SQL 及正则脚本
  * 数据分割
  * 制图
  * 选取
  * 切分
  * 过滤
  * 合并
  * 连接
  * 复制
  * 并行计算支持
  * 主元变换
  * 空间分析：缓冲区、几何中心、距离、交集、并集等
  * 高级空间运算：剪切, 德劳奈三角化, 几何边界抽稀/平滑, 要素拆分等
  * 空间聚合
  * 图形预览

* 数据装载

  * 数据库：MySQL 、PostgreSQL/PostGIS 、Oracle 等
  * 数据仓库 population
  * 空间数据格式：Shapefile（shp）、GML 3.1.1 、KML 2.2 、所有 OGR 标准格式
  * OGC 网络服务：网络编目服务（CSW）等
  * 切分装载
  * 批量装载
  * 并行装载
  * 分布式装载

* 操作环境
  * 通过名为“Spoon”的图形界面可以设置转换过程的所有选项
  * 命令行界面亦可用于执行操作
  * 网络服务：远程执行与分布式运算适用于处理超大型的数据集
  * Java 开发接口
  * 插件支持

遵循的标准
--------------------------------------------------------------------------------

* OGC 开放地理空间信息联盟标准（SFS 、CSW 、SOS）

相关信息
--------------------------------------------------------------------------------

**官方网站：** http://www.geokettle.org/

**发布协议：** GNU Lesser General Public License (LGPL) version 2.1

**软件版本：** |version-geokettle|

**平台支持：** Windows, Linux, Mac, Solaris

**接口语言：** Java, Javascript

**帮助文档：** http://www.spatialytics.org & http://www.spatialytics.com


快速开始
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/geokettle_quickstart>`
