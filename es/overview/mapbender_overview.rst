:Author: Astrid Emde
:Version: osgeo-live4.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _mapbender-overview:

.. image:: ../../images/project_logos/logo-Mapbender.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.mapbender.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 90 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


Mapbender
================================================================================

Geoportal Framework
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Mapbender <http://www.mapbender.org>`_ es un proyecto graduado en OSGeo. Consiste de un entorno para la publicación de Geoportales, y para el registro, visualización, navegación, monitorización y manejo de niveles de acceso seguros a servicios de Infraestrctura de Datos Espaciales.

Mapbender es la punta del iceberg, algo como una metacapa provista por un *software* que proporciona acceso a los componentes de una Infraestructura de Datos Espaciales (IDE) al adherirse a los estándares internacionales de interoperabilidad para servicios de información geográfica vía *web*. Mapbender permite a los usuarios crear navegadores *web* de mapas o Geoportales personalizados fácilmente, a partir de una amplia gama de aplicaciones o *widgets* sin necesidad alguna de programación o en algunos casos muy mínima. Las aplicaciones o *widgets* integradas con las funcionalidades de tipo servidor proveen funcionalidades avanzadas como seguridad de tipo *proxy*, digitalización en línea a través del navegador **web** (o *browser*), *auto snapping* y más.

La Gestión de aplicaciones en Mapbender es directa y fácil de usar ofreciendo una destacada cantidad de funcionalidades enfocadas para la operación a gran escala, de los componentes distribuidos de la IDE. Es la herramienta de elección para los administradores de Infraestructura de Datos Espaciales que necesitan para mantener, categorizar y controlar los servicios *web* de mapas y fenómenos o elementos. Mapbender permite gestionar el acceso a personas, grupos y administradores. La adhesión a los estándares de los servicios, tales como WMS y WFS Transaccional de OGC (Open Geospatial Consortium) le permite sacar provecho de los servicios interoperables de una multitud de plataformas disponibles a nivel de servidor.

El lado del cliente Mapbender se basa en HTML y JavaScript usando la biblioteca jQuery y jQuery UI que proporcionan gran cantidad de aplicaciones al navegador *web* tipo *widgets*. El lado del servidor Mapbender está implementado en PHP y PostgreSQL/PostGIS.

Mapbender da una nueva perspectiva a la gestión de las IDE al utilizar nada más que un navegador *web* estándar.


.. image:: ../../images/screenshots/800x600/mapbender_demo.png
  :scale: 50%
  :alt: Mapbender application
  :align: right


Propiedades Fundamentales
--------------------------------------------------------------------------------

* La forma más sencilla es crear una interfaz *web* de mapas al utilizar la aplicación de plantillas

  * agregar/eliminar/personalizar aplicaciones jQuery tipo *widgets* 
  * personalizar estilos usando el jQuery UI Themeroller
  
* Cargar y compartir servicios remotos OGC de tipo WMS (mediante cacheo de capacidades o *Capabilities caching*) 

  * arrastrar capas para superponer los servicios WMS cargados
  * editar la visibilidad de las capas
  * ordenar
  * asignar formato
  * editar leyendas
  * desplegar servicio de metadatos (según perfil ISO) basado en el documento de capacidades para catálogo según protocolo OGC con interfaz CSW (Catalog Service Web).
  
* Cargar y configurar Servicios WFS para Buscar, Encontrar y Resaltar objetos o elementos espaciales (es equivalente al servicio Gazetteer o Nomenclátor).
* Enlazar de forma transaccional servicios OGC WFS y WMS para permitir la digitalización "en-línea" (con funcionalidades como el servicio cruzado de *snapping*, o la manipulación de geometrías como recorte (*split*), combinación o clonación).
* Crear usuarios y grupos, para compartir y conceder accesos a los servicios y módulos de forma personalizada.
* Manipular Web Map Context (WMC)
* Conectar a servicios remotos de catálogos, y de forma opcional a Geonetwork Opensource.
* Restringir acceso a usuarios con el módulo de Seguridad *Proxy* (OWS) via servidores validados. 
* Monitorizar protocolos encriptados y notificación de estado y auto-actualizaciones de servicios desde un servicio OGC remoto.
* Desplegar el cliente OpenLayers desde el repositorio de servicios de Mapbender.
* Imprimir Mapas de Alta Calidad usando tus propias plantillas PDF.
* ... y más!

Estándares Implementados
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.0.0, 1.1.0, 1.1.1
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0
* OGC Web Map Context (WMC) 1.1.0 

Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://www.mapbender.org/ 

**Licencia:** Mapbender se encuentra bajo una licencia dual compuesta por la la licencia GNU General Public License y la licencia Simplified BSD license
  * http://svn.osgeo.org/mapbender/trunk/mapbender/license/gpl.txt  
  * http://svn.osgeo.org/mapbender/trunk/mapbender/license/simplified_bsd.txt

**Version del Software:** 2.7

**Platformas Soportadas:** Windows, Linux, Mac

**Soporte:** http://www.mapbender.org/Support


Guía de inicio rápido
--------------------------------------------------------------------------------

* `Guía de inicio rápido <../quickstart/mapbender_quickstart.html>`_
