:Author: Daniel Kastl
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
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

pgRouting estende il database geospaziale :doc:`PostGIS <postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ per provvedere funzionalità di routing geospaziale.

Vantaggi dell'approccio di database per il routing sono:

* I dati e gli attributi possono essere modificati da molti clients, come :doc:`Quantum GIS <qgis_overview>` e :doc:`uDig <udig_overview>` attraverso JDBC, ODBC, o direttamente usando Pl/pgSQL. I clients possono essere sia PCs che dispositivi mobili.
* I cambiamenti nei dati possono essere istantaneamente riflessi attraverso il motore di routing. Non c'è bisogno di effettuare calcoli precedentemente.
* Il parametro del "costo" può essere calcolato dinamicamente attraverso SQL e il suo valore può essere il risultato di diversi campi o tabelle.

.. image:: ../../images/screenshots/800x600/pgrouting.png
  :scale: 60 %
  :alt: pgRouting query in pgAdminIII
  :align: right

Caratteristiche Principali
--------------------------------------------------------------------------------

pgRouting fornisce funzioni per:

* Percorso più breve Dikstra: algoritmo di routing non euristico
* Percorso più breve A-Star: routing per grandi set di dati (euristico)
* Percorso più breve Shooting-Star: routing restrizioni di svolta (euristico)
* Problema del commesso viaggiatore
* Calcolo della distanza di guida (Isolinee)

.. Standards implementati
   -----------------------------

.. * conforme agli standards OGC

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://www.pgrouting.org

**Licenza:** GNU General Public License (GPL) version 2

**Versioni Software:** 1.05

**Piattaforme Supportate:** Linux, Windows, Mac

**Interfaccia API:** SQL

**Supporto Commerciale:** http://www.pgrouting.org

Presentazione veloce
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/pgrouting_quickstart>`


