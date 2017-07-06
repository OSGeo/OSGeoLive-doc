:Author: Astrid Emde, Christoph Baudson, Arnulf Christl
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.0 draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
:Thanks: mapbender-user list

.. image:: /images/project_logos/logo-Mapbender.png
  :scale: 100 %
  :alt: project logo
  :align: right

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
Mapbender 快速入门文档
********************************************************************************

　　Mapbender 是一套用于发布、注册、浏览、监控和保护空间数据基础服务的网络服务框架。

　　通过 Mapbender 的管理系统，管理人员可以管理、维护地理数据与地理要素服务，并为不同的个人、组织或其它服务管理权限。

　　执行本文档的示例只需要一个 Web 浏览器。

　　本文档描述了：

  * 启动 Mapbender
  * 载入一个应用
  * 载入一个 Web Map Service (OGC WMS) 网络地图服务
  * 配置 WMS
  * 创建一个新应用
  * 创建新的用户与用户组并配置应用权限
  * 载入 WFS 网络地理要素服务
  * 配置要素类型并启动一个支持检索和数字化的 WFS 服务

启动 Mapbender
================================================================================

.. TBD: Add menu graphic to this uDig Quickstart

#. 选择 :menuselection:`Mapbender` 启动程序；

#. 稍等片刻；

　　若无法正常启动，请检查 Apache 服务器或 PostgreSQL 数据库是否已经启动。

欢迎页面
================================================================================

#. 在使用 Mapbender 前需要登录系统；

#. 在欢迎见面可以看到一些 Mapbender 重要页面的链接；

#. 以用户名 :guilabel:`root` 和密码 :guilabel:`root` 登录（该用户为 Mapbender 默认用户，请不要将其删除）；
  
  .. image:: /images/screenshots/800x600/mapbender_welcome.png
     :scale: 80

　　登录后， :guilabel:`application overview` 应用列表界面将显示。



应用列表
================================================================================
　　登录后， :guilabel:`application overview` 应用列表界面将显示所有可以使用的应用。Mapbender 支持模板（template）应用用于创建新的应用。

  .. image:: /images/screenshots/800x600/mapbender_application_overview.png
     :scale: 80

　　Mapbender 提供了：
   * 管理应用
   * 地图服务应用
   * 容器应用

　　应用以 :guilabel:`categories` 分类显示。类别的管理见后述。


管理类应用
================================================================================

　　通过 :guilabel:`Administration applications` 管理类应用可以载入服务、创建用于，配置新服务等。

　　每个 :guilabel:`administration application` 都具有不的功能。后文将演示如何配置自己的 :guilabel:`administration application` 。

　　用户 :guilabel:`root` 安装后可以使用：
   * ADMINISTRATION, ADMINISTRATION_DE - WMS/WFS 服务、应用管理、用户及用户组管理；
   * admin2_en - WMS 、应用、用户及用户组
   * admin_en_services - WFS 、元数据管理、owsproxy 代理
   * admin1 - 具备所有管理功能的模板
   * admin_wms_metadata, admin_wfs_metadata, admin_wmc_metadata - 元数据管理

　　示例截图为 admin2_en 。左侧面板显示了其各种功能。

  .. image:: /images/screenshots/800x600/mapbender_admin2_en.png
     :scale: 80

.. tip:: You get back to the application overview with the |HOME| button.

  .. |HOME| image:: /images/screenshots/800x600/mapbender_home.png
     :scale: 100

地图服务
================================================================================
　　地图服务类中包含了 OGC WMS 服务、相关数据浏览、样式参考（图例）、应用图标等。

#. 从 :guilabel:`application overview` 选择 :guilabel:`by click` 应用。

#. 尝试 Mapbender 在该示例应用提供的功能。
   
   * 开启 gui_digitize 图形界面下的数字化示例
     
  .. image:: /images/screenshots/800x600/mapbender_gui_digitize.png
     :scale: 80

.. tip:: 在支持多标签页的浏览器中可以用不同的标签页打开不同的示例并轻松切换。

WMS 容器应用
================================================================================
　　容器应用可用于包装 WMS 服务。这些服务并非用于直接显示数据，而是用于复杂条件下的服务组织。

  .. image:: /images/screenshots/800x600/mapbender_container.png
     :scale: 60

创建应用
================================================================================

