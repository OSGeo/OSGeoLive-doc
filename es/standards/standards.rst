.. GeoSpatial Standards documentation master file, created by
   sphinx-quickstart on Mon Jul 19 08:52:52 2010.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Estándares del Open GeoSpatial Consortium
==================================================

Introducción
------------

El Open GeoSpatial Consortium (OGC) fue fundado en 1994 para hacer de la información geográfica una parte integral de la infraestructura mundial de información. Los miembros de OGC (usuarios y proveedores de tecnología) desarrollan de forma colaborativa estándares de interfaz y los estándares asociados, así como buenas prácticas, que permiten a los desarrolladores crear sistemas de información que pueden fácilmente intercambira información geográfica e instrucciones con otros sistemas de información. Lo requisitos varían desde planificacione complejas y control de satélites de observación terrestre a la visualización de sencillas imágenes cartográficas en la web, así como la codificación de la localización en apenas unos pocos *bytes* para geoetiquetado y mensajería. Un vistazo a los *OGC Domain Working Groups* (http://www.opengeospatial.org/projects/groups/wg) muestra el amplio espectro de la actividad actual en OGC.

La línea base de OGC y el Modelo de Referencia OGC
--------------------------------------------------------

La línea base de estándares OGC consiste en los estándares OGC (http://www.opengeospatial.org/standards) para interfaces, codificación, perfiles, esquemas de aplicación y documentos de buenas prácticas. El Modelo de Referencia OGC (ORM) (http://www.opengeospatial.org/standards/orm) describe estos estándares y las relaciones entre ellos los estándares ISO relacionados. El ORM proporciona un vistazo sobre los estándares OGC y sirve como un recurso de utilidad para definir arquitecturas de aplicaciones específicas.

En el desarrollo de aplicaciones de servicios web usando estándares OGC (y también para aprender las relacione entre ellos) ayuda a pensar en publicar, encontrar y enlazar como las funciones clave para aplicaciones en un entorno de servicios web.

* Publicar: Proveedores de recursos publicitan sus recursos
* Encontrar: Los usuarios finales y sus aplicaciones pueden descubrir recursos que pueden decesitar en tiempo de ejecución
* Enlazar: Los usuarios finales y sus aplicaciones pueden acceder y ejecutar los recursos en tiempo de ejecución

Muchos de los estándares OGC desarrollados en los últimos años son estándare para entornos de servicios web, y estos estándares son referidos colectivamente como *OGC Web Services* (OWS). La figura inferior proporciona un esquema general de arquitectura para los OGC Web Services. Este esquema identifica las clases genéricas de servicios que participan en diversas actividades de geoprocesamiento y localización.


.. figure:: ../../images/standards/publish_find_bind.jpg
  :scale: 55%
  :alt: Web services framework of OGC geoprocessing standards

Los acrónimos en la figura se definen más abajo. Algunos de éstos son "Estándares OGC" y otros están públicamente disponibles como *Discussion Papers*, *Requests* y *Recommendation Papers*. (Cabe destacar que alguno estándares preliminares no son todavía públicos, pero están disponibles para los miembros de OGC).

* :doc:`wms_overview`
* :doc:`wfs_overview`
* :doc:`wcs_overview`
* :doc:`wps_overview`
* :doc:`csw_overview`
* :doc:`sos_overview`
* Sensor Model Language (SensorML)
* Sensor Planning Service (SPS)
* Web Terrain Service (WTS)
* Grid Coverage Service
* Coordinate Transformation Service
* Web Coverage Processing Service (WCPS)
* Web Map Tile Service (WMTS)
* :doc:`gml_overview`
* :doc:`kml_overview`
* :doc:`sensorml_overview`
* :doc:`sld_overview`
* :doc:`fe_overview`
* Simple Features (SF)
* Sensor Web Enablement (SWE)
* XML for Image and Map Annotation (XIMA)
* CityGML
* GeosciML
* GML in JPEG 2000
* Observations and Measurements (O&M)
* Symbology Encoding
* Transducer Markup Language (TML)


.. Enlaces a los estándares
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

Más información
------------------------

* Comprehensive list of OGC standards: http://www.opengeospatial.org/standards/
* OGC tutorials presented at IGARSS 2010: http://www.ogcnetwork.net/node/1481 
* OGC Network Learn pages (http://www.ogcnetwork.net/learn).
