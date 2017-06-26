:Author: Johannes Küpper
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-deegree.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://deegree.org/

********************************************************************************
deegree 3 网络服务 快速入门文档
********************************************************************************

项目简介
================================================================================

　　deegree 网络空间数据基础设施的一套开源实现。deegree 包含了各类组件，用于数据获取、管理、可视化、分析以及访问控制。整个项目依照开放地理信息标准设计，遵循 Open Geospatial Consortium 开放地理信息基金会 和 ISO 211 技术工作组的各项协议。

本文当将叙述如何：
   * 启动 Live 系统中安装的 deegree 3 服务
   * 使用 deegree 3 控制台界面启用一套系统配置
   * 获取更多教学信息


启动 deegree 服务
================================================================================

　　在开始菜单中选择“Start deegree”。稍等片刻，deegree 服务将完成启动。


deegree 服务 控制台
================================================================================

　第一次启动 deegree 时，Firefox 应当开启。若没有开启，可手工访问 http://localhost:8033 。请等待 deegree 3 服务的控制台出现。这是一套简单的界面，用于编辑 deegree 工作空间的配置文件。


deegree 服务 示例工程
================================================================================

　　deegree 3 使用一套统一的配置文件控制所有的服务，包括网络服务、网络应用、桌面应用和命令行工具。配置的不同部分依据 deegree 工作空间目录的标准布局组合。在deegree 3 的控制台，点击左侧“workspaces”链接可以看到可用的配置方案。

　　在控制台的配置方案界面中，顶部显示了当前活动的那（唯一）一套配置方案。这一界面也显示其它不活动的配置和可用的官方的配置模板（需英特网连接）。

　　Live 包含了一套名为 INSPIRE 的配置用于显示和下载数据。你可以尝试以下操作：

 * 启动 INSPIRE 工作空间配置。在“workspaces”试图，点击“deegree-workspace-inspire-3.2-pre9”旁的“Start”即可。启动该配置需要处理数十兆的 GML 数据，故需要花费一些时间。
 * 选择“see layers”并点击“+”，启动 AdministrativeUnit 图层。这个图层直接依据 INSPIRE 丰富的数据渲染，并使用预先配置的 INSPIRE 显示服务展现。
 * 回到主界面并点击“send requests”发送测试请求。一个简单的 WFS 请求界面将会出现。它包含了若干示例，包括事务性的 INSPIRE GML 更性。
 * 对于配置 SQL 后端、基于关系数据的制图等进一步学习，请查阅官方手册（见后文）。

　　你也可以选择其它示例工作空间，了解 deegree 服务的各方面能力：

  * deegree utahDemo：一套网络地图服务系统（WFS/WMS/WMTS），采用了来自美国犹他州的数据（需要下载约 100 MB 的数据）
  * deegree CSW demo: 一套编录服务和 ISO 和 INSPIRE Discovery Service 标注的编录服务
  * deegree WPS demo: 一套演示某些处理示例的 WPS 系统

　　deegree 官方文档（见后文）提供了更多的示例。

注：Live 中包含的 INSPIRE 配置不包括 Address and CadastralParcels 图层的配置信息。在 deegree 社区（http://www.deegree.org/Community）可以获取更完整的版本以及有关信息。

更多信息
================================================================================

　　若想进一步学习 deegree 系统的服务与配置，请访问 http://www.deegree.org/Documentation 阅读官方手册。该手册同整个系统一样，还在不断改进之中。欢迎评论、贡献或资金支持。
