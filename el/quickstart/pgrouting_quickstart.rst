:Author: Daniel Kastl
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

***************************************
Εγχειρίδιο Γρήγορης Εκκίνησης pgRouting
***************************************

Το pgRouting είναι μια επέκταση στην :doc:`PostGIS <../overview/postgis_overview>` στην οποία προσθέτει διαδικασίες δρομολόγησης στις `PostGIS <http://www.postgis.org>`_/`PostgreSQL <http://www.postgresql.org>`_.

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
	 public | classes         	| table	| user
	 public | geography_columns   | view 	| user
	 public | geometry_columns	| table	| user
	 public | nodes           	| table	| user
	 public | spatial_ref_sys 	| table	| user
	 public | types           	| table	| user
	 public | vertices_tmp    	| table	| user
	 public | vertices_tmp_id_seq | sequence | user
	 public | ways            	| table	| user
	(9 γραμμές)

* Εκτελέστε στην συνάρτηση ελάχιστης διαδρομής Dijkstra:

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
    (77 γραμμές)

* Δοκιμάστε την συνάρτηση μετατροπής (wrapper) ώστε να πάρετε το αποτέλεσμα σε μια άλλη μορφή:

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
	(76 γραμμές)

* Με την εντολή :command:`\\q` εγκαταλείπετε το κέλυφος της PostgreSQL.


Τεκμηρίωση
==========

* **pgRouting Website** - Επισκεφτείτε τον ιστοχώρο http://www.pgrouting.org για να μάθετε περισσότερα για το pgRouting.

* **Workshop on DVD** - Σε αυτό το DVD περιλαμβάνονται τα αρχεία του FOSS4G 2010 pgRouting workshop `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoEx"`, διαθέσιμα στο: :file:`/usr/share/pgrouting/workshop/`

.. note::
	Για να εγκαταστήσετε την τελευταία έκδοση από το εγχειρίδιο εκμάθησης ανοίξτε ένα τερματικό και εκτελέστε την ακόλουθη εντολή ``sudo apt-get update && apt-get upgrade pgrouting-workshop``

