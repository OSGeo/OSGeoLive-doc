:Author: OSGeo-Live
:Author: Astrid Emde
:Version: osgeo-live8.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Thanks: mapbender-user list

.. image:: /images/project_logos/logo-Mapbender3.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
Mapbender3 Quickstart 
********************************************************************************

Mapbender ist ein web-basiertes Geoportal Framework zum Veröffentlichen, Registrieren, Anzeigen, Navigieren und Überwachen von Diensten, mit der Möglichkeit Dienste gesichert anzubieten.

Administrationsoberflächen ermöglichen es Administratoren Karten- und Datendienste zu verwalten und zu kategorisieren. Über die Administration können einzelnen Benutzern und Gruppen Zugriffe gewährt werden.

Mapbender3 ist die nächste Version in der Mapbender Serie. Es wurde unter Verwendung moderner Webtechnologien komplett neu geschrieben. Die Grundlage bildet Symfony2, die brandneue Version des erfolgreichen Symfony PHP Web Application Framework.

Auf der Clientseite finden Sie OpenLayers und jQuery (UI) verbunden über MapQuery.

Mit dieser neuen Code-Grundlage setzen wir die Mapbender Idee eines Geoportal Frameworks fort.
  * Anwendungen können direkt im Browser erstellt, konfiguriert und gestylt werden.
  * Dienste wie WMS können in einem Service Repository verwaltet und mit Anwendungen verbunden werden. 
  * Das Rechtemanagement ist sowohl für einzelne Benutzer als auch Gruppen einfach zu verwalten, egal ob sie in einer Datenbank oder über LDAP gespeichert werden.
  * Suchen (SQL oder Solr) können konfiguriert werden.
  * Anwendungen zur Digitalisierung können aufgebaut werden
  * Ein Mobiles Template kann für das Erstellen von Anwendung für Smartphones und Tablets verwendet werden


Sie brauchen nichts weiter als einen Standard Webbrowser für diesen Schnellstart.

Dieser Quickstart beschreibt, wie Sie:

  * Mapbender starten
  * eine Anwendung erstellen
  * einen Web Map Service (OGC WMS) laden
  * WMS konfigurieren
  * eine individuelle Anwendung erstellen
  * Benutzer und Gruppen anlegen und Anwendungen zuweisen

Eine Mapbender Anwendung kann wie folgt aussehen:

  .. image:: /images/screenshots/800x600/mapbender3_basic_application.png
     :scale: 80


Installation
================================================================================

Hinweise zur Installation von Mapbender finden Sie unter http://doc.mapbender3.org/en/book/installation.html.

Starten Sie Mapbender
================================================================================

#. Wählen Sie :menuselection:`Mapbender` aus dem Startmenü oder besuchen Sie http://localhost/mapbender3/app.php


#. Die Anwendung braucht eine kurze Zeit, um zu starten.

Falls Sie Schwierigkeiten haben, Mapbender zu starten, überprüfen Sie ob der Apache Web Server und die PostgreSQL Datenbank laufen.


Starten Sie Mapbender im Entwicklungsmodus über app_dev.php
==============================================================
Symfony bietet einen Entwicklungsmodus mit einer Reihe von Informationen über die Anwendung an (Logging, Fehlermeldungen, Datenbankabfragen, Speicherverbrauch, Zeit und mehr). Dieser Modus ist nur über localhost verfügbar.

  .. image:: /images/screenshots/800x600/mapbender3_app_dev.png
     :scale: 80

#. Start des Entwicklungsmodus: http://localhost/mapbender3/app_dev.php

#. Schauen Sie sich an, welche Information im Entwicklungsmodus angezeigt werden.

  .. image:: /images/screenshots/800x600/mapbender3_symfony_profiler.png
     :scale: 80


Die Willkommensseite
================================================================================

#. Die Willkommensseite listet die öffentlichen Anwendungen auf, die von allen Benutzern aufgerufen werden können. Die Anwendungen werden mit Screenshot, Titel und Beschreibung aufgelistet.

#. Sie können die Anwendung per Klick auf den Titel, das Vorschaubild oder den Startbutton aufrufen.

#. Bevor Sie Mapbender administrieren können, müssen Sie sich anmelden.

#. Klicken Sie auf das Mapbender-Logo links, um die Loginseite aufzurufen.

