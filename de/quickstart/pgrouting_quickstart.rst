:Author: Daniel Kastl
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _pgrouting-quickstart-de:
 
.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
pgRouting Quickstart
********************************************************************************

pgRouting erweitert eine :doc:`PostGIS <../overview/postgis_overview>`/` PostgreSQL <http://www.postgresql.org>`_ Geo-Datenbank um Funktionen für "Kürzeste-Wege" Berechnung (Routing).

Diese Quickstart Anleitung beschreibt, wie man eine Routingdatenbank öffnet und darauf einfache "Kürzeste-Wege" Berechnungen von der Kommandozeile aus durchführt.


pgRouting Starten
================================================================================

* Starte ein :menuselection:`Applications --> Accessories --> Terminal` Fenster und stelle eine Verbindung mit der ``pgrouting`` Datenbank her:

.. code-block:: bash

	psql -U user pgrouting

* Tippe :command:`\\d`, um alle vorhandenen Tabellen aufzulisten:

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
	(9 Zeilen)

* Führe die "Dijkstra-Shortest-Path" Funktion aus:

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
    (77 Zeilen)

* Verwende eine Wrapper-Funktion, um das Routingergebnis in einem anderen Format auszugeben:

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
	(76 Zeilen)

* Mit dem Kommando :command:`\\q` verlässt man die PostgreSQL Shell wieder.


Wie geht es weiter?
================================================================================

* **pgRouting Webseite** - Besuche die Projektseite unter http://www.pgrouting.org, um mehr über pgRouting zu erfahren.

* **Workshop auf DVD** - Auf dieser LiveDVD enthalten ist der FOSS4G 2011 pgRouting Workshop `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoExt"`, zu finden unter: :file:`/usr/share/pgrouting/workshop/`

.. note::

	Um mit der aktuellen Version des Workshops zu arbeiten, öffne ein Terminal Fenster und führe ``sudo apt-get update && apt-get upgrade pgrouting-workshop`` aus.

