:Author: Peter Baumann
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-rasdaman.png
 :alt: Logo du projet 
  :align: right
  :target: http://www.rasdaman.org

Rasdaman
========

Base de données raster multi-dimentionelle
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rasdaman un système de base de données de tableaux qui fournit des géoservices flexibles,
rapides, scalables, pour des capteur spatio-temporels multi-dimensions, image, simulation, 
et des données statistiques d'un volume illimité.  Accès ponctuel, extraction, agrégation, 
mais aussi mélange et analytique sont disponibles grâce au langage de de requête raster  NewSQL avec 
des optimisations côté serveur hautement efficaces.  
La paralléisation de Cloud/cluster est accomplie d'un manière sécurisée, contrôlée par un administrateur.

En plus du language de requêtage raster, rasdaman supporte les standards OGC des service web WMS, WCS et WCPS web service standards, ainsi que des API C++ et Java. 
Un ensemble de démonstrations interactives est disponible à cette adresse: http://standards.rasdaman.org.  Un pilote rasdaman est intégré GDAL et MapServer.

.. image:: /images/screenshots/rasdaman/rasdaman-collage.jpg
  :scale: 50 %
  :alt: rasdaman screenshot collage
  :align: right

Elements centraux
--------------------------------------------------------------------------------

    * Vrai multidimentional - de 1-D à 2-D, 3-D, 4-D et suivant
    * Puissant, flexible langage de requêtage pour demander de la visualisation, classifications, convolution, agrégation, et
      beaucoup d'autres fonctions géospatiales
    * Indexation spatiale et tuilage adaptatif pour un accès rapide aux données
    * Tuilage en flux pour une scalabilité de l'ordinateur portable au cluster et au cloud
    * Support des standards raster OGC, implémentation de référence de WCS Core et WCPS


Standads implémentés
--------------------------------------------------------------------------------

    * OGC WMS 1.3, WCS 2.0, WCPS 1.0

Détails
-------

**site Web :** http://www.rasdaman.org

**Licence:**

* clients et API: GNU Lesser General Public License (LGPL) version 3
* moteur du serveur: GNU General Public License (GPL) version 3

**Version du logiciel:** |version-rasdaman|

**Plate-formes supportées :** GNU/Linux, MacOS, Solaris

**API Interfaces:** rasql, C++, Java

**Support:**  http://www.rasdaman.com

Quickstart
--------------------------------------------------------------------------------

* :doc:`Guide de démarrage rapide <../quickstart/rasdaman_quickstart>`


