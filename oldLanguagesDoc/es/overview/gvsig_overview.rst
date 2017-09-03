:Author: Jorge Sanz
:Author: Manuel Madrid
:Translator: Jorge Sanz
:Translator: David Mateos
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _gvsig-overview-es:

.. image:: /images/project_logos/logo-gvSIG.png
  :alt: project logo
  :align: right
  :target: http://www.gvsig.com/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


gvSIG Desktop
================================================================================

SIG de escritorio
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

gvSIG es un Sistema de Información Geográfica (SIG) de escritorio diseñado para capturar, almacenar, gestionar, analizar y generar cualquier tipo de información referenciada geográficamente, con el objetivo de resolver problemas de gestión y planificación de cualquier ámbito. gvSIG es conocido por su interfaz de usuario amigable así como por ser capaz de acceder a los formatos vectorial y *raster* más utilizados actualmente. Dispone de un amplio abanico de herramientas para trabajar con información geográfica (consulta, diseño de mapas, geoprocesamiento, análisis de redes, etc.), convirtiendo gvSIG en una herramienta ideal para usuarios del ámbito de las geociencias.

gvSIG es conocido por:

- integrar en la misma vista datos tanto local como remotos, incluyendo los servidos mediante estándares OGC
- ser fácilmente extensible, permitiendo la mejora contínua de la aplicación, así como permitiendo el desarrollo de soluciones ad-hoc.
- estar disponible en más 20 idiomas (español, inglés, alemán, francés, italiano, ...)
- estar disponible oficialmente para Windows y Linux (también hay distribuciones no oficiales para MacOS X)

.. image:: /images/projects/gvsig/gvsig_desktop.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Características principales
--------------------------------------------------------------------------------

* Proporciona las herramientas SIG más comunes como carga de datos, navegación, consulta de información geográfica y alfanumérica, medida de distancias y áreas, generación de mapas temáticos, edición de leyenda, etiquetado, selección de geometrías mediante diversos métodos, tablas alfanuméricas con estadísticas, ordenación, relación entre tablas, edición de diseños de mapa, herramientas de geoprocesamiento, CAD, procesado *raster*, etc.

* Interoperable: es posible trabajar con los formatos de datos más comunes:

  * raster : ecw,  ENVI hdr, ERDAS img, (Geo)TIFF, GRASS, NetCDF...
  * vectorial & CAD: shapefile, NetCDF, GML, KML, DGN, DXF, DWG.
  * bases de datos geográficas: PostGIS, MySQL, Oracle, ArcSDE.
  * datos remotos: estándares OGC (WMS, WMTS, WFS, WCS), OSM, ECWP, ArcIMS.

* Servicios de descubrimiento para la localización de recursos geográficos en una IDE (servicios de catálogo y nomenclátor)

  * Catálogo: Z3950, SRW, CSW (ISO/19115 y ebRIM).
  * Nomenclátor: ADL, WFS, WFS-G.

* Más de 300 herramientas de geoprocesamiento, incluidos los algoritmos de la biblioteca SEXTANTE

* Herramientas CAD integradas:

  * datos vectoriales: modificar, crear y borrar elementos.
  * consola de entrada de comandos al estilo de las utilizadas en software CAD.
  * herramientas como ayuda, cuadrícula, pila de comandos, selecciones complejas de elementos.
  * herramientas para insertar elementos como puntos, polígonos, líneas, elípses, etc.
  * herramientas para rotar, escalar, simetría, etc.

* Herramientas *raster* integradas:

  * Georreferenciación y reproyección.
  * Exportación y recorte.
  * Tablas de color, histogramas.
  * Filtros, vectorización.
  * *Overviews* y gestión de regiones de interés (ROI).

* Otras funcionalidades

  * Soporte de *scripting* (para datos vectoriales y raster).
  * Potente herramienta de reproyección basada en PROJ4.
  * Importar/exportar paquetes de símbolos.
  * Generar series de mapas.
  * Gráficas.
  * Herramientas avanzadas de simbología.
  * Herramientas avanzadas de etiquetado.
  * Extensión de publicación.
  * Vistas portables.
  * Distribuciones personalizables.

Estándares implementados
--------------------------------------------------------------------------------

Cliente avanzado con soporte para numerosos estándares del *Open Geospatial Consortium* (OGC):

* Carga de capas WMS, WMTS, WFS y WCS.
* Exportación/importación de leyendas SLD.
* Exportación/importación de *Web Map Context* (WMC).
* Búsqueda en catálogos mediante el estándar CSW (ISO/19115 y ebRIM).
* Búsqueda en nomenclátors usando la recomendación WFS-G.

Detalles
--------------------------------------------------------------------------------

**Website:** http://www.gvsig.com/

**Licencia:** GNU General Public License (GPL) version 2

**Versión Software:** |version-gvsig|

**Plataformas Soportadas:** Windows, GNU/Linux

**Soporte:** http://www.gvsig.com/en/gvsig-association, http://www.gvsig.com/en/community/mailing-lists


.. _gvSIG: http://www.gvsig.com

Quickstart
--------------------------------------------------------------------------------

* :doc:Guía de inicio rápido <../quickstart/gvsig_quickstart>`

