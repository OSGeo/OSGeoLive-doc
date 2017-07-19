:Author: Hamish Bowman
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: /images/project_logos/logo-gpsdrive.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.GPSdrive.de

********************************************************************************
GPSDrive 快速入门文档 
********************************************************************************

运行 GPSDrive
================================================================================

　　使用 GPSDrive 前，可能需要安装 `GPSd <http://savannah.nongnu.org/projects/gpsd>`_ 用于获取 GPS 数据。缺少该项支持的情况下，GPSDrive 只能提供地图浏览功能。

　　:doc:`Open Street Map <../overview/osm_dataset_overview>` 切片可用 :doc:`Mapnik <../overview/mapnik_overview>` 函数库渲染。这些数据存储在一个 :doc:`PostGIS <../overview/postgis_overview>` 数据库中。其网络切片服务也可以读取。

　　使用“espeak”软件可以实现语音提示。


配置 GPS 连接
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　连接 GPS 电缆后，使用以下命令开启 GPSd 服务：

::

  sudo dpkg-reconfigure GPSd

　　和

::

  sudo /etc/init.d/gpsd start

　　对于蓝牙连接的 GPS 用户，请注意 GPSd no-probe 开关的帮助信息（这也是 GPSd 没有被配置为自动开启的原因）。

* 'xGPS' 可以用于检查 GPSd 数据连接。


无 GPS 的地图浏览
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
　　在没有 GPS 连接的条件下，按 'e' 可进入浏览模式。方向键用于移动，鼠标右键可选择导航点。


帮助文档
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
　　使用 '**man GPSdrive**' 或 '**GPSdrive --help**' 命令可显示帮助文档。
　　
　　帮助文档中包含了车载或 PDA 模式的信息，适用于在小屏幕上使用的情况。


显示设置
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
　　除了 Preferences 菜单提供的 car/PDA/desktop 模式外，也可以设置屏幕上各个数值窗口的内容。点击显示的位置并选择所需项目即可。通过 '**d**' 和 '**m**' 可以开关附加显示。


以 Mapnik 渲染 Open Street Map
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
　　在本地有 PostGIS 运行的情况下（比如 Live 系统中安装的实例），GPSDrive 可以从 OpenStreetMap.org 调用数据，利用 Mapnik 快速渲染。Live 中配置的该 PostgreSQL 数据库名为“osm_local_smerc”。

　　Live 中的 OSM 数据只包含特定的一个城市，故用户可能希望添加自己的 Planet.osm 数据。这里可以利用 `osm2pgsql` 程序或在 *Map Control* 界面关闭 *Mapnik Mode* 而使用下载的切片。


检索
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
　　使用 *Find* 可以检索 SQLite 数据库中存储的周边兴趣点。6.0 版本的 Live 中包含了 OSM 的英国 Nottingham 切片。一个检索请求示例是“列出 Nottingham 市政厅周边 2 千米内所有的酒吧”。


地图下载
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
　　使用 :menuselection:`Options --> Maps --> Download` 可下载地图切片。Open Street Map 和 NASA OnEarth T-WMS 是内建支持的网络数据源。GPSDrive 也支持通过一些命令行指令批量下载一个区域的数据。


朋友位置服务
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
　　在 Preferences 菜单可以选择 Friendsd 位置共享服务。这将会把你的地理位置上传至一个公共服务器。你也可以使用自己的服务器以保护隐私。输入一个用户名并点击“Lookup”可连接至服务器。勾选“Enable friends service”并关闭。当显示比例在 1:1千万 以上时，设定的朋友的位置会显示。


语音提示
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
　　GPSDrive 可以在导航过程中接近目的地等事件发生时给与语音提示。这个功能依赖于 eSpeak 软件。该软件在 Live 默认关闭以节省空间，开启方法是以 root 编辑 **/etc/default/speech-dispatcher** ，设置 **RUN=yes** ，并以 `sudo service speech-dispatcher start` 启动服务。GPSDrive 会自动发现这项服务。在 Preferences 的 Speech 部分可以对其进行开关和设置。


其它信息
================================================================================

* *GPSDrive* 官方网站: http://www.GPSdrive.de
* 帮助支持页面: http://gpsdrive.sf.net

