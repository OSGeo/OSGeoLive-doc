:Author: Gérald Fenoy
:Reviewer: Angelos Tzotsos
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-ZOO-Project.png
  :scale: 100 %
  :alt: Projekt Logo
  :align: right

********************************************************************************
ZOO Projekt Quickstart 
********************************************************************************

Das ZOO-Project stellt ein entwicklerfreundliches Web Processing Service (WPS) Framework 
zum Erstellen und Verbinden von Web Processing Services zur Verfügung. Ein WPS stellt Web Zugriff auf Funktionen, die räumliche Algorithmen ausführen, bereit.

Diese Kurzeinführung beschreibt:

  * Das Erstellen von Anfragen an einen WFS über einen Browser.


Ablauf
================================================================================

*	Um die ZOO-Projekt Demoanwendung von der OSGeo-Live DVD auszuführen, starte zuerst |osgeolive-appmenupath-geoserver| und hiernach "Zoo Projekt", entweder durch Klick auf die Desktop Icons oder Aufruf im Programmmenü.

*	Die "ZOO Project Spatial Tools Demo" öffnet sich hierauf in Firefox.

.. image:: ../../images/screenshots/1024x768/zoo-project-demo-1.png
  :scale: 50 %
  :alt: Zoo Projekt Demo
  :align: center
  
  
*	Wähle ein :doc:`GeoServer <../overview/geoserver_overview>` WFS-Server Objekt durch Klick auf die Karte. Das Objekt wird daraufhin in Blau hervorgehoben. Nach Auswahl einfacher Geoverarbeitungsabfragen, wie "Buffer", "Centroid", "ConvexHull" oder "Boundary", werden die Berechnungsergebnisse in Gelb dargestellt.

.. image:: ../../images/screenshots/1024x768/zoo-project-demo-2.png
  :scale: 50 %
  :alt: Zoo Projekt Demo
  :align: center
  

*	Jetzt wählt man ein weiteres Objekt in der näheren Umgebung des vorherigen Objekts, und nach Auswahl einer Methode für kombinierte Geoverarbeitung, wie "Union", "Intersection", "Symmetric Difference" oder "Difference", wird das Ergebnis auf der Karte in Rot dargestellt.

.. image:: ../../images/screenshots/1024x768/zoo-project-demo-3.png
  :scale: 50 %
  :alt: Zoo Projekt Demo
  :align: center

What Next?
================================================================================

*	Man kann eigene Anfragen erstellen und von folgender Seite an den ZOO Kernel senden:
		http://localhost/zoo-demo/test_services.html

*	Die ZOO WPS-Server Capabilities können unter der folgenden Adresse abgefragt werden:
		http://localhost/zoo/?Request=GetCapabilities&Service=WPS
	
*	Community Mitgliegder beantworten auf der ZOO Projekt Mailingliste gerne weitere Fragen:
	zoo-discuss@lists.osgeo.org
