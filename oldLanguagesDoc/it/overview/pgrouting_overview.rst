:Author: Daniel Kastl
:Reviewer: Cameron Shorter, Jirotech
:Translator: Luca Delucchi
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-pgRouting.png
  :alt: pgRouting logo
  :align: right
  :target: http://www.pgrouting.org/

.. image:: /images/logos/OSGeo_community.png
   :scale: 100
   :alt: OSGeo Community Project
   :align: right
   :target: http://www.osgeo.org

pgRouting
================================================================================

Strumenti GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pgRouting estende il database geospaziale :doc:`PostGIS <postgis_overview>`/`PostgreSQL <http://postgresql.org>`_ 
per provvedere funzionalità di routing geospaziale e analisi di reti.

Vantaggi dell'approccio di database per il routing sono:

* I dati e gli attributi possono essere modificati da molti clients, come 
  :doc:`Quantum GIS <qgis_overview>` e :doc:`uDig <udig_overview>` attraverso JDBC, 
  ODBC, o direttamente usando Pl/pgSQL. I clients possono essere sia PCs che dispositivi mobili.
* I cambiamenti nei dati possono essere istantaneamente riflessi attraverso il motore 
  di routing. Non c'è bisogno di effettuare calcoli precedentemente.
* Il parametro del "costo" può essere calcolato dinamicamente attraverso SQL e il suo 
  valore può essere il risultato di diversi campi o tabelle.

pgRouting è disponibile sotto la licenza GPLv2 ed è supportata da una crescente comunità
di persone individuali, aziende e organizzazioni.

.. image:: /images/screenshots/pgrouting/pgrouting.png
  :scale: 70 %
  :alt: pgRouting query in pgAdminIII
  :align: right

Caratteristiche principali
--------------------------------------------------------------------------------

pgRouting fornisce funzioni per:

* Tutte le coppie dei percorsi più brevi, Johnsonas Algorithm
* Tutte le coppie dei percorsi più brevi, Floyd-Warshall Algorithm
* Percorso più breve Path A*
* Percorso più breve bidirezionale Dijkstra
* Percorso più breve bidirezionale A*
* Percorso più breve Dijkstra
* Calcolo della distanza di guida
* Percorso K-Shortest, Diversi percorsi alternativi
* K-Dijkstra, Uno a molti percorsi più brevi
* Problema del commesso viaggiatore
* Percorso più breve con restrizioni di svolta (TRSP)

Impara di più su come utilizzare pgRouting nelle tue applicazioni leggendo la `documentazione <http://docs.pgrouting.org>`_.

.. Standard implementati
   -----------------------------

.. * conforme agli standards OGC

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://www.pgrouting.org

**Licenza:** GNU General Public License (GPL) version 2

**Versioni Software:** 2.0

**Piattaforme Supportate:** Linux, Windows, Mac

**Interfaccia API:** SQL

**Supporto Commerciale:** http://www.pgrouting.org/support.html

Guida rapida
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/pgrouting_quickstart>`
