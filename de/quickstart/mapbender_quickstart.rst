:Author: OSGeo-Live
:Author: Astrid Emde
:Author: Christoph Baudson
:Author: Arnulf Christl
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Thanks: mapbender-user list

.. _mapbender-quickstart:
 
.. image:: ../../images/project_logos/logo-Mapbender.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
Mapbender Quickstart 
********************************************************************************

Mapbender ist ein web-basiertes Geoportal Framework zum Veröffentlichen, Anzeigen und Überwachen von Diensten, mit der Möglichkeit Dienste gesichert anzubieten.

Administrationsoberflächen ermöglichen es Administratoren Karten- und Datendienste zu verwalten und zu kategorisieren. Über die Administration können einzelnen Benutzern und Gruppen Zugriffe gewährt werden.

Sie brauchen lediglich einen Standard Browser für die folgenden Übungen.

Diese Kurzeinführung beschreibt:
  * das Erstellen einer Mapbender Anwendung
  * das Veröffentlichen von Web Map Services (OGC WMS)
  * das Konfigurieren von WMS in Mapbender
  * das Erzeugen von individuellen Mapbender Anwendungen
  * das Anlegen von Benutzern und Gruppen und das Zuweisen von Zugriffsberechtigungen auf Anwendungen
  * das Laden von Web Feature Services (OGC WFS)
  * das Konfigurieren von FeatureTypes und das Erzeugen einer Anwendung mit WFS Suche und Digitalisierung


Mapbender starten
================================================================================

#. Wählen Sie den Eintrag :menuselection:`Mapbender` im Startmenü

#. Die Anwendung braucht einen Moment zum Starten

Sollten Sie Probleme haben Mapbender zu starten, prüfen Sie bitte, ob Ihr Apache Webserver und Ihre PostgreSQL Datenbank laufen.


Die Willkommensseite
================================================================================

#. Sie müssen sich anmelden, bevor Sie mit Mapbender arbeiten können.

#. Die Willkommen-Seite verfügt über Links zu den wichtigsten Seiten zu Mapbender.

#. Sie können sich mit dem Benutzer :guilabel:`root` und Passwort :guilabel:`root` anmelden (root ist der einzige Benutzer, der nach der Installation von Mapbender vorliegt. Bitte ändern Sie das Passwort des Benutzers root, wenn Sie Mapbender in einer produktiven Umgebung einsetzen wollen. Bitte löschen Sie den Benutzer :guilabel:`root` nicht, da dieser Benutzer Zugriff auf die Mapbender Anwendungsvorlagen hat und beim Aktualisieren von Mapbender verwendet wird).
  
  .. image:: ../../images/screenshots/800x600/mapbender_welcome.png
     :scale: 80

Nach erfolgreicher Anmeldung werden Sie zur :guilabel:`Anwendungsübersicht` weitergeleitet.


Anwendungsübersicht
================================================================================
Nach der Anmeldung werden Sie zur :guilabel:`Anwendungsübersicht` weitergeleitet, die eine Liste der Anwendungen, auf die Sie zugreifen können, enthält. Mapbender verfügt über Anwendungsvorlagen, die Sie verwenden können, um eigene Anwendungen aufzubauen.

  .. image:: ../../images/screenshots/800x600/mapbender_application_overview.png
     :scale: 80

Es gibt verschiedene Arten von Vorlagen:
   * Administrationsanwendungen
   * Kartenanwendungen
   * Dienste Container

Die Anwendungen werden in :guilabel:`Kategorien` in Reitern angezeigt. Sie können Ihre eigenen Kategorien erstellen und Ihre Anwendungen darüber kategorisieren.


Administrationsanwendungen
================================================================================

:guilabel:`Administrationsanwendungen` erlauben es Ihnen, z. B. Dienste zu laden, Benutzer anzulegen oder neue Anwendungen zu erstellen.

Jede :guilabel:`Administrationsanwendung` verfügt über unterschiedliche Funktionalitäten. Sie können eigene :guilabel:`Administrationsanwendungen` erstellen und diese nur mit der Funktionalität ausstatten, die Sie den Anwendern zur Verfügung stellen möchten.

