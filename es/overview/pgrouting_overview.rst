:Author: Mauricio Miranda
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _pgrouting-overview:

.. image:: ../../images/project_logos/logo-pgRouting.png
  :scale: 100 %
  :alt: pgRouting logo
  :align: right
  :target: http://www.pgrouting.org/

pgRouting
================================================================================

Herramientas SIG
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pgRouting extiende :doc:`PostGIS <postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ para proveer funcionalidades de ruteo espacial.

Las ventajas del ruteo en base de datos son:

* Los datos y atributos pueden ser modificados desde varios clientes, como :doc:`Quantum GIS <qgis_overview>` y :doc:`uDig <udig_overview>` a través de JDBC, ODBC, o directamente usando Pl/pgSQL. Los clientes pueden ser PCs o dispositivos móviles.
* Los cambios pueden ser reflejados instantáneamente a través del motor de ruteo. No hay necesidad de hacer cálculos previos.
* El parámetro de "costo" puede ser calculado dinámicamente a través de SQL y su valor puede provenir de múltiples campos y tablas.

.. image:: ../../images/screenshots/800x600/pgrouting.png
  :scale: 60 %
  :alt: pgRouting query in pgAdminIII
  :align: right

Funcionalidades principales
--------------------------------------------------------------------------------

pgRouting provee funciones para:

* Camino mínimo (Dijkstra): algoritmo de ruteo sin heurística
* Camino mínimo (A-Star): routeo para conjunto de datos grandes (con heurística)
* Camino mínimo (Shooting-Star): ruteo con restricciones de giro (con heurística)
* El problema del viajante (TSP: Traveling Salesperon Problem) 
* Cálculo de ruta (Isolíneas)

.. Implemented Standards
   ---------------------

.. * OGC standards compliant

Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://www.pgrouting.org

**Licencia:** GNU General Public License (GPL) version 2

**Versión del Software:** 1.05

**Plataformas soportadas:** Linux, Windows, Mac

**Soporte a lenguajes de programación:** SQL

**Soporte:** http://www.pgrouting.org

Guía de Inicio Rápido
--------------------------------------------------------------------------------

* :doc:`Guía de Inicio Rápido <../quickstart/pgrouting_quickstart>`


