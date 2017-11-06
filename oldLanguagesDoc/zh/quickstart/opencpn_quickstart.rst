:Author: Hamish Bowman
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: /images/project_logos/logo-opencpn.png
  :scale: 75 %
  :alt: project logo
  :align: right
  :target: http://www.opencpn.org

********************************************************************************
OpenCPN 快速入门文档
********************************************************************************

　　OpenCPN 是一款简单易用的航线绘制与导航工具。

　　警告：虽然电子导航设备具有良好的性能，我们不建议航海人员完全依赖电子设备和软件。您也需要查看窗外！


启动与运行
================================================================================

配置航海图
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
　　启动 Live 系统的 OpenCPN 前应当激活示例数据，即同意版权协议。这是为了符合分发 NOAA（美国海洋与大气局）公开航海图的版权要求。第一次从桌面或 `Geospatial` 菜单打开 OpenCPN 会提供这样的选项。

.. 若希望手动进行，在命令行执行 :command:`opencpn_noaa_agreement.sh` 执行即可。所需密码在桌面的 password 中有。

　　在 http://www.charts.noaa.gov 可以下载该机构提供的其它数据。


配置 GPS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
　　在连接 GPS 后需要启动 GPSd 服务：

::

  sudo dpkg-reconfigure gpsd

　　以及：

::

  sudo /etc/init.d/gpsd start

　　BlueTooth GPS 用户可能需要查看有关 no-probe 选项的说明。

.. 此处未经充分测试：（为避免造成兼容性问题，我们选择不自动启动 GPSd 。）


* '`xGPS`' 可以用于检查 GPS 信号。


文档
================================================================================

* 本地文档位于 `Help menu <../../opencpn/help_en_US.html>`_ ，网络版本位于 http://www.opencpn.org/ocpn/opencpn_manual 。

*  `入门教学 <../../opencpn/tips.html>`_


其它信息
================================================================================

　　利用 GRIB 插件可以叠加天气与海浪预报图。利用 :doc:`zyGrib software <../overview/zygrib_overview>` （也包含在 Live 系统中）可以快速下载这些数据。相见 :doc:`zyGrib quickstart <../quickstart/zygrib_quickstart>` 。OpenCPN configuration 菜单下最右侧面板可以开启其插件。工具栏右侧将显示相应图标。

　　若在 HOME 已有 zyGRIB 文件，在 :file:`/home` 选择 ``user`` 目录作为 GRIB 目录。右键单击空白选择显示 hidden files ，确保存储 GRIB 下载数据的 ``.zygrib`` 可见。

　　无需解压，直接点击 ">" 并在菜单中选择预报时间即可。