#. Sie können sich mit dem Benutzer anmelden, der während der Installation erzeugt wurde. Er kann :guilabel:`root` heißen mit dem Kennwort :guilabel:`root` (Dies ist der Standardbenutzer/Kennwort nach der Installation von Mapbender auf der OSGeo-Live. Bitte ändern Sie das Kennwort, wenn Sie eine Produktivumgebung betreiben. Löschen Sie den Benutzer :guilabel:`root` nicht.).
  
  .. image:: /images/screenshots/800x600/mapbender3_welcome.png
     :scale: 80

Nach erfolgreicher Anmeldung werden Sie zur :guilabel:`Mapbender Administration` weiter geleitet.


Anwendungsübersicht
================================================================================
Nach der Anmeldung werden Sie zur Anwendungsübersicht (:guilabel:`Applications`) mit einer Liste von den für Sie freigegebenen Anwendungen weiter geleitet.

Die Anwendungsübersicht bietet folgende Funktionen:


 * Titel und Beschreibung
 * Vorschaubild zur Anwendung (sofern bereitgestellt)
 * Link zur Anwendung
 * Button, um die Anwendung zu kopieren
 * Button, um die Anwendung zu bearbeiten
 * Button zum Veröffentlichen der Anwendung
 * Button, um eine neue Anwendung anzulegen
 * Button, um die Anwendung zu löschen
 * mit dem Filtertextfeld kann nach Anwendungen gesucht werden


  .. image:: /images/screenshots/800x600/mapbender3_application_overview.png
     :scale: 80


Erstellen Sie eine eigene Anwendung
================================================================================

Erstellen Sie eine neue Anwendung, indem Sie einige grundlegende Informationen eingeben. Anschließend können Sie den Editiermodus verwenden, um Elemente, Layer und Sicherheitseinstellungen zu verwalten.

#. Wählen Sie :menuselection:`Applications --> New Application`

#. Geben Sie einen Titel und eine Beschreibung der Anwendung ein

#. Geben Sie einen URL-Titel an, der in der URL benutzt wird, um die Anwendung zu starten. Er kann identisch zum Titel sein.

#. Laden Sie eine png-Datei und definieren so ein Vorschaubild für die Anwendungsübersicht.

#. Wählen Sie eine Layoutvorlage für die Anwendung.

#. Betätigen Sie die Schaltfläche **Create**, um die Anwendung zu erzeugen.

#. Gehen Sie zu :menuselection:`Edit-Button` neben der Anwendung und wählen Sie die neue Anwendung aus.

#. Ihre Anwendung wurde erstellt. Jetzt brauchen Sie Elemente (z.B. ein Kartenelement, Navigation, Legende) und Kartendienste.

  .. image:: /images/screenshots/800x600/mapbender3_create_application.png
     :scale: 80

.. tip:: Beachten Sie, dass derzeit die Layout-, Icon- und Farbanpassungen in css- und twig-Dateien erfolgen. Lesen Sie dazu die Dokumentation unter http://doc.mapbender3.org/en/book/templates.html


Kopieren und Umbenennen einer Anwendung
================================================================================
Sie können eine neue Anwendung auch durch Kopieren einer vorhandenen erzeugen. Jede Anwendung, auf die Sie schreibend zugreifen können, verfügt über den Button kopieren. Beim Kopieren wird die Anwendung mitsamt der Dienste kopiert. Die kopierte Anwendung erhält einen abgeleiteten Namen, den Sie im nächsten Schritt anpassen können.


Löschen einer Anwendung
================================================================================
Sie können eine Anwendung aus der Liste :menuselection:`Applications` über den :menuselection:`+-Button` löschen. Nur die Anwendung wird gelöscht, nicht die Dienste, die in der Anwendung eingebunden waren.


Exportieren und Importieren von Anwendungen und Daten
================================================================================
Sie können eine Anwendung als  JSON oder YAML über :menuselection:`Applications --> Export` exportieren. Für den Export können ein oder mehrere Anwendungen ausgewählt werden. Die Datenquellen können ebenfalls beim Export ausgegeben werden.

  .. image:: /images/screenshots/800x600/mapbender3_application_export.png
     :scale: 80

Die Export-Datei beinhaltet alle Definitionen, die zum Aufbau der Anwendung (Datenquellen) erforderlich sind. Die Export-Datei kann über :menuselection:`Applications --> Import` in andere Mapbender3 Installationen oder in die gleiche Installation geladen werden.

  .. image:: /images/screenshots/800x600/mapbender3_application_import.png
     :scale: 80

.. raw:: pdf

    PageBreak

