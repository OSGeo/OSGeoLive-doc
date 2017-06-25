:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)



.. image:: /images/project_logos/logo-uDig.png
  :alt: Logo Udig
  :align: right
  :target: http://udig.refractions.net/

User-friendly Desktop Internet GIS (uDig)
================================================================================

SIG bureautique
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/screenshots/1024x768/udig-overview.png
  :scale: 50
  :alt: Workshop Udig
  :align: right

Le SIG "User-friendly Desktop Internet GIS" (uDig) est un visualisateur/éditeur de données spatiales opensource, avec un accent spécial sur les standards OpenGIS  pour les SIG en ligne, les standards "Web Map Server" (WMS) et "Web Feature Server" (WFS).

uDig est:

* **Facile pour les utilisateurs**, fournissant un environnement graphique familier pour les utilisateurs SIG;
* **Adapté à la bureautique**, fonctionnant nativement sur Windows, Mac OS/X et Linux;
* **Orienté internet**, consommant des services web géospatiaux appartenant à des standards; et,
* **Prêt pour le SIG**, fournissant le framework sur lequel des capacités analytiques complexes peuvent être ajoutées, et lequelles peuvent être graduellement incluses dans l'application principale.

Pour les développeurs, uDig fournit un plateforme commune en Java pour construire des applications spatiales avec des composants opensource. Le site web fournit des séries de tutoriels claires couvrant comment faire un outil simple jusqu'à comment mettre àdisposition votre propre application personnalisée.


Caractéristiques principales
--------------------------------------------------------------------------------

* Client bureautique avec intégration du glisser-déposer pour l'explorateur de fichiers et le navigateur web
* S'intègre avec votre infrastructure existante: ArcSDE, Oracle, DB2 et plus
* Fonctionne avec des fichiers locaux: Shapefile, jpeg, png, tiff et plus.
* Fonctionne avec des formats raster spatiaux avancés: ECW, MrSID, JPEG 2000
* Support pour les serveurs conformes au WMS (:doc:`GeoServer <geoserver_overview>` et MapServer testés)
* Expérience web intégré avec un navigateur intégré reconnaissant les services web OGC
  et ajoutant des liens sur la carte à l'écran
* Contrôle des styles de rendus avec "Style Layer Descriptor" (SLD) vous permettant de publier votre carte 
  en utilisant les mêmes paramètres dans uDig qu'avec les serveurs web WMS
* Intégration importante des standards permettant à l'application de basculer entre les services appropriés 
  requis pour l'affichage, l'interaction et l'édition
* Impression et génération PDF
* Pour les développeurs
  
  * Application Java construite en utilisant :doc:`GeoTools <geotools_overview>`, `JTS Topology Suite (JTS) <https://sourceforge.net/projects/jts-topo-suite/>`_
  * Système de plugin de qualité industriel fournit via la plateforme Eclipse "Rich Client Platform" (RCP)
  * Utilisation de widgets natifs


Standards implémentés
--------------------------------------------------------------------------------

* OGC Web Map Server (WMS)
* OGC Web Feature Server (WFS)
* OGC Web Feature Server Transactional (WFS-T)
* OGC Simple Features for SQL (SFQL)
* Web Map Server Cache (WMS-C)
* OGC Style Layer Descriptor (SLD)

Détails
--------------------------------------------------------------------------------

**Site web:** http://udig.refractions.net/

**Licence:** Licence GNU Lesser General Public (LGPL) version 2

**Version du logiciel:** |version-udig|

**Plates-formes supportées:** Windows, Linux, Mac

**Interfaces de l'API:** GeoTools, ImageIO-Ext, Java Advanced Imaging (JAI), Eclipse Rich Client Platform (RCP), Eclipse Modelling Framework (EMF)

**Support:** http://udig.refractions.net/users/

**Zone développeurs:** http://udig.refractions.net/developers/


Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/udig_quickstart>`


