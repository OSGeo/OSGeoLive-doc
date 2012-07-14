:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-saga.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.saga-gis.org


SAGA
================================================================================

SIG d'escriptori
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SAGA (Sistema per Anàlisi Geocientífic Automatitzat) és un sistema d'Informació Geogràfica (SIG) de codi obert que s'utilitza per editar i analitzar dades espacials. Inclou una gran quantitat de mòduls per anàlisi de vector (punt, línia i polígon), taules, malles i imatges. Entre d'altres el paquet inclou mòduls per geoestadística, classificació d'imatges, projeccions, simulació de processos dinàmics (hidrologia, desenvolupament paisatgístic) i anàlisi del terreny. Les funcionalitats són acccessibles via GUI, o bé per línia de comandes o utilitzant una API en C++.

SAGA s'ha estat desenvolupant des de 2001, i el centre del desenvolupamnt de SAGA és l'Institute of Geography a la Universitat d'Hamburg, amb contribucions de la creixent comunitat mundial.

.. image:: ../../images/screenshots/1024x768/saga_overview.png
  :scale: 40%
  :alt: screenshot
  :align: right

Característiques principals
--------------------------------------------------------------------------------

* Accés a un gran nombre de mòduls científics via GUI o des de línia de comandes

 * Importació i exportació a molts tipus de formats diferents
 * Reprojecció/Remostreig de dades
 * Manipulació de dades vector (unió/intersecció/atributs)
 * Manipulació de núvols de punts de dades lidar
 * Dades ràster: interpolació, anàlisi de costos, ...
 * Anàlisi d'imatges: filtres, detecció de vores, anàlisi de grups, segmentació
 * Anàlisi digial del terreny: generar indexos geomorfomètrics, xarxes de canals,, perfils, línies de contorn, ...
 * Geoestadística: mòduls d'ajust de variogrames i kriging

* Interfície d'usuari ràpida pe a la gestió i la visualització de dades

 * Visualització 3D

* API senzilla en C++ per a la creació de nous mòduls
* Seqüències de comandaments a través de línia de comandes, enllaços per python
* SAGA es pot cridar des del programari estadístic R a través del mòdul RSAGA

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://www.saga-gis.org

**Llicència:** LGPL v2.1 (api); GPLv2 (GUI i mòduls)

**Versió de programari:** 2.0.8

**Sistemes operatius:** Windows, Linux, FreeBSD

**Interfícies API:** C++

**Suport:** http://www.saga-gis.org


Guia ràpida
--------------------------------------------------------------------------------

* :doc:`Documentació de la guia ràpida <../quickstart/saga_quickstart>`


