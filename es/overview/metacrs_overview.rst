:Autor: OSGeo-Live
:Autor: Mike Adair
:Versión: osgeo-live5.0
:Licencia: Creative Commons

.. _metacrs-overview-es:

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

MetaCRS
================================================================================

Transformaciones entre Sistemas de referencia de coordenadas
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. comentario: ¿Podría alguien conseguir una imagen? Quizás un collage de diferentes proyecciones. Asegurarse de que la imagen tiene los derechos para incluirse en un documento "creative commons".

El grupo de proyectos MetaCRS proporciona librerías de métodos de transformación entre distintos sistemas de coordenadas.
Un sistema de referencia espacial permite que cualquier punto sobre la superficie terrestre pueda ser descrito como un conjunto de coordenadas (latitud, longitud y altura). Se utilizan numerosos sistemas para representar la Tierra, figura tridimensional, sobre un mapa, plano.

Las librerías MetaCRS se incluyen en otros proyectos y algunas también están disponibles a través de una interfaz de línea de comandos.

Los subproyectos que están englobados dentro de MetaCRS son:

.. comentario: Encontrar ejemplos para los que se utilicen todas las librerías, si no no mencionar ninguna.
.. comentario: Asumo "camel case" debería ser Proj4JS o Proj4js en vez de Proj4Js? (Lo he cambiado más abajo)

* PROJ.4 (C++) - se usa en MapServer, GRASS GIS, PostGIS, Mapnik y numerosos otros.
* Proj4js (JavaScript) - se usa en OpenLayers.
* CS-Map (C++) - se usa en MapGuide.
* GeoTIFF/libgeotiff (C++) - .
* Proj4J (Java) - ¿se usa en...?.
* `SpatialReference.org <http://spatialreference.org/>`_  - página web donde obtener definiciones de los sistemas de coordenadas.

Características básicas
--------------------------------------------------------------------------------

* Proporciona transformaciones de un sistema de referencia a otro.
* Incluye transformaciones entre datums.
* Dispone de un amplio número de proyecciones.


Estándares implementados
--------------------------------------------------------------------------------

Los proyectos normalmente usan las definiciones de los sistemas de coordenadas a partir del 
`European Petroleum Survey Group (EPSG) <http://www.epsg.org/>`_ y definidas en
formato Well Known Text (WKT).

Detalles
--------------------------------------------------------------------------------

.. comentario: Para Proj4js debería haber sólo una página web. He eliminado la referencia (los usuarios la pueden encontrar en la página web principal)
.. comentario: Se necesita trabajar sobre la licencia de Proj4J


PROJ.4
--------------------------------------------------------------------------------

  **Página web:**  http://trac.osgeo.org/proj/
  
  **Licencia:** `Licencia de código fuente libre de estilo X/MIT <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Software Version:** 4.7.0
  
  **Plataformas en las que corre:** Windows, Linux, Mac
  
  **Interfaces API:** C, C++, Python, Java, Ruby
  
  **Ayuda:** http://lists.maptools.org/mailman/listinfo/proj

Proj4js
--------------------------------------------------------------------------------

  **Página web:**  http://trac.osgeo.org/proj4js/ and http://proj4js.org
  
  **Licencia:** `LPGL <http://www.gnu.org/copyleft/lesser.html>`_
  
  **Versión del programa:** 1.0.1
  
  **Plataformas en las que corre:** Windows, Linux, Mac
  
  **Interfaces API:** JavaScript
  
  **Ayuda:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

CS-Map
--------------------------------------------------------------------------------

  **Página web:**  http://proj4js.org
  
  **Licencia:** `custom <http://svn.osgeo.org/metacrs/csmap/trunk/CsMapDev/license.txt>`_
  
  **Versión del programa:** 13.0
  
  **Plataformas en las que corre:** Windows, Linux, Mac
  
  **Interfaces API:** C, C++

  **Ayuda:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

GeoTIFF/libgeotiff
--------------------------------------------------------------------------------

  **Página web:**  http://trac.osgeo.org/geotiff/
  
  **Licencia:** `Licencia de código fuente libre de estilo X/MIT <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Versión del programa:** 1.3.0
  
  **Ayuda:** http://lists.maptools.org/mailman/listinfo/geotiff
  
Proj4J
--------------------------------------------------------------------------------

  **Página web:**  http://trac.osgeo.org/proj4j/
  
  **Licencia:** `Licencia Apache, Versión 2.0 <http://www.apache.org/licenses/LICENSE-2.0>`_
  
  **Versión del programa:** 
  
  **Plataformas en las que corre:** Windows, Linux, Mac
  
  **Interfaces API:** Java
  
  **Ayuda:** http://lists.osgeo.org/mailman/listinfo/proj4j
  

Guía rápida
--------------------------------------------------------------------------------
    
* `Documentación de la Guía rápida <../quickstart/metacrs_quickstart.html>`_
