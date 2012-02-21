:Author: Trevor Wekel
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _mapguide-overview:

.. image:: ../../images/project_logos/logo-MapGuideOS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://mapguide.osgeo.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


MapGuide Open Source
================================================================================

Web Service
--------------------------------------------------------------------------------

`MapGuide Open Source <http://mapguide.osgeo.org/>`_ es una plataforma web que proporciona a usuarios la posibilidad de publicar mapas y servicios web en internet. MapGuide es un visor web interactivo que incluye soporte para selección de objetos, análisis espacial, y otras operaciones como buffer, selecciones entre capas y mediciones.

MapGuide incluye soporte XML para manejar capas y contenidos. Se puede editar la base de datos XML y crear el visor sin tener que escribir una sola linea de código. MapGuide también soporta el acceso a la mayoria de los formatos GIS mas usuales, bases de datos y standards.

MapGuide puede ser instalado en Linux o Windows, tanto en Apache como en IIS web servers, y puede ser extensible con PHP, .NET, Java, y JavaScript APIs para desarrollar aplicaciones personalizadas. La licencia de MapGuide Open Source es LGPL.

.. image:: ../../images/screenshots/1024x768/mapguide_viewer.png
  :scale: 50%
  :alt: screenshot
  :align: right


.. note:: Actualmente MapGuide no está instalado en el DVD debido a
          restricciones de espacio en el DVD

.. commented out as manual install doesn't currently work: To install
  it open up a terminal and run ``cd gisvm/bin; sudo ./install_mapguide.sh``


Principales funcionalidades
--------------------------------------------------------------------------------

** Visualización de mapas interactivo**

* Visor dinámico basado en navegador
* Seleccion de objetos y propiedades
* Buffering, consultas
* Mapas e impresión

**Salidas gráficas de calidad**

* Representaciones detalladas según el tipo de escala
* Reglas para la creación de estilos temáticos
* Renderización de imagen con 'antialiasing'
* Soporte de color verdadero

**Gestión de base de datos**

* Almacenamiento jerárquico de recursos y documentos XML para definir mapas, capas y conexiones de datos
* Definición de datos y capas para ser usados en mapas diferentes
* Gestión de permisos y accesos según usuario

**Acceso a datos uniforme**

* Feature Data Objects (FDO) API para datos vectoriales y raster
* Acceso estándar a diferente tipos de datos como SHP, SDF, Oracle, MySQL, y PostGIS.

**Desarrollo flexible de aplicaciones**

* Desarrollo de aplicaciones en PHP, .NET o Java

**Potentes APIs en el servidor**

* Creación, consulta, lectura, y escritura
* Consulta y actualización de datos
* Reproyeccion
* Creación, manejo y analisis de geometrías
* Manejo de capas y mapas

**Plataforma de servidor segura, rápida y escalable**

* Completamente adaptado para servidores multi-core
* Reparto de carga entre servidores
* Conexiones a bases de datos encoladas
* Tile caching integrado

**Soporte multiplataforma**

* Instalable en Microsoft Windows y en Linux
* Puede ser utilizado con Apache o Microsoft IIS
* Trabaja con los siguientes navegadores: Microsoft Internet Explorer, Mozilla Firefox, Safari y Chrome

Estándares implementados
--------------------------------------------------------------------------------

* OGC Web Map Service 1.1.1 

Detalles
--------------------------------------------------------------------------------

**Sitio web:** http://mapguide.osgeo.org/

**Licencia:** GNU Lesser General Public License (LGPL)

**Versión del software:** 2.2.0

**Sistemas operativos:** Linux, Windows

**Soporte:** http://www.osgeo.org/search_profile


Guía de inicio rápido
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/mapguide_quickstart>`


