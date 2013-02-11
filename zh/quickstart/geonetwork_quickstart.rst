:Author: GeoNetwork Community
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.0 Final
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
:Thanks: GeoNetwork Community

.. |GN| replace:: GeoNetwork

.. figure:: ../../images/project_logos/logo-GeoNetwork.png
  :alt: project logo
  :align: right

********************************************************************************
GeoNetwork 快速入门文档
********************************************************************************

　　 |GN| 是一款标准兼容的分布式地理信息数据管理系统。它通过元数据描述为用户提供对多种不同数据源的数据获取服务。

　　除了 |GN| 的启动运行外，本文档叙述了：

- 在 |GN| 中搜索地理数据的多种方式
- 根据搜索结果下载和显示数据的操作
- 用户权限管理系统

　　更详细的文档位于 http://localhost:8880/geonetwork/docs/eng/users/index.html 。你也可以在 |GN| 示例页面点击“Help”链接前往。

启动 |GN|
--------------------------------------------------------------------------------

- 点击“Start GeoNetwork”按钮
- |GN| 将稍候启动
- 前往 |GN| 示例主页 http://localhost:8880/geonetwork 。该页面截图如下：

.. figure:: ../../images/screenshots/800x600/geonetwork-firstviews.png

- 作为 |GN| 的入门示例，这里读取一份简单的元数据记录。请将用户名/密码“admin” 输入右上角表格，点击“Login”进入 |GN| 。

.. figure:: ../../images/screenshots/800x600/geonetwork-login.png

- 在页面顶部将出现 *Administration* 链接。点击进入。

.. figure:: ../../images/screenshots/800x600/geonetwork-administration-banner.png

- 在 *Administration* 页面中，底部的“Add sample metadata”可以用于载入 Live 预装的元数据。

.. figure:: ../../images/screenshots/800x600/geonetwork-addsampledatabutton.png

- 完成读取后退回主页。此时页面应当显示如下：

.. figure:: ../../images/screenshots/800x600/geonetwork-returntohomepage.png

检索
--------------------------------------------------------------------------------

　　 |GN| 提供多种方式进行元数据编录的检索。本文档包含常用的默认文字检索、高级检索和分类检索。无论采用哪一种方式，检索的结果取决于元数据资源和检索用户的权限。（详见后述）

.. note:: 
	对于 |GN| 而言，数据源可以包括各类数据集、地图服务、表格、文档等任何能够进行元数据记录和链接的信息。

默认检索
--------------------------------------------------------------------------------

　　默认检索功能提供了对元数据集中所有文本内容的匹配，包括元数据中的文本记录和地理位置的文本表述。

　　**默认自由检索（Free Search）** 在 *What?* 一览键入检索词即可执行。任何文本均可。双引号（半角模式输入）用于强制组合一组检索词。

　　检索词和逻辑运算符（and, or, not）默认均不对大小写敏感。

.. figure:: ../../images/screenshots/800x600/geonetwork-what.png

  *默认自由检索栏*

　　**地理位置检索（Geographic Search）** 对于该功能，有两种选择方式可以执行。

　　通过预定义的 **region** 区域菜单选择；

.. figure:: ../../images/screenshots/800x600/geonetwork-where1.png
  
  *区域检索框*

　　你也可以通过绘制区域检索框限制检索的空间范围。点击地图显示右上角的按钮即可拖拽检索范围。

.. figure:: ../../images/screenshots/800x600/geonetwork-where2.png

  *交互式目标区选择*

　　**执行检索** 文本和区域检索可以组合以缩小结果的范围，点击 *Search* 按钮即可执行和显示检索。

.. figure:: ../../images/screenshots/800x600/geonetwork-search_button.png

  *检索按钮*

分类检索
--------------------------------------------------------------------------------

　　在 |GN| 系统中，通过 **Category** 类别选择可以有效地缩小检索范围。演示中配置了预定义的一套分类，包括 **Applications**，**Audio/Video**，**Case study and best practises**，**Conference proceedings**，**Datasets**，**Directories**，**Interactive resources**，**Maps and graphics**，**Other information resources** 和 **Photo** 。

　　若需要在地图数据中检索，选择 **Maps and Graphics** 即可。系统将显示可用的地图数据源。点击 **Metadata** 可显示更详细的元数据信息。

.. figure:: ../../images/screenshots/800x600/geonetwork-Categories.png

  *分类检索*

高级检索
--------------------------------------------------------------------------------

　　高级检索（Advanced Search）提供了更细致的条件组合，对数据源表现何地、何时、何种对象等各个方面进行限制。

.. figure:: ../../images/screenshots/800x600/geonetwork-advanced_search1.png

  *高级检索*

　　选择主页中的“Advanced Search”可以进入高级检索。

.. figure:: ../../images/screenshots/800x600/geonetwork-advanced_search_button.png

  *高级检索选项页面*

　　在 **WHAT?** 部分可以通过文本匹配筛选数据。与前述简单匹配不同，高级检索支持对标题、摘要等各个项目进行专门的限定，并可以选择是否模糊匹配。

- 需要对 **Title（标题）、Abstract（摘要）、Free Text（任意字段）、Keyword（关键字）** 等进行检索时，只需在相应的栏目中键入检索词或检索式。对于无需使用的字段，保留空白即可。

- 检索的 **模糊匹配程度（accuracy）** 可以自由设置。1.0 表示精确匹配，其它小于 1 的数字表示模糊匹配，0.2 模糊程度最高的方案。

.. figure:: ../../images/screenshots/800x600/geonetwork-advanced_search_what.png

  *“What”文本检索条件区*

