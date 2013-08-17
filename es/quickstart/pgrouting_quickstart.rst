:Author: Daniel Kastl
:Translator: Celia Virginia Vergara Castillo
:Version: osgeo-live7.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: Logo de pgRouting 
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
Iniciando rápidamente pgRouting
********************************************************************************

pgRouting es una extensión y añade enrutamiento y funcionalidad de análisis de redes a las bases de datos  :doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ .

Este inicio rápido describe cómo abrir una base de datos con la línea de comandos y ejecutar una consulta básica de ruta más corta con la muestra de datos de prueba.


Ejecutando pgRouting
================================================================================

Desde el menú  :menuselection:`Applications --> Accessories --> Terminal` y conectar a la base de datos``pgrouting``:

.. code-block:: bash

	psql -U user pgrouting

* Escribir :command:`\\d` y esto enlistará todas las tablas disponibles:

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


* Ejecutar la función de ruta más corta de Dijkstra:

.. code-block:: sql

	SELECT seq, id1 AS node, id2 AS edge, cost 
		FROM pgr_dijkstra('
			SELECT gid::int as id, source::int, target::int, 
				length::float8 as cost FROM ways', 
			100, 600, false, false
		);

.. code-block:: sql

	 seq | node | edge  |        cost         
	-----+------+-------+---------------------
	   0 |  100 |   115 |  0.0605959823538948
	   1 |   99 |  2972 |   0.197600739218643
	   2 | 2151 |  3783 |  0.0139212050887606
	 ... |  ... |   ... |                 ...
	  52 |  599 |   732 |  0.0390125147117973
	  53 |  600 |    -1 |                   0
	(54 rows)


*Para obtener la geometría, ligar los resultados con la geometría de los caminos:

.. code-block:: sql

	SELECT seq, id2 AS edge, rpad(b.the_geom,60,' ') AS "the_geom (truncated)" 
		FROM pgr_dijkstra('
			SELECT gid::int as id, source::int, target::int, 
				length::float8 as cost FROM ways', 
			100, 600, false, false
		) a INNER JOIN ways b ON (a.id2 = b.gid) ORDER BY seq;


.. code-block:: sql
	
	 seq | edge  |                     the_geom (truncated)                     
	-----+-------+--------------------------------------------------------------
	   0 |   115 | 0102000020E610000002000000012D0208C4B0F2BFBD2DA237267A4A40E5
	   1 |  2972 | 0102000020E610000002000000622B0DA1EFB3F2BF65236B685E7A4A4001
	   2 |  3783 | 0102000020E610000002000000BD4571D8C7B4F2BFB2648EE55D7A4A4062
	 ... |   ... |                                                          ...
	  52 |   732 | 0102000020E6100000020000006B48DC63E903F3BF84CCDFCECF7B4A40E9
	(53 rows)


* Con  :command:`\\q` nos salimos de PostgreSQL.


¿Qué sigue?
================================================================================

* **Sitio web de pgRouting** - visite la página Web del proyecto  http://www.pgrouting.org para aprender más sobre pgRouting.

* **Documentación de pgRouting** - La documentación más reciente la encuentra en http://docs.pgrouting.org

* **Taller de pgRouting**  - El taller `"FOSS4G routing with pgRouting tools and OpenStreetMap road data"`  está disponible en: http://workshop.pgrouting.org
