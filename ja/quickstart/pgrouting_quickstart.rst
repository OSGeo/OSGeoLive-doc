:Author: Daniel Kastl, Hal Seki, Ko Nagase
:Version: osgeo-live7.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting ロゴ
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
pgRouting クイックスタート
********************************************************************************

pgRouting は拡張機能で、経路探索と他のネットワーク解析機能を :doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ データベースに追加します。

このクイックスタートでは、コマンドラインでデータベースを開き、サンプルのテストデータに対して基本的な最短経路探索クエリを実行する方法について記述しています。


pgRouting を実行する
================================================================================

* メニューから、 :menuselection:`Applications --> Accessories --> Terminal` を開き、 ``pgrouting`` データベースに接続します。

.. code-block:: bash

	psql -U user pgrouting

* :command:`\\d` とタイプすると、利用可能なテーブルの一覧が表示されます。

.. code-block:: sql

	                List of relations
	 Schema |        Name         |   Type   | Owner 
	--------+---------------------+----------+-------
	 public | classes             | table    | user
	 public | geography_columns   | view     | user
	 public | geometry_columns    | view     | user
	 public | nodes               | table    | user
	 public | raster_columns      | view     | user
	 public | raster_overviews    | view     | user
	 public | relation_ways       | table    | user
	 public | relations           | table    | user
	 public | spatial_ref_sys     | table    | user
	 public | types               | table    | user
	 public | vertices_tmp        | table    | user
	 public | vertices_tmp_id_seq | sequence | user
	 public | way_tag             | table    | user
	 public | ways                | table    | user
	(14 rows)


* ダイクストラ法による最短経路探索の関数を実行します。

.. code-block:: sql

	SELECT seq, id1 AS node, id2 AS edge, cost 
		FROM pgr_dijkstra('
			SELECT gid::int as id, source::int, target::int, 
				length::float8 as cost FROM ways', 
			100, 600, false, false
		);

.. code-block:: sql

	 seq | node | edge  |        cost         
	-----+------+-------+---------------------
	   0 |  100 |   115 |  0.0605959823538948
	   1 |   99 |  2972 |   0.197600739218643
	   2 | 2151 |  3783 |  0.0139212050887606
	 ... |  ... |   ... |                 ...
	  52 |  599 |   732 |  0.0390125147117973
	  53 |  600 |    -1 |                   0
	(54 rows)


* 経路のジオメトリを出力するために、結果を道路のジオメトリにリンクさせます。

.. code-block:: sql

	SELECT seq, id2 AS edge, rpad(b.the_geom,60,' ') AS "the_geom (truncated)" 
		FROM pgr_dijkstra('
			SELECT gid::int as id, source::int, target::int, 
				length::float8 as cost FROM ways', 
			100, 600, false, false
		) a INNER JOIN ways b ON (a.id2 = b.gid) ORDER BY seq;


.. code-block:: sql
	
	 seq | edge  |                     the_geom (truncated)                     
	-----+-------+--------------------------------------------------------------
	   0 |   115 | 0102000020E610000002000000012D0208C4B0F2BFBD2DA237267A4A40E5
	   1 |  2972 | 0102000020E610000002000000622B0DA1EFB3F2BF65236B685E7A4A4001
	   2 |  3783 | 0102000020E610000002000000BD4571D8C7B4F2BFB2648EE55D7A4A4062
	 ... |   ... |                                                          ...
	  52 |   732 | 0102000020E6100000020000006B48DC63E903F3BF84CCDFCECF7B4A40E9
	(53 rows)


* :command:`\\q` コマンドで PostgreSQL シェルを終了します。


次のステップ
================================================================================

* **pgRouting ウェブサイト** - プロジェクトのウェブサイト http://www.pgrouting.org で、pgRouting についてさらに学ぶことができます。

* **pgRouting ドキュメント** - 最新のドキュメントは http://docs.pgrouting.org にあります。

* **pgRouting ワークショップ** - ワークショップ `"FOSS4G routing with pgRouting tools and OpenStreetMap road data"` が http://workshop.pgrouting.org で利用可能です。
