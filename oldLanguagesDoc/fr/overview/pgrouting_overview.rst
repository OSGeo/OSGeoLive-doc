:Author: Daniel Kastl
:Reviewer: Cameron Shorter, Jirotech
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

Outils SIG
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pgRouting est une extension des bases de données géospatiales :doc:`PostGIS <postgis_overview>`/`PostgreSQL <http://postgresql.org>`_ afin de fournir un routage géospatial et d'autres fonctionnalités d'analyse de réseau.

Les avantages de l'approche par routage de la base de données sont :

* Les données et attributs peuvent être modifiés par de nombreux clients, comme :doc:`Quantum GIS <qgis_overview>` et :doc:`uDig <udig_overview>` via JDBC, ODBC, ou en utilisant directement Pl/pgSQL. Les clients peuvent être des PCs ou bien des appareils mobiles.
* Les données peuvent être reflétées instantanément via l'engin de routage. Il n'y a pas besoin d'effectuer de pré-calculs.
* Le paramètre "cost" (coût) peut être calculé dynamiquement via SQL et sa valeur peut provenir de plusieurs champs ou tables.

pgRouting est disponible sous licence GPLv2 et est maintenu par une communauté de particuliers, d'entreprises et d'organisations.

.. image:: /images/projects/pgrouting/pgrouting.png
  :scale: 70 %
  :alt: requête pgRouting dans pgAdminIII
  :align: right

Principales caractéristiques
--------------------------------------------------------------------------------

pgRouting propose des fonctions pour :

* Algorithme de Johnson, Plus Court Chemin de tous les couples
* Algorithme de Floyd-Warshall, Plus Court Chemin de tous les couples
* Plus Court Chemin A*
* Plus Court Chemin Dijkstra Bidirectionnel
* Plus Court Chemin A* Bidirectionnel  
* Plus Court Chemin Dijkstra
* Distance de conduite
* K- Plus Court Chemin, Chemins Alternatifs Multiples
* K-Dijkstra, Plus Court Chemin avec relation un à plusieurs
* Voyageur du commerce
* Plus Court Chemin avec Restriction de Virage

Pour plus d'informations sur l'utilisation de pgRouting dans vos applications, lire la `documentation <http://docs.pgrouting.org>`_.


.. Implemented Standards
   ---------------------

.. * OGC standards compliant

Détails
--------------------------------------------------------------------------------

**Site web :** http://www.pgrouting.org

**Licence:** GNU General Public License (GPL) version 2

**Version d'application :** 2.0

**Plate-formes supportées :** Linux, Windows, Mac

**Interfaces API :** SQL

**Support Commercial :** http://www.pgrouting.org/support.html

Démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation pour démarrer rapidement <../quickstart/pgrouting_quickstart>`
