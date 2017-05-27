:Author: Daniel Kastl
:Author: Regina Obe
:Translator: Vicky Vergara
:Version: osgeo-live10.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
Guía de inicio rápido de pgRouting
********************************************************************************

pgRouting es una extensión que añade ruteo y otras funcionalidades de análisis de redes a bases de datos :doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_.

Esta guía rápida describe como habilitar pgrouting en una base de datos PostgreSQL, cargar datos con osm2pgrouting, y ejecutar una consulta básica con los datos de ejemplo para pruebas.

Habilitar pgRouting en la base de datos
===============================================================================
En este ejemplo se crea la base de datos llamada `city_routing` y se habilita pgRouting en la base de datos.

* Abre la ventana :menuselection:`Applications --> Accessories --> Terminal` y ejecuta psql:

(psql es una herramienta de línea de comandos empaquetada junto con PostgreSQL)

.. code-block:: bash

  	psql

En el promt de psql, teclear:

.. code-block:: sql

	CREATE DATABASE city_routing;
	\connect city_routing;
	CREATE EXTENSION postgis;
	CREATE EXTENSION pgrouting;


Si estas usando PostgreSQL 9.6+, puedes omitir la linea :code:`CREATE EXTENSION postgis;` y usar :code:`CREATE EXTENSION pgrouting CASCADE;`

Para verificar la instalación ejecutar:

.. code-block:: sql

	SELECT  * FROM pgr_version();

.. code-block:: bash

	 version |       tag       |  hash   | branch | boost
	---------+-----------------+---------+--------+--------
	 2.2.2   | pgrouting-2.2.2 | 7141904 | master | 1.59.0
	(1 row)

La versión debe ser 2.1.0 o mayor para poder usar los ejemplos de esta guía rápida.

Cargar datos OSM usando osm2pgrouting
===========================================================================
osm2pgorouting es una herramienta de linea de commando para cargar archivos `.osm` para ser compatibles con pgRouting.
Esta es la manera de usar osm2pgrouting version 2.1.0+

Primero verificar la versión de osm2pgrouting instalada, debe ser 2.1 o mayor:

.. code-block:: bash

	osm2pgrouting --version

El resultado muestra:

.. code-block:: bash

	This is osm2pgrouting Version 2.1

Cargar los datos de el archivo `.osm`:

.. code-block:: bash

	 cd
	 bzcat data/osm/feature_city.osm.bz2 > /tmp/feature_city.osm
	 osm2pgrouting -f /tmp/feature_city.osm -h localhost -U user -d city_routing -p 5432 -W user --conf=/usr/share/osm2pgrouting/mapconfig_for_cars.xml
	 rm /tmp/feature_city.osm


La salida muestra algo como:

.. code-block:: bash

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

Ejecutando pgRouting
==============================================================================

* Abrir una ventana :menuselection:`Applications --> Accessories --> Terminal` y conectarse a la base de datos ``city_routing``:

.. code-block:: bash

	psql -U postgres city_routing

* Teclea :command:`\\d` y se mostrará la lista de todas las tablas disponibles:

.. code-block:: sql

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


* Ejecutar la función de el camino más corto de Dijkstra suponiendo un grafo sin dirección:

.. code-block:: sql

	SELECT seq, node, edge, cost
		FROM pgr_dijkstra('
			SELECT gid as id, source, target,
				length as cost FROM ways',
			100, 600, false
		);

.. code-block:: sql

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


pgr_dijkstra también apoya :code:`bigint` para identificadores de nodos y segmentos, igualmente osm2pgrouting carga
los identificadores osm_id,
por lo que alternativamente se puede usar el osm_id en vez de el auto-generado `source` y `target` para los nodos.
Para buscar los correspondientes osm_ids para los nodos, usar esta consulta:

.. code-block:: sql

	SELECT id, osm_id
		FROM ways_vertices_pgr where id IN( 100, 600);

Which outputs:

.. code-block:: bash

	 id  |   osm_id
	-----+------------
	 100 | 1896068597
	 600 |   31369798
	(2 rows)


*  Ejecutar la función de el camino más corto de Dijkstra suponiendo un grafo sin dirección usando identificadores OSM.

.. code-block:: sql

	SELECT seq, node, edge, cost
	FROM pgr_dijkstra('
		SELECT gid as id, source_osm AS source, target_osm AS target,
			length as cost FROM ways',
		1896068597, 31369798, false
	);


Nota: La sub-consulta SQL debe llevar siempre los campos `id, source, target, and cost`.
Como se están usando campos `source_osm` y `target_osm`, se necesita crear un alias para que correspondan a las columnas `source` y `target`.

El resultado es:

.. code-block:: sql

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


Debido a que se está  usando identificadores para los segmentos que son auto generados,
los números en la columna `edge`` son los mismos que en la consulta anterior,
pero los números en `node` son los identificadores de OSM.

El beneficio de usar los identificadores de OSM vs los identificadores autogenerados es, que los
resultados van a ser consistentes entre las diferentes bases de datos si manejan un conjunto comun de datos OSM.
No todas las funciones han sido cambiadas para el uso de bigint, por lo que no en todas se puede usar
el identificador OSM.


* Para generar la gemetría de una ruta, hay que ligar el resultado con las geometrías de los caminos:

.. code-block:: sql

	SELECT seq, edge, rpad(b.the_geom::text,60,' ') AS "the_geom (truncated)"
		FROM pgr_dijkstra('
			SELECT gid as id, source, target,
				length as cost FROM ways',
			100, 600, false
		) a INNER JOIN ways b ON (a.edge = b.gid) ORDER BY seq;


.. code-block:: sql

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


* Para ver las rutas usar en una herramienta gráfica
  como :doc:`OpenJump <../overview/openjump_overview>` o como
  la extensión `DBmanager` de :doc:`QGIS <../overview/qgis_overview>`

Para usar la extensión DBmanager de Qgis: abrir Qgis e ir a :menuselection:`Database --> DB Manager --> DB Manager`.
Seleccionar el icono `SQL Window` finalmente cortar y pegar la consulta anterior.

* Ejecutar la función del camino más corto de Dijkstra considerando grafo con dirección.

En los ejemplos previos, se supuso que los segmentos o calles tienen igual costo en ambas direcciones.
Para casos donde existen caminos de un solo sentido, o distintas velocidades en ambos sentidos,
el costo de ir en una dirección del camino puede ser differente al de ir en la dirección opuesta.
Para estos casos se necesita una columna adicional a la sub-consulta `reverse_cost`.

.. code-block:: sql

	SELECT seq, node, edge, cost
		FROM pgr_dijkstra('
			SELECT gid as id, source, target,
				cost_s As cost, reverse_cost_s AS reverse_cost FROM ways',
			100, 600, true
		);


* Usa :command:`\\q` para salir del psql.


Que sigue?
================================================================================

* **pgRouting Website** - Visita el itio Web del projecto http://www.pgrouting.org para aprender más sobre pgRouting.

* **pgRouting Documentation** - Ve la documentatión más reciente en http://docs.pgrouting.org

* **pgRouting Workshop** - El taller `"FOSS4G routing with pgRouting tools and OpenStreetMap road data"` está disponible en: http://workshop.pgrouting.org
* **osm2pgRouting loading data** - https://github.com/pgRouting/osm2pgrouting/wiki/Documentation-for-osm2pgrouting-v2.1
* **QGIS pgRouting Layer Plugin** - https://plugins.qgis.org/plugins/pgRoutingLayer/ proviee un GUI para las functiones de pgRouting e interactúa con el mapa de esta forma no escribes consultas SQL.

