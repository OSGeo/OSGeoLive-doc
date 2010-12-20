.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadatos de este documento

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _csw-overview:

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Catalogue Service for the Web (CS-W)
====================================

.. Writing Tip:
  1 parrafo o 2 definen lo que es el estandar.


.. image:: images/standards/csw.jpg
  :scale: 25%
  :alt: CS-W in Context

El estandar de interface OGC Catalogue Service especifica un patrón de diseño para la definición de interfaces para la publicación y búsqueda de colecciones de información descriptiva (metadatos) sobre datos geoespaciales, servicios y objetos de informacion relacionada. Provedores de recursos, como por ejemplo los de contenidos, utilizan catálogos para registrar metadatos que se ajustan al modelo de información del proveedor; dichos modelos incluyen descripciones de referencias espaciales e información temática. De esta forma, las aplicaciones cliente puenden buscar datos y servicios geoespaciales de formas muy eficientes. 

Existen varios perfiles del modelo actual OGC CS-W. Estos incluyen:

* Perfil de metadatos ISO 19115/19139 (http://www.iso.org/iso/catalogue_detail.htm?csnumber=32557). Este documento especifica un perfil de aplicación para metadatos ISO con soporte para codificación XML por ISO 19139 (http://www.iso.org/iso/catalogue_detail.htm?csnumber=32557) y el protocolo de enlace HTTP. Este perfil CS-W ha sido implementado de forma generalizada en Europa, como por ejempo en la Infraestructura de Datos Espaciales de North Rhine Westphalia (estado federal de Alemania).
* Servicio de registro CSW-ebRIM. (http://portal.opengeospatial.org/files/?artifact_id=31137) Este perfil aplica la interface CSW al modelo de información de registro OASIS ebXML (ebRIM 3.0) proporcinando una forma general y flexible de Servicios Web de registro que permite a los usuarios —agentes software o humanos— localizar, acceder y hacer uso de recursos en un sistema abierto y distribuido; proporcionando todos los artefactos para la extracción, almacenamiento y gestión de muchos tipos de descripciones de recurso. Un mecanismo de extensión permite adaptar contenidos de registro de dominios de aplicación más especializados.
* CSW 39.50: El protocolo de conexión Z39.50 utiliza una arquitectura cliente-servidor basada en mensajes implementada utilizando la Definición de Servicio de Aplicación y Especification3 de protocolo ANSI/NISO Z39.50. Este protocolo mapea cada una de las operaciones de modelo general con un servicio correspondiente especificado en el estandar ANSI/NISO/ISO http://lcweb.loc.gov/z3950/agency/document.html. 

Mucho del trabajo actual en este estandar tiene que ver con la restructuración del estandar de catálogo, así que hay un núcleo bien definido y fácil de implementar acompañado de un mecanismo bien definido para expresar una variedad de extensiones (anteriormente conocidas como perfiles de aplicación).

Ver también
--------

.. Writing Tip:
  Describe estandar similar

* Cat: ebRIM App Profile: Earth Observation Products
* ISO 23950 (2003). "Information Retrieval (Z39.50): Application Service Definition and Protocol Specification"
