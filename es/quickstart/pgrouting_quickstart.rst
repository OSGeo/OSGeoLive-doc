:Author: Daniel Kastl
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _pgrouting-quickstart-es:
 
.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
Guía de inicio rápido para pgRouting 
********************************************************************************

pgRouting es una extensión de :doc:`PostGIS <../overview/postgis_overview>` la cual añade funcionalidades de ruteo a :doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_.

Esta guía de inicio rápido describe cómo abrir una base de datos desde la línea de comandos y ejecutar una consulta de camino más corto con unos datos de prueba.


Ejecución de pgRouting
================================================================================

* Abra una ventana de terminal :menuselection:`Aplicaciones --> Accesorios --> Ventana de Terminal` y conéctese a la base de datos de ``pgrouting`` :

.. code-block:: bash

	psql -U user pgrouting

* Escriba :`\\d` para mostrar todas las tablas disponibles:

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
	(9 rows)

* Ejecutar la función ruta más corta usando algoritmo de Dijkstra:

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
    (77 rows)

* Para obtener el resultado del ruteo en un formato diferente, pruebe la siguiente función:

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
	(76 rows)

* Con el comando:`\\q` abandonara la consola de PostgreSQL.


¿Y ahora qué?
================================================================================

* **Sitio web de pgRouting** - Visite el sitio web del proyecto http://www.pgrouting.org para aprender más sobre pgRouting.

* **Taller en DVD** - Incluido en el LiveDVD del FOSS4G 2010 pgRouting workshop `"FOSS4G ruteo con herramientas de pgRouting, OpenStreetMap datos de vías y GeoEx"`, disponibles en: :file:`/usr/share/pgrouting/workshop/`

.. note::

	Para actualizar a la última versión del tutorial, abra una ventana de terminal, a continuación, ejecute ``sudo apt-get update && apt-get upgrade pgrouting-workshop``

