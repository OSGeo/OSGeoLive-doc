:Author: Haruyuki Seki
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _pgrouting-quickstart:
 
.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
pgRouting Quickstart
********************************************************************************

pgRouting は :doc:`PostGIS <../overview/postgis_overview>` / `PostgreSQL <http://www.postgresql.org>`_ 地理空間データベースに経路探索機能を提供するための拡張ライブラリです。

この「クイックスタート」は、コマンドラインでデータベースを開き、サンプルデータに対して基本的な最短経路探索クエリを実行する方法を示しています。


pgRouting を実行する
================================================================================

* メニューから、 :menuselection:`Applications --> Accessories --> Terminal` window を開き、 ``pgrouting`` databaseへ接続してください。

.. code-block:: bash

	psql -U user pgrouting

*  :command:`\\d` とタイプすると、利用可能なテーブルの一覧が表示されます。

.. code-block:: sql

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
	(9 rows)

* Dijkstra shortest path 関数を実行します。

.. code-block:: sql

	SELECT * FROM shortest_path('
			SELECT gid as id, 
				 source::integer, 
				 target::integer, 
				 length::double precision as cost 
				FROM ways', 
			100, 600, false, false); 

.. code-block:: sql

	 vertex_id | edge_id |       cost    	 
	-----------+---------+---------------------
	       100 |    1457 |  0.0152981335887719
	       554 |     543 |  0.0658986376594475
	       553 |     542 |  0.0720522950545032
	       ... |     ... |  ...
	      1803 |    1902 |  0.1000754339802650
	       600 |      -1 |                   0
    (77 rows)

* 経路探索結果を違うフォーマットで取得するために、ラッパー関数を実行してみます。

.. code-block:: sql

	SELECT gid, AsText(the_geom) AS the_geom 
		FROM dijkstra_sp('ways', 100, 600);
	
.. code-block:: sql
	
	  gid   |                              the_geom      
	--------+---------------------------------------------------------------
	    533 | MULTILINESTRING((-105.0205242 39.7613979,-105.0205115 39.7620158))
	    534 | MULTILINESTRING((-105.0205115 39.7620158,-105.0205151 39.7632155))
	    535 | MULTILINESTRING((-105.0205151 39.7632155,-105.0205098 39.764433))
		... | ...
	   9395 | MULTILINESTRING((-104.9921535 39.7209342,-104.9921516 39.722527))
	   9400 | MULTILINESTRING((-104.9921793 39.7147876,-104.9923595 39.714781))
	(76 rows)

* :command:`\\q` コマンドで PostgreSQL shell を終了します。


次のステップ
================================================================================

* **pgRouting ウェブサイト** - プロジェクトのウェブサイト http://www.pgrouting.org で、pgRouting についてさらに学ぶことができます。

* **DVD内のワークショップ** - 本LiveDVD に、 FOSS4G 2010 での pgRouting ワークショップ、 `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoEx"`, が収録されています。 :file:`/usr/share/pgrouting/workshop/`

.. note::

	最新のバージョンのチュートリアルは、ターミナル上で``sudo apt-get update && apt-get upgrade pgrouting-workshop`` を実行すると取得できます。

