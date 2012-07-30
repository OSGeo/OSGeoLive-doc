:Author: Ian Turton
:Author: Frank Gasdorf
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GeoServer.png
  :scale: 100%
  :alt: Logo du projet
  :align: right
  :target: http://geoserver.org/display/GEOS/Welcome

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: Projet OSGeo
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GeoServer
================================================================================

Service Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoServer est un serveur web qui permet de servir des cartes et des données 
depuis une variété de formats, des clients standards web ou bureautique jusqu'aux 
programmes SIG avancés. Cela signifie que vous pouvez stocker vos données spatiales 
dans presque n'importe lequel de vos `formats
<http://docs.geoserver.org/stable/en/user/data/index.html>`_ préférés mais aussi 
que vos utilisateurs n'ont pas besoin de savoir exactement ce que sont des données 
SIG. Au niveau le plus basique, tout ce dont ils ont besoin est un navigateur web 
pour voir les cartes comme vous voulez. 

GeoServer est l'implémentation de référence de l\'`Open Geospatial 
Consortium <http://www.opengeospatial.org>`_ (OGC) pour les standards
:doc:`../standards/wfs_overview` et  
:doc:`../standards/wcs_overview`, ainsi qu'un serveur haute performance certifié 
conforme au :doc:`../standards/wms_overview`. 
GeoServer forme un des composants essentiels du web géospatial. 

.. image:: ../../images/screenshots/800x600/geoserver.gif
  :scale: 60 %
  :alt: Capture d'écran de GeoServer
  :align: right

Caractéristiques principales
--------------------------------------------------------------------------------

**Sert des données d'une variété d'entrepôts de données:**
    * Vecteur
        - Fichiers Shp, WFS externes
        - PostGIS, ArcSDE, DB2, Oracle Spatial, MySql, SQL Server
    * Raster
        - GeoTiff, JPG et PNG (avec fichier wld), pyramide d'images, formats de GDAL, mosaïquage d'images, GeoRaster Oracle

**La donnée est servie comme des images simples et rapides en utilisant le protocole WMS:**
    Comme la donnée est servie comme une image, votre donnée est complètement sûre et sécurisée. A moins que quelqu'un redigitalise votre donnée, il n'est pas possible de de vous la voler.
    L'apparence de chaque couche de carte peut être controlée en utilisant le standard SLD qui permet aux objets géographiques d'être coloriés et étiquetés. En combinant ces règles avec les filtres OGC, un stylage suivant l'échelle peut être implémenté permettant d'afficher plus de détails au fur et à mesure du zoom. La gestion des collisions des étiquettes, le groupage de couches et les priorités sont aussi implémentées.

**Des données vecteur complète peuvent être envoyées au client en utilisant le protocole WFS:**
     Un client WFS peut télécharger des données vecteur et les utiliser pour faire des cartes, de l'analyse spatiale et d'autres opérations. L'utilisateur peut aussi s'il y est autorisé modifer la donnée et la renvoyer au serveur pour mettre à jour les données stockées en utilisant le protocole WFS-T.
     La donnée peut être transmise en utilisant le GML (compressé) aussi bien que d'autres formats standards comme le shapefile et le json.

**Les valeurs des données raster peuvent être renvoyées à un client en utilisant le protocole WCS:**
     Un client SIG peut interroger la donnée raster actuelle pour être utilisée pour de l'analyse spatiale. Cela permet à un utilisateur de créer des applications qui peuvent modéliser le processus décrit par votre donnée.

**Reprojection à la volée:**
     GeoServer supporte la majorité des projections de la base de données EPSG et peut reprojeter les données dans n'importe laquelle d'entre elles à la demande pour permettre aux clients avec un support limité pour la reprojection de basculer cette charge au serveur. 

**Mise en cache et tuilage des WMS**
    `GeoWebCache <http://geowebcache.org/>`_ est un client de tuilage WMS. Il fonctionne comme un serveur proxy entre le serveur de carte et le client cartographique, en cachant les tuiles au fur et à mesure de leur interrogation, éliminant des requêtes redondantes et sauvant des temps de traitements importants. GeoWebCache a été intégré dans GeoServer.

Standards implémentés
--------------------------------------------------------------------------------

Support de nombreux standards de l'Open Geospatial Consortium  (OGC):

  * :doc:`../standards/wms_overview`
  * :doc:`../standards/wfs_overview`, WFS-T (transactionnel)
  * :doc:`../standards/wcs_overview`
  * :doc:`../standards/fe_overview`
  * :doc:`../standards/sld_overview` 
  * :doc:`../standards/gml_overview`

Détails
--------------------------------------------------------------------------------

**Site web:** http://geoserver.org/display/GEOS/Welcome

**Licence:** Licence GNU General Public (GPL) version 2

**Version du logiciel:** 2.1.3

**Plateformes supportées:** Toutes les plateformes utilisant Java 1.5 et plus: - Windows, Linux, Mac

**Interfaces de l'API:** WMS, WFS, WCS, REST

**Support:** http://geoserver.org/display/GEOS/Commercial+Support

Guide de démarrage rapide
--------------------------------------------------------------------------------
    
* :doc:`Documentation du guide de démarrage rapide <../quickstart/geoserver_quickstart>`
