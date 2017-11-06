:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Translator: Anna Muñoz Bollas (a.munyoz.b@gmail.com)
:Reviewer: Anna Muñoz Bollas
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-eoxserver-2.png
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

EOxServer
================================================================================

Servei Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EOxServer és un servidor per a dades d'Observació de la Terra (Earth Observation, EO).
Més concretament, és una aplicació Python i un entorn (framework) per presentar dades i metadades EO.

Objectiu d'EOxServer: Proporcionar un marc de desenvolupament en codi obert per facilitar la provisió online 
de grans arxius de dades d'Observació de la Terra a través de serveis d'estàndards oberts per a l'explotació 
eficient dels usuaris.

* Programari de codi obert (open source): llicència estil MIT
* Entorn de desenvolupament: Basat completament en programari lliure (Python, MapServer, 
  Django/GeoDjango, GDAL, SpatiaLite, o PostGIS, i PROJ.4)
* Senzilla provisió online: Interfície gràfica d'Administració i registre de dades en línia de comandes
* Grans arxius de dades d'Observació de la Terra: registre d'arxius de dades ràster existents
* Serveis Estàndards Oberts (Open Standard services): Oberts en el sentit de lliure disposició; Open 
  Geospatial Consortium (OGC); WMS, WCS, EO-WMS, EO-WCS
* Explotació eficient pels usuaris: Els usuaris poden definir subconjunts de dades; visualitzar-les i descarregar-les

.. image:: /images/projects/eoxserver/eoxserver_screenshot.png
  :scale: 50 %
  :alt: EOxServer embedded client screen shot
  :align: right


Característiques Principals
--------------------------------------------------------------------------------

Aquestes són les característiques principals:

* Suport de GML AP – Cobertures per a RectifiedGridCoverages
* Suport de l'especificació WCS 2.0 (inclou peticions de GetCapabilities, 
  DescribeCoverage, i GetCoverage, KVP-, i protocol XML/POST)
* Suport anticipat de les extensions previstes: Format de Cobertura, GeoTIFF 
  encoding, sistemes de referència (o EPSG) predefinits, escalat & interpolació, i 
  accés no-referenciat. El terme "anticipat" vol dir que s'integren les darreres novetats de l'estàndard WCS.
* Suport de Cobertures 2-D EO derivades de gmlcov:RectifiedGridCoverage
* Suport de Cobertures 2-D EO derivades de gmlcov:ReferenceableGridCoverage
* Suport de series de Dades com a col·lecció de Covertures EO, per exemple en una sèrie temporal
* Suport de la nova operació DescribeEOCoverageSet en una sèrie de conjunt de dades i en cobertures EO
* Suport de Mosaics de Cobertures EO Rectificades incloent el concepte de contributingFootprint
* Suport de Metadades EO (obtenció de dades i avaluació en l'operació DescribeEOCoverageSet)
* Suport de protocol de binding:

 * KVP
 * XML/POST (usat conjuntament amb SOAP2POST Proxy per suportar el protocol XML/SOAP binding) 

* Formats de cobertura suportats:

 * GeoTIFF
 * Formats suportat per la llibreria GDAL (cal verificar de manera individual el suport per a cada format) 

* Suport d'EO-WMS per cobertures EO 

Estàndards Implementats
--------------------------------------------------------------------------------

* Suport per a un gran número d'estàndards de :doc:`Open Geospatial Consortium  (OGC) <../standards/standards>`:

  * :doc:`Web Coverage Service (WCS) <../standards/wcs_overview>` 1.0, 1.1 i 2.0, EO-WCS
  * :doc:`Web Map Service (WMS)  <../standards/wms_overview>`, EO-WMS
  * GML, GMLCOV, EO-O&M

Demo
--------------------------------------------------------------------------------

* `Local <http://localhost/eoxserver/>`_
* `En línia <https://eoxserver.org/demo_stable/>`_

Documentació
--------------------------------------------------------------------------------

* `Documentació EOxServer 0.2.1 <../../eoxserver-docs/EOxServer_documentation.pdf>`_

Detalls
--------------------------------------------------------------------------------

**Lloc Web:** http://eoxserver.org/

**Llicència:** `MIT-style license <http://eoxserver.org/doc/copyright.html#license>`_

**Versió del Programari:** |version-eoxserver|

**Plataformes suportades:** Linux, Windows, Mac

**Interfícies de desenvolupament:** Python

**Suport:** http://eoxserver.org/doc/en/users/basics.html#where-can-i-get-support

Guia d'inici ràpid
--------------------------------------------------------------------------------
    
* :doc:`Documentació de la guia d'inici ràpid <../quickstart/eoxserver_quickstart>`
