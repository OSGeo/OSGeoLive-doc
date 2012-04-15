.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadatos de este documento

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _wms-overview-es:

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

Web Map Service (WMS)
================================================================================

.. Writing Tip:
  1 parrafo o 2 definen lo que es el estandar.

El estandar OGC® Web Map Service (WMS) proporciona un interface HTTP para la petición de imagenes de mapas registradas desde una o más Bases de Datos Geoespaciales. La respuesta a la petición es una o más imágenes de mapas (devueltas como JPEG, PNG, etc) que se pueden visualizar en buscadores y aplicaciones desktop. (http://www.opengeospatial.org/standards/wms) 

.. image:: ../../images/standards/wms.jpg
  :scale: 55%
  :alt: WMS en contexto

El estandar WMS define tres operaciones: 

* GetCapabilities (requerido): Obtiene los metadatos del servicio, que constituyen una descripción interpretable automáticamente (y también legible) de información del contenido de los WMS's y los parametros de petición aceptados por el servicio. 

* GetMap (requerido): Obtiene una imagen de mapa con unos parámetros geoespaciales y de dimensión bien definidos. 

* GetFeatureInfo (optional): Pregunta por información sobre una entidad *feature* en particular, de las mostradas en el mapa. 

El estandar actualmente se encuentra implementado en cientos de productos, muchos de los cuales se registran en (http://www.opengeospatial.org/resource/products/compliant).

Un ejemplo excelente de portal que utiliza WMS es *NC OneMap* (http://www.nconemap.com/): “*NC OneMap* expone Web Map Services (WMS) para combinar juntos datos procedentes de diversos servidores. Los Partners de *NC OneMap* publican cada uno de los servicios WMS desde sus servidores. Este estandar OGC permite la creación y el almacenamiento en numerosas configuraciones de software propietarios (ESRI, MapInfo, Intergraph, etc), pero que son visualizables por todos.” 

Ver también
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe estandar similar

Un libro de recetas (en inglés *cookbook*) del OGC WMS y otros materiales para desarrolladores se puede encontrar en http://www.opengeospatial.org/resource/cookbooks. 

Otros estandares de Servicios OGC se representan en los siguientes: 
 

* :doc:`wfs_overview`
* :doc:`wcs_overview`
* Web Map Tile Service
* :doc:`gml_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* Symbology Encoding
* :doc:`fe_overview`

