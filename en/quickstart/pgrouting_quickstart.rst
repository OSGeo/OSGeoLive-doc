:Author: Daniel Kastl, Regina Obe
:Version: osgeo-live10.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
pgRouting Quickstart
********************************************************************************

pgRouting is an extension and adds routing and other network analysis functionality to :doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ databases.

This Quick Start describes how to open a database with the command line and run a basic shortest path query with the sample test data.


Running pgRouting
================================================================================

* Open a :menuselection:`Applications --> Accessories --> Terminal` window and connect to the ``pgrouting`` database:

.. code-block:: bash

	psql -U user pgrouting

* Type :command:`\\d` will list you all available tables:

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


* Run the Dijkstra shortest path function:

.. code-block:: sql

	SELECT seq, node, edge, cost 
		FROM pgr_dijkstra('
			SELECT gid as id, source, target, 
				length::float8 as cost FROM ways', 
			100, 600, false
		);

.. code-block:: sql

	 seq | node | edge  |        cost         
	-----+------+-------+---------------------
	   1 |  100 |   115 |  0.0605959823538948
	   2 |   99 |  2972 |   0.197600739218643
	   3 | 2151 |  3783 |  0.0139212050887606
	 ... |  ... |   ... |                 ...
	  53 |  599 |   732 |  0.0390125147117973
	  54 |  600 |    -1 |                   0
	(54 rows)


* To output the route geometry, link the result with the road geometries:

.. code-block:: sql

	SELECT seq, edge, rpad(b.the_geom::text,60,' ') AS "the_geom (truncated)" 
		FROM pgr_dijkstra('
			SELECT gid as id, source, target, 
				length::float8 as cost FROM ways', 
			100, 600, false
		) a INNER JOIN ways b ON (a.edge = b.gid) ORDER BY seq;


.. code-block:: sql
	
	 seq | edge  |                     the_geom (truncated)                     
	-----+-------+--------------------------------------------------------------
	   1 |   115 | 0102000020E610000002000000012D0208C4B0F2BFBD2DA237267A4A40E5
	   2 |  2972 | 0102000020E610000002000000622B0DA1EFB3F2BF65236B685E7A4A4001
	   3 |  3783 | 0102000020E610000002000000BD4571D8C7B4F2BFB2648EE55D7A4A4062
	 ... |   ... |                                                          ...
	  53 |   732 | 0102000020E6100000020000006B48DC63E903F3BF84CCDFCECF7B4A40E9
	(53 rows)


* With :command:`\\q` command leave the PostgreSQL shell.


What next?
================================================================================

* **pgRouting Website** - Visit the project website http://www.pgrouting.org to learn more about pgRouting.

* **pgRouting Documentation** - Find the most recent documentation in http://docs.pgrouting.org

* **pgRouting Workshop** - The workshop `"FOSS4G routing with pgRouting tools and OpenStreetMap road data"` is available in: http://workshop.pgrouting.org
* **osm2pgRouting loading data** - https://github.com/pgRouting/osm2pgrouting/wiki/Documentation-for-osm2pgrouting-v2.1

