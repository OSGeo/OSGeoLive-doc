:Author: Henry Addo
:Version: osgeo-live4.0
:Translator: Zhengfan Lin
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-ushahidi.png
  :scale: 100 %
  :alt: project logo
  :align: right 

Ushahidi 快速入门
================================================================================

.. As sugestion to improve the quickstart: anothre point to descrbie main administrative functionality may be incluided

　　本文演示如何运行 Ushahidi 及其基本操作。

启动 Ushahidi
--------------------------------------------------------------------------------

1. 从桌面图标或菜单均可启动 Ushahidi 。Ushahidi 服务的部署很简单。

.. image:: ../../images/screenshots/1024x768/ushahidi-drc-screenshot.png
  :scale: 50 %
  :alt: ushahidi desktop icons
  :align: center 

2. 选择 **"Basic Installation"** 基本安装 => **"Let's get started"** ，系统将显示基本配置信息。数据库名称默认为 **"ushahidi"** 用户名和密码均为 **"user"** 。数据服务器为 **"localhost"** 。确认后继续。在 *General* 页面选择服务名称（title），例如 **OSGeo demo** ，以及副标题等。邮件地址是用于自动上传和报告发送的。设置成 **"ushahidi@localhost.localdomain"** 或 **"ushahidi@example.org"** 即可，按 **"Continue"** 继续。

   **Note:** 若 Ushahidi 提示 **"Oops! We couldn't make a 
   connection to the database server with the credentials given. Please make 
   sure they are correct."** ，这表示安装脚本未能创建必要的认证信息。此时用户需要手工输入。安装脚本默认用户拥有 root 权限。

   **"mysql -uroot -p"** -- 将请求 MySQL 服务器 root 密码。若有密码则输入，否则直接回车。
   
   输入以下命令创建新用户：
   **"CREATE DATABASE ushahidi;"** -- 新数据库名为“ushahidi”。
   
   然后输入：
   
   **"GRANT ALL PRIVILEGES ON ushahidi.* TO 'user'@'localhost' IDENTIFIED BY 'user';"**
   
   -- 创建 **"user"** 用户，密码为 **"user"** 。

   回到 Ushahidi 界面输入涉及的信息。

.. image:: ../../images/screenshots/1024x768/ushahidi_installer_mode_screenshot.png
  :scale: 50 %
  :alt: mapguide desktop icons
  :align: center

3. 完成后，系统将给出 'View your website' 访问链接。

.. image:: ../../images/screenshots/1024x768/ushahidi_installer_finished_screenshot.png
  :scale: 50%
  :alt: ushahidi installer finishes
  :align: center
 
4. 要在 `管理面板 <http://localhost/ushahidi/admin>`_ 进行操作，输入用户名 **"admin"** 和密码 **"admin"** 。作为示例，您可以选择右上角的 **"Settings"** 设置选项，在 **"Map"** 选项卡改变 **"Map provider"** 地图提供者为 OpenStreetMaps 。由于 OSM 是公共服务，该设置无需 API key 。

.. image:: ../../images/screenshots/1024x768/ushahidi_admin_login_screenshot.png
   :scale: 50%
   :alt: ushahidi admin login
   :align: center

.. 
	As sugestion to improve the quickstart: Back-end screenshots should be included, 
	describing main functionality or administrative areas included. It is a great part of the application to
	be described in the quickstart.

　　系统配置的 README 说明页面位于 `/var/www/ushahidi/readme.html <../../ushahidi/readme.html>`_ 。
