:Author: Cameron Shorter, Hamish Bowman
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
OSGeo-Live 启动指南
********************************************************************************

　　本文介绍如何从 DVD 或 USB 启动 OSGeo-Live 系统。

系统要求
--------------------------------------------------------------------------------

　　对硬件的最低要求是：

* 内存：1 GB
* CPU：1 GHz i686 兼容（Intel/AMD）
* 硬盘：

 * 直接从 DVD/USB 启动时不需要；
 * 在硬盘安装需要 |osgeo-live-hdspace| 的空间。

* 鼠标：建议使用三键鼠标操作（特别是苹果用户）

运行：
--------------------------------------------------------------------------------

　　从 http://download.osgeo.org/livedvd 可以下载 OSGeo-Live DVD 的 ISO 镜像。将光盘或 U 盘插入并重启。

　　通常的系统会设置为默认从 CD 启动。这样应当载入 Lubuntu 操作系统和各款地理信息软件。如果不能直接载入，则需要调整 BIOS 设置或选择临时启动项。

  .. image:: /images/screenshots/osgeolive/osgeolive_boot.png
    :scale: 70 %
    :alt: boot

　　点击 :kbd:`回车` 继续。

  .. image:: /images/screenshots/osgeolive/osgeolive_boot_select.png
    :scale: 70 %
    :alt: boot select

　　选择 :guilabel:`live - boot the Live System` 。

  .. image:: /images/screenshots/osgeolive/osgeolive_login.png
    :scale: 70 %
    :alt: boot select

　　直接点击 :kbd:`回车` 即可登录默认账户。

  .. image:: /images/screenshots/osgeolive/osgeolive_menu.png
    :scale: 70 %
    :alt: boot select

　　从 :menuselection:`Geospatial` 菜单可以选择众多的软件。

　　Xfce 图形界面环境教程（英语）： http://docs.xfce.org/start

　　Ubuntu 操作系统教程（PDF 电子书，英语）： `/usr/local/share/doc/Getting_Started_with_Ubuntu_10.10.pdf </usr/local/share/doc/Getting_Started_with_Ubuntu_10.10.pdf>`_ 。

　　线上的 Ubuntu 帮助（我们使用的传统的 Xfce 界面，而非带有平板风格的 Unity）：

    https://help.ubuntu.com/11.04/

    https://help.ubuntu.com/11.04/ubuntu-classic/gnome-classic-index/C/

    https://help.ubuntu.com/11.04/serverguide/C/


相关信息：
--------------------------------------------------------------------------------

 * :doc:`virtualbox_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

