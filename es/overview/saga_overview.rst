:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Translator: Aitor Freire Astray
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-saga.png
  :alt: project logo
  :align: right
  :target: http://www.saga-gis.org


SAGA
================================================================================

SIG de escritorio
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SAGA (Sistema de Análisis Geocientíficos Automatizados) es un
sistema de información geográfica (SIG) de código abierto usado para
editar y analizar datos espaciales. Incluye un gran número de módulos
para análisis de datos vectoriales (puntos, líneas y polígonos), tablas,
grid e imágenes. Entre otros, incluye módulos de geoestadística, clasificación
de imágenes, proyeccioens, simulación de procesos dinámicos (hidrología,
desarrollo paisajístico) y análisis de terreno. Se puede acceder a sus
funcionalidades desde GUI, línea de comandos o usando la API C++.

SAGA está en desarrollo desde 2001, y el centro de desarrollo de SAGA se
localiza en el Instituto de Geografía de la Universidad de Hamburgo, con
las contribuciones de una creciente comunidad mundial.

.. image:: /images/screenshots/1024x768/saga_overview.png
  :scale: 40%
  :alt: screenshot
  :align: right

Funciones principales
--------------------------------------------------------------------------------

* Acceso a gran número de módulos científicos a través de la GUI o la línea de comandos

 * Importar/Exportar a diferentes formatos de archivo.
 * Reproyección/Remuestreo de datos.
 * Manipulaíón de datos vectoriales (fusión(intersección/atributos).
 * Manipulación de nubes de puntos de datos lidar.
 * Datos Raster: interpolación, análisis de costes, ...
 * Análisis de imágenes: filtros, detección de bordes, análisis de clusters, segmetación.
 * Análisis Digital del Terreno: generación de índices geomorfométricos, canales de redes, perfiles, líneas de contorno, ...
 * Geoestadística: módulos para ajuste de variogramas y *kriging*.

* Interfaz de usuario rápida para el manejo y visualizado de datos.

 * Visualización 3D

* Sencilla API C++ para la creación de nuevos módulos.
* *Scripting* mediante línea de comandos, enlaces para *Phyton*.
* Acceso a SAGA desde el lenguaje estadístico R a través del módulo RSAGA.

Detalles
--------------------------------------------------------------------------------

**Página web:** http://www.saga-gis.org

**Licencia:** LGPL v2.1 (api); GPLv2 (GUI y módulos).

**Version de software:** |version-saga|.

**Plataformas compatibles:** Windows, Linux, FreeBSD.

**Interfaces API:** C++, Python, R.

**Soporte:** http://www.saga-gis.org


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/saga_quickstart>`


