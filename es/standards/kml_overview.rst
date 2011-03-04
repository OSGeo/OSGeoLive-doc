.. Writing Tip:
  Los Writing tips describen el contenido que debe haber en la siguiente sección.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _kml-overview:

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

.. Writing Tip: Nombre de aplicación

KML Encoding Standard (KML)
===========================

.. Writing Tip:
  1 parrafo o 2 definen lo que es el estandar.

El estandar OGC KML es un formato XML orientado a la visualización geográfica, que incluye anotaciones de mapas e imágenes. La visualización geográfica no incluye solo la presentación de datos geográficos sobre el globo, sino también el control de navegación de usuario en el sentido de donde ir y donde mirar. (http://www.opengeospatial.org/standards/KML)

.. image:: ../../images/standards/kml.jpg
  :scale: 55%
  :alt: KML en contexto

En 2006, Google propuso KML (formalmente, Keyhole Markup Language) al OGC para que se considerara un estandar. KML fue entonces el primer caso de estandar de-facto que se incluía dentro de los procesos de estandarización OGC y de esta forma el OGC adaptó el proceso de aprovación de estándares para incluir que se consideraran en el proceso aquellos que pudieran haberse desarrollado externamente. Hubo cuatro objetivos para este trabajo:

 Que hubiera un lenguaje estandar internacional para expresar visualización y anotación geográfica sobre mapas on-line existentes y futuros(2d) y buscadores de la tierra (3d).
 Que KML se alineara con los estandares y mejores prácticas internacionales, y proporcionara una mayor aceptación e interoperabilidad en las implementaciones de buscadores de la tierra.
 Que las comunidades OGC y KML trabajaran colaborativamente para asegurar que la comunidad de implementadores de KML estuviera comprometida en el proceso y que se mantuviera informada a la comunidad KML de todas las cuestiones y progresos.
 Que el proceso OGC se utilizara para asegurar una gestión apropiada del ciclo de vida de la especificación candidata KML , incluyendo cuestiones como compatibilidad de regresión.

KML se aprobó como estandar OGC en el año 2008 porque los miembros consideraron que tener KML como estandar OGC promovería una implementación más amplia y mayor interoperabilidad, y la compartición del contenido y contexto del buscador de la tierra.
 
KML es complementario a la mayoría de las especificaciones OGC existentes incluyendo estándares clave como GML (Geography Markup Language), WFS (Web Feature Service) y WMS (Web Map Service). Actualmente, KML (v2.1) utiliza ciertos elementos geométricos derivados de GML (version 2.1.2). Estos elementos incluyen point, line-string, linear-ring, y polygon.

Ver también
--------

.. Writing Tip:
  Describe estandar similar

* :doc:`gml_overview`
* :doc:`wfs_overview`
