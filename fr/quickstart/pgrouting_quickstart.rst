:Author: Daniel Kastl
:Version: osgeo-live7.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
Guide de démarrage rapide de pgRouting
********************************************************************************

pgRouting est une extension et ajoute des fonctionnalités de routage et autres analyses de réseaux aux bases de données :doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ .

Le guide de démarrage rapide décrit comment ouvrir une base de données en ligne de commande et comment lancer une requête de plus court chemin avec les données du jeu de test.


Lancer pgRouting
================================================================================

* Ouvrir une fenêtre :menuselection:`Applications --> Accessories --> Terminal` et se connecter à la base de données ``pgrouting`` :

::

	psql -U user pgrouting

* La commande :command:`\\d` permet de lister toutes les tables disponibles :

::

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


* Lancer la fonction de plus court chemin Dijkstra :

::

	SELECT seq, id1 AS node, id2 AS edge, cost 
		FROM pgr_dijkstra('
			SELECT gid::int as id, source::int, target::int, 
				length::float8 as cost FROM ways', 
			100, 600, false, false
		);

::

	 seq | node | edge  |        cost         
	-----+------+-------+---------------------
	   0 |  100 |   115 |  0.0605959823538948
	   1 |   99 |  2972 |   0.197600739218643
	   2 | 2151 |  3783 |  0.0139212050887606
	 ... |  ... |   ... |                 ...
	  52 |  599 |   732 |  0.0390125147117973
	  53 |  600 |    -1 |                   0
	(54 rows)


* Pour produire la géométrie de la route, relier le résultat avec les géométries routières :

::

	SELECT seq, id2 AS edge, rpad(b.the_geom,60,' ') AS "the_geom (truncated)" 
		FROM pgr_dijkstra('
			SELECT gid::int as id, source::int, target::int, 
				length::float8 as cost FROM ways', 
			100, 600, false, false
		) a INNER JOIN ways b ON (a.id2 = b.gid) ORDER BY seq;


::
	
	 seq | edge  |                     the_geom (truncated)                     
	-----+-------+--------------------------------------------------------------
	   0 |   115 | 0102000020E610000002000000012D0208C4B0F2BFBD2DA237267A4A40E5
	   1 |  2972 | 0102000020E610000002000000622B0DA1EFB3F2BF65236B685E7A4A4001
	   2 |  3783 | 0102000020E610000002000000BD4571D8C7B4F2BFB2648EE55D7A4A4062
	 ... |   ... |                                                          ...
	  52 |   732 | 0102000020E6100000020000006B48DC63E903F3BF84CCDFCECF7B4A40E9
	(53 rows)


* La commande :command:`\\q` permet de quitter le shell PostgreSQL.


Et ensuite ?
================================================================================

* **pgRouting Website** - Visitez le site web du projet http://www.pgrouting.org pour en apprendre plus sur pgRouting.
* **pgRouting Documentation** - Vous trouverez toute la documentation mise à jour ici : http://docs.pgrouting.org
* **pgRouting Workshop** - L'atelier `"Routage FOSS4G avec les outils pgRouting, le réseau routier d’OpenStreetMap"` est disponible ici : http://workshop.pgrouting.org
