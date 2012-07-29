.. Geospatial Standards documentation master file, created by
   sphinx-quickstart on Mon Jul 19 08:52:52 2010.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Standards de l'Open Geospatial Consortium (OGC)
================================================================================

Introduction
--------------------------------------------------------------------------------
L'Open Geospatial Consortium (OGC) a été fondé en 1994 pour rendre l'information géographique partie intégrale des infrastructures du monde de l'information. Les membres de l'OGC – des développeurs et des utilisateurs de ces technologies -- développent de manière collaborative  des standards d'interfaces ouvertes avec des standards d'encodage associés, et aussi des "bonnes manières", qui permettent aux développeurs de créer des systèmes d'informations qui puissent facilement échanger de l'information "géospatial" et des instructions avec d'autres systèmes  d'information. Les besoins couvrent aussi bien des calendriers complexes et le contrôle de satellites d'observation de la Terre à l'affichage de simples images de carte sur le web et à l'encodage de position en quelques octets pour le géo-tagage et la messagerie. Un coup d'oeil sur les groupes de travail OGC par domaine (http://www.opengeospatial.org/projects/groups/wg) montre l'étendue large que couvre l'activité actuelle au sein de l'OGC.

La ligne de base de l'OGC  et le modèle de référence de l'OGC
--------------------------------------------------------------------------------

Le modèle de base des standards OGC se compose des standards OGC (http://www.opengeospatial.org/standards) pour les interfaces, les encodages, les profils, les schémas d'application, et les documents de bonnes pratiques. Le modèle de Référence de l'OGC (ORM en anglais) (http://www.opengeospatial.org/standards/orm) décrit les standards et les relations entre eux avec les standards ISO associés. L'ORM fournit une vue d'ensemble des standards OGC et sert comme une ressource utile pour la définition des architectures pour des applications spécifiques.

En développant des applications de Web Services utilisant les standards OGC (et en apprenant leurs relations avec les standards OGC), cela aide à penser à la manière de publier, localiser et appeler ("publish, find, bind") qui sont les fonctions clés pour les applications en environnement web.

* Publier: Les fournisseurs de services préviennent leurs ressources.
* Localiser: Les utilisateurs finaux et leurs applications peuvent découvrir des ressources au lancement.
* Appeler: Les utilisateurs finaux et leurs applications peuvent accéder et exercer les ressources au lancement.

La plupart des services des standards OGC qui ont été développés dans les dernières années sont des standards pour un environnement de services web, et ces standards sont collectivement appelés comme Services Web OGC (OWS en anglais). La figure ci-dessous fournit le schéma d'architecture général pour les Services Web OGC. Ce schéma identifie les classes génériques de services qui participent dans différentes activités de géotraitements et de localisation.


.. figure:: ../../images/standards/publish_find_bind.jpg
  :scale: 55%
  :alt: Cadre de travail des services web des standards OGC de géotraitements 

Les acronymes dans la figure sont définis ci-dessous. Certains d'entre eux sont des “standards OGC" et d'autres sont disponibles publiquement comme des “Discussion Papers", "Requests" et "Recommendation Papers". (Notez que parmi les standards de travail de travail ne sont pas encore publiques, mais sont accessibles par les membres de l'OGC.) 

.. add all standard overview documents to the toc and add all others right behind

.. toctree::
   :maxdepth: 1
   :glob:
   
   *_overview

* Sensor Planning Service (SPS)
* Web Terrain Service (WTS)
* Grid Coverage Service
* Coordinate Transformation Service
* Web Coverage Processing Service (WCPS)
* Web Map Tile Service (WMTS)
* Simple Features (SF)
* Sensor Web Enablement (SWE)
* XML for Image and Map Annotation (XIMA)
* CityGML
* GeosciML
* GML in JPEG 2000
* Observations and Measurements (O&M)
* Symbology Encoding
* Transducer Markup Language (TML)


.. links to standards
  * :doc:`wms_overview` (http://www.opengeospatial.org/standards/wms)
  * :doc:`wfs_overview` (http://www.opengeospatial.org/standards/wfs)
  * :doc:`wcs_overview` (http://www.opengeospatial.org/standards/wcs)
  * :doc:`wps_overview` (http://www.opengeospatial.org/standards/wps)
  * :doc:`csw_overview` (http://www.opengeospatial.org/standards/specifications/catalog)
  * :doc:`sos_overview` (http://www.opengeospatial.org/standards/sos)
  * Sensor Model Language (SensorML) (http://www.opengeospatial.org/standards/sensorml) 
  * Sensor Planning Service (SPS) (http://www.opengeospatial.org/standards/sps)
  * Web Terrain Service (WTS) (http://portal.opengeospatial.org/files/?artifact_id=1072)
  * Grid Coverage Service (http://www.opengeospatial.org/standards/gc)
  * Coordinate Transformation Service (http://www.opengeospatial.org/standards/ct)
  * Web Coverage Processing Service (WCPS) (http://www.opengeospatial.org/standards/wcps)
  * Web Map Tile Service (WMTS) (http://www.opengeospatial.org/standards/wmts)
  * :doc:`gml_overview` (http://www.opengeospatial.org/standards/gml) 
  * :doc:`kml_overview` (http://www.opengeospatial.org/standards/kml)
  * :doc:`sensorml_overview` (http://www.opengeospatial.org/standards/sensorml)
  * Styled Layer Descriptor (SLD) (http://www.opengeospatial.org/standards/sfc) 
  * Filter Encoding (http://www.opengeospatial.org/standards/filter)
  * Simple Features (SF) (http://www.opengeospatial.org/standards/sfa) 
  * Sensor Web Enablement (SWE) (http://www.opengeospatial.org/ogc/markets-technologies/swe)
  * XML for Image and Map Annotation (XIMA) (http://portal.opengeospatial.org/files/?artifact_id=1020) 
  * CityGML (http://www.opengeospatial.org/standards/citygml)
  * GeosciML (http://www.geosciml.org/)
  * GML in JPEG 2000 (http://www.opengeospatial.org/standards/gmljp2)
  * Observations and Measurements (O&M) (http://www.opengeospatial.org/standards/om)
  * Symbology Encoding (http://www.opengeospatial.org/standards/symbol)
  * Transducer Markup Language (TML) (http://www.opengeospatial.org/standards/tml)

See Also:
--------------------------------------------------------------------------------

* Comprehensive list of OGC standards: http://www.opengeospatial.org/standards/
* OGC tutorials presented at IGARSS 2010: http://www.ogcnetwork.net/node/1481 
* OGC Network Learn pages (http://www.ogcnetwork.net/learn).
