:Author: Daniel Kastl
:Author: Regina Obe
:Version: osgeo-live10.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
pgRouting クイックスタート
********************************************************************************

pgRouting は、経路探索と他のネットワーク解析機能を :doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ データベースに追加する拡張機能です。

このクイックスタートでは、PostgreSQL データベースで pgrouting を有効化し、 osm2pgrouting でデータを読み込み、サンプルのテストデータに対して基本的な最短経路探索クエリを実行する方法について記述しています。

データベースで pgRouting を有効化する
===============================================================================
このサンプルでは、 `city_routing` というデータベースを作成し、そのデータベースで pgRouting を有効化します。

* メニューから :menuselection:`Applications --> Accessories --> Terminal` を開き、 psql を起動します:
    (psql は、PostgreSQL にパッケージされているコマンドラインツールです。)

::

  	psql

psql のプロンプトで、以下をタイプします:

::

	CREATE DATABASE city_routing;
	\connect city_routing;
	CREATE EXTENSION postgis;
	CREATE EXTENSION pgrouting;


もし PostgreSQL 9.6+ を実行している場合は、 postgis の行はスキップ可能で、 :code:`CREATE EXTENSION pgrouting CASCADE;` を実行します。

インストールの確認は、以下の実行により可能です:

::

	SELECT  * FROM pgr_version();

::

	 version |       tag       |  hash   | branch | boost
	---------+-----------------+---------+--------+--------
	 2.2.2   | pgrouting-2.2.2 | 7141904 | master | 1.59.0
	(1 row)

このクイックスタートのサンプルを使用するためには、バージョンは 2.1.0 かそれ以上である必要があります。

osm2pgrouting での OSM データの読み込み
===========================================================================
osm2pgrouting は .osm ファイルを pgRouting の互換フォーマットに読み込むコマンドラインツールです。
ここでは、どのように osm2pgrouting バージョン 2.1.0+ を使用するかを説明します。

最初に、インストールされている osm2pgrouting のバージョンの確認を行います。 2.1 かそれ以上である必要があります。

::

	osm2pgrouting --version

出力が表示されます:

::

	This is osm2pgrouting Version 2.1

では、 osm ファイルからデータを読み込みます。

::

	 cd 
	 bzcat data/osm/feature_city.osm.bz2 > /tmp/feature_city.osm
	 osm2pgrouting -f /tmp/feature_city.osm -h localhost -U user -d city_routing -p 5432 -W user --conf=/usr/share/osm2pgrouting/mapconfig_for_cars.xml
	 rm /tmp/feature_city.osm


出力は以下のような形となるはずです:

::

	Opening data file: feature_city.osm
	    Parsing data

	Spliting ways

	Dropping tables...
	NOTICE:  table "ways" does not exist, skipping
	NOTICE:  table "ways_vertices_pgr" does not exist, skipping
	NOTICE:  table "relations_ways" does not exist, skipping
	Creating tables...
	Creating 'ways_vertices_pgr': OK
	   Adding Geometry: Creating 'ways': OK
	   Adding Geometry: Creating 'relations_ways': OK
	Creating 'osm_nodes': OK
	   Adding Geometry: Creating 'osm_relations': OK
	Creating 'osm_way_tags': OK
	Creating 'osm_way_types': OK
	Creating 'osm_way_classes': OK
	Adding auxiliary tables to database...
	    Processing 1 way types:  Inserted 1 way types
	    Processing way's classes:  Inserted 16 way's classes
	    Processing way's relations:  Inserted: 83874way's relations
	    Processing way's tags:  Inserted 10455 way's tags
	    Processing 10455 ways:
	Vertices inserted 9165    Ways inserted: 10455
	Creating topology...
	#########################
	size of streets: 4904
	size of splitted ways : 10455
	Execution started at: Tue Jun 21 17:57:57 2016
	Execution ended at:   Tue Jun 21 17:58:02 2016
	Elapsed time: 5.084 Seconds.
	User CPU time: -> 5.084 seconds
	#########################

