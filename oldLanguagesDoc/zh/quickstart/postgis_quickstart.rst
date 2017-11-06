:Author: Barry Rowlingson
:Author: Astrid Emde
:Author: Cameron Shorter
:Translator(Zh): Zhengfan Lin
:Version: OSGeo-Live 5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://postgis.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


********************************************************************************
PostGIS 快速入门
********************************************************************************

　　PostGIS 是 PostgreSQL 关系数据库的空间操作扩展。它为 PostgreSQL 提供了存储、查询和修改空间关系的能力。本文中 'PostgreSQL' 指代基本的关系数据库功能，而 'PostGIS' 指代扩展的空间操作特性。

客户端－服务器构架
================================================================================

　　PostgreSQL 同众多数据库产品一样，采用客户端－服务器构架。客户端向服务器发出请求并得到响应。这种机制同浏览器从网络服务器获取网页类似。在 PostgreSQL 中，请求以 SQL 语言发出，而响应多为从数据库提取的表单。

　　客户端与服务器可以部署在同一台设备上，即 PostgreSQL 可以在单一的计算机上使用。借由系统内部的 'loopback' 通信机制，数据库系统可以进行私密通讯。除非专门配置，外界是不能访问这些信息的。

　　本位介绍三种客户端：命令行， :doc:`Quantum GIS <../overview/qgis_overview>` ， ``pgAdmin`` 图形化数据库客户端。

创造具有空间信息处理能力的数据库
================================================================================

.. review comment: Suggest providing a screen grab (or 2) which shows how to select and open an xterm. Cameron

　　命令行客户端在终端模拟器（Terminal Emulator）中运行。在 Applications 菜单的 Accessories 中打开一个终端模拟器，将显示一个 Unix 风格的命令行界面。输入：

   psql -V

　　回车确认，将显示 PostgreSQL 版本号。

　　一个 PostgreSQL 服务器中，可以将不同的任务组织到不同的数据库。每个数据库独立运作，拥有专门的表单、显示、用户等。访问 PostgreSQL 数据库时将指定一个数据库。

　　服务器上数据库列表通过以下命令查询：

   psql -l

　　输出将罗列 Live 上配置的几个数据库。这里演示新建一个。

.. 注：::
   页面采用 Unix 的标准页面系统，空格 向下翻页， :kbd:`b` 向上， :kbd:`q` 退出， :kbd:`h` 显示帮助。

　　PostgreSQL 使用 ``createdb`` 工具创建数据库。这里建立的数据库应带有 PostGIS 的扩展功能，因此需要指定相应的模板。这里将新建数据库称为 ``demo`` 。命令为：

.. review comment: createdb is a utility programm not a unix command

::

   createdb -T template_postgis demo

.. 注：::
   借助 ``--help`` 选项一般可以获得帮助。

　　现在执行 ``psql -l`` 应当可以看到 ``demo`` 数据库。

　　也可以使用 SQL 语言创建 PostGIS 数据库。首先使用 ``dropdb`` 命令删除之前创建的数据库，然后使用 ``psql`` 命令开启 SQL 命令解析器：

:: 

  dropdb demo
  psql -d postgres
 
　　这样就连接到了一个通用的系统数据库 ``postgres`` 。输入 SQL 命令建立新数据库：

:: 

 postgres=# CREATE DATABASE demo TEMPLATE=template_postgis;

　　现在可以转换连接到新建的数据库。若重新连接时可以使用 ``psql -d demo`` 命令。但在 ``psql`` 系统内部也可以使用以下命令：

::

 postgres=# \c demo

.. 注：::
   按 :kbd:`CTRL` + :kbd:`C` 可以清空输入缓冲区。如果按下回车后界面还是跳出输入提示，系统可能在等待关闭引号等。此时可以执行清空操作。

　　一个信息页面将显示当前已连接 ``demo`` 数据库。输入 ``\dt`` 列出当前数据库内的表单，输出如下：