Verwaltung von Datenquellen
=================================
Mapbender kann verschiedene Dienste wie OGC WMS, OGC WMTS oder OGC WFS verwalten. Jeder Service muss anders verwaltet werden. Die Administration bietet für jede Quelle eine Administrationsoberfläche (im Moment lediglich WMS).


Service Repository
====================================

#. Gehen Sie auf :guilabel:`Services` und schauen sich die Dienstquellen an.

#. Sie bekommen einen Überblick über die Dienste, die bereits in Mapbender geladen wurden.

#. Typ (z.B. WMS, WMTS), Titel und Beschreibung bieten eine erste Information über den Dienst.

#. Per Klick auf den :menuselection:`View-Button` bekommen Sie weitere Informationen über die Quelle.

#. Über den :menuselection:`Delete-Button` können Sie die Datenquelle aus ihrem Repository löschen.


Laden von Web Map Services
================================================================================
Sie können OGC Web Map Services (WMS) in Ihre Anwendung laden.

Ein WMS liefert ein XML, wenn das getCapabilities-Dokument angefordert wird. Diese Information wird von Mapbender ausgelesen. Der Client erhält alle notwendigen Informationen über den Dienst aus diesem XML.

.. tip:: Sie sollten das Capabilities-Dokument zuerst in Ihrem Browser überprüfen, bevor Sie versuchen, den Dienst in Mapbender zu laden.

#. Wählen Sie :menuselection:`Services --> Add Service`. Geben Sie den Link zur WMS getCapabilities URL in das Textfeld :menuselection:`Originurl` ein.

#. Geben Sie Nutzername und Kennwort ein, sofern der Dienst Authentifizierung benötigt.

#. Klicken Sie **Load**, um den Dienst in das Repository zu laden.

#. Nach erfolgreicher Registrierung des Dienstes zeigt Mapbender eine Übersicht der Informationen an, die der Dienst geliefert hat.

  .. image:: /images/screenshots/800x600/mapbender3_wms_load.png
     :scale: 80


Hier sind einige Beispiel WMS:

Germany workshop demo 

http://wms.wheregroup.com/cgi-bin/germany_workshop.xml?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS 

WhereGroup OSM WMS

http://osm-demo.wheregroup.com/service

