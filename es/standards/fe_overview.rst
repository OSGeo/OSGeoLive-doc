.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadatos de este documento

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _fe-overview-es:

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

Filter Encoding (FE)
================================================================================

.. Writing Tip:
  1 parrafo o 2 definen lo que es el estandar.

El estandar OGC® Filter Encoding (FE) define una codificación XML para expresar consultas y filtros espaciales con objeto de seleccionar un subconjunto de geometrías (*features*)  en base a unos atributos específicos.
(http://www.opengeospatial.org/standards/filter)

.. image:: ../../images/standards/fe.jpg
  :scale: 55%
  :alt: Contexto de FE

Se puede identificar un subconjunto de geometrías (*features*) para renderizarlas en un color determinado o para transformarlas en un formato especificado por el usuario. El XML *filter encoding* neutral permite validación y parseo fácilmente a través de una implementación de servidor del estandar OGC WFS, antes de que la expresión de filtrado se transforme en el lenguaje objetivo del almacen de datos que se esté consultando. El estandar es utilizado por numerosos Servicios Web OGC, incluyendo el *Web Feature Service*, el *Catalogue Service* y el estandar *Styled Layer Descriptor*.

Los criterios de filtro se pueden especificar sobre propiedades espaciales, temporales o escalares. Un ejemplo de filtro espacial es: “Encontrar todas las propiedades en el condado de *Omstead* pertencientes a *Peter Vretanos*.” Un ejemplo de filtro temporal es: “Buscar todas las presas en *Massachusetts* que se construyeron antes de 1900.” Un ejemplo de filtro escalar es: “Encuentra todos los sensores de temperatura en París que esten notificando temperaturas entre los 20 grados C. y los 24 grados C.” 

Ver también
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe estandar similar

* :doc:`sld_overview`
* :doc:`csw_overview`
* :doc:`wfs_overview`
* :doc:`wms_overview`

