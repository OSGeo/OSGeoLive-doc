:Author: Johannes Wilden, Danilo Bretschneider
:Version: OSGeo-Live DVD, Version 7.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-deegree.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.deegree.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
deegree 3 webservices quickstart 
********************************************************************************


Projekt Beschreibung
================================================================================

*deegree* ist ein Open Source Projekt zur Bereitstellung von Geodaten-Komponenten
für die Java-Plattform.

Verfügbare Komponenten sind:

  * Web-Services: WFS, WMS, WMTS, CSW, WPS

Diese Quickstart-Anleitung beschreibt wie man...

  * *deegree 3* startet
  * die *deegree 3 services console* benutzt
  * einen *deegree 3 workspace* benutzt und anpasst


Über deegree 3
================================================================================

*deegree 3* ist ein Java-Framework für GIS-Anwendungen und OGC-Service-Implementierungen. Es kann für den Aufbau webbasierter
Geodateninfrastrukturen (GDIs) verwendet werden.


deegree 3 starten
================================================================================

Wählen Sie *'Start deegree'* aus dem Startmenü unter :menuselection:`Geospatial --> Web Services --> deegree` .
Die Anwendung benötigt einen Moment um zu starten.


deegree 3 services console
================================================================================

Wenn Sie *deegree* zum ersten mal starten, öffnet sich der Internetbrowser Firefox.
Bitte warten Sie, bis die *deegree 3 services console* angezeigt wird.
Die *deegree 3 services console* ist eine webbasierte GUI zum Editieren
der Konfigurationsdateien in den sogenannten *deegree workspaces*.


deegree 3 workspaces
================================================================================

*deegree 3* hat ein einheitliches Konfigurationskonzept, das von allen *deegree 3*
basierten Web Services unterstützt wird. Die verschiedenen 
Konfigurationen sind im so genannten *deegree workspace* definiert. Ein *deegree workspace*
ist somit ein Konfigurationsverzeichnis mit einem standardisierten Layout. Der
*deegree workspace* kann innerhalb und außerhalb einer Webapplikation gespeichert werden.

Innerhalb der *deegree 3 services console* erhalten Sie eine Übersicht der
mitgelieferten und vorkonfigurierten *deegree 3 workspaces*, indem Sie auf die
Schaltfläche *"workspace"* (linke Seite) klicken. Sie befinden sich nun im
*workspace*-Management von *deegree 3*. Hier haben Sie eine Übersicht über den
zur Zeit aktiven *workspace*, weitere inaktive *workspaces* und offizielle *workspaces*,
welche Sie importieren können (Internetzugang ist erforderlich). Es kann immer nur ein
*workspace* aktiv sein.

Starten Sie nun den *deegree-inspire-workspace*.


deegree 3 workspaces auf der OSGeo-Live GIS Disc
================================================================================

  * *deegree-workspace-inspire*

Dieser *workspace* beinhaltet eine Basiskonfiguration von INSPIRE View- und
Download-Services. 
Er besteht aus einem transaktionalem WFS (2.0.0 and 1.1.0) für alle Annex I Data
Themes und einem WMS (1.3.0 and 1.1.1) der drei Ebenen der Annex I Data Themes
anbietet. 
Als Daten werden einige harmonisierte niederländische Administrative Einheiten
(Administrative Units) sowie Katasterpläne (Cadastral Parcels) und Adressen
(Addresses) angeboten.
Der WFS verhält sich hierbei als INSPIRE Download service (Direct Access) und
liefert die Basisdaten als valides, harmonisiertes INSPIRE GML aus und 
unterstützt zahlreiche Anfragemöglichkeiten.

.. tip::
    Dieser *workspace* lädt harmonisiertes INSPIRE GML aus lokalen Dateien in den
    Speicher, dies kann jedoch einfach auf PostGIS, Oracle Spatial oder Microsoft 
    SQL Server Datenbanken als Backend umgestellt werden.

Nach der Aktivierung des *deegree-workspace-inspire* kann unter dem Link
*'see layers'* ein simpler Map-Client eingesehen werden, der eine Basemap
zeigt (gerendert von `OpenStreetMap <http://openstreetmap.org/>`_).

Ein Klick auf das **+** auf der rechten Seite öffnet eine Liste der verfügbaren 
Ebenen. Hier kann die vom deegree WMS angebotene INSPIRE Ebene aktiviert werden.

.. tip::
    Der Karten-Client basiert auf `OpenLayers <http://openlayers.org/>`_. 
    Die Karte kann durch die gedrückte linke Maustaste bewegt werden.
    Der Zoom funktioniert entweder mit dem Mausrad oder mit den Steuerungselementen
    auf der linken Seite. Als Alternative kann durch halten der Umschalt-Taste und
    einem Mausklick ein Rechteck gezogen werden, auf das gezoomt wird.

Informationen und Step-By-Step Tutorials zur Konfiguration des INSPIRE workspaces finden Sie in
ausführlicher Form in der  *deegree* `Dokumentation <http://download.deegree.org/documentation/3.3.20/html/lightly.html#example-workspace-1-inspire-network-services/>`_.


Wie geht es weiter?
================================================================================

Dies war nur ein kurzer Überblick über die Funktionen von deegree. Weitere 
Informationen erhalten Sie über das deegree-Wiki, die Online-Demo und die
deegree-Webseite. 

  * *deegree* Online Demo

    Abrufbar unter: http://demo.deegree.org

  * *deegree* Website

    Abrufbar unter: http://www.deegree.org