#. 打开管理应用 :menuselection:`admin2_en` ；

#. 选择 :menuselection:`Application Management --> Create new application` 创建新应用；

#. 输入其名称（name）和描述（description），点击 **new** 创建；

#. 在 :menuselection:`Application Management --> Edit application elements` 选择新应用；

#. 在顶部面板选中所需的模板，点击 **add all elements** 获取其中的内容；

#. 也可以选择模板中的具体项目复制到新应用中。只需在其列表中逐个选取并点击 **save** 保存即可；

#. 应用创建后，添加一个 WMS 服务进行显示。相见 **WMS 管理** 。


应用的复制和重命名
================================================================================
　　应用可以通过复制的方法创建。在 :menuselection:`Application Management --> Rename/copy application` 选择复制对象并输入新名称。这个过程同样复制了其中的服务和用户组（可选）。新应用将提供原有的地图服务，且原有的用户也能对其进行访问。

删除应用
================================================================================
　　通过 :menuselection:`Application Management --> Delete application` 可以删除应用。这只会影响应用本身，与其引用的服务无关。

　　这个操作只能对当前用户所拥有的应用进行。

输出应用
================================================================================
　　通过 :menuselection:`Application Management --> Export application (SQL)` 可以将应用以 SQL 输出。SQL 数据包含了一个应用的全面信息，可以直接转移到另一个 Mapbender 实例。

.. tip:: 注：SQL 导出并不包含引用的服务及用户权限信息。

********************************************************************************
WMS 管理
********************************************************************************

载入 Web Map Services 网络地图服务
================================================================================
　　本节演示在应用中载入 OGC Web Map Services (WMS) 网络地图服务。

　　WMS 对 getCapabilities 请求返回一个 XML 文件。Mapbender 可以由此获知所需的服务信息。

.. tip:: 注：在载入前建议阅读 Capabilities 说明文档。


#. 在 :guilabel:`admin2_en` 选择 :menuselection:`WMS Management --> Load WMS` 。选择所需的应用并输入 WMS getCapabilities URL ，点击 **Load** 载入。

#. 若干 WMS 示例服务可以直接载入：

Cadastre of spain 西班牙地籍图

http://ovc.catastro.meh.es/Cartografia/WMS/ServidorWMS.aspx?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS

Geoportal Barcelona 巴塞罗那地理数据服务门户 (Geoportalbcn - 详见该网址)

http://www.bcn.cat/geoportal/es/geoserveis.html

Germany Workshop Demo 德国演示数据

http://wms.wheregroup.com/cgi-bin/germany_workshop.xml?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS 

WhereGroup OSM WMS Open Street Map 数据服务

http://osm.wheregroup.com/cgi-bin/osm_basic.xml?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=1.1.1
 
.. image::/images/screenshots/800x600/mapbender_admin2_en.png
  :scale: 80

　　在一个应用中可以载入多个 WMS 服务。选择 *WMS application settings* 调整 WMS 序列或进行删除。

　　Index 序号为 0 的 WMS 定义了坐标系统和数据范围。

.. tip:: 你可以创建一个容器并加入所有的 WMS 服务，以此作为一个方便的模板向其它应用复制服务。当一个服务更新时，所有使用它的应用都会体现其更新。通过 *Link WMS to application* 可以实现这一过程。
	

配置 WMS 服务
================================================================================　　在载入 WMS 后可对其进行配置。通过配置可以控制特定图层的访问，改变数据集的排序组合，屏蔽特定属性，控制缩放尺度等。

.. image:: /images/screenshots/800x600/mapbender_wms_application_settings.png
  :scale: 80

* on/off - 开启或关闭特定图层
* sel - 是否允许在数据集浏览中选中
* sel_default - 是否默认开启
* info / info default - 控制要素属性服务，info default 为默认开启
* minscale / maxscale - 显示的最小与最大比例，0 为无限制
* style - 若 WMS 提供样式选择，可以在此设置
* prio - 图层顺序
* setWFS - 将 WMS 图层同 WFS 要素类型配置连接（相见后述）


********************************************************************************
应用配置
********************************************************************************
　　以上显示了在无代码级操作的条件下，Mapbender 应用也可以轻松地配置。

