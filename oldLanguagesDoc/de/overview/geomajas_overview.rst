:Author: Pieter De Graef
:Author: Dominik Helle
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-geomajas.png
  :width: 100px
  :height: 100px
  :alt: project logo
  :align: right
  :target: http://www.geomajas.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Projekt
  :align: right
  :target: http://www.osgeo.org

Geomajas
================================================================================

Browser Anwendung
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geomajas ist ein erweiterbares Web-Mapping Framework, dass serverseitige Algorithmen im Browser zur Verfügung stellt.

Der Schwerpunkt von Geomajas ist es, eine Anwendung bereit zu stellen, die eine **serverseite Integration** von raumbezogenen Daten ermöglicht (vergleichbar etwa mit :doc:`GeoTools <geotools_overview>` oder Hibernate). Gleichzeitig ist das System mehrbenutzerfähig, so dass Benutzer die Daten über Ihre Web-Browser kontrollieren und verwalten können. Im wesentlichen stellt Geomajas eine Vielzahl von leistungsstarken Bausteinen zur Verfügung, die es ermöglicht GIS Anwendungen einfach zu erstellen.

Eine Besonderheit von Geomajas ist die starke serverseitge Fokussierung. Das Verarbeiten, Stylen, Filtern und Zwischenspeichern von Daten wird in einem abgesicherten Bereich durchgeführt. So sind Anwendungen, die über GeoMajas bereitgestellt werden gut skalierbar und performant.

.. image:: /images/projects/geomajas/geomajas_1024x768_screen1.png
  :scale: 50%
  :alt: Geomajas Showcase
  :align: right

Kernfunktionen
--------------------------------------------------------------------------------

* Programmierbar mit reinem Java über GWT
* Unterstützt verschiedene Datenquellen (incl. WMS, WFS, WMTS, TMS, OSM, Google Maps, Shape, PostGIS, Oracle, JDBC, …)
* Kollection von built-in Widgets (incl. Editieren Und Redlining, Druck, Geocoding, Ebenenbaum, ...)
* Aufbau von eigenen Use-Cases und neuen Widgets 
* Leicht anpassbar über CSS
* Keine Verwendung von Browser-Plugins
* Läuft auf zahlreichen internettauglichen Geräten die HTML5 verwenden
* Noch kein GWT Enthusiast? Zugriff auf die Kernfunktionen über die Javascript API

Enterprise Server Funktionalität
--------------------------------------------------------------------------------

* Erweiterete Sicherheit auf unterschiedlichen Ebenen (Layer, Feature, Attribute, Funktionalität, …)
* Seamless Integration mit dem eigenen Domain Model – Persistenz über Hibernate, Web Services, Java RMI, ...
* Enterprise Integration mit anderen Business Anwendungen wie JBPM, Activiti, JasperReports, CMS, Alfresco über ndustrie Standards (SOAP, REST, ESB, JNDI, …)
* Leicht erweiterbar über das Spring Framework

Details
--------------------------------------------------------------------------------

**Webseite:** http://www.geomajas.org/

**Lizenz:** AGPL

**Software Version:** |version-geomajas|

**Unterstütze Plattformen:** Windows, Linux, Mac

**API Schnittstellen:** Java und Javascript

**Support:** http://www.osgeo.org/node/725?SET=1&MUL_TECH[]=00089


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/geomajas_quickstart>`

