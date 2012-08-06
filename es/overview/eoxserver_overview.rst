:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Translator: Javier Sánchez
:Reviewer: 
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-eoxserver-2.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

EOxServer
================================================================================

Servicio Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EOxServer es un servidor para datos de Earth Observation (EO). Para ser más precisos, es una Aplicación Python y un framework para presentar datos y metadatos de EO.

La misión de EOxServer: Proporcionar un entorno de desarrollo de software abierto para facilitar la provisión online the grandes archivos de datos de observación terrestre, a través de Servicios Estandar Abiertos, para que puedan ser explotados eficientemente por los usuarios.

* Software abierto: licencia estilo MIT
* Entorno: Enteramente basado en Software libre (Python, :doc:`MapServer <mapserver_overview>`, 
  Django/GeoDjango, :doc:`GDAL <gdal_overview>`, :doc:`SpatiaLite <spatialite_overview>` o 
  :doc:`PostGIS <postgis_overview>`, y PROJ.4)
* Facilita provisión online: Interface gráfica de usuario Admin y registro de datos a través de línea de comando.
* Grandes archivos de datos de Observación Terrestre: Operadores registran datos raster existentes 
  Archivos
* Servicios Estandar Abiertos: Abiertos en el sentido de que están disponibles libremente 
  Geospatial Consortium (OGC); WMS, WCS, EO-WMS, EO-WCS
* Explotación eficiente por parte de los usuarios: sub-setting definidos por el usuario; vista y descarga

.. image:: ../../images/screenshots/1024x768/eoxserver_screenshot.jpg
  :scale: 50 %
  :alt: EOxServer embedded client screen shot
  :align: right


Características Fundamentales
--------------------------------------------------------------------------------

Las características disponibles son:

* Soporte para GML AP – Coberturas para RectifiedGridCoverages
* Soporte para especificación WCS 2.0 adoptada (Incluye GetCapabilities, 
  DescribeCoverage, y petición GetCoverage, KVP-, y protocolo XML/POST 
  binding)
* Soporte anticipado de extensiones previstas: formato Coverage, GeoTIFF 
  encoding, predefined (o EPSG) CRSs, scaling & interpolation, y 
  acceso no-referenciado. Por "anticipado" queremos decir reflejar el último 
  Debates WCS.SWG  así como seguir las partes relevantes de las versiones previas 
  1.1 y 1.0 de WCS.
* Soporte para coberturas 2-D EO derivadas de gmlcov:RectifiedGridCoverage
* Soporte para coberturas 2-D EO derivadas de gmlcov:ReferenceableGridCoverage
* Soporte de series de Dataset como una colección de coberturas EO por ejemplo en un tiempo. 
  series
* Soporte para new DescribeEOCoverageSet operación en Series de Dataset y EO 
  Coberturas
* Soporte para mosaico 'Stitched' de coberturas rectificadas EO incluyendo el concepto de 
  contributingFootprint
* Soporte de metadatos EO Metadata (extracción y evaluación en operaciones DescribeEOCoverageSet 
  * Bindings de protocolo soportados:

 * KVP
 * XML/POST (utilizado junto con proxy SOAP2POST para soportar binding de protocolo XML/SOAP 
   binding) 

* Formatos de cobertura soportados:

 * GeoTIFF
 * Formatos soportados por la librería GDAL (se tiene que verificar soporte para 
   cada formato requerido separadamente) 

* Soporte de EO-WMS para coberturas EO 

Estandares Implementados
--------------------------------------------------------------------------------

* Soporte para numerosos estándares Open Geospatial Consortium  (OGC)

  * WCS, EO-WCS
  * WMS, EO-WMS
  * GML, GMLCOV, EO-O&M

Demo
--------------------------------------------------------------------------------

* `Local <http://localhost/eoxserver/>`_
* `En línea <https://eoxserver.org/demo_stable/>`_

Documentación
--------------------------------------------------------------------------------

* `Documentación EOxServer 0.2.1 <../../eoxserver-docs/EOxServer_documentation.pdf>`_

Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://eoxserver.org/

**Licencia:** `Estilo MIT <http://eoxserver.org/doc/copyright.html#license>`_

**Versión del Software:** 0.2.1

****Plataformas Soportadas:** Windows, Linux, Mac:**

**Interfaces API:** Python

**Soporte:** http://eoxserver.org/doc/en/users/basics.html#where-can-i-get-support

Guía de inicio rápido
--------------------------------------------------------------------------------
    
* :doc:`Documentación Guía de inicio rápido <../quickstart/eoxserver_quickstart>`
