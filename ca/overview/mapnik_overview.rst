:Author: Dane Springmeyer
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Anna Muñoz
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapnik.png
  :scale: 80 %
  :alt: logotip del projecte
  :align: right
  :target: http://mapnik.org/


Mapnik
================================================================================

Motor de renderització cartogràfic
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mapnik és un conjunt d'eines en C++ per al desenvolupament d'aplicacions
cartogràfiques amb acabats de gran qualitat estètica incloent el suavitzat de
línies i contorns (anti-aliasing), la ubicació intel·ligent de les etiquetes,
així com l'ús de símbols escalables en format SVG (Scalable Vector Graphics).
El seu ús més conegut és la renderització de les capes base de cartografia
d'OpenStreetMap.

Mapnik s'acostuma a incrustar dintre d'aplicacions en Python que permeten la
generació de mapes en internet, encara que les darreres millores també permeten
la creació i la impressió de mapes amb gran resolució.

.. image:: ../../images/screenshots/1024x768/mapnik-screenshot-barcelona.png
  :scale: 40 %
  :alt: screenshot
  :align: right

Bàsicament es tracta d'una col·lecció d'objectes geogràfics (map, layer,
datasource, feature, geometry) independent d'una interfície gràfica ("windowing
systems") que permet el desplegament en qualsevol servidor.

Està pensada per a un bon funcionament a nivell d'entorns multi-fil
(multi-thread) i s'orienta principalment,encara que no de manera exclusiva, a
desenvolupament web.

L'existència de llibreries d'alt nivell en Python, com per exemple boost.python, 
faciliten el ràpid desenvolupament d'aplicacions que usen zope3, django, etc.

Mapnik és multiplataforma. Els diferents mòduls estan disponibles per 
la majoria de les distribucions en Linux i els programes d'instal·lació
són d'ús comú per Mac OS X i Windows.

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://www.mapnik.org/

**Llicències:** LGPL (GNU Lesser General Public Licence)

**Versió del programari:** 0.7.1

**Plataformes suportades:** Windows, Linux, Mac

**Interfícies de desenvolupament:** C++, Python

Guia d'inici ràpid
--------------------------------------------------------------------------------

* :doc:`Documentació de la guia d'inici ràpid <../quickstart/mapnik_quickstart>`


