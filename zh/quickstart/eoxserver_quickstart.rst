:Author: Stephan Meissl, Stephan Krause
:Reviewer: 
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-eoxserver-2.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

================================================================================
 EOxServer 快速入门文档
================================================================================

概述
--------

　　EOxServer 是一套地球观测数据服务器。它是用于发布地球观测数据及其元数据的 Python 框架。

　　本文档将讨论：

* 在 OSGeo-Live 安装 EOxServer
* 获取和使用演示实例

　　对于系统的有关介绍，请阅读 :doc:`EOxServer 概述文档 <../overview/eoxserver_overview>` 、 `EOxServer 0.2.1 手册 
<../../eoxserver-docs/EOxServer_documentation.pdf>`_ 或 `线上文档 <http://eoxserver.org/doc/>`_ 。

.. contents:: 详述

安装
------------

　　以下命令用于安装 EOxServer::

    cd /usr/local/share/gisvm/bin/
    sudo ./install_eoxserver.sh

　　请注意 `user` 用户的密码是 `user` 。

　　该安装脚本不仅安装 EOxServer 程序，也加入一套 `演示实例 <http://localhost/eoxserver/>`_ ，下载文档，启动界面等。

演示实例
----------------------

　　点击桌面上的“EOxServer“图标可以启动示例。你也可以访问 http://localhost/eoxserver/ 。

.. image:: ../../images/screenshots/1024x768/eoxserver_start.png
  :scale: 50 %
  :alt: EOxServer demonstration start

　　另一个图标“EOxServer Documentation”指向一份 PDF 格式的说明文档。

.. image:: ../../images/screenshots/1024x768/eoxserver_documentation.png
  :scale: 50 %
  :alt: EOxServer documentation

Web 客户端
~~~~~~~~~~

　　界面上的 **Web Client** 链接指向可用的“Dataset 
Series”（数据集）和“Stitched Mosaics”（拼接影象）。本示例中有一个Dataset Series
名为”MER FRS 1P RGB reduced“，包含了三景 ENVISAT MERIS 卫星影象。其 `线上说明 
<http://eoxserver.org/doc/en/users/demonstration.html>`_ 提供了更多信息。

.. image:: ../../images/screenshots/1024x768/eoxserver_webclient1.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client dataset series selection

　　选择其中一个项目，你将看到可用数据的外框显示。

.. image:: ../../images/screenshots/1024x768/eoxserver_webclient2.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client outlines

　　通过标准的 OpenLayers 控制方式，你也可以进行预览。

.. image:: ../../images/screenshots/1024x768/eoxserver_screenshot.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client outlines and previews

　　通过时间控制轴可以控制所显示的 Dataset 的时间段。

.. image:: ../../images/screenshots/1024x768/eoxserver_webclient3.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client date change

　　点击 **Download** （下载）按钮将显示可以下载的数据列表。此处下载数据的范围是当前视图空间范围和时间段。你也可以控制下载数据的尺寸、格式和波段组合。

.. image:: ../../images/screenshots/1024x768/eoxserver_webclient4.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client download selection

　　点击 **Start Download** 开始下载。取决于范围选择，可能会一次下载多幅影象。

.. image:: ../../images/screenshots/1024x768/eoxserver_webclient5.png
  :scale: 50 %
  :alt: EOxServer demonstration embedded client download

管理员客户端
~~~~~~~~~~~~

　　点击 **Admin Client** （管理员客户端）链接可开启其登录界面。演示用的用户名和密码均为“Admin”。

.. image:: ../../images/screenshots/1024x768/eoxserver_adminclient1.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client login

　　这套管理用客户端是 Djangos 的标准客户端，用于配置数据服务。更多信息请访问 `线上文档 <http://eoxserver.org/doc/en/users/operators.html>`__ 。

.. image:: ../../images/screenshots/1024x768/eoxserver_adminclient2.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client start

　　作为实例，你可以浏览和编辑各个 Dataset Series 的 EO Metadata 元数据信息。

.. image:: ../../images/screenshots/1024x768/eoxserver_adminclient3.png
  :scale: 50 %
  :alt: EOxServer demonstration admin client 

日志查看器
~~~~~~~~~~

　　**Log Viewer** 日志查看器链接指向系统的日志。

.. image:: ../../images/screenshots/1024x768/eoxserver_logviewer.png
  :scale: 50 %
  :alt: EOxServer demonstration log viewer

更多信息
----------

　　本文档为一个简单的演示，并未涉及 EOxServer 的众多复杂功能。本项目网站提供了众多的资源用于学习：

* `EOxServer 操作指南 <http://eoxserver.org/doc/en/users/operators.html>`_
* 更完整的 `EOxServer 用户文档 <http://eoxserver.org/doc/en/users/index.html>`_ ，包括 `EOxServer 入门教程 <http://eoxserver.org/doc/en/users/basics.html>`_
* 我们欢迎 EOxServer 用户加入我们的 `邮件列表 <http://eoxserver.org/doc/en/users/mailing_lists.html>`_ 参与交流，询问使用中遇到的问题，并就进一步开发提出建议。
