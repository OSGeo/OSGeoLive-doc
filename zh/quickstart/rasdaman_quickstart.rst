:Author: Jinsongdi Yu (j.yu@jacobs-university.de)
:Author: Michael Owonibi (o.michael@jacobs-university.de)
:Author: Peter Baumann (p.baumann@jacobs-university.de)
:Author: Dimitar Misev (d.misev@jacobs-university.de)
:Author: Alan Beccati (a.beccati@jacobs-university.de)
:Translator: Zhengfan Lin (public.t.lin@gmail.com)
:Version: OSGeo-Live 6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-rasdaman.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.rasdaman.org


********************************************************************************
rasdaman 快速入门
********************************************************************************

　　rasdaman 是一套用于查询关系数据库中 N 维栅格数据的数据库服务系统。

　　本文演示了一些对于栅格数据对象的基本查询操作。请先在 :menuselection:`Geospatial --> Databases --> Rasdaman --> Start Rasdaman Server` 启动 rasdaman 服务。

一维到四维的示例
================================================================================

    * OSGeo-Live 本地的 rasdaman `示例 <http://localhost/rasdaman-demo/index-osgeolive.php>`_ 包含了一些较小的数据集。一些更大的示例文件位于 `Earthlook 网站 <http://kahlua.eecs.jacobs-university.de/~earthlook/index-osgeolive.php>`_ ，请连接英特网访问。

本地查询
================================================================================

    * 在命令行访问本地数据库。
    * 以 :command:`rasql` 命令进行查询，例如::

      $ rasql -q "select png((char)(c.red / (c.red + c.green) - c.green / (c.red + c.green)) > 0.6 * 255) from rgb AS c" --out file

    * 使用位图编辑器打开生成的文件查看结果。


创建数据库
================================================================================

    * 下载和安装 `rasdaman <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/Download>`_ 及其 `所依赖组件 <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/RequiredPackages>`_ 。
    * 运行示例安装脚本::

      $ install_demo.sh

    * 使用 :command:`rasql` 命令查询，例如::

      $ rasql -q "select png( NIR ) from NIR" --out file


其它信息
================================================================================

　　您可以尝试以下内容：

    * 浏览 `rasql 查询语言指南 <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/browser/manuals_and_examples/manuals/pdf/ql-guide.pdf>`_ 中的示例。
    * 通过 `文档和教程 <http://kahlua.eecs.jacobs-university.de/~earthlook/tech/interface-wcps.php>`_ 学习 OGC `Web Coverage Processing Service 网络栅格数据查询服务 <http://www.opengeospatial.org/standards/wcps>`_ (WCPS) 语言规范。

