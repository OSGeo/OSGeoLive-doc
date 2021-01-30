:Author: Vicky Vergara
:Author: Daniel Kastl
:Author: Regina Obe
:Reviewer: Angelos Tzotsos, OSGeo
:Reviewer: Felicity Brand (Google Season of Docs 2019)
:Version: osgeolive14.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_pgrouting@
@OSGEO_KIND_pgrouting@
@VMDK_pgrouting@



********************************************************************************
@NAME_pgrouting@ Quickstart
********************************************************************************

pgRouting is an extension that adds routing and other network analysis functionality
to :doc:`../overview/postgis_overview`/`PostgreSQL <https://www.postgresql.org>`_ databases.

.. contents:: Contents
   :local:

Enabling pgRouting in a database
================================================================================
In this example we will create a database called `city_routing` and enable pgRouting
in the database.

* Open a :menuselection:`System Tools --> QTerminal` window and execute the commandline
  tool packaged with PostgreSQL `psql`

::

    psql

At the `psql` prompt type:

::

  CREATE DATABASE city_routing;
  \connect city_routing;
  CREATE EXTENSION pgrouting CASCADE;


You can verify your installation by running this:

::

  SELECT * FROM pgr_version();

::

  pgr_version
  -------------
   3.1.0
  (1 row)

Your version should be 3.1.0 or higher

Exit the database

::

  \q


Loading OSM data with osm2pgrouting
================================================================================

osm2pgrouting is a command-line tool for loading `.osm` files into the database
with a pgRouting compatible format.

Check the installed version

::

  osm2pgrouting --version

Output shows

::

  This is osm2pgrouting Version 2.3.6

Load the data from osm file:

::

   bzcat data/osm/feature_city.osm.bz2 > /tmp/feature_city.osm
   osm2pgrouting \
     -f /tmp/feature_city.osm \
     -h localhost \
     -U user \
     -d city_routing \
     -p 5432 \
     -W user \
     --conf=/usr/share/osm2pgrouting/mapconfig_for_cars.xml
   rm /tmp/feature_city.osm


Output should be something like:

::


  Execution starts at: Thu Jan 21 16:25:38 2021

  ***************************************************
             COMMAND LINE CONFIGURATION             *
  ***************************************************
  Filename = /tmp/feature_city.osm
  Configuration file = /usr/share/osm2pgrouting/mapconfig_for_cars.xml
  host = localhost
  port = 5432
  dbname = city_routing
  username = user
  schema=
  prefix =
  suffix =
  Don't drop tables
  Don't create indexes
  Don't add OSM nodes
  ***************************************************
  Testing database connection: city_routing
  database connection successful: city_routing
  Connecting to the database
  connection success

  Creating tables...
  TABLE: ways_vertices_pgr created ... OK.
  TABLE: ways created ... OK.
  TABLE: pointsofinterest created ... OK.
  TABLE: configuration created ... OK.
  Opening configuration file: /usr/share/osm2pgrouting/mapconfig_for_cars.xml
      Parsing configuration

  Exporting configuration ...
    - Done
  Counting lines ...
    - Done
  Opening data file: /tmp/feature_city.osm        total lines: 844044
      Parsing data


  End Of file


      Finish Parsing data

  Adding auxiliary tables to database...

  Export Ways ...
      Processing 37373 ways:
  [**************************|                        ] (53%) Total processed: 20000       Vertices inserted: 8126        Split ways inserted 10253
  [**************************************************|] (100%) Total processed: 37373      Vertices inserted: 1423        Split ways inserted 3385

  Creating indexes ...

  Processing Points of Interest ...
  #########################
  size of streets: 37373
  Execution started at: Thu Jan 21 16:25:38 2021
  Execution ended at:   Thu Jan 21 16:25:42 2021
  Elapsed time: 4.645 Seconds.
  User CPU time: -> 2.36362 seconds
  #########################


Check the imported data
================================================================================

Connect to the `city_routing` database