::

  demo=# \dt
               List of relations
   Schema |       Name       | Type  | Owner 
  --------+------------------+-------+-------
   public | geometry_columns | table | user
   public | spatial_ref_sys  | table | user
  (2 rows)

　　这两个表格是 PostGIS 默认的。其中 ``spatial_ref_sys`` 存储着合法的空间坐标系统。利用 SQL 查询查看：

::

  demo=# SELECT srid,auth_name,proj4text FROM spatial_ref_sys LIMIT 10;

   srid | auth_name |          proj4text                                            
  ------+-----------+--------------------------------------
   3819 | EPSG      | +proj=longlat +ellps=bessel +towgs...
   3821 | EPSG      | +proj=longlat +ellps=aust_SA +no_d...
   3824 | EPSG      | +proj=longlat +ellps=GRS80 +towgs8...
   3889 | EPSG      | +proj=longlat +ellps=GRS80 +towgs8...
   3906 | EPSG      | +proj=longlat +ellps=bessel +no_de...
   4001 | EPSG      | +proj=longlat +ellps=airy +no_defs...
   4002 | EPSG      | +proj=longlat +a=6377340.189 +b=63...
   4003 | EPSG      | +proj=longlat +ellps=aust_SA +no_d...
   4004 | EPSG      | +proj=longlat +ellps=bessel +no_de...
   4005 | EPSG      | +proj=longlat +a=6377492.018 +b=63...
  (10 rows)

　　以上显示确认了该数据库已经建立空间操作功能。数据库中的 ``geometry_columns`` 用于记录那些表格是有空间信息的。



手工建立空间数据表格
================================================================================

　　空间数据库已经建立，现在可以建立具有空间信息的表格。

　　首先建立一个常规的表格存储有关城市（cities）的信息。这个表格有两栏，一个是 ID 编号，一个是城市名：

::

  demo=# CREATE TABLE cities ( id int4, name varchar(50) );

　　现在添加一个空间栏用于存储城市的位置。习惯上这个栏目叫做 ``the_geom`` 。它记录了数据为什么类型（点、线、面）、有几维（这里是二维）以及空间坐标系统。此处使用 EPSG:4326 坐标系统：

::

  demo=# SELECT AddGeometryColumn ('cities', 'the_geom', 4326, 'POINT', 2);

　　完成后，查询 cities 表单应当显示这个新栏目。同时页面将显示当前表达没有记录（0 rows）。

::

  demo=# SELECT * from cities;
   id | name | the_geom 
  ----+------+----------
  (0 rows)

　　为添加记录，需要使用 SQL 命令。对于空间栏，使用 PostGIS 的 ``ST_GeomFromText`` 可以将文本转化为坐标与参考系号的记录：

::

  demo=# INSERT INTO cities (id, the_geom, name) VALUES (1,ST_GeomFromText('POINT(-0.1257 51.508)',4326),'London, England');
  demo=# INSERT INTO cities (id, the_geom, name) VALUES (2,ST_GeomFromText('POINT(-81.233 42.983)',4326),'London, Ontario');
  demo=# INSERT INTO cities (id, the_geom, name) VALUES (3,ST_GeomFromText('POINT(27.91162491 -33.01529)',4326),'East London,SA');

.. 注：:: 
   使用上下键列出以往命令并修改。

　　当然，这样的输入方式难以操作。其它方式可以更快的输入数据。就目前来说，表格内已经有了一些城市数据，可以先进行查询等操作。


简单查询
================================================================================

　　标准的 SQL 操作都可以用于 PostGIS 表单：

::

 demo=# SELECT * FROM cities;
  id |      name       |                      the_geom                      
 ----+-----------------+----------------------------------------------------
   1 | London, England | 0101000020E6100000BBB88D06F016C0BF1B2FDD2406C14940
   2 | London, Ontario | 0101000020E6100000F4FDD478E94E54C0E7FBA9F1D27D4540
   3 | East London,SA  | 0101000020E610000040AB064060E93B4059FAD005F58140C0
 (3 rows)

