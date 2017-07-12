:Author: Daniel Kastl
:Author: Regina Obe
:Version: osgeo-live10.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting Logo
	:align: right
	:target: http://www.pgrouting.org

.. image:: /images/logos/OSGeo_community.png
   :scale: 100
   :alt: OSGeo Community Project
   :align: right
   :target: http://www.osgeo.org

********************************************************************************
pgRouting Quickstart
********************************************************************************

pgRouting erweitert eine :doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ Geo-Datenbank um Funktionen für “Kürzeste-Wege” Berechnung (Routing).

Diese Quickstart Anleitung beschreibt, wie pgrouting in einer PostgreSQl Datenbank aktiviert wird, wie Daten mit osm2pgrouting geladen werden und wie einfache “Kürzeste-Wege” Berechnungen mit den Testdaten von der Kommandozeile aus durchführt werden. 

Aktivierung von pgRouting in einer Datenbank
===============================================================================
In dieser Übung wird einen Datenbank mit Namen `city_routing` erzeugt und die Erweiterung pgRouting geladen.

* Öffnen Sie ein Befehlsfenster über :menuselection:`Anwendungen --> Erweiterungen --> Terminal` und rufen Sie psql auf:
    (psql ist das Kommandozeilen Basierte Werkzeug von PostgreSQL)

::

  	psql

Geben Sie die folgenden SQL Befehle ein:

::

	CREATE DATABASE city_routing;
	\connect city_routing;
	CREATE EXTENSION postgis;
	CREATE EXTENSION pgrouting;


Wenn Sie PostgreSQL 9.6+ verwenden, können Sie die postgis Zeile weglassen und 
und folgendes eingeben :code:`CREATE EXTENSION pgrouting CASCADE;`

Sie können die Installation über den folgenden Befehl überprüfen:

::

	SELECT  * FROM pgr_version();

::

	 version |       tag       |  hash   | branch | boost
	---------+-----------------+---------+--------+--------
	 2.2.2   | pgrouting-2.2.2 | 7141904 | master | 1.59.0
	(1 row)

Die Version sollte 2.1.0 oder höher sein, um die Beispiele des Quickstarts durchzuführen.

Laden von OSM Daten mit osm2pgrouting
===========================================================================
osm2pgorouting ist ein kommandozeilenbasiertes Werkzeug zum Laden von .osm Dateien in ein pgRouting kompatibles Format.
Im Folgenden wird gezeigt wie osm2pgrouting Version 2.1.0+ verwendet werden kann.

Prüfen Sie zuerst die Version von osm2pgrouting. Sie sollte 2.1 oder höher sein.

::

	osm2pgrouting --version

Die Ausgabe zeigt:

::

	This is osm2pgrouting Version 2.1

Laden von Daten aus einer osm Datei

::

	 cd
	 bzcat data/osm/feature_city.osm.bz2 > /tmp/feature_city.osm
	 osm2pgrouting -f /tmp/feature_city.osm -h localhost -U user -d city_routing -p 5432 -W user --conf=/usr/share/osm2pgrouting/mapconfig_for_cars.xml
	 rm /tmp/feature_city.osm


Die Ausgabe sollte etwas in der Art sein:

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

pgRouting in Aktion
================================================================================

* Starte ein :menuselection:`Applications --> Accessories --> Terminal` Fenster und stelle eine Verbindung mit der ``city_routing`` Datenbank her:

::

	psql -U postgres city_routing

* Über den Befehl :command:`\\d`, werden alle vorhandenen Tabellen aufgelistet:

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


* Führe die “Dijkstra-Shortest-Path” Funktion aus, die von ungeleiteter Reise ausgeht:

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


pgr_dijkstra unterstützt außerdem bigints für Knoten und Kanten, u
nd osm2pgrouting lädt die osm_ids ebenfalls,
so dass Sie alternativ die osm_id anstatt der automatisch generierten source- und target-Werte für Knoten nutzen können. Um die betreffenden osm_ids für unsere Knoten zu laden, wird die folgende Abfrage verwendet:

::

	SELECT id, osm_id
		FROM ways_vertices_pgr where id IN( 100, 600);

Mit der Ausgabe:

::

	 id  |   osm_id
	-----+------------
	 100 | 1896068597
	 600 |   31369798
	(2 rows)


Um die osm_id zu verwenden, kann die Abfrage wie folgt angepasst werden:

::

	SELECT seq, node, edge, cost
	FROM pgr_dijkstra('
		SELECT gid as id, source_osm AS source, target_osm AS target,
			length as cost FROM ways',
		1896068597, 31369798, false
	);

Hinweis: das SQL Statement muss 
immer über die Feldnamen `id, source, target und cost` verfügen.
Da wir die Felder `source_osm` und `target_osm` verwenden,
müssen diese mit einem ALIAS versehen werden, damit die  
resultierenden pgr_dijkstra Abfragespalten wieder source und target heißen.

Die Abfrage ergibt folgende Ausgabe:

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

Da wir weiterhin selbst generierte Kanten-IDs verwenden, sind die Kanten-IDs die selben, wie in der ursprünglichen Abfrage, aber die IDs der Kanten sind die OSM Kanten IDs.

Der Vorteil der Verwendung der osm_ids anstatt der selbstgenerierten IDs ist, dass das Ergebnis konsistent ist bei gleichen osm_ids.
Es wurden nicht alle pgRouting Funktionen umgestellt, so dass sie bigints verwenden können. Dies bedeutet, dass nicht alle pgRouting
Funktionen mit osm_ids verwendet werden können.




* Um die Geometrie der Route anzuzeigen, kann das Ergebnis der Abfrage mit der ursprünglichen Tabelle und somit den Straßengeometrien verknüpfen werden:

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

To use the DbManager extension of QGIS open up QGIS then go to Go to ``Database -> DB Manager -> DB Manager``.
Select the SQL Window icon and cut and paste the above pgRouting Query.

* Run the Dijkstra shortest path function with considering direction.

In the previous examples, we assumed streets have equal cost in both directions.
For cases where you have one ways or different speed limits on either lane,
cost going on one direction of a road, may be different than going the other way.
For these cases you need to add an additional column to your query `reverse_cost`

.. code-block:: sql

	SELECT seq, node, edge, cost
		FROM pgr_dijkstra('
			SELECT gid as id, source, target,
				cost_s As cost, reverse_cost_s AS reverse_cost FROM ways',
			100, 600, true
		);


* Mit dem Kommando :command:`\\q` verlässt man die PostgreSQL Shell wieder.


Wie geht es weiter?
================================================================================

* **pgRouting Webseite** - Besuche die Projektseite unter http://www.pgrouting.org, um mehr über pgRouting zu erfahren.
* **pgRouting Dokumentation** - Die aktuelle Dokumentation ist zu finden auf http://docs.pgrouting.org
* **pgRouting Workshop** - The workshop `"FOSS4G routing with pgRouting tools and OpenStreetMap road data"` is available in: http://workshop.pgrouting.org
* **osm2pgRouting loading data** - https://github.com/pgRouting/osm2pgrouting/wiki/Documentation-for-osm2pgrouting-v2.1
* **QGIS pgRouting Layer Plugin** - https://plugins.qgis.org/plugins/pgRoutingLayer/ provides GUI for pgRouting functions and interacts with map so you don't have to write SQL.

