:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://mapserver.org/trunk/tinyows/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

TinyOWS
================================================================================

Web Feature Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TinyOWS is a high performance, Transactional Web Feature Service (WFS-T) which is light weight and easy to deploy, using a CGI or FastCGI interface and using :doc:`PostGIS <postgis_overview>` for data storage.

.. image:: ../../images/screenshots/800x600/tinyows_digitizing.jpg
  :scale: 55 %
  :alt: digitizing
  :align: right

TinyOWS è comunamente utilizzanto insieme a :doc:`MapServer <mapserver_overview>` per fornire servizi WFS-T e WFS veloci per client come :doc:`QGIS <qgis_overview>` e/o :doc:`OpenLayers <openlayers_overview>`. È utilizzato in fase produttiva in organizzazioni sparse in tutto il mondo, incluse risk adverse government agencies.
TinyOWS implementa rigorosamente gli standard WFS 1.0 e 1.1, e ha passato tutti i test OGC CITE units (~ 1000 test unici).

Core Features
--------------------------------------------------------------------------------

* Transactional Web Feature Service (WFS-T)
* Interfaccia CGI e FastCGI
* Connessione a dati PostGIS
* Output GML 2.1.2, 3.1.1 e GeoJson 1.0
* Configurazione usando il file di configurazione di MapServer, permettendo un unico file di configurazione per entrambe le applicazioni.

Standard Implementari
--------------------------------------------------------------------------------
* WFS 1.0 e WFS 1.1: Profili Semplice e Transactionnal
* FE 1.0.0 e FE 1.1.0
* GML 2.1.2 e 3.1.1 Simple Profile (SF-0)

Dettagli
--------------------------------------------------------------------------------

**Sito Web:** http://mapserver.org/trunk/tinyows/

**Licenza:** MIT

**Versione Software:** 1.0.0

**Piattaforme Supportate:** Linux, Unix, Mac, Windows

**Interfacce API:** CGI/FastCGI

**Supporto:** http://lists.osgeo.org/mailman/listinfo/mapserver-users


Presentazione Veloce
--------------------------------------------------------------------------------
    
* :doc:`Documentazione introduttiva <../quickstart/tinyows_quickstart>`