　　当选定一个要素，例如 **mapframe1** ，程序将显示其很多属性。这些内容均以 HTML 的形式标注，也即 Mapbender 服务的元素是以 HTML 定义的。在应用启动时 Mapbender 会将其整合至一个 HTML 网页中。

	* id - 要素专有名称
	* on/off - 开启或关闭要素
	* title - 以选项卡名或工具提示显示的名称
	* HTML-TAG/CLOSE-TAG - HTML 标记类型，即 div 或 img 等
	* top, left - 要素位置（fixed 绝对定位布局下）
	* width/height - 要素尺寸

　　要素还包含其独有其它变量，包括用于 JavaScript/PHP 的变量，CCS 引用和直接 CCS 样式设定等。 

　　变量示例：

* “copyright”版权要素可以通过变量设置其声明文字；
* “overview”概览图要素可以设置使用的 WMS 图层；
* treeGDE 数据集浏览器可以通过变量设定其样式


其它练习
================================================================================
* 改变主显示区要素（element mapframe1）的尺寸
* 改变应用图标，可以选择 `foss4g-logo` 文件（element logo）
* 改变背景颜色（element body element-variable css_class_bg）
* 改变按钮位置（修改要素左上角的像素位置）
* 改变版权声明文字

********************************************************************************
用户与用户组管理
********************************************************************************
　　访问 Mapbender 需要特定的权限。不同的用户与用户组对应用及其 WMS 或 WFS 服务具有不用的权限。

　　不同的用户角色“roles”，例如 :guilabel:`guest` / :guilabel:`operator` / :guilabel:`administrator` 只取决于其被设定的访问权限。


创建用户
================================================================================

#. 在 :guilabel:`admin2_en` 选择 :menuselection:`User Management --> Create and edit user` 可创建用户。

#. 输入用户的名称和密码。

.. image:: /images/screenshots/800x600/mapbender_create_user.png
     :scale: 80 


创建用户组
================================================================================
#. 在 :menuselection:`User Management --> Create and edit group` 创建用户组。输入其名称和描述即可。


为用户（组）配置应用访问权限
================================================================================

#. 通过 :menuselection:`User Management --> Add one user to several groups` 可将一个用户添加进用户组中。或者通过 :menuselection:`User Management --> Add several users to one group` 也可以。

#. 通过 :menuselection:`User Management --> Allow one user to access several applications` 可以将用户加入用户组。

#. 通过 :menuselection:`User Management --> Allow one group to access several applications` 可以将一个应用赋予一个用户组。

.. tip:: 若需要写入权限，使用 :menuselection:`User Management --> Assign to edit an application to a user` 设置。

#. 要退出 Mapbender ，点击 |LOGOUT| 按钮。

#. 尝试以另一个用户登录。

  .. |LOGOUT| image:: /images/screenshots/800x600/mapbender_logout.png
     :scale: 100

********************************************************************************
WFS 网络地理要素服务管理
********************************************************************************
　　Mapbender 支持 OGC Web Feature Service 网络地理要素服务 WFS 1.0.0 和 1.1.0. 一个 WFS 通过 Mapbender 可以体现多种功能：

* 记录检索
* 空间检索
* 数字化
* 数据列表
* 注释
* 数据下载

　　为使用 WFS 服务，请将 WFS 导入 Mapbender 并生成要素类型的配置。完成配置后，需对 WFS 及配置授予权限。

　　对于数字化应用，WFS 需具备事务处理（WFS-T）能力。利用 :doc:`GeoServer <../overview/geoserver_overview>` 或 :doc:`deegree <../overview/deegree_overview>` 等可以建立 WFS-T 服务。

载入 WFS 服务
================================================================================
　　配置 WFS 服务的模块集成于 **admin_en_services** 应用。

#. 在 *admin_en_services* 选择 *WFS Management --> Load WFS* 。选择目标应用，输入 WFS getCapabilities 的 URL 并点击 **Load** 执行；

.. tip:: 建议首先查看 WFS getCapabilities 相关文档了解其细节。

示例 WFS

http://wms.wheregroup.com/geoserver/wfs?REQUEST=getCapabilities&VERSION=1.0.0&SERVICE=WFS


.. image:: /images/screenshots/800x600/mapbender_loadWFS.png
     :scale: 80 

创建 WFS 要素类型配置
================================================================================
　　下一步将配置一个要素类型。在一个应用完成配置和权限设定后，可以在其中使用要素类型。

.. image:: /images/screenshots/800x600/mapbender_configure_WFS_featureType.png
     :scale: 80 

