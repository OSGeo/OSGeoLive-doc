:Author: Gérald Fenoy
:Version: osgeo-live4.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _zoo-overview-de:

.. image:: ../../images/project_logos/logo-Zoo.png
  :scale: 50 %
  :alt: Projekt Logo
  :align: right
  :target: http://zoo-project.org/

ZOO Projekt
================================================================================

WPS Server
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Das ZOO Projekt liefert ein entwicklerfreundliches Web Processing Service (WPS) Framework, um Web Processing Services zu erstellen und miteinander zu verknüpfen (Chaining).
Ein WPS stellt den Zugang zu Funktionen bereit, die in der Lage sind, räumliche Algorithmen auszuführen.
Das ZOO Projekt unterstützt zahlreiche Programmiersprachen und enthält zwei Beispielanwendungen, die von einfachen GIS Funktionen der Webdienste (einer Bibliothek in C und einem Python-Modul) Gebrauch machen, basierend auf den GEOS und OGR Bibliotheken.

ZOO besteht aus drei Komponenten:

.. image:: ../../images/screenshots/1024x768/zoo-project-demo-2.png
  :scale: 40 %
  :alt: Bildschirmfoto
  :align: right

*ZOO Kernel* : Ein leistungsfähiger serverseitiger C-Kernel, der es ermöglicht, Webdienste zu verwalten und zu verbinden, die in verschiedenen Programmiersprachen geschrieben sein können.

*ZOO Dienste* : Eine wachsende Sammlung von Beispiel-Webdiensten basierend auf verschiedenen Open-Source-Bibliotheken.

*ZOO API* : Eine serverseitige JavaScript API, welche es ermöglicht, ZOO Dineste aufzurufen und zu verbinden, und damit die Entwicklung und Verkettung von Prozessen vereinfacht.

ZOO basiert auf dem 'WPS Service Kernel', der das ZOO Kernsystem bildet (aka ZOO Kernel). Letzterer ist in der Lage, dynamische Bibliotheken zu laden und sie als on-demand Webdienste abzuwickeln. Der ZOO Kernel ist in der Sprache C geschrieben, unterstützt jedoch auch einige verbreitete Programmiersprachen, um mit zahlreichen Bibliotheken interagieren zu können, und damit die Arbeit von Entwicklern von Webdiensten zu vereinfachen.

Ein ZOO Dienst besteht aus einem Link zwischen einem Metadatendokument (.zcfg) und dem Programmcode der zugehörigen Implementierung. Das Metadatendokument beschreibt alle verfügbaren Funktionen, welche von einer WPS Exec Anfrage aufgerufen werden können, sowie das gewünschte Ein- und Ausgabeformat. Dienste beinhalten Algorithmen und Funktionen und können derzeit in C/C++, Fortran, Java, Python, PHP
oder JavaScript implementiert sein.


Kernfunktionen
--------------------------------------------------------------------------------

* WPS Server mit Unterstützung zahlreicher Programmiersprachen
* Einfaches Erstellen und Einrichten von Webdiensten
* Einfaches WPS "Chaining" mittels ZOO API

Implementierte Standards
--------------------------------------------------------------------------------

* OGC WPS 1.0.0

Demo
--------------------------------------------------------------------------------

* `Einfache C Services Provider Demo basierend auf GEOS and OGR Bibliotheken <http://localhost/zoo-demo/spatialtools.html>`_
* `Einfache Python Services Provider Demo basierend auf GEOS and OGR Bibliotheken <http://localhost/zoo-demo/spatialtools-py.html>`_
* `HTML Formular für einfache WPS Anfragen an den ZOO Kernel <http://localhost/zoo-demo/spatialtools.html>`_


Details
--------------------------------------------------------------------------------

**Webseite:** http://zoo-project.org

**Lizenz:** MIT x/11

**Software Version:** 1.0

**Unterstützte Plattformen:** Windows, Linux, Mac

**API Schnittstellen:** C, Python, Java, PHP, Fortran, Javascript

**Support:** http://zoo-project.org/trac

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/zoo-project_quickstart>`