::

  psql city_routing

The :command:`\\d` command will list all available tables and sequences

::

                    List of relations
   Schema |           Name           |   Type   | Owner
  --------+--------------------------+----------+-------
   public | configuration            | table    | user
   public | configuration_id_seq     | sequence | user
   public | geography_columns        | view     | user
   public | geometry_columns         | view     | user
   public | pointsofinterest         | table    | user
   public | pointsofinterest_pid_seq | sequence | user
   public | spatial_ref_sys          | table    | user
   public | ways                     | table    | user
   public | ways_gid_seq             | sequence | user
   public | ways_vertices_pgr        | table    | user
   public | ways_vertices_pgr_id_seq | sequence | user
  (11 rows)



osm2pgrouting loads the OSM identifiers `osm_id` and it also generates a unique
identifier for all the data: `id` on the vertices, `gid` on the edges.

::

  SELECT id, osm_id
  FROM ways_vertices_pgr
  WHERE id IN(100,600);

The results are:

::

   id  |  osm_id
  -----+----------
   100 | 81622364
   600 | 82708785
  (2 rows)


Inner Query
================================================================================

Most of the pgRouting functions have a parameter that is an SQL statement, it is
called **inner query**

The inner SQL statement must always have field names `id`, `source`, `target`, and `cost`
having `reverse_cost` as optional.

Inner query that use `gid` as identifier of the segments

::

  SELECT gid as id,
         source, target,
         cost, reverse_cost
  FROM ways

Inner query that use `gid` as identifier of the segments and lenght as `cost`
without the optional `reverse_cost`

::

  SELECT gid as id,
         source, target,
         length AS cost
  FROM ways


pgr_Dijkstra
================================================================================

Run the Dijkstra shortest path function based on the time in seconds to traverse
a segment on an undirected graph, using `id` as the identifier of a vertex

::

  SELECT *
  FROM pgr_dijkstra(
    'SELECT gid as id,
            source, target,
            cost_s AS cost, reverse_cost_s AS reverse_cost
    FROM ways',
    100, 600,
    directed => false
  );


The results are:

::

   seq | path_seq | node | edge  |      cost          |       agg_cost
  -----+----------+------+-------+--------------------+--------------------
     1 |        1 |  100 |  6199 |  8.994104012024671 |                  0
     2 |        2 | 4360 |   152 | 2.8524015038110697 |  8.994104012024671
     3 |        3 |  101 |   511 | 2.4123361340227754 |  11.84650551583574
     4 |        4 |  322 |   707 |   3.63955931676029 | 14.258841649858514
     5 |        5 |  448 |   705 | 2.9567136964053367 | 17.898400966618805
     6 |        6 |  445 |   662 |  4.185190538775397 | 20.855114663024143
     7 |        7 |  415 |   663 | 1.2667248968947813 |  25.04030520179954
     8 |        8 |  442 |   699 |  6.371427985640729 |  26.30703009869432
     9 |        9 |  593 |   913 | 2.5897354220718807 |  32.67845808433505
    10 |       10 |  438 |   693 | 5.5261229396496585 |  35.26819350640693
    11 |       11 | 1573 |  2421 |  7.003475952839719 |  40.79431644605659
    12 |       12 |  619 | 10389 | 3.8659203494409344 |  47.79779239889631
    13 |       13 |  600 |    -1 |                  0 |  51.66371274833725
  (13 rows)


.. rubric:: A query that use the OSM identifier becomes:

::

  SELECT *
  FROM pgr_dijkstra(
    'SELECT gid as id,
            source_osm AS source, target_osm AS target,
            cost_s AS cost, reverse_cost_s AS reverse_cost
    FROM ways',
    81622364, 82708785,
    directed => false
  );

Because the query is using fields `source_osm` and `target_osm` the query aliases them to have
the required names `source` and `target`.

Output is:

