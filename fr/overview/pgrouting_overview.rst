:Author: Daniel Kastl
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
  :scale: 100 %
  :alt: Logo pgRouting
  :align: right
  :target: http://www.pgrouting.org/

pgRouting
================================================================================

Outils SIG
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pgRouting étend la base de données géospatiale :doc:`PostGIS <postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ pour fournir des fonctionnalités de routage.

Les avantages d'une approche du routage par l'intermédiaire d'une base de données sont:

* Les données et les attributs peuvent être modifiés par de nombreux clients, comme :doc:`Quantum GIS <qgis_overview>` et :doc:`uDig <udig_overview>` via JDBC, ODBC, ou en utilisant directement Pl/pgSQL. Les clients peuvent être autant des PC que des appareils mobiles.
* Les changements de données peuvent être instantanément pris en compte grâce au moteur de routage. Il n'y a pas nécessité de faire des précalculs.
* Le paramètre de "coût" peut être calculé dynamiquement via le SQL et sa valeur peut être alimentée depuis plusieurs champs ou tables.

.. image:: ../../images/screenshots/800x600/pgrouting.png
  :scale: 60 %
  :alt: Requête pgRouting dans pgAdminIII
  :align: right

Caractéristiques principales
--------------------------------------------------------------------------------

pgRouting fournit les fonctions pour:

* le plus court chemin en utilisant Dikstra : algorithme de routage sans heuristique
* le plus court chemin en utilisant A-Étoile : routage pour grand un ensemble de données (avec heuristiques)
* le plus court chemin en utilisant Shooting-Star: routage prenant en compte le sens de parcours (avec heuristiques)
* la résolution du problème du voyageur de commerce (TSP en anglais)
* le calcul de distance de conduite (Isolignes)

.. Implemented Standards
   ---------------------

.. * OGC standards compliant

Détails
--------------------------------------------------------------------------------

**Site web:** http://www.pgrouting.org

**Licence:** Licence GNU General Public (GPL) version 2

**Version du logiciel:** 1.05

**Plates-formes supportées:** Linux, Windows, Mac

**Interface de l'API:** SQL

**Support commercial:** http://www.pgrouting.org

Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/pgrouting_quickstart>`

