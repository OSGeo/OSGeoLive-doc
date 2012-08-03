:Author: Howard Butler
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-libLAS.png
  :alt: Logo du projet
  :align: right
  :target: http://liblas.org/

LibLAS
================================================================================

Accès aux données LiDAR
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

libLAS est une bibliothèque C/C++ pour lire et écrire le format très courant 
pour le `LiDAR`_ , `LAS`. Le `format LAS ASPRS`_ est un format séquentiel binaire 
utilisé pour stocker des données de capteurs LiDAR et par les logiciels de 
traitement de données LiDAR pour l'échange et l'archivage.

.. image:: ../../images/screenshots/800x600/liblas.jpg
  :alt: Acquisition LiDAR
  :align: right
  :scale: 80 %
  
Le LiDAR (Light Detection and Ranging) est une forme de détection d'intervalles 
de distance haute-précision un peu comme l'est un système radar qui utilise un 
laser lumineux comme émission électromagnétique. Un des produits issu des 
systèmes LIDAR est une donnée de nuages de points qui peut être conceptualisée 
en une série de mesures de points représentant la distance du capteur par rapport 
à l'émission retournée. Un format de stockage courant pour ces données de nuages 
de points est le format LAS ASPRS.

Caractéristiques principales
--------------------------------------------------------------------------------

* API C/C++/Python pour lire, écrire et manipuler des données LAS
* `Utilitaires en ligne de commande`_ pour manipuler les données LAS basé sur `LAStools`_
* Reprojection de coordonnées via `GDAL <http://gdal.org>`__

Détails
--------------------------------------------------------------------------------
 
**Site web:** http://liblas.org

**Licence:** BSD

**Version du logiciel:** 1.7.0

**Plates-formes supportées:** Cross Platform C++ -- Mac OS X, Windows (via `OSGeo4W`_), and Linux

**Interfaces de l'API:** C, C++, Python

**Support:** `Communication et support <http://liblas.org/community.html>`_

Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/liblas_quickstart>`

.. _`LIDAR`: http://en.wikipedia.org/wiki/LIDAR
.. _`LAStools`: http://www.cs.unc.edu/~isenburg/lastools/
.. _`Format LAS`: http://www.lasformat.org/
.. _`Comité des standards ASPRS`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`format LAS ASPRS`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`Utilitaires en ligne de commande`: http://liblas.org/utilities/index.html
.. _`OSGeo4W`: http://trac.osgeo.org/osgeo4w/
.. _`Wikipedia`: http://en.wikipedia.org/wiki/LIDAR
