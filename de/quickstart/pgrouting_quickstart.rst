:Author: Daniel Kastl
:Version: osgeo-live5.0
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
	 public | geography_columns   | view     | postgres
	 public | geometry_columns    | table    | postgres
	 public | spatial_ref_sys     | table    | postgres
	 public | vertices_tmp        | table    | postgres
	 public | vertices_tmp_id_seq | sequence | postgres
	 public | ways                | table    | postgres
	(6 Zeilen)

* Führe die "Dijkstra-Shortest-Path" Funktion aus:

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
    (33 Zeilen)

* Verwende eine Wrapper-Funktion, um das Routingergebnis in einem anderen Format auszugeben:

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
    (32 Zeilen)

* Mit dem Kommando :command:`\\q` verlässt man die PostgreSQL Shell wieder.


Wie geht es weiter?
================================================================================

* **pgRouting Webseite** - Besuche die Projektseite unter http://www.pgrouting.org, um mehr über pgRouting zu erfahren.

* **Workshop auf DVD** - Auf dieser LiveDVD enthalten ist der FOSS4G 2011 pgRouting Workshop `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoExt"`, zu finden unter: :file:`/usr/share/pgrouting/workshop/`

.. note::

	Um mit der aktuellen Version des Workshops zu arbeiten, öffne ein Terminal Fenster und führe ``sudo apt-get update && apt-get upgrade pgrouting-workshop`` aus.