**配置**

#. 从 *Select WFS* 选择一个 WFS 服务。所有类型都会出现在列表中；
#. 选择需要配置的类型；
#. 选中后，configuration fields 、attribute fields 等设置会出现；
#. 输入检索的摘要和标签设定等；
#. 定义检索按钮的文本（例如“OK”或“检索”)；
#. 在检索页面样式（style）和结果页面样式（result-style）使用 CSS 控制；
#. 定义一个缓冲距离，用于控制观察检索结果的默认缩放；
#. 选择 `geometry` 栏；
#. search/pos - 定义检索内容与排序；
#. minimum_input (**Search**) - 检索输入的最小长度；
#. label - 检索栏标注
#. show - 结果页面显示的栏目及其顺序
#. show_detail - 在详细信息页面显示的栏目及顺序
#. mandatory (**digitizing**) - 是否禁止栏目空置
#. edit (**digitizing**) - 数字化过程中允许编辑的栏目
#. html - 提供选择框、日期选择、勾选开关、文字栏、文件上传等工具；
#. auth - 管理与要素级用户权限设置；
#. operator - (**Search**) - 检索运算符；
#. helptext - 定义帮助提示文本；
#. category - 定义不同的类别，以选项卡的形式显示；
#. **save** 保存配置；
#. 配置将会被给与一个编号（configuration id）


.. image:: /images/screenshots/800x600/mapbender_configure_WFS_featureType_attribute_table.png
     :scale: 80 

对应用执行指定配置
================================================================================
　　通过 *WFS configuration -> Assign WFS conf to application* 可以对一个或多个应用执行指定配置。

#. 选择 WFS 服务；
#. 选择应用；
#. 将所需配置应用到 *GUI configuration list* 列表。

.. image:: /images/screenshots/800x600/mapbender_set_featureType_access.png
     :scale: 80 


建立 WFS 检索
================================================================================
　　在 *admin_en_services -> Edit application elements* 选择 *gazetteerWFS* 元素。该元素有 *wfsConfIdString* 属性。此处用于列举配置号（逗号分隔）。检索结果会依据此表的顺序显示。

.. image:: /images/screenshots/800x600/mapbender_wfsConfIdString.png
     :scale: 80 

　　查看检索的显示结果。本示例中，左侧面板用于检索 Mapbender 用户。检索可以基于空间范围或文本进行，并在列表中显示结果。点击一个条目，Mapbender 缩放至相应区域并显示具体信息。

.. image:: /images/screenshots/800x600/mapbender_WFS_search.png
     :scale: 100

建立 WFS 数字化功能
================================================================================
　　通过 gui_digitize 模板可以快速建立数字化应用。通过要素类型配置，可以连接 WMS 图层作为底图。在 *WMS application settings* 通过图层列表中的 *set WFS* 即可实现。选择正确的配置 ID 即可。

.. tip:: 　　请确保 WMS 图层连接的 WFS 配置支持“feature info”特性。Mapbender 需要由此确定是否发送 WFS getFeature 请求。

　　配置完成后，在界面右侧可以检索已有地理要素，并在“seach result”面板显示。对这些要素可以进行移动（move）、添加基点（add basepoint）、编辑属性（edit attributes）、线切分（split line）、线延伸（continue line）、合并多边形（merge polygons）等操作。也可以新建要素。

.. image:: /images/screenshots/800x600/mapbender_gui_digitize.png
     :scale: 80

其它练习
================================================================================

　　建议尝试以下操作：

#. 在应用中载入一些 WMS 服务，并通过 :menuselection:`Configure WMS access --> WMS application settings` 进行配置。

#. 创建一个应用 - 改变背景色，移动按钮，调整地图框尺寸 (element mapframe1)等。请使用 :menuselection:`Application Management --> Edit application elements` 进行创建。


其它信息
================================================================================

　　以上演示了 Mapbender 的一些基本功能。此外，Mapbender 还有大量值得尝试的特性。

Mapbender 项目主页

  http://www.mapbender.org/

使用教程

  http://www.mapbender.org/Tutorials

教学演示

  http://www.mapbender.org/Mapbender_Tutorial_en

Mapbender 项目页面（OSGeo）
	
	http://projects.mapbender.osgeo.org

开发社区

	http://www.mapbender.org/Community