pgRouting を実行する
==============================================================================

* メニューから、 :menuselection:`Applications --> Accessories --> Terminal` を開き、 ``city_routing`` データベースに接続します。

::

	psql -U postgres city_routing

* :command:`\\d` とタイプすると、利用可能なテーブルの一覧が表示されます。

::

	                    List of relations
	 Schema |           Name           |   Type   |  Owner
	--------+--------------------------+----------+----------
	 public | geography_columns        | view     | postgres
	 public | geometry_columns         | view     | postgres
	 public | osm_nodes                | table    | postgres
	 public | osm_nodes_node_id_seq    | sequence | postgres
	 public | osm_relations            | table    | postgres
	 public | osm_way_classes          | table    | postgres
	 public | osm_way_tags             | table    | postgres
	 public | osm_way_types            | table    | postgres
	 public | raster_columns           | view     | postgres
	 public | raster_overviews         | view     | postgres
	 public | relations_ways           | table    | postgres
	 public | spatial_ref_sys          | table    | postgres
	 public | ways                     | table    | postgres
	 public | ways_gid_seq             | sequence | postgres
	 public | ways_vertices_pgr        | table    | postgres
	 public | ways_vertices_pgr_id_seq | sequence | postgres
	(16 rows)


* ダイクストラ法による最短経路探索関数を、無方向での移動を想定して実行します。

::

	SELECT seq, node, edge, cost 
		FROM pgr_dijkstra('
			SELECT gid as id, source, target, 
				length as cost FROM ways', 
			100, 600, false
		);

::

	 seq | node | edge  |         cost
	-----+------+-------+-----------------------
	   1 |  100 |   148 |  0.000106201177015572
	   2 | 3603 |  4118 |  0.000171096610136435
	   3 | 8284 |  9429 |  0.000101401380664492
	 ... |  ... |   ... |                 ...
	  37 | 3461 |  3964 |   0.00121559903339768
	  38 | 1761 |  2013 |   0.00307553090376563
	  39 | 5981 |  6801 |  0.000158813884783759
	  40 |  600 |    -1 |                     0
	(40 rows)


pgr_dijkstra はさらにノードとエッジに bigint 型を使用可能で、osm2pgrouting は同様に osm_id を読み込みますので、
自動生成された source と target ノードの代わりに、osm_id を使用できるかもしれません。
ノードと一致する osm_id を検索するために、以下のクエリを使用してみます。


::

	SELECT id, osm_id 
		FROM ways_vertices_pgr where id IN( 100, 600);

これは以下を出力します:

::

	 id  |   osm_id
	-----+------------
	 100 | 1896068597
	 600 |   31369798
	(2 rows)


osm_id を使用するために、
以下のクエリに変更してみます:

::

	SELECT seq, node, edge, cost 
	FROM pgr_dijkstra('
		SELECT gid as id, source_osm AS source, target_osm AS target, 
			length as cost FROM ways', 
		1896068597, 31369798, false
	);

注意: SQL ステートメントは、常にフィールド名に `id, source, target, 及び cost` を持つ必要があります。
上記では、フィールドに `source_osm` と `target_osm` を使用しているので、それらのエイリアスを作成することで、
pgr_dijkstra のクエリカラムが source と target になります。

出力は:

::

	 seq |    node    | edge  |         cost
	-----+------------+-------+-----------------------
	   1 | 1896068597 |   148 |  0.000106201177015572
	   2 |  471372588 |  4118 |  0.000171096610136435
	   3 |  471372583 |  9429 |  0.000101401380664492
	   :
	   :
	  ...|  ...       |   ... |                 ...
	  37 | 1370351630 |  3964 |   0.00121559903339768
	  38 |   30812815 |  2013 |   0.00307553090376563
	  39 | 3214028631 |  6801 |  0.000158813884783759
	  40 |   31369798 |    -1 |                     0
	(40 rows)

