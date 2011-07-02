:Author: Johannes Küpper
:Version: OSGeo-Live DVD, Version 5.0
:License: Creative Commons

.. _deegree-quickstart:

.. image:: ../../images/project_logos/logo-deegree.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://deegree.org/

******************
deegree 3 Quickstart 
******************


Projekt Beschreibung
===============

deegree ist ein Open Source Projekt zur Bereitstellung von Geodaten-Komponenten
für die Java-Plattform.

Verfügbare Komponenten sind:

  * Web-Services: WFS, WMS, WCS, CSW, WPS, SOS, WPVS 
  * Desktop-Anwendungen: iGeoDesktop 
  * Web-Anwendungen: iGeoPortal 
  * Kommandozeilen-Tools 
  * Security


Diese Quickstart-Anleitung beschreibt wie man...
===============

* deegree 3 startet
* die deegree 3 services console benutzt
* einen deegree 3 workspace benutzt und anpasst


Über deegree 3
===============

deegree 3 ist die neue Generation des deegree Java-Framework für GIS-Anwendungen
und OGC-Service-Implementierungen. Es kann für den Aufbau webbasierter
Geodateninfrastrukturen (GDI) verwendet werden.


deegree 3 starten
===============

Wählen Sie 'Start deegree' aus dem Startmenü.
Die Anwendung benötigt einen Moment um zu starten.


deegree 3 services console
=================

Wenn Sie deegree zum ersten mal starten, öffnet sich der Internetbrowser Firefox.
Bitte warten Sie, bis die deegree 3 services console angezeigt wird. 
Die deegree 3 services console ist eine webbasierte GUI zum Editieren 
der Konfigurationsdateien in den sogenannten deegree workspaces.
Bitte geben sie das Passwort "deegree" (ohne Anführungsstriche) ein,
um Zugang zur deegree 3 services console zu erhalten.


deegree 3 workspaces
=================

deegree 3 hat ein einheitliches Konfigurationskonzept, das von allen deegree 3
basierten Anwendungen (Web Services, Web-Anwendungen, Desktop-Anwendungen, 
Kommandozeilen-Tools) die gemeinsame Basis darstellt. Die verschiedenen 
Konfigurationsaspekte sind im deegree workspace definiert. Ein deegree workspace
ist somit ein Konfigurationsverzeichnis mit einem standardisierten Layout. 

Innerhalb der deegree 3 services console erhalten sie eine Übersicht der 
mitgelieferten, vorkonfigurierten deegree 3 workspaces, indem sie auf die 
Schaltfläche "workspace" (linke Seite) klicken. Sie befinden sich nun im
workspace-management von deegree. Hier haben sie eine Übersicht über den
zur Zeit aktiven workspace (es kann immer nur ein workspace aktiv sein),
weitere inaktive workspaces und offizielle workspaces, welche Sie 
importieren können (Internetzugang ist erforderlich).


deegree 3 workspaces auf der OSGeo-Live GIS Disc
=================

  * deegree-workspace-utah

Beim Start von deegree ist der deegree-workspace-utah aktiviert.
Die sogenannte Utah Demo stellt einen idealen Einstiegspunkt für die
Erstellung eigener deegree basierter Web-Mapping-Setups dar.
Der deegree-workspace-utah beinhaltet die Konfiguration eines
Web Map Service (WMS) und eines Web Feature Service (WFS).

Sie haben die Möglichkeit sich die Konfiguration des workspaces über die
Schaltflächen "coverages", "feature stores", "jdbc connections", "metadata stores",
"observation stores", "processes", "remote OWS", "render styles", "web services"
anzuschauen und anzupassen. Falls sie Änderungen an einer Konfigurationsdatei vornehmen
(z.B. hinzufügen eines Layer-Styles oder eines Layers), müssen sie über die
Schaltfläche "[Reload]" in der oberen linken Ecke den deegree workspace neu laden,
damit die Änderungen regisitriert werden.

Über die Schaltfläche "send request" gelangen Sie zu einem generischen Klienten,
mit dem sie Request gegen den WFS des utah-workspaces senden können und dessen Antwort
im XML-Feld darunter angezeigt bekommen. Durch einen Klick auf die Schaltfläche "see layers"
öffnet sich ein OpenLayers-Klient, mit dem Sie sich die Kartenebenen des WMS des 
utah-workspaces anzeigen lassen. Klicken Sie dafür auf das das kleine Plus-Symbol
in der oberen rechten Ecke und aktivieren Sie die gewünschten Kartenebenen. Sowohl beim
generischen Klienten als auch beim OpenLayers-Klienten gelangen sie durch einen Klick auf
die Zurück-Schaltfläche im Firefox zurück zur deegree 3 services console.

Informationen und Step-By-Step Tutorials zur Konfiguration der Utah Demo finden sie in
ausführlicher Form im deegree-wiki unter der Seite: http://wiki.deegree.org/deegreeWiki/deegree3/UtahDemo


Weitere deegree 3 workspaces auf der OSGeo-Live GIS Disc:

  * deegree-workspace-csw (Catalogue Service / wiki Seite: http://wiki.deegree.org/deegreeWiki/deegree3/CatalogueService)
  * deegree-workspace-wps (Web Processing Service / wiki Seite: http://wiki.deegree.org/deegreeWiki/deegree3/ProcessingService)
  * deegree-workspace-inspire (Inspire / wiki Seite: http://wiki.deegree.org/deegreeWiki/InspireNode)
  * deegree-workspace-xplan40 (XPlanung / wiki Seite: http://wiki.deegree.org/deegreeWiki/XplanNode) 

Für weitergehende Informationen zu den deegree 3 workpaces und deren Konfiguration,
besuchen sie bitte das deegree-wiki.


Wie geht es weiter?
==========

Dies war nur ein kurzer Überblick über die Funktionen von deegree. Weitere 
Informationen erhalten Sie über das deegree-Wiki, die Online-Demo und die
deegree-Webseite. 

  * deegree wiki

    Abrufbar unter: http://wiki.deegree.org

  * deegree online demo

    Abrufbar unter: http://demo.deegree.org

  * deegree home

    Abrufbar unter: http://deegree.org/
