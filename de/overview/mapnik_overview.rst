:Author: Dane Springmeyer
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-mapnik.png
  :alt: Projekt Logo
  :align: right
  :target: http://mapnik.org/


Mapnik
================================================================================

Kartographisches Rendering
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mapnik ist ein Toolkit für die Erstellung von sehenswerten Landkarten, mit 
sauberen und weichen Kanten, ermöglicht durch qualitativ hochwertige Grafiken 
mit Anti-Aliasing, intelligente Anordnung von Beschriftungstext und skalierbare
Symbole als SVG. Am bekanntesten ist Mapnik als Werkzeug zum Rendern der 
Standardkarte des OpenStreetMap Projekts. 

Mapnik kam zumeist in Python-Anwendungen zur Verwendung, die ihre Karten über das 
Internet bereitstellen. Trotzdem wird Mapnik, dank Verbesserungen im Bereich der
Skalierbarkeit, seit kurzem auch zur Erstellung hochauflösender Landkarten in 
Papierform verwendet.

.. image:: /images/screenshots/1024x768/mapnik-screenshot-barcelona.png
  :scale: 40 %
  :alt: Bildschirmfoto
  :align: right
  
Im Wesentlichen eine Sammlung von geografischen Objekten (Karte, Ebene, 
Datenquelle, Eigenschaft, Geometrie), ist die Bibliothek nicht auf 
"grafische Systeme" angewiesen und kann in jeder Serverumgebung eingesetzt 
werden. Es ist beabsichtigt, Multi-threaded Umgebungen gleichermaßen zu 
unterstützten. Eine web-basierte Verwendung wird bevorzugt, jedoch nicht
ausschließlich, angestrebt.

High-level Python Bindings (boost.python) sorgen für schnelle Anwendungesentwicklung, verweisen auf zope3, django etc.

Mapnik ist plattformunabhängig. Packete sind für die meisten Linux Distributionen verfügbar. 
Installers werden vornehmlich unter Mac OS X und Windows verwendet.


Details
--------------------------------------------------------------------------------

**Webseite:** http://www.mapnik.org/

**Lizenz:** LGPL (GNU Lesser General Public Licence)

**Software Version:** |version-mapnik|

**Unterstützte Plattformen:** Windows, Linux, Mac

**API Schnittstellen:** C++, Python

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/mapnik_quickstart>`


