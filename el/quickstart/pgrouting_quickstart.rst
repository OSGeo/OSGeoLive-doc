:Author: Daniel Kastl
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _pgrouting-quickstart:
 
.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

***************************************
Εγχειρίδιο Γρήγορης Εκκίνησης pgRouting
***************************************

Το pgRouting είναι μια επέκταση στην :doc:`PostGIS <postgis_overview>` στην οποία προσθέτει διαδικασίες δρομολόγησης στις `PostGIS <http://www.postgis.org>`_/`PostgreSQL <http://www.postgresql.org>`_.

Αυτό το κείμενο περιγράφει πώς να ανοίξετε μια βάση δεδομένων από την γραμμή εντολών και να εκτελέσετε μια απλή αναζήτηση ελάχιστης διαδρομής στα δεδομένα επίδειξης.


Εκτελώντας το pgRouting
=======================

* Ανοίξτε ένα παράθυρο :menuselection:`Applications --> Accessories --> Terminal` και συνδεθείτε στην ``pgrouting`` βάση δεδομένων:

.. code-block:: bash

	psql -U user pgrouting

* Πληκτρολογήστε :command:`\\d` και θα δείτε όλους τους διαθέσιμους πίνακες:

.. code-block:: sql

			      Πίνακας σχέσεων
	 Σχήμα  |       Όνομα         |  Τύπος   | Χρήστης   
	--------+---------------------+----------+----------
	 public | geography_columns   | view     | postgres
	 public | geometry_columns    | table    | postgres
	 public | spatial_ref_sys     | table    | postgres
	 public | vertices_tmp        | table    | postgres
	 public | vertices_tmp_id_seq | sequence | postgres
	 public | ways                | table    | postgres
	(6 γραμμές)

* Εκτελέστε στην συνάρτηση ελάχιστης διαδρομής Dijkstra:

.. code-block:: sql

	SELECT * FROM shortest_path('
			SELECT gid as id, 
				 source::integer, 
				 target::integer, 
				 length::double precision as cost 
				FROM ways', 
			1888, 4738, false, false); 

.. code-block:: sql

     vertex_id | edge_id |       Κόστος         
    -----------+---------+---------------------
		  1888 |    2818 |  0.0989108306469789
		  1555 |    2819 |   0.107183313746265
		  2435 |    2820 |   0.179335285582576
		   ... |     ... |                 ...
		  4738 |      -1 |                   0
    (33 γραμμές)

* Δοκιμάστε την συνάρτηση μετατροπής (wrapper) ώστε να πάρετε το αποτέλεσμα σε μια άλλη μορφή:

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
    (32 γραμμές)

* Με την εντολή :command:`\\q` εγκαταλείπετε το κέλυφος της PostgreSQL.


Τεκμηρίωση
==========

* **pgRouting Website** - Επισκεφτείτε τον ιστοχώρο http://www.pgrouting.org για να μάθετε περισσότερα για το pgRouting.

* **Workshop on DVD** - Σε αυτό το DVD περιλαμβάνονται τα αρχεία του FOSS4G 2010 pgRouting workshop `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoEx"`, διαθέσιμα στο: :file:`/usr/share/pgrouting/workshop/`

.. note::
	Για να εγκαταστήσετε την τελευταία έκδοση από το εγχειρίδιο εκμάθησης ανοίξτε ένα τερματικό και εκτελέστε την ακόλουθη εντολή ``sudo apt-get update && apt-get upgrade pgrouting-workshop``

