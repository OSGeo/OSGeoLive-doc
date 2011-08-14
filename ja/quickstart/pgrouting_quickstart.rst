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

pgRouting は :doc:`PostGIS <postgis_overview>` / `PostgreSQL <http://www.postgresql.org>`_ 地理空間データベースに経路探索機能を提供するための拡張ライブラリです。

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
	 public | geography_columns   | view     | postgres
	 public | geometry_columns    | table    | postgres
	 public | spatial_ref_sys     | table    | postgres
	 public | vertices_tmp        | table    | postgres
	 public | vertices_tmp_id_seq | sequence | postgres
	 public | ways                | table    | postgres
	(6 rows)

* Dijkstra shortest path 関数を実行します。

.. code-block:: sql

	SELECT * FROM shortest_path('
			SELECT gid as id, 
				 source::integer, 
				 target::integer, 
				 length::double precision as cost 
				FROM ways', 
			24340, 69453, false, false); 

.. code-block:: sql

     vertex_id | edge_id |        cost         
    -----------+---------+---------------------
	     24340 |  159414 |   0.155428268463703
	     27646 |  159415 |   0.178580861083004
	     15074 |  159416 |   0.175711834233665
    	   ... |     ... |  ...
	     69453 |      -1 |                   0
    (25 rows)

* 経路探索結果を違うフォーマットで取得するために、ラッパー関数を実行してみます。

.. code-block:: sql

	SELECT gid, AsText(the_geom) AS the_geom 
		FROM dijkstra_sp('ways', 24340, 69453);
	
.. code-block:: sql
	
      gid   |                              the_geom      
    --------+---------------------------------------------------------------
	 159414 | MULTILINESTRING((-104.9916497 39.7338548,-104.9916497 39.7352526))
	 159415 | MULTILINESTRING((-104.9916497 39.7352526,-104.9916591 39.7368586))
	 159416 | MULTILINESTRING((-104.9916591 39.7368586,-104.9916503 39.7384388))
	    ... | ...
	 104888 | MULTILINESTRING((-104.9873865 39.7509603,-104.986246 39.7517975))
	(24 rows)

* :command:`\\q` コマンドで PostgreSQL shell を終了します。


次のステップ
================================================================================

* **pgRouting ウェブサイト** - プロジェクトのウェブサイト http://www.pgrouting.org で、pgRouting についてさらに学ぶことができます。

* **DVD内のワークショップ** - 本LiveDVD に、 FOSS4G 2010 での pgRouting ワークショップ、 `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoEx"`, が収録されています。 :file:`/usr/share/pgrouting/workshop/`

.. note::

	最新のバージョンのチュートリアルは、ターミナル上で``sudo apt-get update && apt-get upgrade pgrouting-workshop`` を実行すると取得できます。