Nach der Installation hat der Benutzer :guilabel:`root` Zugriff auf die folgenden Anwendungen:
   * ADMINISTRATION, ADMINISTRATION_DE - WMS Administration, Anwendungsverwaltung, Benutzer- und Gruppenverwaltung (neu in Version 2.7)
   * admin2_en, admin2_de - WMS Administration, Anwendungsverwaltung, Benutzer- und Gruppenverwaltung
   * admin_en_services, admin_de_services - Fokus auf WFS und Metadatenverwaltung sowie owsproxy
   * admin1 - Vorlage mit allen Administrationsmöglichkeiten (unsortiert)
   * admin_wms_metadata, admin_wfs_metadata, admin_wmc_metadata - Metadatenverwaltung (neu in Version 2.7)

Das folgende Bild zeigt die Anwendung admin2_en. Auf der linken Seiten stehen diverse Links zur Verwaltung zur Verfügung.
  .. image:: ../../images/screenshots/800x600/mapbender_admin2_en.png
     :scale: 80

.. tip:: Über den |HOME| Button gelangen Sie zurück zur Anwendungsübersicht.

  .. |HOME| image:: ../../images/screenshots/800x600/mapbender_home.png
     :scale: 100

Kartenanwendungen
================================================================================
Kartenanwendungen enthalten OGC Web Map Services (WMS), Buttons, einen Geodataexplorer, eine Legende, Ihr Logo und mehr.

#. Wählen Sie :guilabel:`per Klick` eine Kartenanwendung aus der :guilabel:`Anwendungsübersicht`.

#. Lernen Sie Mapbender kennen und testen Sie die Funktionen, die die Kartenanwendung zur Verfügung stellt.
   
   * wählen Sie beispielsweise die Anwendungen gui und gui_digitize
     
  .. image:: ../../images/screenshots/800x600/mapbender_gui_digitize.png
     :scale: 80

.. tip:: Wenn Ihr Browser Reiter unterstützt, können Sie die Anwendung auch in einem neuen Reiter öffnen und so leicht zur Anwendungsübersicht zurückkehren.


WMS Container Anwendungen
================================================================================
Sie können eine Container Anwendungen zum Speichern von WMS Diensten anlegen. WMS Container sind nicht für die Anzeige der Daten bestimmt. Mit Containern können Sie ein Diensterepository aufbauen.

  .. image:: ../../images/screenshots/800x600/mapbender_container.png
     :scale: 60

Erzeugen Sie eine eigene individuelle Anwendung
================================================================================

#. Öffnen Sie die Administrationsoberfläche `admin2_de` 

#. Wählen Sie den Link :menuselection:`Anwendungsverwaltung --> Anwendung erzeugen`

#. Geben Sie einen Namen und eine Beschreibung für Ihre neue Anwendung an und bestätigen Sie die Eingabe über den Button **new**. Die Anwendung wird erzeugt.

#. Wählen Sie den Link :menuselection:`Anwendungsverwaltung --> Anwendungselemente bearbeiten` und wählen Sie die neue Anwendung aus.

#. Wählen Sie aus der Auswahlbox oben rechts eine Anwendung aus, die Sie als Vorlage für Ihre neue Anwendung verwenden möchten und bestätigen Sie die Eingabe mit **add all elements**. Diese Aktion wird alle Elemente der ausgewählten Vorlage in Ihre Anwendung kopieren.

#. Sie können auch einzelne Elemente aus anderen Anwendungen in Ihre neue Anwendung übertragen. Wählen Sie dazu wiederum über die Auswahlbox eine Anwendung aus. Sie können nun ein einzelnes Element über den Radiobutton des Elementes auswählen. Über den Button **save** wird das Element in Ihre Anwendung kopiert.

#. Ihre Anwendung liegt nun vor. Nun brauchen Sie einen Kartendienst, den Sie in Ihrer Anwendung anzeigen möchten. Die Einbindung von Kartendiensten wird im Abschnitt **WMS Verwaltung** behandelt.


