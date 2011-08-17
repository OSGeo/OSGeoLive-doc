:Author: Daniel Kastl
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _pgrouting-quickstart:
 
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
	 public | geography_columns   | view     | postgres
	 public | geometry_columns    | table    | postgres
	 public | spatial_ref_sys     | table    | postgres
	 public | vertices_tmp        | table    | postgres
	 public | vertices_tmp_id_seq | sequence | postgres
	 public | ways                | table    | postgres
	(6 rows)

* Ejecutar la función ruta más corta usando algoritmo de Dijkstra:

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
    (33 rows)

* Para obtener el resultado del ruteo en un formato diferente, pruebe la siguiente función:

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
	(32 rows)

* Con el comando:`\\q` abandonara la consola de PostgreSQL.


¿Y ahora qué?
================================================================================

* **Sitio web de pgRouting** - Visite el sitio web del proyecto http://www.pgrouting.org para aprender más sobre pgRouting.

* **Taller en DVD** - Incluido en el LiveDVD del FOSS4G 2010 pgRouting workshop `"FOSS4G ruteo con herramientas de pgRouting, OpenStreetMap datos de vías y GeoEx"`, disponibles en: :file:`/usr/share/pgrouting/workshop/`

.. note::

	Para actualizar a la última versión del tutorial, abra una ventana de terminal, a continuación, ejecute ``sudo apt-get update && apt-get upgrade pgrouting-workshop``

