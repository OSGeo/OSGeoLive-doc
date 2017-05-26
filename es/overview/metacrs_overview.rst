:Author: OSGeo-Live
:Author: Mike Adair
:Reviewer: Cameron Shorter, Jirotech
:Translator: Diego González
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. (no logo) .. image:: ../../images/project_logos/logo-GDAL.png
..  :alt: project logo
..  :align: right
..  :target: http://trac.osgeo.org/metacrs/wiki

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

MetaCRS
================================================================================

Transformaciones entre sistemas de referencia de coordenadas
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/project_logos/logo-metacrs.png
  :alt: map projection example
  :align: right
  :target: http://trac.osgeo.org/metacrs/wiki

`El grupo de proyectos MetaCRS <http://trac.osgeo.org/metacrs/wiki>`_ proporciona librerías de métodos de transformación entre distintos sistemas de coordenadas. Un sistema de referencia de coordenadas geográficas permite que cualquier punto sobre la superficie terrestre pueda ser descrito como un conjunto de coordenadas (latitud, longitud y altura). Se utilizan numerosos sistemas para representar la Tierra, figura tridimensional, sobre un mapa, plano.

Las librerías MetaCRS se incluyen en otros proyectos y algunas también están disponibles a través de una interfaz de línea de comandos.

Los subproyectos que están englobados dentro de MetaCRS son:

* PROJ.4 (C++) - se usa en :doc:`MapServer <mapserver_overview>`, :doc:`GRASS GIS <grass_overview>`, :doc:`PostGIS <postgis_overview>`, :doc:`Mapnik <mapnik_overview>`, Thuban, OGDI, TopoCad, OGRCoordinateTransformation y varios más.
* Proj4js (JavaScript) - se usa en :doc:`OpenLayers <openlayers_overview>`.
* CS-Map (C++) - se usa en MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <http://spatialreference.org/>`_  - página web donde obtener definiciones de los sistemas de coordenadas.

Características principales
--------------------------------------------------------------------------------

* Proporciona transformaciones de un sistema de referencia a otro.
* Incluye transformaciones entre datums.
* Dispone de un amplio número de proyecciones.


Estándares implementados
--------------------------------------------------------------------------------

Los proyectos normalmente usan las definiciones de los sistemas de coordenadas a partir del 
`European Petroleum Survey Group (EPSG) <http://www.epsg.org/>`_ y definidas en
formato Well Known Text (WKT).

PROJ.4
--------------------------------------------------------------------------------

  **Sitio web:**  http://trac.osgeo.org/proj/
  
  **Licencia:** `Licencia de código fuente libre de estilo X/MIT <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Versión del software:** 4.8.0
  
  **Plataformas soportadas:** Windows, Linux, Mac
  
  **Interfaces API:** C, C++, Python, Java, Ruby
  
  **Soporte:** http://lists.maptools.org/mailman/listinfo/proj

Proj4js
--------------------------------------------------------------------------------

  **Sitio web:**  http://proj4js.org
  
  **Licencia:** `Licencia de código fuente libre de estilo X/MIT <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Plataformas soportadas:** Windows, Linux, Mac.
  
  **Interfaces API:** JavaScript.
  
  **Soporte:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

CS-Map
--------------------------------------------------------------------------------

  **Sitio web:**  http://trac.osgeo.org/csmap/
  
  **Licencia:** `personalizada <http://svn.osgeo.org/metacrs/csmap/trunk/CsMapDev/license.txt>`_
    
  **Plataformas en las que corre:** Windows, Linux, Mac.
  
  **Interfaces API:** C, C++.

  **Soporte:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

GeoTIFF/libgeotiff
--------------------------------------------------------------------------------

  **Sitio web:**  http://trac.osgeo.org/geotiff/
  
  **Licencia:** `Licencia de código fuente libre de estilo X/MIT <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Versión del software** 1.4.0
  
  **Soporte:** http://lists.maptools.org/mailman/listinfo/geotiff
  
Proj4J
--------------------------------------------------------------------------------

  **Sitio web:**  http://trac.osgeo.org/proj4j/
  
  **Licencia:** `Licencia Apache, Versión 2.0 <http://www.apache.org/licenses/LICENSE-2.0>`_.
  
  **Plataformas en las que corre:** Windows, Linux, Mac.
  
  **Interfaces API:** Java.
  
  **Soporte:** http://lists.osgeo.org/mailman/listinfo/proj4j

