:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _osgearth-overview:

.. image:: ../../images/project_logos/logo-osgearth.gif
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://osgearth.org/


osgEarth
================================================================================

Herramienta para el renderizado del terreno
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

osgEarth es un conjunto de herramientas escalable para el renderizado del 
terreno de OpenSceneGraph_ (OSG), un motor gráfico 3D de código abierto de altas 
prestaciones. Simplemente crea un fichero XML que apunte a tu conjunto de 
imágenes, modelos de elevación y datos vectoriales, cárgalo en tu aplicación 
OSG favorita y ¡listo! 

osgEarth soporta todo tipo de datos e incorpora multitud de ejemplos que te 
ayudarán a ponerte en marcha de una manera rápida y sencilla. 

.. _OpenSceneGraph: http://www.openscenegraph.org/

.. image:: ../../images/screenshots/1024x768/osgearth.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

Características principales
--------------------------------------------------------------------------------

osgEarth hace fácil la implementación modelos de terreno a escala:  

* Crea modelos del terreno  - ya sea de manera externa o dinámicamente durante 
  el tiempo de ejecución
* Carga modelos del terreno de la totalidad del globo terrestre sin necesidad 
  de escribir ninguna línea de código
* Estratifica imágenes para producir inserciones de alta calidad
* Combina imágenes, modelos de elevación y datos vectoriales al vuelo
* Configura el "tile cache" para maximizar el rendimiento
* Ajusta la opacidad de las capas para conseguir efectos de multi-textura

Pero osgEarth no solo hace renderizados del terreno:

* Visualiza datos vectoriales (GIS) sobre el terreno
* Reproyecta datos entre diferentes sistemas de referencia
* Situa modelos externo sobre el terreno mediante coordenadas de longitud y 
  latitud 
* Realiza test de intersección rápidamente
* Incorpora nuevos datos a una base de datos VPB ya existente (sin necesidad de 
  recrearla)
* Accede directamente a los "tiles" del terreno para procesos no visuales

Datos que se pueden importar:

* Imágenes GeoTIFF y archivos DEM ("Digital Elevation Model") además de muchos 
  otros formatos
* Datos vectoriales como ESRI 'shapefiles'
* Datos compatibles con los estándares de OGC (como WMS_)
* Capas de SIG publicadas con Mapserver_ o `ESRI ArcGIS Server`_
* Mapas 'on-line' como OpenStreetMap_, `ArcGIS Online`_, o `NASA OnEarth`_

.. _WMS: http://www.opengeospatial.org
.. _MapServer: http://mapserver.org
.. _`ESRI ArcGIS Server`: http://www.esri.com/software/arcgis/arcgisserver/
.. _OpenStreetMap: http://openstreetmap.org
.. _`ArcGIS Online`: http://resources.esri.com/arcgisonlineservices/
.. _`NASA OnEarth`: http://onearth.jpl.nasa.gov


Detalles
--------------------------------------------------------------------------------

**Página Web:** http://osgearth.org/

**Licencia:** GNU Lesser General Public License (LGPL) 

**Versión del software:** 2.0

**Plataformas soportadas:** Linux, Mac, Windows

**Interfaces API:** C++

**Soporte comercial:** http://osgearth.org/#ProfessionalServices


Guía de inicio rápido
--------------------------------------------------------------------------------

* :doc:`Guía rápida <../quickstart/osgearth_quickstart>`


