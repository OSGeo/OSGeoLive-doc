:Author: Peter Baumann
:Author: Jinsongdi Yu
:Author: Dimitar Misev
:Author: Michael Owonibi
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-rasdaman.png
 :alt: project logo
  :align: right
  :target: http://rasdaman.org

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100
  :alt: OSGeo Incubation Project
  :align: right
  :target: http://www.osgeo.org

Rasdaman
================================================================================

Base de données raster multi-dimentionelle
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rasdaman est une base de données relationnelle standard qui fournit le stockage et propose la récupération de données raster multi-dimensionnelles (cf tableaux)
de taille illimitée, en utilisant un langage de type SQL raster avec une très grande efficacité et une optimisation côté serveur. Les données sont stockées dans une
Base de données PostgreSQL, pour l'intégration des informations intégrées. Le Driver de rasdaman est issu de GDAL (Geospatial Data
Abstraction Library) pour la gestion des formats de données géospatiales, l'intégration de MapServer est disponible en version bêta.
L'interface intègre OGC WCS, WCPS, et WPS, tout comme C++ et des API Java en plus du moteur de requtage SQL.

La technologie rasdaman est stable et mature. Elle est déployée en production depuis 10 ans; L'IGN (Istitut National de Géographie Français)
utilise cette technologie rasdaman sur des douzaines de téraoctets d'image aérienne. À la conférence *ACM  Principles of Database Systems*
en 2007, l'expert en base de données raster Rona Machlin a défini rasdaman comme "la mise en œuvre plus complète d'un tel système".

.. image:: ../../images/screenshots/1024x768/rasdaman-collage.png
  :scale: 50 %
  :align: right

Elements centraux
--------------------------------------------------------------------------------

    * Vrai multidimentional - de 1-D à 2-D, 3-D, 4-D et suivant
    * Puissant, flexible langage de requetage pour demander de la visualisation, classifications, convolution, agrégation, et
      beaucoup d'autre fonction géospatiale
    * Indexation spatiale et tuilage adaptatif pour un accès rapide aux données
    * Tuilage en streaming pour une scalabilité et de hautes performances sur des architectures moyenne
    * Support du multi-utilisateur garce au multiplexage serveur
    * Totale intégration des données raster et de toutes les autres données géographiques dans la base postgreSQL

Standads implémenté
--------------------------------------------------------------------------------

    * OGC WCS 2.0, WCPS 1.0, WPS 1.0

Détails
--------------------------------------------------------------------------------

**Website:** www.rasdaman.org

**Licence:**

* clients and petascope: GNU Lesser General Public License (LGPL) version 3
* server engine: GNU General Public License (GPL) version 3

**Software Version:** 8.3.1

**Supported Platforms:** Linux, Mac, Solaris

**API Interfaces:** rasql, C++, Java; OGC-based WCS, WCPS, WCS-T, and WPS interfaces

**Support:**  www.rasdaman.com

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/rasdaman_quickstart>`


