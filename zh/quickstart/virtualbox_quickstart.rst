:Author: OSGeo-Live
:Author: Cameron Shorter
:Version: osgeo-live4.0
:Translator: Zhengfan Lin
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
OSGeo-Live Virtual Box 虚拟机运行指南
********************************************************************************

　　本文演示在 `VirtualBox <http://www.virtualbox.org/>`_ 虚拟机运行 OSGeo-Live 。

　　VirtualBox 是一款开源虚拟机系统。它被众多的 OSGeo-Live 开发测试人员使用。

系统需求
--------------------------------------------------------------------------------

* 内存：1 GB，若需同时运行其它程序建议至少 2 GB 。
* 硬盘空间：

 * 从 ISO 镜像运行时 |osgeo-live-hdspace|
 * 从镜像安装时 17 GB

配置虚拟机
--------------------------------------------------------------------------------
　　下载并安装 `Virtual Box <http://www.virtualbox.org/>`_ 。在 Debian/Ubuntu 环境下：

  ``apt-get install virtualbox-ose``


启动 Virtual Box

  .. image:: ../../images/screenshots/800x600/virtualbox.png
    :scale: 70 %

选择 :guilabel:`New` 创建虚拟机

  .. image:: ../../images/screenshots/800x600/virtualbox_create_vm.png
    :scale: 70 %

点击 :guilabel:`Next` 继续

  .. image:: ../../images/screenshots/800x600/virtualbox_select_name.png
    :scale: 70 %

设定一个名称，并选择环境为 "Linux"、"Ubuntu" 。

  .. image:: ../../images/screenshots/800x600/virtualbox_memory.png
    :scale: 70 %

Base Memory 至少768 MB，1 GB 以上有利于 Java 程序运行。

  .. image:: ../../images/screenshots/800x600/virtualbox_no_hard_disk.png
    :scale: 70 %

简单安装：取消 "Boot Hard Disk"，虚拟机将从镜像直接运行。

　　若希望虚拟机能够在关闭后保存数据，并拥有其它一些高级功能，可以选择硬盘（hard disk）。

  .. image:: ../../images/screenshots/800x600/virtualbox_warning_no_hard_disk.png
    :scale: 70 %

选择 :guilabel:`Continue`

  .. image:: ../../images/screenshots/800x600/virtualbox_final_check.png
    :scale: 70 %

选择 :guilabel:`Finish`

  .. image:: ../../images/screenshots/800x600/virtualbox_select_settings.png
    :scale: 70 %

　　镜像载入后就可以模拟 Live 从光驱启动了。

右击 "osgeo-live" 镜像并选择 :guilabel:`Settings` 。

  .. image:: ../../images/screenshots/800x600/virtualbox_set_cd.png
    :scale: 70 %

选择 "Storage", CD/DVD Device，...

  .. image:: ../../images/screenshots/800x600/virtualbox_add_dvd.png
    :scale: 70 %

选中 OSGeo-Live 镜像文件。

  .. image:: ../../images/screenshots/800x600/virtualbox_start_vm.png
    :scale: 70 %

依照 :doc:`osgeolive_quickstart` 使用

创建永久性虚拟机
--------------------------------------------------------------------------------
若有必要，依照 :doc:`osgeolive_install_quickstart` 在虚拟机硬盘安装 Live 。

提高显示分辨率等
--------------------------------------------------------------------------------
　　使用以下工具可以选择高分辨率，在真实系统和虚拟机间拷贝数据、实现图形硬件加速等。

　　连接至英特网：

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_menu.png
    :scale: 70 %

　　选择 synaptic package manager 软件包管理器。

　　输入密码 password = "user"

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_select_tools.png
    :scale: 70 %

　　选中 "virtualbox-ose-guest-utils" 以安装。

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_apply.png
    :scale: 70 %

　　点击 Apply 执行。

　　重启虚拟机后，其分辨率应可以同物理系统一致。显示设置位于：

桌面菜单 :menuselection:`Applications --> Settings --> Xfce 4 Settings Manager --> Display`

相关信息
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

