:Author: Daniel Kastl
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Anna Muñoz
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _pgrouting-overview:

.. image:: ../../images/project_logos/logo-pgRouting.png
  :scale: 100 %
  :alt: pgRouting logo
  :align: right
  :target: http://www.pgrouting.org/

pgRouting
================================================================================

Eines GIS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pgRouting amplia les funcionalitats de la base de dades espacial :doc:`PostGIS <postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ 
proporcionant funcions per al càlcul de rutes.

Els avantatges del càlcul de rutes sobre una base de dades són:

* Les dades i els atributs es poden modificar per diversos clients, com :doc:`Quantum GIS <qgis_overview>` i :doc:`uDig <udig_overview>` a través de JDBC, ODBC, o usant directament Pl/pgSQL. Els clients poden ser PCs o dispositius mòvils.
* Els canvis en les dades es poden reflectir automàticament a través del motor de càlcul de rutes. No cal fer cap càlcul previ.
* El paràmetre "cost" es pot calcular de manera dinàmica per mitjà de SQL i el seu valor pot provenir de diversos camps i taules. 

.. image:: ../../images/screenshots/800x600/pgrouting.png
  :scale: 60 %
  :alt: consulta pgRouting en pgAdminIII
  :align: right

Funcionalitats Principals
--------------------------------------------------------------------------------

pgRouting proporciona funcions per:

* Camins mínims (Dijkstra): algorisme de càlcul de rutes sense heurística
* Camins mínims (A-Star): algorisme de càlcul de rutes per a grans conjunts de dades (amb heurística)
* Camins mínims (Shooting-Star): algorisme de càlcul de rutes amb restriccions de gir (amb heurística)
* Problema del viatjant (TSP, Traveling Salesperson Problem)
* Cpalculs de distància de viatge (Isolínies)

.. Estàndards implementats
   -----------------------

.. * segueix l'estàndard OGC

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://www.pgrouting.org

**Llicència:** GNU General Public License (GPL) version 2

**Versió de programari:** 1.05

**Plataformes suportades:** Linux, Windows, Mac

**Suport a llenguatges de programació:** SQL

**Suport comercial:** http://www.pgrouting.org

Guia d'inici ràpid
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/pgrouting_quickstart>`


