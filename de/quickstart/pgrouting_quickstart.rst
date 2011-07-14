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
	(6 Zeilen)

* Führe die "Dijkstra-Shortest-Path" Funktion aus:

.. code-block:: sql

	SELECT * FROM shortest_path('
			SELECT gid as id, 
				 source::integer, 
				 target::integer, 
				 length::double precision as cost 
				FROM ways', 
			24340, 69453, false, false); 

.. code-block:: sql

     vertex_id | edge_id |        cost         
    -----------+---------+---------------------
	     24340 |  159414 |   0.155428268463703
	     27646 |  159415 |   0.178580861083004
	     15074 |  159416 |   0.175711834233665
    	   ... |     ... |  ...
	     69453 |      -1 |                   0
    (25 Zeilen)

* Verwende eine Wrapper-Funktion, um das Routingergebnis in einem anderen Format auszugeben:

.. code-block:: sql

	SELECT gid, AsText(the_geom) AS the_geom 
		FROM dijkstra_sp('ways', 24340, 69453);
	
.. code-block:: sql
	
      gid   |                              the_geom      
    --------+---------------------------------------------------------------
	 159414 | MULTILINESTRING((-104.9916497 39.7338548,-104.9916497 39.7352526))
	 159415 | MULTILINESTRING((-104.9916497 39.7352526,-104.9916591 39.7368586))
	 159416 | MULTILINESTRING((-104.9916591 39.7368586,-104.9916503 39.7384388))
	    ... | ...
	 104888 | MULTILINESTRING((-104.9873865 39.7509603,-104.986246 39.7517975))
    (24 Zeilen)

* Mit dem Kommando :command:`\\q` verlässt man die PostgreSQL Shell wieder.


Wie geht es weiter?
===================

* **pgRouting Webseite** - Besuche die Projektseite unter http://www.pgrouting.org, um mehr über pgRouting zu erfahren.

* **Workshop auf DVD** - Auf dieser LiveDVD enthalten ist der FOSS4G 2011 pgRouting Workshop `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoExt"`, zu finden unter: :file:`/usr/share/pgrouting/workshop/`

.. note::

	Um mit der aktuellen Version des Workshops zu arbeiten, öffne ein Terminal Fenster und führe ``sudo apt-get update && apt-get upgrade pgrouting-workshop`` aus.

