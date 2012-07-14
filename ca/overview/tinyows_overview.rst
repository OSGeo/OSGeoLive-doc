:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.tinyows.org/

TinyOWS
================================================================================

Web Feature Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TinyOWS és un Web Feature Service Transaccional (WFS-T) d'alt rendiment, lleuger i fàcil d'implementar, usant interfícies CGI o FastCGI i que utilitza :doc:`PostGIS <postgis_overview>` per emmagatzemar dades.

.. image:: ../../images/screenshots/800x600/tinyows_digitizing.jpg
  :scale: 55 %
  :alt: digitalitzant
  :align: right

TinyOWS s'utilitza habitualment amb :doc:`MapServer <mapserver_overview>` per proporcionar serveis WFS-T i serveis ràpids WFS per clients :doc:`QGIS <qgis_overview>` i/o :doc:`OpenLayers <openlayers_overview>`. S'utilitza en entorns de producció en empreses de tot el món, incloses agències governamentals de prevenció de riscos.
TinyOWS implementa els estàndards WFS 1.0 i 1.1 de forma estricta, i ha passat tots els tests unitaris CITE de l'OGC (~ 1000 tests unitaris).

Característiques principals
--------------------------------------------------------------------------------

* Web Feature Service Transaccional (WFS-T)
* Interfícies CGI i FastCGI 
* Connexió de dades amb PostGIS
* Sortida GML 2.1.2, 3.1.1 i GeoJson 1.0
* Es configura emprant l'arxiu de configuració de Mapserver, de manera que n'hi ha prou amb un sol arxiu per configurar ambdues aplicacions.

Estàndards implementats
--------------------------------------------------------------------------------
* WFS 1.0 i WFS 1.1: perfil Basic i perfil Transaccional
* FE 1.0.0 i FE 1.1.0
* GML 2.1.2 i 3.1.1: Perfil Simple (SF-0)

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://www.tinyows.org/

**Llicència:** MIT

**Versió de programari:** 1.0

**Sistemes operatius:** Linux, Unix, Mac, Windows

**Interfícies API:** CGI/FastCGI

**Suport:** http://lists.maptools.org/pipermail/tinyows-users/


Guia ràpida
--------------------------------------------------------------------------------
    
* :doc:`Guia ràpida <../quickstart/tinyows_quickstart>`

