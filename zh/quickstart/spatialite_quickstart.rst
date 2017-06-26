:Author: OSGeo-Live
:Author: Micha Silver
:Reviewer: Cameron Shorter, Jirotech
:Trnaslator: Zhengfan Lin
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)


.. TBD: Cameron Review
  We need to explain in words what we aim to achieve by each 
  step. Eg: "Lets find all Villas which include have a geometry and ..."
  This will require an extra sentence for most steps.


.. image:: /images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right

********************************************************************************
SpatiaLite 快速入门
********************************************************************************

　　SpatiaLite 是一套具有空间数据功能的 SQLite 数据库系统。

.. TBD: Cameron Review Comment:
  Please check my rewording below, then remove this comment.
  SQLite is a Database Management System (DBMS) which is simple, robust, easy to use and very lightweight. Each SQLite database is simply a file. You can freely copy it, compress it, and port it between Windows, Linux, MacOs etc.

　　本文演示如何通过图形界面或命令行打开一个 SpatiaLite 数据库并执行简单查询。

.. contents:: Contents
  
使用 SpatiaLite-GUI 图形界面
================================================================================

　　SpatiaLite-GUI 为浏览和维护空间数据库提供了一套图形界面，方便使用鼠标点击生成 SQL 命令以方便地管理表单和数据。

　　首先打开一个 SpatiaLite 数据库并查看表单内的字段：

* 通过 :menuselection:`Geospatial->Databases->Spatialite GUI` 打开 SpatiaLite-GUI 。

.. TBD: Cameron Review Comment:
  We should have continuity in our examples. Ie, Use the same scenario for
  all spaital-gui steps. Use the same table, where each step builds upon the
  previous step. I'd suggest our examples should aim to have a GIS focus to
  them too.

* 选择 :menuselection:`File->Connecting an existing SQLite DB`
* 在 :file:`/home/user/data/spatialite` 目录选择 :file:`trento.sqlite`

  .. image:: /images/screenshots/800x600/spatialite-gui-trento.png
    :scale: 70 %

.. TBD: Cameron Review Comment:
  As above, lets keep the table consistant, to maybe MunicipalHalls

* 在 MunicipalHallsView 右击选择 "Show Columns" 显示字段。

  .. image:: /images/screenshots/800x600/spatialite-gui-columns.png
      :scale: 70 %

* 界面将分为三个部分：

  #. 左侧显示数据库结构，包含表单、字段等信息。右击一个栏目可以选择一些基本的数据库操作。

  #. 右上方的面板显示了所选操作的 SQL 命令。可以通过编辑此处的文字输入自定义命令。

  #. 右下角面板显示所执行的 SQL 命令的结果。

* 右击 MunicipalHalls 表单并选择 "Edit table rows" 。注意右上角即时生成的 SQL 命令以及右下角显示的结果：

  ::

    SELECT ROWID, "PK_UID", "AREA", "PERIMETER", "COMU", "Geometry"
        FROM "MunicipalHalls"
        ORDER BY ROWID

.. TBD: Cameron Review Comment:
  As above, lets try to keep consistancy. I suggest continue using the
  MunicipalHalls table, but how about constrain by a GIS query, such as
  a Bounding Box query instead.

* 可以调整该 SQL 命令，从而只从 MunicipalHallsView 的 NOME_PROV 中包含 "BRESCIA" 的记录获取 NOME 。在右上角 SQL 面板中：

  ::

   SELECT NOME, X(Geometry) AS Longitude, Y(Geometry) AS Latitude
        FROM "MunicipalHallsView"
        WHERE NOME_PROV LIKE "BRESCIA";

　　点击 "Execute SQL" 执行，结果将显示在右下角。

  .. image:: /images/screenshots/800x600/spatialite-gui-select.png
      :scale: 70 %


使用 SpatiaLite-GIS
================================================================================

.. TBD: Cameron Review Comment:
  I'm mildly in favour of removing this spatialite-gis section.
  Should we be recommending people to use QGIS instead?
  I'd suggest that the "Things to try" section should suggest trying
  spatialite-gis

　　SpatiaLite-GIS 是浏览空间记录图层的一个简单客户端。

.. TBD: Cameron Review Comment:
  In OSGeo-Livebeta1, spatialite-gis is not selectable from the OSGeo-Live menu.
  It needs to be selected from the command line.
  If this section is included, it requires a number of screen shots.

* 从桌面 Desktop GIS 菜单选择 SpatiaLite-GIS 。
* 点击 "Connecting existing SQLite DB" 连接至 /home/user/data/spatialite/trento.sqlite 。

