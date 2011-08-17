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
			1888, 4738, false, false); 

.. code-block:: sql

     vertex_id | edge_id |        cost         
    -----------+---------+---------------------
		  1888 |    2818 |  0.0989108306469789
		  1555 |    2819 |   0.107183313746265
		  2435 |    2820 |   0.179335285582576
		   ... |     ... |                 ...
		  4738 |      -1 |                   0
    (33 rows)

* 経路探索結果を違うフォーマットで取得するために、ラッパー関数を実行してみます。

.. code-block:: sql

	SELECT gid, AsText(the_geom) AS the_geom 
		FROM dijkstra_sp('ways', 1888, 4738);
	
.. code-block:: sql
	
      gid   |                              the_geom      
    --------+---------------------------------------------------------------
	   1407 | MULTILINESTRING((-105.0030875 39.7426587,...,-105.0037031 39.7434525))
	   1408 | MULTILINESTRING((-105.0037031 39.7434525,-105.00401 39.7438456))
	   2567 | MULTILINESTRING((-104.9976397 39.7384568,-104.9964751 39.7368603))
	    ... | ...
	   9441 | MULTILINESTRING((-104.9899868 39.7282956,...,-104.9888573 39.7273254))
	(32 rows)

* :command:`\\q` コマンドで PostgreSQL shell を終了します。


次のステップ
================================================================================

* **pgRouting ウェブサイト** - プロジェクトのウェブサイト http://www.pgrouting.org で、pgRouting についてさらに学ぶことができます。

* **DVD内のワークショップ** - 本LiveDVD に、 FOSS4G 2010 での pgRouting ワークショップ、 `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoEx"`, が収録されています。 :file:`/usr/share/pgrouting/workshop/`

.. note::

	最新のバージョンのチュートリアルは、ターミナル上で``sudo apt-get update && apt-get upgrade pgrouting-workshop`` を実行すると取得できます。

