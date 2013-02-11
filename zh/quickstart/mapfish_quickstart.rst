:Author: Eric Lemoine, Bruno Binet
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-mapfish.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.mapfish.org


********************************************************************************
MapFish 快速入门文档
********************************************************************************

　　MapFish 是一套完善而灵活的框架，用于建立内容丰富的网页地图服务。它不仅能保证高效的开发，也能提供高质量的服务产品。

　　本文包含了：

* 运行 MapFish 示例服务（Live 预装）
* 安装 MapFish
* 建立简单的 MapFish 服务

示例服务
================================================================================

　　在桌面点击 MapFish 图标即可与 Firefox 开启本地示例服务。这是一个本地 Apache 运行的 mod_wsgi 服务（http://localhost/mapfishsample/osgeolive/wsgi/）。

　　示例服务包含了检索、编辑、打印等功能。若希望查看 MapFish REST 协议的实际内容，请在 Firebug 查看 requests/responses 数据。

安装 MapFish
================================================================================

　　请从官网下载 MapFish 安装脚本并运行：
::

    $ wget http://www.mapfish.org/downloads/go-mapfish-framework-2.2.py

    $ python go-mapfish-framework-2.2.py --no-site-packages venv

　　以上命令创建了一个名为 ``venv`` 的 Python 虚拟环境，下载了 MapFish 及其依赖组件，并安装至建立的虚拟环境中。

　　以下激活建立的虚拟环境并检查 MapFish 是否已经正确安装：
::

    $ source venv/bin/activate

    (venv) $ paster create --list-templates

　　若安装正常，应当出现以下输出：
::

    Available templates:
    basic_package:   A basic setuptools-enabled package
    mapfish:         MapFish application template
    mapfish_client:  MapFish client plugin template
    paste_deploy:    A web application deployed through paste.deploy
    pylons:          Pylons application template
    pylons_minimal:  Pylons minimal application template

　　安装完成后，请参考后续部分创建服务。

创建 MapFish 服务
================================================================================

　　完成前述步骤后，创建一个名为 ``MyMapFishApp`` 的服务：
::

    (venv) $ paster create -t mapfish MyMapFishApp sqlalchemy=true

　　安装 JavaScript 函数库：
::

    (venv) $ paster create --no-interactive -t mapfish_client MyMapFishApp

　　在 ``MyMapFishApp`` 目录将创建一个应用。

　　使用以下命令可以启动应用：
::

    (venv) $ cd MyMapFishApp
    (venv) $ paster serve development.ini

　　访问 http://localhost:5000 。创建的新应用应该包含两个 `OSM 图层
<http://www.openstreetmap.org/>`_ ，一个工具栏和一个图层面板。

　　MapFish 框架通过创建基于 REST 网页应用可以实现地理要素创建、读取、编辑、更新、删除等多种功能。请访问 http://mapfish.org/doc/2.2/quickstart.html 了解具体的配置方法。在 http://mapfish.org 可以获得更多有关该项目的信息。