　　这里的坐标是无法阅读的 16 进制格式。要以 WKT 文本显示，使用 ST_AsText(the_geom) 或 ST_AsEwkt(the_geom) 函数。也可以使用 ST_X(the_geom) 和 ST_Y(the_geom) 显示一个维度的坐标：

::

 demo=# SELECT id, ST_AsText(the_geom), ST_AsEwkt(the_geom), ST_X(the_geom), ST_Y(the_geom) FROM cities;
  id |          st_astext           |               st_asewkt                |    st_x     |   st_y    
 ----+------------------------------+----------------------------------------+-------------+-----------
   1 | POINT(-0.1257 51.508)        | SRID=4326;POINT(-0.1257 51.508)        |     -0.1257 |    51.508
   2 | POINT(-81.233 42.983)        | SRID=4326;POINT(-81.233 42.983)        |     -81.233 |    42.983
   3 | POINT(27.91162491 -33.01529) | SRID=4326;POINT(27.91162491 -33.01529) | 27.91162491 | -33.01529
 (3 rows)



空间查询：
================================================================================

　　PostGIS 为 PostgreSQL 扩展了许多空间操作功能。以上已经涉及了转换空间坐标格式的 ST_GeomFromText 。多数空间操作以 ST（spatial type）开头，在 PostGIS 文档相应章节有罗列。这里回答一个具体的问题：以米为单位并假设地球是完美椭球，上面三个城市相互的距离是多少？

::

 demo=# SELECT p1.name,p2.name,ST_Distance_Sphere(p1.the_geom,p2.the_geom) FROM cities AS p1, cities AS p2 WHERE p1.id > p2.id;
       name       |      name       | st_distance_sphere 
 -----------------+-----------------+--------------------
  London, Ontario | London, England |   5875766.85191657
  East London,SA  | London, England |   9789646.96784908
  East London,SA  | London, Ontario |   13892160.9525778
  (3 rows)

　　输出显示了距离数据。注意 'WHERE' 部分防止了输出城市到自身的距离（0）或者两个城市不同排列的距离数据（London, England 到 London, Ontario 和 London, Ontario 到 London, England 的距离是一样的）。尝试取消 'WHERE' 并查看结果。

　　这里采取不同的椭球参数（椭球体名、半主轴长、扁率）计算：

::

  demo=# SELECT p1.name,p2.name,ST_Distance_Spheroid(
          p1.the_geom,p2.the_geom, 'SPHEROID["GRS_1980",6378137,298.257222]'
          ) 
         FROM cities AS p1, cities AS p2 WHERE p1.id > p2.id;
        name       |      name       | st_distance_spheroid 
  -----------------+-----------------+----------------------
   London, Ontario | London, England |     5892413.63776489
   East London,SA  | London, England |     9756842.65711931
   East London,SA  | London, Ontario |     13884149.4140698
  (3 rows)



制图
================================================================================

　　以 PostGIS 数据制图需要相应的客户端支持。包括 Quantum GIS、gvSIG、uDig 在内的多种客户端均可以。以下使用 Quantum GIS：

　　从 Desktop GIS 菜单启动 Quantum GIS 并在其 layer 菜单选择 ``Add PostGIS layers`` 。连接到 Natural Earth PostGIS 数据库的参数在 Connections 下拉菜单中有。这里可以定义和储存其它的配置。点击 ``Edit`` 可以查看具体参数。点击 ``Connect`` 连接：

.. image:: /images/projects/postgis/postgis_addlayers.png
  :scale: 50 %
  :alt: Connect to Natural Earth
  :align: center

　　系统将显示所有空间信息表供选择：

.. image:: /images/projects/postgis/postgis_listtables.png
  :scale: 50 %
  :alt: Natural Earth Layers
  :align: center

