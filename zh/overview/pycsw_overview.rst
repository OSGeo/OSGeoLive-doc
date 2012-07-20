:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Tanner Lin
:Version: OSGeo-Live 5.5
:License: Creative Commons

.. image:: ../../images/project_logos/logo-pycsw.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://pycsw.org/

pycsw
================================================================================

PYCSW 元数据编录
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　Pycsw 用于通过网络发布数据集的描述信息编录，即元数据。借由一套标准化的接口和数据格式，它实现了对各类编录数据客户端数据查询和更新的支持。Pycsw 可以轻松地部署在 Apache 服务器系统上，并对数据库内以 XML 格式存储的元数据进行操作。

　　所谓元数据，是“描述数据的数据”，例如创建时间，作者，空间范围等，通常以 XML 文档储存。这些数据多遵循 ISO 19115 ，ISO 19139 ，FGDC CSDGM 等国际标准。

　　Py-CSW 是 OGC 网络编录服务标准 (:doc:`OGC Catalogue Services for the Web (CSW) standard <../standards/csw_overview>`) 的 Python 语言实现。CSW 标准定义了一套统一的接口，用于对空间信息及相关数据进行检索、查询和浏览。

　　Pycsw 是使用麻省理工（MIT）开源协议发布的软件，在包括 Windows 、Linux 和 Mac OS-X 的主流平台上均可运行。

.. image:: ../../images/screenshots/1024x768/pycsw_overview.jpg
  :scale: 50 %
  :alt: PyCSW Logo
  :align: right

基本特性
--------------------------------------------------------------------------------

* 完全通过 OGC CITE CSW 标准测试（103/103 满分通过）
* 遵循 INSPIRE Discovery Services 3.0
* 遵循 ISO Metadata Application Profile 1.0.0
* 遵循 FGDC CSDGM Application Profile for CSW 2.0
* 支持 ISO 、Dublin Core 、DIF 和 FGDC 的元数据定义
* 易于配置
* 具备事物处理能力（CSW-T）
* 灵活的数据库设定
* 分布式数据的联合搜索
* 对 XML 文档的实时校验
* 支持插件扩展的构架
* 高度轻量化（Python + CGI）


遵循的标准
--------------------------------------------------------------------------------

OGC 开放地理空间信息联合会标准：

* CSW 2.0.2
* Filter 1.1.0
* OWS Common 1.0.0
* GML 3.1.1

元数据标准：

* Dublin Core 1.1
* SOAP 1.2
* ISO 19115 2003
* ISO 19139 2007
* ISO 19119 2005
* NASA DIF 9.7
* FGDC CSDGM 1998

相关信息
--------------------------------------------------------------------------------

**官方网站：** http://pycsw.org

**协　　议：** `MIT`_

**软件版本：** 1.2.0

**平台支持：** Windows / Linux / Mac

**接口语言：** Python

**帮助文档：** http://pycsw.org/docs/support.html

.. _`Python`: http://www.python.org/
.. _`MIT`: http://pycsw.org/docs/license.html#license

快速入门
--------------------------------------------------------------------------------

* :doc:`快速入门文档 <../quickstart/pycsw_quickstart>`

