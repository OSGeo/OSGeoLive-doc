:Author: Massimiliano Cannata, Milan Antonovic, SUPSI
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Astrid Emde
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-istsos.png
  :alt: Projekt Logo
  :align: right
  :target: http://istsos.org

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Projekt
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html


istSOS
================================================================================

Daten-Managementwerkzeug
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

istSOS ist ein Managementwerkzeug für Sensordaten, das das Sammeln, Pflegen und Monitoren von Beobachtungen mit Hilfe der Standards des Open Geospatial Consortium (OGC) :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>` ermöglicht.

.. image:: ../../images/screenshots/1024x768/screenshot_istsos.png
  :scale: 60 %
  :alt: Datenviewer
  :align: right

istSOS folgt streng dem SOS 1.0.0 Standard und hat die OGC CITE (Compliance + Interopability Testing + Evaluation) Units Tests bestanden.

Kernfunktionen
--------------------------------------------------------------------------------

* Veröffentlichen von Sensordaten gemäß des Sensor Observation Service (SOS) Standards.
* Administration von Sensordaten und anderen Daten mit der intuitiven webbasierten Oberfläche.
* Verwendung einer kompletten Restful API für den Zugriff auf istSOS Funktionalität von externen Clients zur Erzeugung von interaktiven Diagrammen, zur Anzeige von Sensordaten auf einer dynamischen Karte oder lediglich zum einfachen Schreiben von Wartungsskripten.
* Benachrichtigung per Mail, twitter oder über andere soziale Medien, wenn Sensordaten bestimmte Bedingungen erfüllen.
* Benutzerauthentifikation und Authorisierung mit unterschiedlichen Zugriffsstufen (Administrator, Netzwerkmanager, Datenmanager und Besucher).
* Erzeugung von Virtuellen Prozeduren, die wie normale Stationen aussehen, deren Daten aber aus on-the-fly Darstellungen von anderen Sensordaten resultieren. 
* Verbinden von Qualitätsindices für jede Beobachtung durch eingebaute Plausibilitätsprüfungen.
* Onlineerfassung von Daten mit einer übergangslosen Oberfläche und erweitertem Beobachtungsrechner.

Implementierte Standards
--------------------------------------------------------------------------------
* SOS 1.0.0: Basis und Transaktionale Profile

Details
--------------------------------------------------------------------------------

**Webseite:** http://istsos.org

**Lizenz:** GNU General Public License (GPL) version 2

**Software Version:** |version-istsos|

**Unterstützte Plattformen:** Linux, Unix, Mac, Windows

**API Schnittstellen:** Python / wsgi

**Support:** https://groups.google.com/forum/#!forum/istsos


Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart Dokumentation <../quickstart/istsos_quickstart>`


