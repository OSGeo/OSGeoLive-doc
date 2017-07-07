:Author: Trevor Wekel
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.0 Draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-MapGuideOS.png
  :scale: 100 %
  :alt: project logo
  :align: right 

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

MapGuide 快速入门文档
================================================================================

　　本文档描述了如何：

* 安装并运行 MapGuide
* 利用 Maestro 设置空间数据渲染样式

.. comment: ? * 对于 64 位 Ubuntu 系统有一些特殊的说明。 

安装并运行 MapGuide
--------------------------------------------------------------------------------

.. comment: 1. 在 Desktop->Server 点击 'Start MapGuide' 。MapGuide 的后台服务和网页服务模块都会启动。

.. comment: .. image:: /images/screenshots/1024x768/mapguide_desktopIcons.png
.. comment:   :scale: 50 %
.. comment:   :alt: mapguide desktop icons
.. comment:   :align: center 

1. 手动安装 MapGuide

.. note:: 由于空间上的限制，OSGeo Live 中未安装 MapGuide 。

.. 手工运行 ``cd gisvm/bin; sudo ./install_mapguide.sh`` 可执行安装（需网络连接）。

2. 访问 http://localhost:8008/mapguide/phpviewersample/ajaxtiledviewersample.php 查看示例。

.. image:: /images/screenshots/1024x768/mapguide_viewer.png
  :scale: 50 %
  :alt: mapguide desktop icons
  :align: center

MapGuide Maestro 样式编辑器
--------------------------------------------------------------------------------

1. 启动 Maestro：Desktop->Server ，点击 MapGuide Maestro ，将开启 Maestro 登录界面（如图）。在 http://localhost:8008/mapguide/mapagent/mapagent.fcgi 以用户名 "Administrator" 和密码 "admin" 密码。

.. image:: /images/screenshots/1024x768/mapguide_maestroLogin.png
  :scale: 50%
  :alt: screenshot
  :align: center
 
2. 点击 [OK] 进入 Maestro 图形界面。

.. image:: /images/screenshots/1024x768/mapguide_maestroMain.png
   :scale: 50%
   :alt: mapguide maestro main GUI
   :align: center

3. 在左侧展开树形显示，在 Samples->Sheboygan->Layers 双击 `Buildings` ，layer editor for Buildings 样式面板将在右侧显示。

.. image:: /images/screenshots/1024x768/mapguide_maestroLayerFeatures.png
   :scale: 50%
   :alt: mapguide maestro layer features
   :align: center

4. 向下滚动至显示 `Layer Style` 。在 ``Feature Style`` 栏，点击 ``...`` 开启 `Style Editor` （如下图）：

.. image:: /images/screenshots/1024x768/mapguide_maestroLayerStyle.png
   :scale: 50%
   :alt: mapguide maestro layer stype panel
   :align: center

.. image:: /images/screenshots/1024x768/mapguide_maestroStyleEditor.png
   :scale: 50%
   :alt: mapguide maestro color chooser
   :align: center

5. 在 `Foreground Color` 前景色菜单，选择一个新颜色，例如绿色（Green）点击 [OK] 关闭面板 Style Editor 。在 Maestro 主界面点击磁盘图标保存。

.. image:: /images/screenshots/1024x768/mapguide_maestroSaveIcon.png
   :scale: 50%
   :alt: mapguide maestro Save icon 
   :align: center

6. 访问 http://localhost:8008/mapguide/phpviewersample/ajaxtiledviewersample.php 或从 Maestro 主界面点击 `Preview` 可以预览效果。在其地图显示中，放大至建筑物级别可以看见绿色的建筑物要素。

.. image:: /images/screenshots/1024x768/mapguide_buildingColorBeforeChanging.png
   :scale: 50%
   :alt: Building color is grey 
   :align: center

.. image:: /images/screenshots/1024x768/mapguide_buildingColorAfterChanging.png
   :scale: 50%
   :alt: Building color is green 
   :align: center

