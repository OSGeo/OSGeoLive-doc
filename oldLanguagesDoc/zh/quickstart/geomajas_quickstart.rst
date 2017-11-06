:Author: Pieter De Graef
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-geomajas.png
  :width: 50px
  :height: 50px
  :alt: project logo
  :align: right
  :target: http://www.geomajas.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
Geomajas 快速入门文档
********************************************************************************

入门示例
================================================================================

　　Geomajas 是用于创建网络 GIS 服务的开发框架。OSGeo Live 提供了一套运用 Geomajas 技术制作的一个示例项目。

.. image:: /images/projects/geomajas/geomajas_1024x768_screen1.png
  :scale: 50%
  :alt: Geomajas Showcase
  :align: right

* 在 Geospatial 目录中进入“Browser Clients”。

* 选择“Start Geomajas”。示例项目将在 Firefox 浏览器中显示。

* 页面左侧显示了 Geomajas 提供的几种成熟功能模块。点击各个示例会进入相应的页面。

* 页面右侧显示了各个示例的说明。


创建新的 Geomajas 应用
================================================================================

　　为创建新的 Geomajas 应用，你需要 `Maven <http://maven.apache.org/>`_ 支持::

    $ sudo apt-get install maven2

　　Maven 是一款 Java 工程管理工具。Geomajas 在 Maven 定义了原型（archetype），创建默认应用只需一行命令：

    $ mvn archetype:generate -DarchetypeCatalog=http://files.geomajas.org/archetype-catalog.xml

　　恭喜！你已经创建了第一个 Geomajas 应用。你可以立刻运行它，或在开发环境中对其进行设计。若要立刻运行，在应用的目录（包含 pom.xml）下执行命令：

    $ mvn jetty:run

　　应用将完成编译并运行于 Jetty 容器中。应用端口位于 8080，即 http://localhost:8080/ 。

　　浏览 `Geomajas 入门教程 <http://files.geomajas.org/maven/trunk/geomajas/docbook-gettingstarted/html/master.html#prereq>`_ 可以获得设定开发环境与开发应用的具体信息。

　　对于项目的总体信息，请看 `Geomajas 主页 <http://www.geomajas.org/>`_ 。