　　在 **WHERE?** 部分，你可以控制检索的空间范围。同简单空间检索一样，此处可以选择预定义的范围或绘制选择框，但也可以输入精确坐标。

- 框选设定 **自定义目标区** 时，用地图窗口左下角的按钮拖拽选择区域即可。

- 若需输入 **精确坐标** ，在 lat/long 窗口输入相应的经纬度即可。坐标的小数位数可以根据需要任意选取。

- 若需套用预定义区域的坐标，从 **predefined region** 下拉菜单中选择。

.. figure:: ../../images/screenshots/800x600/geonetwork-advanced_search_where.png

  *“Where”区域检索条件区*

　　空间检索中，**Spatial search type** 可以选择 **is（等同）**、**overlaps**（叠盖）、**encloses（包围）**、**is fully outside of（位于外部）**。这一设置决定了选择区域作用在备选数据集上的方法。例如：

- 若设置为 **Spatial search type** *is* “Country”，则只有“Country（国家）”这一类别的对象可以选中。而包含在“Country”一集某些数据范围之内的其它数据集，例如“City（城市）”，并不会被选中。

- 若设置为 **Spatial search type** *overlaps* “Country”，则所有完全叠压选择区域的数据集都可以选中，这包括所选“Country”对象的领国、该国所在大陆以及全球数据集。

- 若设置为 **Spatial search type** *encloses* “Country”，则在所选“Country”对象范围之内的一切数据集，例如其内部的城市，均可以选择。

- 同样的，若设置为 **Spatial search type** *is* *fully outside of*，则任何与所选“Country”对象有部分或全部交叠的数据集均不能选择。

　　在 **WHEN?** 部分可以设置检索的时间范围，将数据集的生成或发布时间限制在一定的时间段内。

- 点击 **From – To** 输入框右侧的日历图标可以选定起至时间。使用 **>** 和 **>>** 按钮可以选择年份和月份，点击下方的数字选择具体日期。完整的日期会以 YY-MM-DD（年-月-日）的格式填入。

- 右侧的 **x** 可以清除所在一行的选项。清除所有时间范围后，页面会自动选择 **Any（任何时间）** ，此时执行检索不会有数据集时间限制。

.. figure:: ../../images/screenshots/800x600/geonetwork-advanced_search_when.png

  *时间范围选择面板*

　　同时，你也可以通过限制数据源、数据编录和数据格式缩小检索范围。

- 若要将检索限制在特定的数据编录中，在 **Catalogue** 菜单选择所需的对象使之高亮。**Any** 选项可以清除选择。

- 对于选择特定分类的数据，在 **Category** 选择所需的部分即可。**Any** 选项可以清除选择。

- 可以依据 **Digital 数字地图** 或 **Hard Copy 扫描纸质图** 限定搜索。在需要的选项前打钩。

　　在 *Hits Per Page* 一栏可以限定每页显示的条目数量。默认为 10 个。

- 点击 **Search 检索** 按钮执行检索。

.. figure:: ../../images/screenshots/800x600/geonetwork-advanced_search_morerest.png

  *高级检索其它设置项*

检索结果页面
--------------------------------------------------------------------------------

　　检索结果页面显示了满足条件的所有条目的元数据。每个条目都显示了标题、摘要和关键词等。取决于各个条目上的有效权限，每个条目最多可以显示四栏信息。

.. figure:: ../../images/screenshots/800x600/geonetwork-search_output2.png

    *检索结果页面*

#. **Metadata 元数据**：元数据栏显示了包括引用信息、数据所有者、时空范围与数据类型等在内的各种信息，并包含了其支持网站的链接。

#. **Download 下载**：在有相应权限的情况下，显示该按钮表示可以下载数据。点击该按钮或根据元数据访问相应的链接即可。

.. figure:: ../../images/screenshots/800x600/geonetwork-search_output1.png

        *检索结果的一个条目*

.. figure:: ../../images/screenshots/800x600/geonetwork-download.png

        *一个数据源可用的服务*

#. **Interactive Map 交互式数据浏览图**：这项服务在可用时会对数据覆盖进行交互式的地图显示。其内容默认显示在上部的地图窗口。点击 **Show Map** 显示视图。

.. figure:: ../../images/screenshots/800x600/geonetwork-interactive_map.png
    
        *交互式数据浏览图*

#. **Graphic Overviews 预览图**：数据集所带有的预览图有助于了解数据集的内容，尤其是在交互式浏览试图不可用的条件下。点击预览图可以放大。

.. figure:: ../../images/screenshots/800x600/geonetwork-thumbnail.png
    
        *放大显示的预览图*

用户组、角色和权限
--------------------------------------------------------------------------------

　　 |GN| 使用 *Privileges 权限*、*Roles 角色* 和 *User groups 用户组* 来管理对数据的访问。

　　对于开放的数据集，任何用户均可以通过 |GN| 访问。对于私有数据集或默写高级功能，需要具有相应权限的用户。该用户登录信息一般由 |GN| 系统管理员提供。

　　在主页输入用户名（username）和密码（password）并点击“login”即可以相应身份登录系统。

.. figure:: ../../images/screenshots/800x600/geonetwork-login.png

    *Login 登录*

**权限** 数据集的权限设置决定了特定的用户所能读取的元数据和是否能够下载或交互式地浏览其内容。

**角色** 具有 *Editor 编辑* 角色的用户可以创建、导入和编辑修改元数据，也可以上传和调整数据服务的配置。

**用户组** 每个用户都属于一个特定的用户组，该设定决定了用户能够进行数据浏览的范围。

更多信息
--------------------------------------------------------------------------------

　　点击页面顶部的 'Help' 或访问 http://localhost:8880/geonetwork/docs/eng/users/index.html 可以阅读进一步的说明。