　　选择 lakes 湖泊表单并点击底部的 ``Add`` 添加。顶部的 ``Load`` 可以载入新的数据库连接配置。数据将被导入：

.. image:: /images/projects/postgis/postgis_lakesmap.png
  :scale: 50 %
  :alt: My First PostGIS layer
  :align: center

　　界面上显示出湖泊的分布。QGIS 并不理解湖泊一词的含义，也许不会自动使用蓝色。请查看其手册了解如何设置。这里缩放到加拿大一处著名的湖泊群。


自动创建空间数据表单
================================================================================

　　OSGeo Live 的多数桌面 GIS 系统都可以将 shp 等文件导入数据库。这里依然使用 QGIS 演示。

　　QGIS 中导入 shp 可以使用 PostGIS Manager 插件。在 Plugins 菜单选择 ``Fetch Plugins`` 导入最新的官方插件列表（需要网络连接）。找到 ``PostGIS Manager`` 点击 ``Install plugin`` 安装。

.. image:: /images/projects/postgis/postgis_getmanager.png
  :scale: 50 %
  :alt: Fetch PostGIS Manager Plugin
  :align: center

　　完成后，在 Plugin 菜单点击 PostGIS Manager 启动。也可以点击工具栏上大象与地球的图标。

　　该插件将连接 Natural Earth 数据库。若提示输入密码，留空即可。在开启的界面中，选择表单可以显示相应的信息。预览（Preview）选项卡可以显示地图预览。这里选择了 populated places 图层并缩放到一个小岛：

.. image:: /images/projects/postgis/postgis_managerpreview.png
  :scale: 50 %
  :alt: PostGIS Manager Preview
  :align: center

　　接下来使用 PostGIS Manager 将 shp 导入数据库。这里使用 R 统计扩展包含的 North Carolina sudden infant death syndrome (SIDS) 数据：

　　在 ``Data`` 菜单选择 ``Load data from shapefile`` 选项。点击 ``...`` 选中 R ``maptools`` 中的 ``sids.shp`` 。

.. image:: /images/projects/postgis/postgis_browsedata.png
  :scale: 50 %
  :alt: Find the shapefile
  :align: center

　　直接点击 ``Load`` 即可：

.. image:: /images/projects/postgis/postgis_importsids.png
  :scale: 50 %
  :alt: Import a shapefile
  :align: center

　　数据将被导入 PostGIS 。关闭 PostGIS Manager 回到主界面。

　　使用 'Add PostGIS Layer' 导入 SIDS 数据。略加调整，得到被卡洛莱娜州新生儿猝死率分布图：

.. image:: /images/projects/postgis/postgis_sidsmap.png
  :scale: 50 %
  :alt: SIDS data mapped
  :align: center


pgAdmin III
================================================================================

　　通过 Databases 菜单下的 ``pgAdmin III`` 可以进行非空间操作。该客户端是 PostgreSQL 的官方产品，使用 SQL 语句操作。

.. image:: /images/projects/postgis/postgis_adminscreen1.png
  :scale: 50 %
  :alt: pgAdmin III
  :align: center


.. image:: /images/projects/postgis/postgis_adminscreen2.png
  :scale: 50 %
  :alt: pgAdmin III
  :align: center


进一步尝试
================================================================================

　　可以尝试其它一些操作：

#. 尝试 ``st_buffer(the_geom)`` 、 ``st_transform(the_geom,25831)`` 、 ``x(the_geom)`` 等空间操作，相关文档位于 http://postgis.org/documentation/ 。

#. 在命令行使用 ``pgsql2shp`` 将表单导出到 shp 。

#. 在命令行使用 ``ogr2ogr`` 导入导出数据。


其它信息
================================================================================

　　以下网站包含了有关 PostGIS 的大量信息：

PostGIS 主页

 http://postgis.org

PostGIS 文档

 http://postgis.org/documentation/

