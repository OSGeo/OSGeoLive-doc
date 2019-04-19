:Author: Daniel Kastl
:Author: Regina Obe
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_pgrouting@
@OSGEO_KIND_pgrouting@

********************************************************************************
@NAME_pgrouting@ Quickstart
********************************************************************************

pgRouting is an extension that adds routing and other network analysis functionality to :doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ databases.

This Quick Start describes how to enable pgrouting in a PostgreSQL database, load data with osm2pgrouting, and run a basic shortest path query with the sample test data.

.. contents:: Contents

Enabling pgRouting in a database
===============================================================================
In this example we will create a database called `city_routing` and enable pgRouting in the database.

* Open a :menuselection:`Applications --> Accessories --> Terminal` window and open up psql: (psql is the commandline tool packaged with PostgreSQL)

::

  	psql

At psql prompt type:

::

	CREATE DATABASE city_routing;
	\connect city_routing;
	CREATE EXTENSION postgis;
	CREATE EXTENSION pgrouting;


If you are running PostgreSQL 9.6+, you can skip the postgis line and do :code:`CREATE EXTENSION pgrouting CASCADE;`

You can verify your installation by running this:

::

	SELECT  * FROM pgr_version();

::

	 version |  tag   |   hash    | branch | boost
	---------+--------+-----------+--------+--------
	 2.3.2   | v2.3.2 | 1f2af3c52 | master | 1.58.0
	(1 row)

Your version should be 2.1.0 or higher to use examples in this quickstart.

Loading OSM data with osm2pgrouting
===========================================================================
osm2pgrouting is a command-line tool for loading .osm files into pgRouting compatible format.
Here is how you use osm2pgrouting version 2.1.0+.

First verify version of osm2pgrouting you have installed. Should read 2.1 or higher.

::

	osm2pgrouting --version

Output shows:

::

	This is osm2pgrouting Version 2.2

Now load the data from osm file:

::

	 cd
	 bzcat data/osm/feature_city.osm.bz2 > /tmp/feature_city.osm
	 osm2pgrouting -f /tmp/feature_city.osm -h localhost -U user -d city_routing -p 5432 -W user --conf=/usr/share/osm2pgrouting/mapconfig_for_cars.xml
	 rm /tmp/feature_city.osm


Output should be something like:

::

	Export Ways ...
	    Processing 45383 ways:
	[*************************************************| ] (99%)    Ways Processed: 45383	    Split Ways generated: 10483	Vertices inserted 9165 Inserted 10483 split ways
	Creating Foreign Keys ...
	Foreign keys for osm_way_classes table created
	Foreign keys for relations_ways table created
	Foreign keys for Ways table created
	#########################
	size of streets: 45383
	#########################

Running pgRouting
==============================================================================

* Open a :menuselection:`Applications --> Accessories --> Terminal` window and connect to the ``city_routing`` database:

::

	psql -U postgres city_routing

* Type :command:`\\d` will list you all available tables:

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
	 public | osm_way_types            | table    | postgres
	 public | raster_columns           | view     | postgres
	 public | raster_overviews         | view     | postgres
	 public | relations_ways           | table    | postgres
	 public | spatial_ref_sys          | table    | postgres
	 public | ways                     | table    | postgres
	 public | ways_gid_seq             | sequence | postgres
	 public | ways_vertices_pgr        | table    | postgres
	 public | ways_vertices_pgr_id_seq | sequence | postgres
	(15 rows)


* Run the Dijkstra shortest path function assuming undirected travel:

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


pgr_dijkstra also supports bigints for nodes and edges, and osm2pgrouting loads the osm_ids as well, so you
could alternatively use the osm_id instead of the autogenerated source and targets for nodes.
To look up the corresponding osm_ids for our nodes, we would use this query:

::

	SELECT id, osm_id
		FROM ways_vertices_pgr where id IN( 100, 600);

Which outputs:

::

	 id  |   osm_id
	-----+------------
	 100 | 1896068597
	 600 |   31369798
	(2 rows)


To do so you would change
your query to below:

::

	SELECT seq, node, edge, cost
	FROM pgr_dijkstra('
		SELECT gid as id, source_osm AS source, target_osm AS target,
			length as cost FROM ways',
		1896068597, 31369798, false
	);

Note: the SQL statement must always have field names `id, source, target, and cost`.
Since we are using fields `source_osm` and `target_osm`, we need to alias them so resulting pgr_dijkstra query columns are named source and target.

Output is:

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

Since we are still using autogenerated edge ids, our edge numbers are the same as our previous query,
but the nodes are the osm node ids.

The benefit of using the osm_ids instead of the auto-generated ids is that your results will be consistent
between different databases if they share a common set of osm ids.  Not all pgRouting functions have
been changed to use bigints, so osm_ids can't be used with all functions.




* To output the route geometry, link the result with the road geometries:

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


* You can view the routes using a graphical tool
    such as :doc:`OpenJump <../overview/openjump_overview>` or
    the :doc:`QGIS <../overview/qgis_overview>` DbManager extension.

To use the DbManager extension of QGIS open up QGIS then go to ``Database -> DB Manager -> DB Manager``.
Select the SQL Window icon and cut and paste the above pgRouting Query.

* Run the Dijkstra shortest path function with considering direction.

In the previous examples, we assumed streets have equal cost in both directions.
For cases where you have one ways or different speed limits on either lane,
cost going on one direction of a road, may be different than going the other way.
For these cases you need to add an additional column to your query `reverse_cost`

::

	SELECT seq, node, edge, cost
		FROM pgr_dijkstra('
			SELECT gid as id, source, target,
				cost_s As cost, reverse_cost_s AS reverse_cost FROM ways',
			100, 600, true
		);


* With :command:`\\q` command leave the PostgreSQL shell.


What next?
================================================================================

* **pgRouting Website** - Visit the project website http://www.pgrouting.org to learn more about pgRouting.

* **pgRouting Documentation** - Find the most recent documentation in http://docs.pgrouting.org.

* **pgRouting Workshop** - The workshop `"FOSS4G routing with pgRouting tools and OpenStreetMap road data"` is available in: http://workshop.pgrouting.org.
* **osm2pgRouting loading data** - https://github.com/pgRouting/osm2pgrouting/wiki/Documentation-for-osm2pgrouting-v2.1
* **QGIS pgRouting Layer Plugin** - https://plugins.qgis.org/plugins/pgRoutingLayer/ provides GUI for pgRouting functions and interacts with map so you don't have to write SQL.

