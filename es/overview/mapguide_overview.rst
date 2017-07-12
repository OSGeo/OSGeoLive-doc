:Author: Trevor Wekel
:Reviewer: Cameron Shorter, Jirotech
:Translator: José Antonio Canalejo
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-MapGuideOS.png
  :alt: project logo
  :align: right
  :target: http://mapguide.osgeo.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


MapGuide Open Source
================================================================================

Web Service
--------------------------------------------------------------------------------

`MapGuide Open Source <http://mapguide.osgeo.org/>`_ es una plataforma web que
proporciona a los usuarios la posibilidad de publicar mapas y servicios web en
internet. MapGuide es un visor web interactivo que incluye soporte para
selección de entidades, inspección de propiedades y otras operaciones como
*buffer*, selecciones entre capas y mediciones.

MapGuide incluye soporte XML para manejar contenidos. Se puede editar la base de
datos XML y crear el visor sin tener que escribir una sola linea de código.
MapGuide también soporta el acceso a la mayoria de los formatos geoespaciales de
ficheros, bases de datos y estándares.

MapGuide puede ser instalado en Linux o Windows, en servidores web tanto
Apache como IIS, y puede ser extensible con PHP, .NET, Java, y JavaScript APIs
para desarrollar aplicaciones personalizadas. La licencia de MapGuide Open
Source es LGPL.

.. image:: /images/screenshots/1024x768/mapguide_viewer.png
  :scale: 50%
  :alt: screenshot
  :align: right


.. note:: Actualmente MapGuide no está instalado en el DVD debido a
          restricciones de espacio en el DVD

.. commented out as manual install doesn't currently work: To install
  it open up a terminal and run ``cd gisvm/bin; sudo ./install_mapguide.sh``


Características principales
--------------------------------------------------------------------------------

**Visualización de mapas interactivo**

* Visor dinámico basado en navegador
* Seleccion de entidades y propiedades
* *Buffering*, consultas
* Mapas e impresión

**Salidas gráficas de calidad**

* Representaciones detalladas según el tipo de escala
* Reglas para la creación de estilos temáticos
* Renderización de imagen con *antialiasing*
* Soporte de color real

**Gestión de base de datos integrada**

* Almacenamiento jerárquico de documentos XML para definir mapas, capas y conexiones de datos
* Definición de fuentes de datos y capas para poder ser usados en multiples mapas 
* Gestión de acceso con permisos heredables

**Acceso uniforme a datos**

* Feature Data Objects (FDO) API para datos vectoriales y raster
* Acceso estándar a diferentes tipos de datos como SHP, SDF, Oracle, MySQL, y PostGIS.

**Desarrollo flexible de aplicaciones**

* Desarrollo de aplicaciones en PHP, .NET o Java

**Potentes APIs en el servidor**

* Creación, consulta, lectura, y escritura de documentos XML permanentes y temporales
* Consulta y actualización de datos
* Reproyecciones de coordenadas
* Creación, manejo y analisis de geometrías
* Manejo de capas y mapas

**Plataforma de servidor segura, rápida y escalable**

* Completamente adaptado para servidores multi-núcleo
* Reparto de carga entre servidores
* Conexiones a bases de datos encoladas
* Cacheo de teselas integrado

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

**Plataformas soportadas:** Linux, Windows

**Soporte:** http://www.osgeo.org/search_profile


Guía rápida
--------------------------------------------------------------------------------

* :doc:`Guía de inicio rápido<../quickstart/mapguide_quickstart>`