　　显示的地图为意大利 Trento 省。

   - 右击 Highways 高速公路图层并选择 :menuselection:`Hide` 隐藏。
   - 右击 LocalCouncilsTrento 地方议会图层点击 :menuselection:`Layer Configuration->Classify` 并选择 "Shape Area" 。设置 4 Classes（分组）并设定最小（Min）和最大（Max）值色块并选择颜色。这样就得到了 Trento 的分色显示地图。
   - 右击 LocalCouncils 并选择 :menuselection:`Layer configuration->Graphics` 可以编辑 Border Graphics 改变边界线颜色。
   - 将地图放大到一部分并右击 PopulatedPlaces 图层选择 :menuselection:`Indentify on` 。点击任意一个居民点图标可以显示其属性信息。


从命令行运行
================================================================================

　　需要自动操作或者使用脚本的用户将会更希望使用命令行界面。本例演示从命令行读取一个 shp 文件并搜索一条道路附近的学校。

* 从桌面选择 :menuselection:`Applications -> Accessories -> Terminal Emulator` 可以开启命令行界面。

* 以 **spatialite** 打开示例数据库：

  ::

   spatialite /home/user/data/spatialite/trento.sqlite

* 基本命令：

  ::

   .help（帮助信息）
   .tables（显示表单）
   .quit（退出）

.. TBD: Cameron Review
  For the information of the author:
  I've removed the "Sample spatial queries". While useful, a quickstart
  should just focus on the specific example being presented.
  This comment can be removed once read.

* 创建一个数据库并读取 shp：
  
   - 创建一个新的数据库并从 north_carolina 数据集读取两个 shp 文件。

     ::

      user@osgeo-6:~$ spatialite test.sqlite
      SpatiaLite version ..: 3.1.0-RC2      Supported Extensions:
           - 'VirtualShape'        [direct Shapefile access]
           - 'VirtualDbf'          [direct DBF access]
           - 'VirtualXL'           [direct XLS access]
           - 'VirtualText'         [direct CSV/TXT access]
           - 'VirtualNetwork'      [Dijkstra shortest path]
           - 'RTree'               [Spatial Index - R*Tree]
           - 'MbrCache'            [Spatial Index - MBR cache]
           - 'VirtualSpatialIndex' [R*Tree metahandler]
           - 'VirtualFDO'          [FDO-OGR interoperability]
           - 'SpatiaLite'          [Spatial SQL - OGC]
      PROJ.4 version ......: Rel. 4.8.0, 6 March 2012
      GEOS version ........: 3.3.3-CAPI-1.7.4
      SQLite version ......: 3.7.9
      Enter ".help" for instructions
      spatialite>
      spatialite> .loadshp data/north_carolina/shape/schools_wake schools utf-8 3358
      spatialite> .loadshp data/north_carolina/shape/roadsmajor roads utf-8 3358


   - 在 .loadshp 命令中第一项为目标文件名（无 .shp 扩展名），第二项为目标表单，然后是字符编码和投影系统的 EPSG 代码。

   - 查询 42 高速公路周围的学校：

     ::
 
      spatialite> SELECT s.NAMESHORT, s.ADDRNUMBER, s.ADDRROOT
           ...> FROM schools AS s, roads AS r
           ...> WHERE r.ROAD_NAME = "NC-42" AND
           ...> ST_Distance(s.Geometry, r.Geometry) < 1000;
      FUQUAY-VARINA|6600|Johnson Pond Rd
      WILLOW SPRINGS|6800|Dwight Rowland Rd
      FUQUAY-VARINA|109|N Ennis St
      LINCOLN HEIGHTS|307|Bridge St

   - 输出：

   - 最后，我们可以对逗号分隔的 "schools_rt42.txt" 文本文件作查询：

     ::

      spatialite> .mode csv
      spatialite> .output "schools_rt42.txt"
      spatialite> SELECT s.NAMESHORT, s.ADDRNUMBER, s.ADDRROOT
          ...> FROM schools AS s, roads AS r
          ...> WHERE r.ROAD_NAME = "NC-42" AND
          ...> ST_Distance(s.Geometry, r.Geometry) < 1000;
      spatialite>.q
 


其它尝试
================================================================================

　　您可以继续尝试其它操作：

* 使用 SpatiaLite-GUI 浏览几何对象
* 在 QGIS 打开和编辑 SpatiaLite 图层

其它信息
================================================================================

　　您可以访问 `SpatiaLite 项目主页`_ 获取更多的信息。

.. _`SpatiaLite 项目主页`: https://www.gaia-gis.it/fossil/libspatialite/index

　　这份 `Spatialite Cookbook`_ 提供了帮助您学习 SpatiaLite 的许多信息。

.. _`Spatialite cookbook`: http://www.gaia-gis.it/gaia-sins/spatialite-cookbook/index.html

