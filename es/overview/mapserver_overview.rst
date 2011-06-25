:Autor: Alan Boudreault
:Versión: osgeo-live4.0
:Licencia: Creative Commons

.. _mapguide-overview:

.. image:: ../../images/project_logos/logo-mapserver-new.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://mapserver.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


MapServer
=========

Servicio Web
~~~~~~~~~~~

MapServer es un motor de renderización de datos geográficos `Open Source <http://www.opensource.org>`_ escrito en C. Más allá de la navegación por datos GIS, MapServer permite crear "mapas de imágenes geográficas", es decir, mapas de contenidos para los usuarios. Por ejemplo, en Minnesota DNR `Recreation Compass <http://www.dnr.state.mn.us/maps/compass.html>`_ se proporciona a los usuarios más de 10.000 páginas Web, informes y mapas, a través de una única aplicación. La misma aplicación hace de "motor de mapas", proporcionando los contenidos spaciales a otras partes del sitio Web que las necesitan.

MapServer fué desarrollado inicialmente por el proyecto *ForNet* de la Universidad de Minnesota (UMN) en cooperación con la NASA, y el Departamento de Recursos Naturales de Minnesota, el MNDR (Minnesota Department of Natural Resources). Más tarde, se hosteó en el proyecto TerraSIP project, un proyecto esponsorizado por la NASA, entre la UMN y un consorcio de actores con intereses en gestión del territorio.

MapServer es ahora un proyecto de `OSGeo <http://www.osgeo.org>`_, y lo mantiene un grupo creciente de desarrolladores (cerca de 20) distribuidos por todo el mundo. Un diverso grupo de organizaciones dan soporte al proyecto, proporcionando mejoras y mantenimiento, y se administra dentro de OSGeo por el *MapServer Project Steering Committee*, formado por desarrolladores y otros contribuidores.

Características clave
-------------

.. image:: ../../images/screenshots/1024x768/mapserver.png
  :scale: 50 %
  :alt: screenshot
  :align: right

* Advanced cartographic output

  * Dibujado de *features* dependientes de la escala y ejecución de aplicación
  * Etiquetación de *Features*,  incluyendo mediación de colisión de etiquetas
  * Salida conducida por plantillas totalment customizables

* Fuentes TrueType

  * Automatización de elementos de mapa (scalebar, reference map, and legend)
  * Mapas temáticos utilizano clases basadas en lógica de programación o en expresiones regulares 

* Soporte para lenguajes de *scripting* y entornos de desarrollo populares

  * PHP, Python, Perl, Ruby, Java, y .NET

* Soporte Multi-plataforma

  * Linux, Windows, Mac OS X, Solaris, y mas

* Multitud de formatos raster y vectoriales

  * TIFF/GeoTIFF, EPPL7, y muchos otros vía GDAL
  * ESRI shapefiles, PostGIS, ESRI ArcSDE, Oracle Spatial, MySQL y OGR


* Soporte de proyecciones de Mapa

  * Proyecciones 'al vuelo' con capacidad para más de 1000 proyecciones proporcionadas por la librería Proj.4

Standares Implementados
---------------------

* Soporta numerosos estándares  (OGC)

  * WMS (cliente/servidor), WFS no-transaccional (cliente/servidor), WMC, WCS, Filter Encoding, SLD, GML, SOS, OM

Demo
----

* `Itasca <http://localhost/mapserver_demos/itasca/>`_

Documentación
-------------

* `Documentación MapServer 5.6.5  <../../mapserver/doc/index.html>`_


Detalles
-------

**Sitio Web:** http://www.mapserver.org/

**Licencia:** `licencia estilo MIT <http://mapserver.org/copyright.html#license>`_

**Versión Software:** 5.6.5

**Plataformas soportadas:** Windows, Linux, Mac

**Interfaces API:** C, PHP, Python, Perl, Ruby, Java y .NET

**Soporte:** http://mapserver.org/community/

