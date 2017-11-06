:Author: Astrid Emde
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-Mapbender3.png
  :alt: Logo du projet
  :align: right
  :target: http://www.mapbender.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: Projet OSGeo
  :align: right
  :target: http://www.osgeo.org


Mapbender
================================================================================

Framework pour géoportail
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Mapbender <http://mapbender3.org/en>`_ est un projet reconnu par OSGeo. C'est un framework de cartographie pour le web pour publier, enregistrer, voir, naviguer, suivre et donner des droits d'accès à des services d'Infrastructures de Données Spatiales (IDS).

Mapbender est le sommet de l'iceberg, un métacouche logicielle fournissant un accès à des composants d'IDS adhérant à des standards internationaux. Mapbender permet aux utilisateurs de facilement créer des clients web personnalisés à partir d'un large éventail de widgets (avec peu/un minimum de connaissances en programmation requises). Les widgets s'intègrent avec des fonctions serveur pour fournir des fonctionnalités avancées comme la sécurité basé sur un proxy, la digitalisation, l'auto-accrochage et plus.

Les applications de gestion de Mapbender sont simples et faciles à utiliser pour fournir des fonctionnalités fortement ciblées pour l'exploitation de composants d'IDS distribués à large échelle. C'est un outil de choix pour les administrateurs d'IDS qui ont besoin de maintenir, catégoriser et suivre des services de cartes WMS, WFS. Mapbender accorde des accès à des personnes, des groupes et gère les accès machine avec machine. La prise en compte des services standardisés, comme le WMS et le WFS-T de l'OGC permet de tirer avantage des services interopérables d'une multitude de plates-formes de serveur.

La partie client de Mapbender est basée sur Symfony2, OpenLayers, Mapproxy en utilisant les bibliothèques jQuery et jQuery UI qui fournissent de nombreux widgets. La partie serveur est implémentée avec PHP et PostgreSQL/PostGIS. 

Mapbender donne complètement une nouvelle perspective à la gestion d'IDS en n'utilisant rien d'autre qu'un navigateur web classique. 

.. image:: /images/projects/mapbender/mapbender3_basic_application.png
  :scale: 70%
  :alt: Application Mapbender
  :align: right


Caractéristiques principales
--------------------------------------------------------------------------------

* création facile d'interfaces de cartographie en ligne basées sur des applications modèle  

  * ajout/suppression/customisation de widgets jQuery 
  * stylage customisée avec le "Themeroller" de jQuery UI 
* chargement et partage de WMS distants (avec mise en cache) 

  * organisation des WMS récupérés pour gérer la superposition de couches
  * édition de la visibilité de couche
  * ordre
  * formatage
  * édition des légendes 
  * extension des services de métadonnées (profils ISO) basé sur la déclaration du document de "Capabilities" pour les catalogues avec une interface CSW
* chargement et configuration de WFS pour chercher, trouver et mettre en exergue des objets géographiques
* liaison du WFS transactionnel avec le WMS pour permettre la digitalisation en ligne (avec fonctionnalité d'accrochage avec service croisé, de manipulation de géométires comme le découpage, la combinaison, le clonage)
* création d'utilisateurs et de groupes, partage et octroi de droits d'accès aux services et modules
* traitement de WMC
* connexion à des catalogues distants, et connexion optionnelle à GeoNetwork opensource
* restriction des accès utilisateurs avec le module proxy pour sécuriser les services OWS par des serveurs reconnus
* suivi des protocoles encrypté, notifiaction de status et mise à jour automatique pour les services OGC distants 
* déploiement de clients OpenLayers pour le dépôt de service Mapbender
* impression de cartes haute-qualité en utilisant vos propres modèles PDF.
* ... et plus!

Standards implémentés
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.1.1, 1.3.0

Détails
--------------------------------------------------------------------------------

**Site web:** http://mapbender3.org/ 

**Licence:** `MIT license <http://opensource.org/licenses/MIT>`_

**Version du logiciel:** |version-mapbender|

**Plates-formes supportées:** Windows, Linux, Mac

**Support:** http://mapbender3.org/en/community


Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/mapbender_quickstart>`


