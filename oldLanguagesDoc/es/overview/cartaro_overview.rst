:Author: Friedjoff Trautwein, http://www.geops.de
:Author: Patric Hafner, http://www.geops.de
:Reviewer: Cameron Shorter, http://jirotech.com
:Translator: Javi Sánchez, http://geonatec.com
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-cartaro.png
  :alt: project logo
  :align: right
  :target: http://cartaro.org

Cartaro
================================================================================

CMS Geoespacial
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Cartaro proporciona funcionalidad geoespacial y servicios web dentro del Sistema de Gestión de Contenidos (en Inglés CMS) Drupal. En unos pocos clicks se pueden configurar Servicios Web basados en estándares OGC, así como construir mapas dentro de páginas Web.  Cartaro está construido sobre componentes Open Source robustos: La base de datos :doc:`PostGIS <../overview/postgis_overview>` , :doc:`GeoServer <../overview/geoserver_overview>` y Servicios Web GeoWebCache, mapas de :doc:`OpenLayers <../overview/openlayers_overview>`, todo gestionado dentro del entorno de Gestor de Contenidos `Drupal <http://drupal.org>`_ .

Cartaro está diseñado para portales tipo CMS que necesiten gestionar datos Geoespaciales, o crear una Infraestructura de Datos Espaciales (IDE) ligera con la configuración y programación mínima.

.. image:: /images/projects/cartaro/cartaro_frontpage.png
  :scale: 50%
  :alt: Cartaro Frontpage
  :align: right

Características Fundamentales
--------------------------------------------------------------------------------

La mayoría de la funcionalidad IDE viene directamente integrada entre Drupal, PostGIS y GeoServer. Las principales propiedades de Cartaro son:

* Almacenamiento de datos geográficos en formato nativo
* Creación de tipos de datos desde dentro del entorno Drupal
* Edición de datos Geoespaciales on-line integrados
* Publicación de datos con mapas integrados
* Configuración de capas de mapas y comportamientos
* Estilos de símbolos
* Publicación de datos a través de Servicios OGC (OWS) como WMS y WFS
* Alto rendimiento de visualización de salida gracias a GeoWebCache
* Gestión de privilegios y seguridad para todos los datos espaciales
* Moderación del ciclo de publicación de contenidos y de revisión
* Gestión de colecciones de metadatos a través del acceso al interface gráfico de usuario de Geoserver
* Extensible a través de miles de módulos Drupal o mediante programación a medida

Estandares Implementados
--------------------------------------------------------------------------------

  * :doc:`../standards/wms_overview`
  * :doc:`../standards/wfs_overview`
  * :doc:`../standards/wcs_overview`
  * :doc:`../standards/fe_overview`
  * :doc:`../standards/sld_overview` 
  * :doc:`../standards/gml_overview`

Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://cartaro.org/

**Licencia:** GNU General Public License (GPL) version 2

**Versión Software:** 1.9

**Plataformas Soportadas:** Windows, Linux, Mac

**Interfaces API:** JavaScript, PHP

**Soporte:** http://www.geops.de

Guía de inicio rápido
--------------------------------------------------------------------------------
    
* :doc:`Guía de inicio rápido <../quickstart/cartaro_quickstart>`
