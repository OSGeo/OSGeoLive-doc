.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadatos de este documento

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _gml-overview-es:

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: ../../images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: ../../images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Geography Markup Language (GML)
================================================================================

.. Writing Tip:
  1 parrafo o 2 definen lo que es el estandar.

GML (http://www.opengeospatial.org/standards/gml) es una definición XML para expresar y comunicar *features* geográficas. GML constituye por tanto un lenguaje de modelado para sistemas geográficos, así como un formato de intercambio abierto para transacciones de información geográfica a través de Internet. Hay que considerar que el concepto de *feature* en GML es muy general, y no solo incluye objetos discretos o vectores convencionales, sino también coberturas y algunos elementos de datos de sensores. La capacidad de integrar todas las formas de información geográfica es la clave del formato GML.

.. image:: ../../images/standards/gml.jpg
  :scale: 55%
  :alt: GML in Context

GML contiene un rico conjunto de primitivas que se utilizan para construir esquemas específicos de aplicación o lenguajes de aplicación. Estas primitivas incluyen:

* Feature
* Geometry
* Coordinate Reference System
* Topology
* Time
* Dynamic feature
* Coverage (including geographic images)
* Unit of measure
* Directions
* Observations
* Map presentation styling rules

Entender el uso de “Feature”, “Geometry”, y “CRS” es crítico en el uso y desarrollo de cualquier codificación basada en GML.

En 1998 comenzó el trabajo del estandar OGC. 

GML fue aprovado formalmente como estandar OGC en el año 2001.

GML se convirtió en estandar ISO en el año 2007.

GML 3.2.16 es la versión más reciente del estandar conjunto OGC-ISO.

Actualemente se están generando las versiones 3.2.2 and 4.0.

Ver también
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe estandar similar

* CityGML
* GeosciML
* GML in JPEG 2000
* :doc:`wfs_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* :doc:`fe_overview`
