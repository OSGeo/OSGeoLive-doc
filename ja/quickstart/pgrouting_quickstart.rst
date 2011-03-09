:Author: Haruyuki Seki
:Version: osgeo-live4.0
:License: Creative Commons

.. _pgrouting-quickstart:
 
.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************
pgRouting Quickstart
********************

pgRouting は `PostGIS <postgis_overview.html>`_ / `PostgreSQL <http://www.postgresql.org>`_ 地理空間データベースに経路探索機能を提供するための拡張ライブラリです。

この「クイックスタート」は、コマンドラインでデータベースを開き、サンプルデータに対して基本的な最短経路探索クエリを実行する方法を示しています。


pgRouting を実行する
=================

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
			605, 359, false, false); 

.. code-block:: sql

     vertex_id | edge_id |        cost         
    -----------+---------+---------------------
    	   605 |    5575 |  0.0717467247513547
    	  1679 |    2095 |   0.148344716070272
    	   588 |    2094 |  0.0611856933258344
    	   ... |     ... |  ...
    	   359 |      -1 |                   0
    (82 rows)

* 経路探索結果を違うフォーマットで取得するために、ラッパー関数を実行してみます。

.. code-block:: sql

	SELECT gid, AsText(the_geom) AS the_geom 
		FROM dijkstra_sp('ways', 605, 359);
	
.. code-block:: sql
	
      gid   |                              the_geom      
    --------+---------------------------------------------------------------
    	168 | MULTILINESTRING((2.1633077 41.3802886,2.1637094 41.3803008))
    	169 | MULTILINESTRING((2.1637094 41.3803008,2.1638796 41.3803093))
    	170 | MULTILINESTRING((2.1638796 41.3803093,2.1640527 41.3803265))
    	... | ...
       5575 | MULTILINESTRING((2.1436976 41.3897581,2.143876 41.3903893))
    (81 rows)

* :command:`\\q` コマンドで PostgreSQL shell を終了します。


次のステップ
==========

* **pgRouting ウェブサイト** - プロジェクトのウェブサイト http://www.pgrouting.org で、pgRouting についてさらに学ぶことができます。

* **DVD内のワークショップ** - 本LiveDVD に、 FOSS4G 2010 での pgRouting ワークショップ、 `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoEx"`, が収録されています。 :file:`/usr/share/pgrouting/workshop/`

.. note::

	最新のバージョンのチュートリアルは、ターミナル上で``sudo apt-get update && apt-get upgrade pgrouting-workshop`` を実行すると取得できます。

