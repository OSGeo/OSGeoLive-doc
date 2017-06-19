:Author: Daniel Kastl
:Translator(Zh): Zhengfan Lin
:Version: OSGeo-Live 5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
pgRouting 快速入门
********************************************************************************

　　pgRouting 是 :doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ 数据库的路径功能插件。

　　本文叙述如何使用命令行打开一个数据库并对示例数据进行基本的最短路径查询。


运行 pgRouting
================================================================================

* 在 :menuselection:`Applications --> Accessories --> Terminal` 终端连接 ``pgrouting`` 数据库：

::

	psql -U user pgrouting

* 输入 :command:`\\d` 命令显示数据库中的表：

::

			      List of relations
	 Schema |        Name         |   Type   |  Owner   
	--------+---------------------+----------+----------
	 public | classes         	| table	| user
	 public | geography_columns   | view 	| user
	 public | geometry_columns	| table	| user
	 public | nodes           	| table	| user
	 public | spatial_ref_sys 	| table	| user
	 public | types           	| table	| user
	 public | vertices_tmp    	| table	| user
	 public | vertices_tmp_id_seq | sequence | user
	 public | ways            	| table	| user
	(9 行)

* 执行 Dijkstra 最短距离查询：

::

	SELECT * FROM shortest_path('
			SELECT gid as id, 
				 source::integer, 
				 target::integer, 
				 length::double precision as cost 
				FROM ways', 
			100, 600, false, false); 

::

	 vertex_id | edge_id |       cost    	 
	-----------+---------+---------------------
	       100 |    1457 |  0.0152981335887719
	       554 |     543 |  0.0658986376594475
	       553 |     542 |  0.0720522950545032
	       ... |     ... |  ...
	      1803 |    1902 |  0.1000754339802650
	       600 |      -1 |                   0
    (77 行)

* 另一种输出格式：

::

	SELECT gid, AsText(the_geom) AS the_geom 
		FROM dijkstra_sp('ways', 100, 600);
	
::
	
	  gid   |                              the_geom      
	--------+---------------------------------------------------------------
	    533 | MULTILINESTRING((-105.0205242 39.7613979,-105.0205115 39.7620158))
	    534 | MULTILINESTRING((-105.0205115 39.7620158,-105.0205151 39.7632155))
	    535 | MULTILINESTRING((-105.0205151 39.7632155,-105.0205098 39.764433))
		... | ...
	   9395 | MULTILINESTRING((-104.9921535 39.7209342,-104.9921516 39.722527))
	   9400 | MULTILINESTRING((-104.9921793 39.7147876,-104.9923595 39.714781))
	(76 行)

* 输入 :command:`\\q` 离开 PostgreSQL 界面。


其它信息
================================================================================

* **pgRouting 网站** - http://www.pgrouting.org 显示了更多有关该项目的信息。
* **Live 讨论会专题** - 在 Live DVD 上包含了 FOSS4G 2010 pgRouting 讨论会 `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoExt"` 的介绍，文件位于 :file:`/usr/share/pgrouting/workshop/` 。