まだ自動生成されたエッジの id を使用しているため、エッジ番号は先述のクエリと同じとなりますが、
ノードは osm ノード id となります。

自動生成された id の代わりに osm_id を使用する利点は、異なるデータベース間でも、
それらが共通の osm id を共有している場合は結果に一貫性が得られることです。
pgRouting の全ての関数は、 bigint 型を使用できるよう変更されていませんので、 osm_id を全ての関数で使用することはできません。




* 経路のジオメトリを出力するために、結果を道路のジオメトリにリンクさせます。

::

	SELECT seq, edge, rpad(b.the_geom::text,60,' ') AS "the_geom (truncated)" 
		FROM pgr_dijkstra('
			SELECT gid as id, source, target, 
				length as cost FROM ways', 
			100, 600, false
		) a INNER JOIN ways b ON (a.edge = b.gid) ORDER BY seq;


::
	
	 seq | edge  |                     the_geom (truncated)
	-----+-------+--------------------------------------------------------------
	   1 |   148 | 0102000020E61000000200000035BEE5A03A641C40BC98C1734A5E4940F4
	   2 |  4118 | 0102000020E610000002000000F4CE577F3A641C402B5CA0EE4D5E494058
	   3 |  9429 | 0102000020E61000000200000058BCA2A53C641C40C3503D88535E4940F5
	 ... |   ... |                                                          ...
	  36 |  6538 | 0102000020E6100000020000002999F7938C6F1C409DD843FB585D49405C
	  37 |  3964 | 0102000020E6100000020000005CAE7E6C926F1C40E55C2FF2575D494088
	  38 |  2013 | 0102000020E6100000020000008849B89047701C406DF7BC2C375D4940E8
	  39 |  6801 | 0102000020E610000002000000E82E89B322721C40A85890C1E55C494059
	(39 rows)


* 経路は :doc:`OpenJump <../overview/openjump_overview>` や
    :doc:`QGIS <../overview/qgis_overview>` DbManager プラグインなどの
    グラフィカルツールを使用して表示することができます。

QGIS の DbManager プラグインを使用するには、QGIS を起動し、メニューから ``Database -> DB Manager -> DB Manager`` を選択します。
SQL Window アイコンを選択し、上記の pgRouting クエリをカット&ペーストします。

* ダイクストラによる最短経路探索を、方向を考慮して実行します。

先述のサンプルでは、道路がどちらの方向にも同じコストであると想定しました。
一方通行や車線のいずれかで異なる速度規制がある場合は、道路の一方向のコストは、他の方向のコストと
異なるかもしれません。
これらの場合、 `reverse_cost` カラムを、クエリに追加する必要があります。

::

	SELECT seq, node, edge, cost 
		FROM pgr_dijkstra('
			SELECT gid as id, source, target, 
				cost_s As cost, reverse_cost_s AS reverse_cost FROM ways', 
			100, 600, true
		);


* :command:`\\q` コマンドで PostgreSQL シェルを終了します。


次のステップ
================================================================================

* **pgRouting ウェブサイト** - プロジェクトのウェブサイト http://www.pgrouting.org で、pgRouting についてさらに学ぶことができます。
* **pgRouting ドキュメント** - 最新のドキュメントは http://docs.pgrouting.org にあります。
* **pgRouting ワークショップ** - ワークショップ `"FOSS4G routing with pgRouting tools and OpenStreetMap road data"` が http://workshop.pgrouting.org で利用可能です。
* **osm2pgRouting でのデータ読み込み** - https://github.com/pgRouting/osm2pgrouting/wiki/Documentation-for-osm2pgrouting-v2.1
* **QGIS pgRoutingLayer プラグイン** - https://plugins.qgis.org/plugins/pgRoutingLayer/ は pgRouting 関数のための GUI を提供し、地図と連動するため、SQL を書く必要がなくなります。
