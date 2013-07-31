:Author: Daniel Kastl
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Luca Delucchi
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
  :scale: 100 %
  :alt: pgRouting logo
  :align: right
  :target: http://www.pgrouting.org/

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

.. image:: ../../images/screenshots/800x600/pgrouting.png
  :scale: 60 %
  :alt: pgRouting query in pgAdminIII
  :align: right

Caratteristiche principali
--------------------------------------------------------------------------------

pgRouting fornisce funzioni per:

* Tutte le coppie dei percorsi più brevi, Johnsonas Algorithm :sup:`[1]`
* Tutte le coppie dei percorsi più brevi, Floyd-Warshall Algorithm :sup:`[1]`
* Percorso più breve Path A*
* Percorso più breve bidirezionale Dijkstra :sup:`[1]`
* Percorso più breve bidirezionale A* :sup:`[1]`
* Percorso più breve Dijkstra
* Calcolo della distanza di guida
* Percorso K-Shortest, Diversi percorsi alternativi :sup:`[1]`
* K-Dijkstra, Uno a molti percorsi più brevi :sup:`[1]`
* Problema del commesso viaggiatore
* Percorso più breve con restrizioni di svolta (TRSP) :sup:`[1]`
* Percorso più breve Shooting Star :sup:`[2]`

Impara di più su come utilizzare pgRouting nelle tue applicazioni leggendo la `documentazione <http://docs.pgrouting.org>`_. 

| :sup:`[1]` **Nuove** in pgRouting 2.0 
| :sup:`[2]` Fuori da pgRouting 2.0 

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

