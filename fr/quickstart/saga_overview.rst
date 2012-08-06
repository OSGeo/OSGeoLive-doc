:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-saga.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.saga-gis.org


SAGA
================================================================================

SIG bureautique
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SAGA (System for Automated Geoscientific Analyses) est un SIG (Système d'information géographique) open utilisé pour l'édition et l'analyse de données spatiales.
Il inclut un grand nombre de modules pour l'analysie de vecteurs (point, line et polygones), de tables, de grilles et les données images.
Parmi d'autres, le pacquet inlcut mes modules pour les géostatistiques, la classification image, les projections, les processus dynamiques de simulation
(hydrologie, développement des paysages) et l'analyse de terrain. La fonctionnalité est accessible à partir d'une interface graphique utilisateur (GUI),
la ligne de commande ou en utilisant l'API C++.

SAGA a été développé depuis 2001, et le centre de développement de SAGA est situé à l'Institut
de Géographie de l'Université de Hamburg, avec des contributions d'une communauté mondiale grandissante.

.. image:: ../../images/screenshots/1024x768/saga_overview.png
  :scale: 40%
  :alt: screenshot
  :align: right

Eléments centraux
--------------------------------------------------------------------------------

* Accès à un nombre large de modules scientifiques à partir de l'interface graphique utilisateur ou la ligne de commande

 * Import/Export vers différents formats de fichier
 * Reprojection/Reéchantillonnage des données
 * Manipulation de données vecteur (fusion/intersection/attributs)
 * Manipulation de nuage de points à partir de données lidar
 * Données raster: interpolation, analyse de coûts, ...
 * Analyse d'image: filtres, détection. de contours, analyse de cluster, segmentation
 * Analyse de terrain numérique: génération d'indices géomorphométriques, réseaux de canaux, profils, lignes de contour, ...
 * Géostatistiques: modules pour la production de variogrammes adaptés et krigés

* Interface utilisateur rapide pour la gestion et la visualisation de données

 * Visualisation 3D

* API simple en C++ pour la création de nouveaux modules
* Ecriture de scripts avec la ligne de commande, liaisons pour python
* SAGA peut être accesssible à partir du langage statistique de R à travers le module RSAGA

Détails
--------------------------------------------------------------------------------

**Site Web:** http://www.saga-gis.org

**License:** LGPL v2.1 (api); GPLv2 (GUI and modules)

**Logiciels Version:** 2.0.8

**Plateformes supportées:** Windows, Linux, FreeBSD

**Interfaces API:** C++

**Support:** http://www.saga-gis.org


Démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/saga_quickstart>`