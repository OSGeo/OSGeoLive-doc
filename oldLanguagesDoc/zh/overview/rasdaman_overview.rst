:Author: Peter Baumann, Jinsongdi Yu, Dimitar Misev, Michael Owonibi
:Reviewer: Cameron Shorter, Jirotech
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-rasdaman.png
 :alt: project logo
  :align: right
  :target: http://rasdaman.org

Rasdaman
================================================================================

多维度栅格数据库
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　Rasdaman 扩展了常规关系数据库的功能，针对存储和调用海量多维栅格数据实现了高效的服务器端优化，并使用 SQL 风格的查询语言。通过将数据存储在 PostgreSQL 数据库系统之中，Rasdaman 实现了高度的数据整合。

　　Rasdaman 是 GDAL（Geospatial Data Abstraction Library）函数库的一部分，同时也提供 Map Server 集成（beta 版）。

　　该系统支持 OGC WCS/WCPS 网络地理信息编录和 WPS 网络地理数据处理服务，并有 C++ / Java API 和自有的一套查询语言。

　　Rasdaman 系统成熟稳定，已有超过 10 年的应用历史。法国国家地理研究所使用该系统支持千万兆容量的航片数据库。在 2007 年 ACM Principles of Database Systems 会议上，栅格数据库系统专家 Rona Machlin 将其称为“此类系统中最完善的实例”。

.. image:: /images/projects/rasdaman/rasdaman-collage.png
  :scale: 50 %
  :align: right

核心功能
--------------------------------------------------------------------------------

    * 完全的多维度支持，一维至四维甚至更高
    * 灵活而强有力的查询语言适用于显示、分类、卷积、聚合等各类空间数据查询和操作
    * 灵活的空间索引系统能够快速响应切片查询
    * 良好的切片流控制带来高性能和高硬件机能适应性
    * 多路技术支持多用户操作
    * 利用 PostgreSQL 实现与其它地理信息的高度集成

标准实现
--------------------------------------------------------------------------------

    * OGC WCS 2.0 / WCPS 1.0 网络地理信息编录
    * WPS 1.0 网络地理数据处理服务

Details
--------------------------------------------------------------------------------

**官方网站：** www.rasdaman.org

**开源协议**

* 客户端和 Petascope 插件：GNU Lesser General Public License (LGPL) version 3
* 服务器端：GNU General Public License (GPL) version 3

**软件版本：** 8.3.1

**支持平台：** GNU/Linux, Mac, Solaris

**API 接口：** rasql, C++, Java; OGC-based WCS, WCPS, WCS-T, WPS

**技术支持：**  www.rasdaman.com

快速入门
--------------------------------------------------------------------------------

* :doc:`快速入门文档 <../quickstart/rasdaman_quickstart>`


