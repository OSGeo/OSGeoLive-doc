:Author: OSGeo-Live
:Author: Alex Mandel, Cameron Shorter
:Reviewer: Cameron Shorter, Jirotech
:Translator: Zhengfan Lin
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

********************************************************************************
创建自启动 OSGeo-Live USB 盘
********************************************************************************

　　本文叙述如何从 OSGeo-Live 映象创建 USB 启动盘。相比使用 DVD ，该方法性能更好，且可以在盘中保存操作留下的数据。

　　本文涉及了 OSGeo 团队所发现的较为常见的 USB 启动盘创建技巧和错误。更为详尽的列表请见 `wiki 页面 <http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB>`_ 。

系统要求
--------------------------------------------------------------------------------

* USB 盘，至少 4 GB ，推荐 8 GB 。
* OSGeo-Live ISO 影响，可从 http://live.osgeo.org/en/download.html 下载或从 DVD 读取。

 * 对于 4 GB USB 盘，请使用没有 Windows/Mac 安装程序的 osgeo-live-mini ISO 版本。
 * 对于 8 GB USB 盘，可以使用有安装程序的 osgeo-live ISO 完整版本。


从 Ubuntu 创建启动盘
--------------------------------------------------------------------------------

　　这是 Ubuntu 推荐的启动盘制作方法，适用于 Ubuntu 及其衍生版本，包括 Lubuntu 等以及 OSGeo-Live 。

.. note::
   创建启动盘的 Ubuntu 环境不能比被配置的版本老。对于 OSGeo-Live 6.5 ，要求使用 12.04 或以后的版本。

　　在此 `下载 <http://live.osgeo.org/en/download.html>`_ osgeo-live 或 osgeo-live-mini 影响至硬盘。

　　启动到一个 Ubuntu/Xbuntu 环境中。已有的 OSGeo-Live 启动盘也可以使用。详见 :doc:`osgeolive_quickstart` 。

　　将待写入的 USB 盘插入计算机。

  .. image:: /images/projects/usb/usb_select.png
    :scale: 70 %

　　选择 :menuselection:`Applications --> System --> Startup Disk Creator` 或搜索 `Startup Disk Creator` 。

  .. image:: /images/projects/usb/usb_set_params.png
    :scale: 70 %

　　选择使用的 OSGeo Live 映象。

　　选择目标盘。调整 persistent storage 配置允许在盘上保存多少生成的数据。

Select :guilabel:`Make Startup Disk`

  .. image:: /images/projects/usb/usb_installing.png
    :scale: 70 %

　　等待写入过程完成。


从 USB 盘启动。
--------------------------------------------------------------------------------

#. 关闭计算机。
#. 插入启动盘。
#. 启动计算机并选择 USB 启动。

   * 多数计算机默认不会优先从 USB 启动。
   * 启动时查看启动信息中显示的启动菜单按键，F12 最为常见。
   * 若没有启动菜单可选，进入 BIOS 设置。查看 `这个网站 <http://www.mydigitallife.info/comprehensive-list-of-how-key-to-press-to-access-bios-for-various-oem-and-computer-systems/>`_ 可以了解常见品牌设备的 BIOS 设置启动方法。

#. 在启动顺序（boot order）设置中选择 USB 。

   * 有些系统中 USB 启动选项只有在启动盘已经插入时才会显示。
   * 有时 USB 会被错位地列为硬盘（hard drive）。
   * `该视频 <http://www.youtube.com/watch?v=eQBdVO-n6Mg>`_ 演示了从 USB 启动的一个实例。

运行
--------------------------------------------------------------------------------

　　详见 :doc:`osgeolive_quickstart`

其它信息
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`virtualization_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * 其它启动盘制作方法 `wiki 页面 <http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB>`_
 * 有相关问题可访问我们的邮件列表 http://lists.osgeo.org/mailman/listinfo/live-demo
