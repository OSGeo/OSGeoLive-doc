:Author: Alan Boudreault, Steve Lime
:Reviewer: Cameron Shorter, Jirotech
:Translator: Diego González
:Translator: David Mateos
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-mapserver-new.png
  :alt: project logo
  :align: right
  :target: http://mapserver.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


MapServer
================================================================================

Servicio Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapServer es un motor de renderización de datos geográficos `Open Source <http://www.opensource.org>`_ escrito en C. Más allá de la navegación por datos GIS, MapServer permite crear "mapas de imágenes geográficas", es decir, mapas de contenidos para los usuarios. Por ejemplo, en Minnesota DNR `Recreation Compass <http://www.dnr.state.mn.us/maps/compass.html>`_ se proporciona a los usuarios más de 10.000 páginas Web, informes y mapas, a través de una única aplicación. La misma aplicación hace de "motor de mapas", proporcionando los contenidos spaciales a otras partes del sitio Web que las necesitan.

MapServer fue desarrollado inicialmente por el proyecto *ForNet* de la Universidad de Minnesota (UMN) en cooperación con la NASA, y el Departamento de Recursos Naturales de Minnesota, el MNDR (Minnesota Department of Natural Resources). Más tarde, se alojó en el proyecto *TerraSIP project*, un proyecto financiado por la NASA, entre la UMN y un consorcio de actores con intereses en gestión del territorio.

MapServer es ahora un proyecto de `OSGeo <http://www.osgeo.org>`_, y lo mantiene un grupo creciente de desarrolladores (cerca de 20) distribuidos por todo el mundo. Un diverso grupo de organizaciones dan soporte al proyecto, proporcionando mejoras y mantenimiento, y se administra dentro de OSGeo por el *MapServer Project Steering Committee*, formado por desarrolladores y otros contribuidores.

Características clave
--------------------------------------------------------------------------------

.. image:: /images/projects/mapserver/mapserver.png
  :scale: 50 %
  :alt: screenshot
  :align: right

* Salida cartográfica avanzada:

  * Dibujado de elementos (*features*) dependientes de la escala y ejecución de aplicación.
  * Etiquetado de elementos,  incluyendo gestión de colisión de etiquetas.
  * Soporte de fuentes TrueType para etiquetado y simbología.
  * Automatización de elementos de mapa (barra de escala, mapa de referencia y leyenda).
  * Mapas temáticos utilizano clases basadas en lógica de programación o en expresiones regulares.
  * Soporte de renderizado extensible con drivers para AGG, Cairo, GD y OpenGL, y otros.
  * Funciones especiales para generar *tiles* de salida. 
  * Capas de máscara (*mask*).
  * Colocación de simbolos precisa.
  * Simbología compleja multi etiqueta/símbolo.
  * Campos de vectores.
  * *Label Leader Offsetting*.
  * Simbología SVG. 
  * Soporte Fuentes Multiples.
  * Mapas de calor (*Heatmaps*) dinámicos.
  * Soporte para rejilla UTF.
  * Composición de capas.

* Soporte para consultas (*query*) espaciales sofisticadas

  * Identificación de elementos por atributos, por punto, por rectángulo envolvente o cruces geométricos de una o más capas.
  * Soporte para consultas raster. 
  * Salida basada en plantillas totalmente personalizables.
  * Generación de consultas basadas en OGR.
 
* Soporte para lenguajes de *scripting* y entornos de desarrollo populares:

  * CGI/FastCGI.
  * PHP, Python, Perl, Ruby, Java, y .NET.

* Soporte Multi-plataforma:

  * Linux, Windows, Mac OS X, Solaris, y mas.

* Multitud de formatos raster y vectoriales:

  * Soporte nativo para shapefiles de ESRI, PostGIS y Oracle Spatial.
  * Muchos otros formatos a través de OGR y GDAL.

* Soporte de proyecciones de Mapa:

  * Proyecciones 'al vuelo' con capacidad para más de 1000 proyecciones proporcionadas por la biblioteca Proj.4.

Standares Implementados
--------------------------------------------------------------------------------

* Soporta numerosos estándares  (OGC)

  * :doc:`WMS (cliente/servidor) <../standards/wms_overview>`, :doc:`WFS no-transaccional (cliente/servidor) <../standards/wfs_overview>`, WMC, :doc:`WCS <../standards/wcs_overview>`, :doc:`Filter Encoding <../standards/fe_overview>`, :doc:`SLD <../standards/sld_overview>`, :doc:`GML <../standards/gml_overview>`, SOS, OM.

  * Servicios de visores conforme a INSPIRE.

Demo
--------------------------------------------------------------------------------

* `Itasca <http://localhost/mapserver_demos/itasca/>`_

Documentación
--------------------------------------------------------------------------------

* `Documentación MapServer 7.0  <../../mapserver/doc/index.html>`_

Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://www.mapserver.org/

**Licencia:** `licencia estilo MIT <http://mapserver.org/copyright.html#license>`_

**Versión Software:**  |version-mapserver|

**Plataformas soportadas:** Windows, Linux, Mac

**Interfaces API:** C, PHP, Python, Perl, Ruby, Java y .NET

**Soporte:** http://mapserver.org/community/

Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Guía de inicio rápido <../quickstart/mapserver_quickstart>`
