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

pgRouting is an extension and adds routing functionality to :doc:`PostGIS <../overview/postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ databases.

This Quick Start describes how to open a database with the command line and run a basic shortest path query with the sample test data.


Running pgRouting
================================================================================

* Open a :menuselection:`Applications --> Accessories --> Terminal` window and connect to the ``pgrouting`` database:

.. code-block:: bash

	psql -U user pgrouting

* Type :command:`\\d` will list you all available tables:

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

* Run the Dijkstra shortest path function:

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

* Try the wrapper function to get the routing result in a different format:

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

* With :command:`\\q` command leave the PostgreSQL shell.


What next?
================================================================================

* **pgRouting Website** - Visit the project website http://www.pgrouting.org to learn more about pgRouting.

* **Workshop on DVD** - Included on this LiveDVD is the FOSS4G 2010 pgRouting workshop `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoExt"`, available in: :file:`/usr/share/pgrouting/workshop/`

.. note::

	To update to the latest version of the tutorial, open a terminal window, then run ``sudo apt-get update && apt-get upgrade pgrouting-workshop``

