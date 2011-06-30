:Author: Daniel Kastl
:Version: osgeo-live5.0
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

pgRouting erweitert eine "PostGIS <postgis_overview.html>`_ /` PostgreSQL <http://www.postgresql.org>`_ Geo-Datenbank um Funktionen für "Kürzeste-Wege" Berechnung (Routing).

Diese Quickstart Anleitung beschreibt, wie man eine Routingdatenbank öffnet und darauf einfache "Kürzeste-Wege" Berechnungen von der Kommandozeile aus durchführt.


pgRouting Starten
=================

* Starte ein :menuselection:`Applications --> Accessories --> Terminal` Fenster und stelle eine Verbindung mit der ``pgrouting`` Datenbank her:

.. code-block:: bash

	psql -U user pgrouting

* Tippe :command:`\\d`, um alle vorhandenen Tabellen aufzulisten:

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

* Führe die "Dijkstra-Shortest-Path" Funktion aus:

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

* Verwende eine Wrapper-Funktion, um das Routingergebnis in einem anderen Format auszugeben:

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

* Mit dem Kommando :command:`\\q` verlässt man die PostgreSQL Shell wieder.


Wie geht es weiter?
===================

* **pgRouting Webseite** - Besuche die Projektseite unter http://www.pgrouting.org, um mehr über pgRouting zu erfahren.

* **Workshop auf DVD** - Auf dieser LiveDVD enthalten ist der FOSS4G 2011 pgRouting Workshop `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoExt"`, zu finden unter: :file:`/usr/share/pgrouting/workshop/`

.. note::

	Um mit der aktuellen Version des Workshops zu arbeiten, öffne ein Terminal Fenster und führe ``sudo apt-get update && apt-get upgrade pgrouting-workshop`` aus.