Omniscale OSM WMS (siehe auch http://osm.omniscale.de/)
http://osm.omniscale.net/proxy/service?



Fügen Sie Dienste zur Anwendung hinzu
===========================================
Nach dem erfolgreichen Hochladen eines WMS möchten Sie diesen zu einer Anwendung hinzufügen.

#. Wählen Sie :menuselection:`Applications --> Edit-Button --> Layers --> Edit-Button`.

#. Wählen Sie den :menuselection:`+-Button` um ein Layerset hinzuzufügen. Ein Layerset präsentiert mehrere Layer (ein möglicher Name könnte main oder overview sein)

#. Jetzt können Sie Dienste zum Layerset hinzufügen.

#. Wählen Sie den :menuselection:`+-Button`, um dem neuen Layerset Dienste hinzuzufügen.

#. Sie können die Reihenfolge der Dienste in Ihrer Anwendung über  drag & drop ändern.
	
  .. image:: /images/screenshots/800x600/mapbender3_add_source_to_application.png
     :scale: 80

Konfiguration von Diensten
================================================================================
Sie können Dienste für Ihre Anwendung konfigurieren. Vielleicht möchten Sie nicht alle Ebenen anzeigen oder Sie möchten die Reihenfolge oder den Titel der Ebenen ändern, die Info-Abfrage für einzelne Ebenen verhindern oder den Maximalmaßstab ändern.

#. Wählen Sie :menuselection:`Applications --> edit-Button --> Layers --> edit-Button`, um eine Instanz zu konfigurieren.

#. Sie sehen eine Tabelle mit den Layern des Dienstes.

#. Sie können die Reihenfolge der Layer über drag & drop ändern.

.. image:: /images/screenshots/800x600/mapbender3_wms_application_settings.png
  :scale: 80

Servicekonfiguration

* format - wählen Sie das Format für den getMap-Requests
* infoformat - wählen Sie das Format für getFeatureInfo-Requests
* exceptionformat - wählen Sie das Format für Fehlermeldungen
* opacity - wählen Sie die Opazität (Deckkraft) in Prozent
* visible
* basesource
* proxy - bei Aktivierung wird der Dienst über Mapbender als Proxy angefordert
* transparency - Standard ist aktiviert, deaktiviert wird der Dienst ohne transparenten Hintergrund angefordert (getMap-Request mit TRANSPARENT=FALSE)
* tiled - Dienst wird in Kacheln angefordert, Standard ist nicht gekachelt (kann bei großer Karte sehr hilfreich sein, wenn der Dienst die Kartengröße nicht unterstützt)
* BBOX factor
* tile buffer

Layerkonfiguration

* title - Layertitel der Service Information
* active (on/off) - deaktiviert einen Layer in dieser Anwendung ein/aus
* select allow - Layer ist auswählbar im Geodatenexplorer (Layerbaum)
* select on - Layer ist bei Anwendungsstart aktiv
* info allow - Infoabfrage wird für diesen Layer zugelassen
* info on - Layer Infoabfrage wird beim Start aktiviert
* minscale / maxscale - Der Maßstabsbereich, in dem der Layer angezeigt wird.
* toggle - aufklappen beim Start der Anwendung
* reorder - Ebenen können über drag&drop in der Anwendung verschoben werden
* ... -> öffnet einen Dialog mit weiteren Informationen
* name - Layername der Service Information (wird beim getMap-Request verwendet und ist nicht veränderbar)
* style - wenn ein WMS mehr als einen Stil anbietet, können Sie einen anderen Stil als den default Stil wählen.



Fügen Sie Elemente zu Ihrer Anwendung hinzu
=================================================
Mapbender bietet eine Reihe von Elementen (Modulen) an. Ihre Anwendung verfügt wiederum über verschiedene Bereiche (Toolbar, Sidepane, Content, Footer), die Sie mit Elementen bestücken können.

  .. image:: /images/screenshots/800x600/mapbender3_application_add_element.png
     :scale: 80

#. Wählen Sie :menuselection:`Applications --> edit-Button --> Layers --> +-Button`, um eine Übersicht über die Mapbender3-Elemente zu erhalten.

#. Wählen Sie ein Element aus der Liste aus.

#. Beachten Sie die verschiedenen Bereiche Ihrer Anwendung. Stellen Sie sicher, dass sie das Element zum richtigen Bereich hinzufügen.

#. Konfigurieren Sie das Element. Hinweis: Wenn Sie ein Element z.B. **map** auswählen, sehen Sie lediglich die Optionen für dieses Element und können es entsprechend konfigurieren.

#. Sie können die Position der Elemente über drag & drop ändern.

#. Schauen Sie sich Ihre Anwendung an. Öffnen Sie Ihre Anwendung über :menuselection:`Applications --> Applications Overview`


  .. image:: /images/screenshots/800x600/mapbender3_application_elements.png
     :scale: 80

.. NOCH NICHT IMPLEMENTIERT 
Wenn Sie ein Element z.B. **map** auswählen, sehen Sie lediglich die Optionen für dieses Element und können es entsprechend konfigurieren.

Beispiele für Elemente, die Mapbender3 anbietet:

* About Dialog
* Activity Indicator
* BaseSourceSwitcher
* Button
* Coordinates Display
* Copyright
* Feature Info
* GPS-Position
* HTML
* Legend
* Layertree - Table of Content
* Map
* Overview
* PrintClient
* Ruler Line/Area
* Scale Selector
* ScaleBar
* SimpleSearch
* Search Router
* SRS Selector
* Spatial Reference System Selector (SRS Selector)
* Navigation Toolbar (Zoombar)
* WMS Loader
* WMC Editor
* WMC Loader
* WMC List 

Sie finden detaillierte Informationen zu jedem Element unter `MapbenderCoreBundle Element Dokumentation <http://doc.mapbender3.org/en/bundles/Mapbender/CoreBundle/index.html>`_ , `MapbenderWmcBundle Element Dokumentation <http://doc.mapbender3.org/en/bundles/Mapbender/WmcBundle/index.html>`_ und `MapbenderWmsBundle Element Dokumentation <http://doc.mapbender3.org/en/bundles/Mapbender/WmsBundle/index.html>`_.


Versuchen Sie es selber
================================================================================

* Fügen Sie ein Kartenelement (Map-Element) zum content-Bereich Ihrer Anwendung hinzu.
* Fügen Sie ein Inhaltsverzeichnis (Layertree) zum content-Bereich Ihrer Anwendung hinzu.
* Fügen Sie einen Button in die Toolbar, der den Layertree öffnet.
* Fügen Sie das Navigationselement (Navigation Toolbar) in den content-Bereich hinzu
* Fügen Sie ein Copyright-Element hinzu und ändern Sie den Copyright-Text.
* Fügen Sie einen SRS Selector in den Footer-Bereich ein.



Benutzer- und Gruppenverwaltung
=================================
Der Zugriff auf eine Mapbender Anwendung benötigt Authentifizierung. Nur öffentliche Anwendungen können von allen Anwendern genutzt werden.

Ein Benutzer kann die Berechtigungen bekommen, um auf eine oder mehrere Anwendungen und Dienste zuzugreifen.

.. NOCH NICHT IMPLEMENTIERT
  Es gibt keinen vorgegebenen Unterschied zwischen Rollen wie :guilabel:`guest`, :guilabel:`operator` oder :guilabel:`administrator`. Die :guilabel:`role` eines Benutzers beruht auf den Funktionen und des Diensten, aud die der Benutzer durch diese Anwendung Zugriff hat.


Benutzer anlegen
================================================================================

#. Um einen Benutzer anzulegen, gehen Sie zu :guilabel:`New User` oder wählen Sie den :menuselection:`+-Button`.

#. Wählen Sie einen Namen und ein Kennwort für Ihren Benutzer. 

#. Geben Sie eine E-Mail-Adresse für den Benutzer an.

#. Speichern Sie Ihren neuen Benutzer.

#. Weitere Angaben zum Benutzer können im Reiter :menuselection:`Profil` erfolgen.

.. image:: /images/screenshots/800x600/mapbender3_create_user.png
     :scale: 80 



Gruppen anlegen
================================================================================
#. Erzeugen Sie eine Gruppe über  :guilabel:`New Group`. 

#. Wählen Sie einen Namen und eine Beschreibung für Ihre Gruppe.

#. Speichern Sie Ihre neue Gruppe.


Benutzer einer Gruppe zuweisen
================================================================================

#. Weisen Sie einen Benutzer einer Gruppe über :guilabel:`Users --> Groups` zu. 

#. Wählen Sie einen oder mehrere Benutzer über :menuselection:`Users` aus, die Sie der Gruppe zuweisen wollen.

#. Weisen Sie einen Benutzer über :menuselection:`Users --> Edit-Button--> Groups` einer Gruppe zu.

  .. image:: /images/screenshots/800x600/mapbender3_assign_user_to_group.png
     :scale: 80
 

Rechte
========
Mapbender3 bietet verschiedene Rechte an, die Sie vergeben können. Diese beruhen auf dem Symfony ACL System http://symfony.com/doc/2.1/cookbook/security/acl_advanced.html#built-in-permission-map

* view - anzeigen
* edit - editieren
* delete - löschen
* operator - kann anzeigen, editieren und löschen
* master - kann anzeigen, editieren und löschen und diese Rechte außerdem weitergeben
* owner - Besitzer, darf alles. Darf master und owner Recht vergeben.

#. Weisen Sie einem Benutzer über :menuselection:`Users --> Edit your User --> Security` Rechte zu.

  .. image:: /images/screenshots/800x600/mapbender3_roles.png
     :scale: 80 


Zuweisen einer Anwendung zu einem Benutzer/einer Gruppe
============================================================
#. Bearbeiten Sie Ihre Anwendung über :menuselection:`Application --> Edit-Button`.

#. Wählen Sie :menuselection:`Security`

#. Setzen Sie Berechtigungen wie view, edit, delete, operator, master, owner 

#. Weisen Sie eine Anwendung einem Benutzern / einer Gruppe zu

#. Testen Sie die Konfiguration!

#. Melden Sie sich über :menuselection:`Logout` ab.

#. Melden Sie sich unter der neuen Benutzerbezeichnung an

  .. image:: /images/screenshots/800x600/mapbender3_security.png
     :scale: 80


Weitere Aufgaben
================================================================================

Hier sind weitere Aufgaben, die Sie ausprobieren können:

#. Versuchen Sie, einige WMS in Ihre Anwendung zu laden. Versuchen Sie Ihre WMS zu konfigurieren.

#. Versuchen Sie eine eigene Anwendung zu erzeugen.


Was kommt als Nächstes?
================================================================================

Dies waren nur die ersten Schritte mit Mapbender3. Es gibt viele weitere Funktionen, die Sie ausprobieren können.

Mapbender Projektseite

  http://mapbender.org

Mapbender3 Webseite

  http://mapbender3.org/

Sie finden Tutorials unter

  http://doc.mapbender3.org

Die API-Dokumentation finden Sie unter

  http://api.mapbender3.org

Mapbender kennenlernen unter
	
	http://projects.mapbender.osgeo.org

Beteiligen Sie sich

	http://www.mapbender.org/Community
