:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _tinyows-overview-es:

.. image:: ../../images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.tinyows.org/

TinyOWS
================================================================================

Web Feature Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TinyOWS es un WFS transaccional (WFS-T) de alto rendimiento, ligero y sencillo de desplegar, mediante interfaz CGI o FastCGI y usando :doc:`PostGIS <postgis_overview>` para el almacenamiento de datos.

.. image:: ../../images/screenshots/800x600/tinyows_digitizing.jpg
  :scale: 55 %
  :alt: digitizing
  :align: right

TinyOWS normalmente es usado junto con :doc:`MapServer <mapserver_overview>` para proporcionar WFS-T y servicios WFS rápidos para clientes :doc:`QGIS <qgis_overview>` y/o :doc:`OpenLayers <openlayers_overview>`.
Es usado en producción en organizaciones de todo el mundo, incluyendo agencias gubernamentales.
TinyOWS implementa los estándares WFS 1.0 y 1.1 de manera estricta, y ha pasado todas las pruebas unitarias OGC cite (~ 1000 pruebas unitarias).

Características principales
--------------------------------------------------------------------------------

* WFS transaccional (WFS-T)
* Interfaz CGI y FastCGI
* Conexión con PostGIS
* Formato de salida en GML 2.1.2, 3.1.1 y GeoJson 1.0
* Configuración mediante ficheros de configuración de Mapserver, permitiendo un único fichero para ambas aplicaciones.

Estándares implementados
--------------------------------------------------------------------------------
* WFS 1.0 y WFS 1.1: perfiles Básico y Transicional
* FE 1.0.0 y FE 1.1.0
* GML 2.1.2 y 3.1.1 Perfil Simple (SF-0)

Detalles
--------------------------------------------------------------------------------

**Sitio web:** http://www.tinyows.org/

**Licencia:** MIT

**Versión del software:** 1.0

**Plataformas soportadas:** Linux, Unix, Mac, Windows

**Interfaces de programación:** CGI/FastCGI

**Soporte:** http://lists.maptools.org/pipermail/tinyows-users/


Guía de inicio rápido
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/tinyows_quickstart>`

