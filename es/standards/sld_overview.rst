.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadatos de este documento

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _sld-overview:

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

Style Layer Descriptor (SLD)
============================

.. Writing Tip:
  1 parrafo o 2 definen lo que es el estandar.

El estandar OGC® Styled Layer Descriptor (SLD)
proporciona los artefactos para la simbolización y coloreado de coberturas y geometrías geográficas. Se utiliza generalmente para aplicar estilos a los Web Map Services, o los estilos de un GML proporcionado por Web Feature Services.  (http://www.opengeospatial.org/standards/sld) 

.. image:: ../../images/standards/wms.jpg
  :scale: 25%
  :alt: WMS en contexto

El control fino de la representación gráfica de datos es un requerimiento fundamental de muchas aplicaciones de mapas. La habilidad para definir reglas de definición de estilos requiere un lenguaje de estilos que tanto las parte cliente, como la parte servidora puedan entender. 

El actual estandar OGC Web Map Service (WMS) expone un proveedor de información (en inglés *'information provider'*) para especificar opciones de estilo a través unas colecciones preestablecidas de plantillas visuales para cada conjunto disponible. Sin embargo, mientras que una implementación WMS actual puede proporcionar al usuario una serie de opciones de estilo a ejegir, la implementación WMS solo puede deicir al usuario el nombre de cada uno de ellos. No puede decir al usuario cómo quedará cada plantilla de estilos en el mapa. Y más importante aún, el usuario no tiene una manera de definir sus propias reglas de estilo. 

La habilidad para un cliente de definir estas reglas requiere un lenguaje de estilos que tanto las parte cliente, como la parte servidora puedan entender. El estandar OGC Symbology  Encoding (SE) (http://www.opengeospatial.org/standards/symbol) especifica el formato para ese tipo de lenguaje de estilos de mapas. El perfil SLD del estandar WMS permite la aplicación de SE a capas WMS utilizando extensiones de operaciones WMS. Adicionalmente, SLD define una operación para el acceso estandarizado a símbolos de leyenda que se puede almacenar remotamente en un servidor para ser utilizado por múltiples operaciones. 

Hay que notar que adicionalmente al diseño de la salida de una implementación WMS, SE también se puede utilizar para diseñar la salida de implementaciones WFS e implementaciones del standar de interface OGC Web Coverage Service (WCS) Interface Standard.

Ver también
--------

.. Writing Tip:
  Describe estandar similar

* :doc:`fe_overview`
* :doc:`kml_overview`
* Symbology Encoding
* :doc:`gml_overview`
* :doc:`wms_overview`
* :doc:`wfs_overview`