Anwendung umbenennen oder kopieren
================================================================================
Sie können eine neue Anwendung auch als Kopie einer bestehenden Anwendung erzeugen. Wählen Sie den Link :menuselection:`Anwendungsverwaltung --> `Anwendung kopieren/umbenennen`, wählen Sie die Anwendung, die kopiert werden soll und geben Sie einen Namen für die neue Anwendung an.


Anwendung löschen
================================================================================
Sie können eine Anwendung über :menuselection:`Anwendungsverwaltung --> Anwendung löschen` löschen. Dabei wird lediglich die Anwendung gelöscht. Die Dienste, die in der Anwendung eingebunden waren, liegen weiterhin vor.
Sie haben nicht das Recht Anwendungen zu löschen, die noch anderen Benutzern zugewiesen sind.

Anwendung exportieren
================================================================================
Sie können eine Anwendung als SQL exportieren. Dies erfolgt über :menuselection:`Anwendungsverwaltung --> Anwendung exportieren (SQL)`. Das SQL enthält die Definitionen der Anwendungselemente und kann in andere Mapbender Datenbanken überführt werden.

.. tip:: Der Export einer Anwendung enthält nicht die Diensteinformationen und auch nicht die Informationen über Benutzer- und Gruppenzugriff.

********************************************************************************
WMS Verwaltung
********************************************************************************

Laden eines Web Map Services
================================================================================
Sie können einen OGC Web Map Services (WMS) in Ihre Anwendung laden.

Ein WMS gibt beim getCapabilities-Aufruf ein XML zurück. Diese Information wird durch Mapbender eingelesen und Mapbender erhält darüber alle notwendigen Informationen über den Dienst.

.. tip:: Bevor Sie einen Dienst in Mapbender einbinden, sollten Sie das Capabilities-Dokument in Ihrem Browser prüfen.


#. Gehen Sie hierzu in die Anwendung :guilabel:`admin2_de` und wählen Sie den Link :menuselection:`WMS Verwaltung --> Capabilities hochladen`. Wählen Sie die Anwendung, die den WMS enthalten soll, aus. Tragen Sie den Link zum WMS Capabilities-Dokument in das Textfeld ein und klicken Sie **Load**.

#. Hier sind ein paar Beispiel WMS, die Sie in Ihre Anwendung laden können:

Spanisches Kataster(Cadastre of spain)

http://ovc.catastro.meh.es/Cartografia/WMS/ServidorWMS.aspx?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS

Geoportal Barcelona (Geoportalbcn - Link verweist auf ein Diensterepository)

http://www.bcn.cat/geoportal/es/geoserveis.html

Demis World Map 

http://www2.demis.nl/wms/wms.asp?wms=WorldMap&VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS

Vogelstudien Kanada (Bird Studies Canada)

http://www.bsc-eoc.org/cgi-bin/bsc_ows.asp?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS

Demo WMS mit Deutschlanddaten (Germany demo)

http://wms.wheregroup.com/cgi-bin/mapserv?map=/data/umn/germany/germany.map&VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS 

WhereGroup OSM WMS 

http://osm.wheregroup.com/cgi-bin/osm_basic.xml?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=1.1.1
 
.. image::../../images/screenshots/800x600/mapbender_admin2_en.png
  :scale: 80

Sie können mehr als einen Kartendienst in eine Anwendung laden. Wählen Sie *WMS Anwendungseinstellungen*, um die Reihenfolge der Dienste zu ändern oder um einen Dienst aus der Anwendung zu entfernen.

Der WMS mit dem Index 0 definiert das Koordinatenreferenzsystem, in dem die Anwendung gestartet wird. Außerdem legt dieser Dienst den Startbereich fest.

.. tip:: Legen Sie eine Container-Anwendung an und laden Sie jeden WMS nur einmal in diesen Container. Aus diesem Container können Sie die Dienste in andere Anwendungen übertragen. Wenn Sie einen WMS aktualisieren, werden die Änderungen in allen Anwendungen wirksam, die diesen WMS enthalten. Sie können einen Dienst leicht über *WMS in Anwendung einbinden* in andere Anwendungen übertragen.
	

WMS konfigurieren
================================================================================
Nach dem Laden eines WMS kann dieser für Ihre Anwendung angepasst werden. Vielleicht sollen nicht alle Ebenen des Dienstes angezeigt werden, vielleicht wollen Sie die Reihenfolge oder die Titel der Ebenen ändern oder Sie wollen die Infoabfrage deaktivieren oder die Maßstabsstufen anpassen.

.. image:: ../../images/screenshots/800x600/mapbender_wms_application_settings.png
  :scale: 80

* on/off - de-/aktivieren einer Ebene innerhalb der gewählten Anwendung 
* sel - soll die Ebene im Geodata Explorer auswählbar sein?
* sel_default - Ebene wird beim Start der Anwendung aktiviert
* info / info default - Ebene unterstützt die Infoabfrage (featureInfo-Request), info default aktiviert die Infoabfrage beim Start der Anwendung
* minscale / maxscale - Maßstabsbereich, in dem die Ebene angezeigt werden soll (Angabe des Nenners), 0 steht für keine Einschränkung der Anzeige
* style - sofern ein WMS Style unterstützt, kann bei der Kartenanfrage ein anderer Style als der default-Style angefordert werden
* prio - definiert die Zeichenreihenfolge der Ebenen
* setWFS - verbindet eine WMS Ebene mit einer WFS FeatureType-Konfiguration (später dazu mehr)


********************************************************************************
Konfigurieren Sie Ihre Anwendung
********************************************************************************
In diesem Abschnitt sollen Sie erfahren wie einfach es ist, eine Mapbender Anwendung anzupassen ohne den Code verändern zu müssen.

Wählen Sie ein Element Ihrer Anwendung beispielsweise die Karte **mapframe1** über einen Klick auf den Radiobutton aus. Nach der Auswahl werden die Attribute des Elementes angezeigt. Hierbei handelt es sich um HTML Elemente. Aus dem Elementen Ihrer Anwendung baut Mapbender beim Öffnen der Anwendung eine Seite auf.

	* id - eindeutiger Name für das Element
	* on/off - de-/aktivieren eines Elements
	* title - Name, der als Tooltip oder Reiter angezeigt wird
	* HTML-TAG/CLOSE-TAG - Art des HTML Elements z. B. div, img
	* top, left - Definition der Position des Elements (für ein Layout mit festen Positionen)
	* width/height - Definition der Größe eines Elements (Breite/Höhe)

Manche Elemente verfügen über Elementvariablen, die es ermöglichen variierende Parameter für ein Element zu setzen. Die Elementvariablen können Javascript oder PHP Variablen, Referenzen auf CSS-Dateien oder CSS-Textdefinitionen sein. 

Beispiele für Elementvariablen:

* Das Element **copyright** hat eine Elementvariable, um das eigene individuelle Copyright zu setzen
* Das Element **overview** (Übersichtskarte) hat eine Elementvariable, um zu definieren, welcher WMS in der Übersichtskarte verwendet werden soll
* Das Element **treeGDE** (Geodata Explorer) hat diverse Elementvariablen, um den Stil der Baumstruktur anzupassen


Probieren Sie es aus
================================================================================
* Passen Sie die Größe des Kartenfensters an (Element mapframe1)
* Ändern Sie das Logo - wählen Sie das foss4g-Logo als Bild (Element logo)
* Setzen Sie die Hintergrundfarbe (background-color - Element body Elementvariable css_class_bg)
* Verschieben Sie Ihre Buttons (Verändern Sie left und top Ihres Elements, geben Sie eine andere Pixelposition an)
* Verändern Sie den copyright-Text

********************************************************************************
Benutzer- und Gruppenverwaltung
********************************************************************************
Der Zugriff auf eine Anwendung setzt bei Mapbender immer eine Berechtigung voraus. Ein Anwender hat die Berechtigung auf eine oder mehrere Anwendungen zu zu greifen. Der Anwender kann durch diese Berechtigung die Dienste (WMS, WFS) in diesen Anwendungen nutzen.

Es besteht kein Unterschied zwischen den Rollen :guilabel:`Gast`, :guilabel:`Operator` oder :guilabel:`Administrator`. Die :guilabel:`Rolle` eines Benutzer hängt von dem Funktionsumfang und den Diensten ab, die dem Benutzer durch seine Anwendungen zur Verfügung stehen.


Benutzer anlegen
================================================================================

#. Gehen Sie in die Anwendung :guilabel:`admin2_de` und wählen Sie unter :menuselection:`Benutzerverwaltung --> Benutzer anlegen und bearbeiten`

#. Wählen Sie einen Namen und eine Passwort für Ihren Benutzer. 

.. image:: ../../images/screenshots/800x600/mapbender_create_user.png
     :scale: 80 


Anlegen einer Gruppe
================================================================================
#. Erzeugen Sie über :menuselection:`Benutzerverwaltung --> Gruppe anlegen und editieren`. Vergeben Sie für Ihre Gruppe einen Namen und eine Beschreibung.

Anwendung einem/r Benutzer/Gruppe zuweisen
================================================================================
Sie können einen Benutzer einer Gruppe zuweisen, indem Sie unter :menuselection:`Benutzerverwaltung --> Benutzer in Gruppe eintragen` oder durch :menuselection:`Benutzerverwaltung --> Gruppe mit Benutzern bestücken` eine Zuweisung durchführen.

#. Weisen Sie über :menuselection:`Benutzerverwaltung --> einem Benutzer Zugriff auf Anwendungen erlauben` eine Anwendung einem Benutzer zu.

#. Weisen Sie über :menuselection:`Benutzerverwaltung --> Gruppe Zugriff auf Anwendung erlauben` eine Anwendung einer Gruppe zu.

.. tip:: Wenn Sie einem Benutzer Schreibrechte für eine Anwendung geben möchten, müssen Sie dem Benutzer die Anwendung über :menuselection:`Benutzerverwaltung --> Anwendung editieren Benutzer zuordnen` zuweisen.

#. Melden Sie sich über den |LOGOUT| Button ab.

#. Melden Sie sich mit dem neuen Benutzer an.

#. Was passiert, wenn der Benutzer Zugriff auf nur eine bzw. auf mehrere Anwendung hat?

  .. |LOGOUT| image:: ../../images/screenshots/800x600/mapbender_logout.png
     :scale: 100

********************************************************************************
WFS Verwaltung
********************************************************************************
Mapbender unterstützt OGC Web Feature Service WFS 1.0.0 und 1.1.0. Ein WFS (Datendienst) kann in Mapbender Anwendungen für verschiedene Funktionalitäten verwendet werden:

* alphanumerische Suche
* räumliche Suche
* Digitalisierung
* Informationausgabe
* Generierung von Tooltips
* Download von Daten

Wenn Sie einen WFS in Mapbender nutzen möchten, müssen Sie den Dienst laden und anschließend eine FeatureType-Konfiguration vornehmen. 

Bevor Sie die FeatureType-Konfiguration nutzen können, müssen Sie diese einer Anwendung zuordnen.

Wenn Sie eine Oberfläche mit WFS Digitalisierung aufbauen möchten, benötigen Sie einen WFS, der Transaktionen unterstützt (WFS-T). Sie können beispielsweise die Programme GeoServer oder deegree nutzen, um einen WFS-T aufzusetzen.

Laden eines Web Feature Services
================================================================================
Die Module zur WFS Konfiguration sind in die Administrationsoberfläche **admin_de_services** eingebunden.

#. Öffnen Sie die Anwendung *admin_de_services* und wählen Sie *WFS Verwaltung --> WFS laden*. Wählen Sie eine Anwendung aus der Anwendungsliste. Tragen Sie den Link der WFS getCapabilities URL in das Textfeld und klicken Sie  **Load**.

.. tip:: Sie sollten zuerst das WFS Capabilities-Dokument in Ihrem Browser prüfen, bevor Sie es in Mapbender laden.

Beispiel WFS

http://wms.wheregroup.com/geoserver/wfs?REQUEST=getCapabilities&VERSION=1.0.0&SERVICE=WFS


.. image:: ../../images/screenshots/800x600/mapbender_loadWFS.png
     :scale: 80 

Erzeugen einer WFS FeatureType-Konfiguration
================================================================================
Der nächste Schritt ist das Erzeugen einer WFS FeatureType-Konfiguration. Erst nach der Konfiguration und anschließenden Freischaltung für eine Anwendung kann die Konfiguration in einer Anwendung verwendet werden. 


.. image:: ../../images/screenshots/800x600/mapbender_configure_WFS_featureType.png
     :scale: 80 

**Konfiguration**

#. Zuerst müssen Sie einen WFS aus der Liste *Select WFS* auswählen. Anschließend werden alle FeatureTypes des gewählten WFS aufgelistet.
#. Wählen Sie den FeatureType, den Sie konfigurieren möchten.
#. Nach der Auswahl werden die Attributfelder und zusätzliche Felder angezeigt.
#. Definieren Sie eine Beschreibung (Abstract) und eine Überschrift für Ihre Suche. 
#. Definieren Sie den Text auf dem Suchbutton (f. e. ok oder Suche starten)
#. In dem Textfeld style und result-style können Sie über css-Text den Anzeige-Stil beeinflussen
#. Definieren Sie einen Puffer, der beim Zoom auf das Ergebnis verwendet werden soll.
#. Wählen Sie die Geometriespalte.
#. search / pos - definieren Sie die Spalten, die in Ihrer Suchmaske angezeigt werden sollen. Über pos (Position) können Sie die Reihenfolge der Suchspalten festlegen.
#. minimum_input (**Suche**) - Definition der Zeichen, die bei der Suche in diesem Feld mindestens eingegeben werden müssen.
#. label - definieren Sie eine Beschriftung für Ihre Suchfelder.
#. show - definieren Sie die Spalten, die als Ergebnis ausgegeben werden sollen. Geben Sie auch hier die Position an.
#. show_detail - definieren Sie die Spalten, die als Detailinformationen beim Klick auf einen einzelnen Treffer  ausgegeben werden sollen.
#. mandatory (**Digitalisierung**) - die Spalte muss bei der Digitalisierung gefüllt werden und darf nicht leer sein. 
#. edit (**Digitalisierung**) - definieren Sie welche Spalte bei der Digialisierung zum Füllen angeboten werden soll.
#. html - Definition einer Auswahlbox, einer Datumsauswahl, einer Checkbox, eines Textfeldes, eines Datei-Uploads statt eines Textfeldes
#. auth - Sie können eine Authorisierung definieren, um benutzerabhängigen Zugriff auf Objekte einzurichten.
#. operator - (**Suche**) - Definition des Vergleichsoperators der Suche.
#. helptext - Sie können für jedes Feld einen Hilfetext definieren.
#. category - es können Kategorien definiert werden. Das Feld wird der angegebenen Kategorie zugewiesen und in der Anwendung in einem entsprechenden Reiter mit dem Namen der Kategorie angezeigt.
#. **save** - Button zum Speichern der Einträge
#. Ihre Konfiguration wird beim Speichern mit einer Konfigurations-Id versehen.


.. image:: ../../images/screenshots/800x600/mapbender_configure_WFS_featureType_attribute_table.png
     :scale: 80 

FeatureType-Konfiguration einer Anwendung zuordnen
================================================================================
Ihre neue Konfiguration muss nun einer oder mehreren Anwendungen zugewiesen werden. Dies erfolgt über *WFS Verwaltung -> WFS Konfiguration GUI zuweisen*.

#. Wählen Sie Ihren  WFS
#. Wählen Sie die Anwendung
#. Übertragen Sie die Konfiguration zur *GUI configuration list* auf der rechten Seite.

.. image:: ../../images/screenshots/800x600/mapbender_set_featureType_access.png
     :scale: 80 


Aufsetzen einer WFS Suche
================================================================================
Um eine FeatureType-Konfiguration in einer Anwendung in einer Suche verwenden zu können, müssen Sie die Konfigurations-Id im Suchmodul eintragen. Gehen Sie in die Administration *admin_de_services -> Anwendungselemente bearbeiten*, wählen Sie Ihre Anwendung und wählen Sie anschließend das Element *gazetteerWFS*. Diesen Element hat eine Elementvariable *wfsConfIdString*. Die Variable enthält eine Komma separierte Liste der WFS Konfiguratons-Ids. In der Reihenfolge der Liste werden die angegebenen Suchen in der Anwendung angeboten.

.. image:: ../../images/screenshots/800x600/mapbender_wfsConfIdString.png
     :scale: 80 

Schauen sie sich an, wie eine Suche in einer Anwendung aussehen kann. Das Beispiel zeigt links ein Suchfenster, über das Sie nach Mapbender Anwendern suchen können. Sie können eine räumliche Suche durch die Definition eines Suchbereichs durchführen oder Sie führen eine alphanumerische Suche durch. Die Suchergebnisse werden in einer Ergebnistabelle ausgegeben. Beim Klick auf ein Ergebnis zoomt Mapbender auf das Objekt und hebt dieses hervor. Außerdem werden Detailinformationen angezeigt.

.. image:: ../../images/screenshots/800x600/mapbender_WFS_search.png
     :scale: 100

Aufsetzen einer WFS Digitalisierfunktionalität
================================================================================
Die einfachste Art eine Anwendung mit Digitalierfunktionalität zu erhalten ist das Erzeugen einer Kopie der Anwendung gui_digitize.
Nun müssen Sie lediglich eine WMS Ebene mit Ihrer FeatureType-Konfiguration verbinden. Dies erfolgt über *WMS Anwendungseinstellungen* über den Button *set WFS* in the Liste der Ebenen. Wählen Sie den Button und anschließend Ihre Konfigurations Id.

.. tip:: Stellen Sie sicher, dass die WMS Ebene, mit der Sie die Konfigurations-Id verbinden, WMS FeatureInfo unterstützt. Hierüber entscheidet Mapbender, ob ein WFS getFeature-Aufruf geschickt werden soll oder nicht.

Nun können Sie über die räumliche Auswahl bestehende Objekte selektieren, die in einer Trefferliste angezeigt werden. Die Objekte können verändert werden (Verschieben der Stützpunkte, Hinzufügen von Stützpunkten, Ändern der Attributeinträge, Teilen von Linien, Linien verlängern, Zusammenführen von Polygonen...). Sie können natürlich auch neue Objekte anlegen.

.. image:: ../../images/screenshots/800x600/mapbender_gui_digitize.png
     :scale: 80 

Weitere Aufgaben
================================================================================
Hier sind ein paar weitere Aufgaben, die Sie lösen können.

#. Versuchen Sie ein paar weitere WMS in Ihre Anwendung zu laden. Konfigurieren Sie anschließend die WMS über :menuselection:`WMS Verwaltung --> WMS Anwendungseinstellungen`.

#. Versuchen Sie eine individuelle Anwendung aufzubauen - ändern Sie die Hintergrundfarbe, verschieben Sie Buttons, ändern Sie die Kartengröße (Element mapframe1). Diese Änderungen erfolgen über :menuselection:`Anwendungsverwaltung --> Anwendungselemente bearbeiten`.


Der nächste Schritt
================================================================================

Dies war lediglich der erste Einstieg in Mapbender. Es gibt sehr viel mehr Funktionalität zu entdecken.

Mapbender Projektseite

  http://www.mapbender.org/

Dokumentationen finden Sie unter

  http://www.mapbender.org/Tutorials

Schauen Sie sich das Mapbender Tutorial an

  `Mapbender Tutorial (deutsch) <http://www.mapbender.org/Mapbender_Tutorial_de>`_

Lernen Sie Mapbender kennen
	
	http://projects.mapbender.osgeo.org

Bringen Sie sich in das Projekt ein

	http://www.mapbender.org/Community
