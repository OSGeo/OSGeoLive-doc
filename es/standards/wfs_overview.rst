.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadatos de este documento

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _wfs-overview:

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

Web Feature Service (WFS)
=========================

.. Writing Tip:
  1 párrafo o 2 definen lo que es el estandar.

El estandar de interface OGC® Web Feature Service (WFS)  define operaciones Web de interface para la consulta y edición de entidades geográficas (en inglés *features*) vectoriales, como por ejemplo carreteras o líneas de contorno de lagos.  (http://www.opengeospatial.org/standards/wfs)

.. image:: ../../images/standards/wfs.jpg
  :scale: 25%
  :alt: WFS en contexto

El estandar WFS permite lo siguiente a los clientes:

* Descubrir las colecciones de entidades disponibles (GetCapabilities)
* Describir los campos de atributos disponibles por entidades (DescribeFeatureType)
* Consultar una colección para un subconjunto de entidades basado en un filtro proporcionado (GetFeature)
* Añadir, editar o borrar entidades (Transaction)

Todoas losl WFSs soportan entrada y salida de datos utilizando lenguaje *Geography Markup Language (GML)*. Algunos WFSs también soportan otras codificaciones, como por ejemplo GeoRSS o ficheros *shape*.

Normalmente los usuarios interactúan con WFSs a través de clientes geoespaciales Web o Desktop, que permiten acceder a capas de mapas vectoriales desde agencias externas, sobre Internet. Un ejemplo excelente de utilización de un Servicio WFS para proprcionar acceso abierto e interoperable a una gran cantidad de datos espaciales a trvés de un portal gubernamental es el Servicio WFS del *Framwork USGS* ofrecido como soporte al desarrollo de las Infraestructura de Datos Espaciels Nacional de Estados Unidos (NSDI) (http://frameworkwfs.usgs.gov/). Las capas de mapas seleccionadas a través de este framework estadounidense estan disponibles como capas WFS y también a través de un interface de búsqueda proporcionado por el USGS.

Ver también
--------

.. Writing Tip:
  Describe estandar similar

* :doc:`wms_overview`
* :doc:`wcs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
* :doc:`gml_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* Symbology Encoding
* :doc:`fe_overview`
