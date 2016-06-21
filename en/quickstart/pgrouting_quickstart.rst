:Author: Daniel Kastl
:Author: Regina Obe
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

Enabling pgRouting in a database
===============================================================================
You should have PostGIS 2+ installed in database already.  In this example we will
enable pgRouting in a database called pgrouting.

* Open a :menuselection:`Applications --> Accessories --> Terminal` window and connect to the ``pgrouting`` database:
.. code-block:: bash

  	psql -U postgres pgrouting
  
At psql prompt type:
 
.. code-block:: sql

	CREATE EXTENSION pgrouting;
	
You can verify your installion by running this:

.. code-block:: sql

	SELECT  * FROM pgr_version();
	
.. code-block::

	version  |       tag       | build |  hash   | branch | boost
	---------+-----------------+-------+---------+--------+--------
	 2.1.0   | pgrouting-2.1.0 | 1     | b38118a | master | 1.59.0
	(1 row)
	
	
Loading OSM data with osm2pgrouting
===========================================================================
osm2pgorouting is a command-line tool for loading .osm files into pgRouting compatible format.
Here is how you use osm2pgrouting version 2.1.0+

.. code-block:: bash

	osm2pgrouting -f BONN_DE.osm -h localhost -d pgrouting -p 5432 --conf=mapconfig_for_cars.xml
	
	
Output should be something like:

.. code-block

	Opening data file: BONN_DE.osm
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

