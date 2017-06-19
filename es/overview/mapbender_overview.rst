:Author: Astrid Emde
:Reviewer: Cameron Shorter, Jirotech
:Translator: Samuel Mesa
:Translator: Roberto Antolín
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-Mapbender3.png
  :alt: project logo
  :align: right
  :target: http://www.mapbender3.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 90 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


Mapbender
================================================================================

Geoportal Framework
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Mapbender <http://mapbender3.org/en>`_ es un proyecto graduado en OSGeo.
Consiste de un entorno de geoportales  para publicar, registrar, visualizar,
navegar, seguir y conceder accesos seguros a servicios de Infraestrctura de
Datos Espaciales (IDE's).

Mapbender es la punta del iceberg, una metacapa provista por un software que
proporciona acceso a los componentes de una IDE al adherirse a los estándares
internacionales de interoperabilidad para servicios de información geográfica
vía web. Mapbender permite a los usuarios crear navegadores web de mapas o
Geoportales personalizados fácilmente, a partir de una amplia gama de
aplicaciones o *widgets* con mínima o ninguna necesidad de programación. Los
*widgets*, integrados con funcionalidades de tipo servidor,
proveen funcionalidades avanzadas como seguridad de tipo *proxy*, digitalización
en línea a través del navegador, *auto snapping* y más.

La Gestión de aplicaciones en Mapbender es directa y fácil de usar ofreciendo
una destacada cantidad de funcionalidades enfocadas para la operación a gran
escala de los componentes distribuidos de la IDE. Es la herramienta de elección
para los administradores de IDE's que necesitan mantener, categorizar y
controlar servicios web de mapas y entidades (*features*). Mapbender permite
gestionar el acceso a personas, grupos y administradores. La adhesión a los
estándares de los servicios, tales como WMS y WFS Transaccional de OGC (Open
Geospatial Consortium) le permite sacar provecho de los servicios interoperables
de una multitud de plataformas disponibles a nivel de servidor.

El lado del cliente de Mapbender se basa en Symfony2, OpenLayers, Mapproxy usando las
librerías jQuery y jQuery UI, que proporcionan gran cantidad de aplicaciones
tipo *widgets* al navegador web. El lado del servidor Mapbender está
implementado en PHP y PostgreSQL/PostGIS.

Mapbender da una nueva perspectiva a la gestión de las IDE al utilizar nada más
que un navegador web estándar.

.. image:: /images/screenshots/800x600/mapbender3_basic_application.png
  :scale: 70%
  :alt: Mapbender application
  :align: right


Propiedades principales
--------------------------------------------------------------------------------

* Es sencillo crear una interfaz web de mapas utilizando plantillas de aplicaciones

  * agregar/eliminar/personalizar aplicaciones jQuery tipo *widgets* 
  * personalizar estilos usando jQuery UI Themeroller
  
* Cargar y compartir servicios remotos OGC de tipo WMS (mediante cacheo de capacidades o *Capabilities caching*) 

  * organizar capas para superponer los servicios WMS cargados
  * editar la visibilidad de las capas
  * ordenar
  * asignar formato
  * editar leyendas
  * desplegar servicio de metadatos (según perfil ISO) basado en el documento de capacidades para catálogo según protocolo OGC con interfaz CSW (Catalog Service Web).
  
* Cargar y configurar Servicios WFS para buscar, encontrar y resaltar objetos o elementos espaciales (es equivalente al servicio Gazetteer o Nomenclátor).
* Enlazar de forma transaccional servicios OGC WFS y WMS para permitir la digitalización "en-línea" (con funcionalidades como el servicio cruzado de *snapping*, o la manipulación de geometrías como recorte (*split*), combinación o clonación).
* Crear usuarios y grupos, para compartir y conceder accesos a los servicios y módulos de forma personalizada.
* Manipular Web Map Context (WMC)
* Conectar a servicios remotos de catálogos, y de forma opcional a Geonetwork Opensource.
* Restringir acceso a usuarios con el módulo de seguridad *proxy* OWS via servidores validados. 
* Control de protocolos encriptados y notificación de estado y auto-actualizaciones de servicios desde un servicio OGC remoto.
* Desplegar el cliente OpenLayers desde el repositorio de servicios de Mapbender.
* Imprimir mapas de alta calidad usando tus propias plantillas PDF.
* ... y más!

Estándares Implementados
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.1.1, 1.3.0

Detalles
--------------------------------------------------------------------------------

**Sitio web:** http://mapbender3.org/ 

**Licencia:** `MIT license <http://opensource.org/licenses/MIT>`_

**Version del software:** |version-mapbender|

**Platformas soportadas:** Windows, Linux, Mac

**Soporte:** http://mapbender3.org/en/community


Guía rápida
--------------------------------------------------------------------------------

* :doc:`Guía de inicio rápido <../quickstart/mapbender_quickstart>`
