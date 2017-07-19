:Author: Activity Workshop
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-prune.png
  :alt: project logo
  :align: right
  :target: http://gpsprune.activityworkshop.net/

********************************************************************************
GPSPrune 快速入门文档
********************************************************************************

启动
================================================================================

　　在 Navigation and Maps 菜单选择 GPSPrune 即可启动。

　　数据可以从航迹文件、GPS 设备（由 *GPSbabel* 连接）、Wikipedia 地理位置服务或手工输入获得。在 :menuselection:`File --> Open file` 选择 gpx 、kml 或 kmz 文件是最简单的方式。
 
　　航迹会以蓝色线条显示。若有导航点信息，也会显示位置和名称。

　　在存在英特网连接的情况下，点击界面顶部的地球图标或选择 :menuselection:`View --> Show Map` 可显示网络地图数据。

　　使用鼠标可以移动和缩放显示。点击航迹上的点可以查看该点的平面位置、高程和时间（如果包含此数据）信息。

　　界面底部为高程图。在有高程数据的情况下，此处会显示高程的变化曲线。点击此图上的位置会选中平面图上对应的点。

显示设定
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
　　使用 :menuselection:`Settings --> Set map background` 可以改变地图设置。可以选择一个内建的地图服务，添加其它服务的 URL ，或者 maps.cloudmade.com 的样式号。

　　在 :menuselection:`Settings --> Set colours` 可以改变显示的颜色设置。

　　各项设置默认只在本次运行有效。通过 :menuselection:`Settings --> Save settings` 可以保存设置设置。若 Live 是在光盘或无记忆的 U 盘安装条件下运行的，设置将无法保存。

下载地图
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
　　通过 :menuselection:`Settings --> Save maps to disk` 可以下载地图到本地用于快速查看。这在硬盘安装的条件下较为适用。

在其它环境使用 GPSPrune
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~　　在 Live 试用 GPSPrune 后，您可能想在其它系统环境下使用。某些 Linux 发行版在其官方软件库中包含了 GPSPrune ，搜索“Prune”或“GPSPrune”即可。当然，您也可以在官方网站下载最新版。

　　GPSPrune 是绿色软件，无需安装。它需要 1.5 版本或以上的 Java 环境支持（目前 Live 所运行的为 OpenJDK 7）。通过 *GPSbabel*、*Gnuplot*、*Exiftool*、*Java3d* 等工具，GPSPrune 的功能可以进一步扩展。

其它信息
================================================================================

* GPSPrune 主页： http://gpsprune.activityworkshop.net/
* 软件截图： http://gpsprune.activityworkshop.net/screenshots.html
* 使用说明： http://gpsprune.activityworkshop.net/how-tos.html