::

   seq | path_seq |    node    | edge  |        cost        |      agg_cost
  -----+----------+------------+-------+--------------------+--------------------
     1 |        1 |   81622364 |  6199 |  8.994104012024671 |                  0
     2 |        2 | 1177972556 |   152 | 2.8524015038110697 |  8.994104012024671
     3 |        3 |   81622365 |   511 | 2.4123361340227754 |  11.84650551583574
     4 |        4 |   81917858 |   707 |   3.63955931676029 | 14.258841649858514
     5 |        5 |   82582021 |   705 | 2.9567136964053367 | 17.898400966618805
     6 |        6 |   82581909 |   662 |  4.185190538775397 | 20.855114663024143
     7 |        7 |   82571671 |   663 | 1.2667248968947813 |  25.04030520179954
     8 |        8 |   82581612 |   699 |  6.371427985640729 |  26.30703009869432
     9 |        9 |   82708510 |   913 | 2.5897354220718807 |  32.67845808433505
    10 |       10 |   82580320 |   693 | 5.5261229396496585 |  35.26819350640693
    11 |       11 |   97825917 |  2421 |  7.003475952839719 |  40.79431644605659
    12 |       12 |   82714784 | 10389 | 3.8659203494409344 |  47.79779239889631
    13 |       13 |   82708785 |    -1 |                  0 |  51.66371274833725
  (13 rows)


The costs are the same as in the first query

.. rubric::  A query to get the geometry of the path

The results of `pgr_dijkstra` need to be joined with the table ways.

::

  SELECT seq, edge, rpad(b.the_geom::text,60,' ') AS "the_geom (truncated)"
  FROM pgr_dijkstra(
    'SELECT gid as id,
            source, target,
            cost_s AS cost, reverse_cost_s AS reverse_cost
    FROM ways',
    100, 600,
    directed => false
  ) AS a
  JOIN ways AS b ON (a.edge = b.gid) ORDER BY seq;


The results, for visual purposes are truncated here, the geometries are much longer
than shown

::

   seq | edge  |                     the_geom (truncated)
  -----+-------+--------------------------------------------------------------
     1 |  6199 | 0102000020E6100000050000009F3825C56C3C4DC0D8367B56884A41C011
     2 |   152 | 0102000020E610000003000000B586F7C19E3C4DC016A0127C784A41C034
     3 |   511 | 0102000020E610000002000000EFF7D566AD3C4DC09C267D6B714A41C04A
     4 |   707 | 0102000020E6100000060000004A247612B63C4DC0FA1F05F4674A41C052
     5 |   705 | 0102000020E610000003000000964E35C4C23C4DC0D81E076F594A41C095
     6 |   662 | 0102000020E610000002000000504FC4C7CC3C4DC00858AB764D4A41C01F
     7 |   663 | 0102000020E610000002000000408C6BD7DF3C4DC013ACBBC3374A41C01F
     8 |   699 | 0102000020E61000000300000082FD7C00F73C4DC0E44FAFEF1E4A41C017
     9 |   913 | 0102000020E610000002000000650D28E5FF3C4DC03D02C985144A41C082
    10 |   693 | 0102000020E610000002000000C761D5C5123D4DC060E05E3EFE4941C065
    11 |  2421 | 0102000020E610000003000000675F1ED72B3D4DC0A45F11B2E24941C05F
    12 | 10389 | 0102000020E6100000020000006CA9CD49393D4DC08E548440D34941C067
  (12 rows)



With :command:`\\q` command leave the PostgreSQL shell.


What next?
==========

* **pgRouting Website** - Visit the project website https://pgrouting.org to learn more about pgRouting.
* **pgRouting Documentation** - Find the most recent documentation in https://docs.pgrouting.org.
* **pgRouting Workshop** - The workshop `"FOSS4G routing with pgRouting tools and OpenStreetMap road data"` is available in: https://workshop.pgrouting.org.
* **osm2pgRouting loading data** - https://github.com/pgRouting/osm2pgrouting/wiki/Documentation-for-osm2pgrouting-v2.3

