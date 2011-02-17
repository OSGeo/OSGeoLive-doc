:Author: OSGeo Live
:Author: Astrid Emde
:Author: Christoph Baudson
:Author: Arnulf Christl
:Version: osgeo-live4.5
:License: Creative Commons
:Thanks: mapbender-user list

.. _mapbender-quickstart:
 
.. image:: ../../images/project_logos/logo-Mapbender.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************
Mapbender Quickstart 
********************

Mapbender ist ein web-basiertes Geoportal Framework zum Veröffentlichen, Anzeigen und Überwachen von Diensten, mit der Möglichkeit Dienste gesichert anzubieten.

Administrationsoberflächen ermöglichen es Administratoren Karten- und Datendienste zu verwalten und zu kategorisieren. Über die Administration können einzelnen Benutzern und Gruppen Zugriffe gewährt werden.

Sie brauchen lediglich einen Standard Browser für die folgenden Übungen.

Diese Kurzeinführung beschreibt:
  * wie Sie eine Mapbender Anwendung erstellen können
  * wie Sie einen Web Map Service (OGC WMS) veröffentlichen
  * wie Sie einen WMS konfigurieren können
  * wie Sie eine individuelle Anwendung erzeugen können 
  * wie Sie Benutzer und Gruppen anlegen können und diesen Zugriff auf Anwendungen geben können
  * wie Sie einen Web Feature Service (OGC WFS) laden können
  * wie Sie einen Feature Type konfigurieren können und eine ANwendung mit WFS Suche und Digitalisierung aufbauen können


Mapbender starten
=================

#. Wählen Sie den Eintrag :menuselection:`Mapbender` im Startmenü

#. Die Anwendung braucht einen Moment zum Starten

Sollten Sie Probleme haben Mapbender zu starten, prüfen Sie bitte, ob Ihr Apache Webserver und Ihre PostgreSQL Datenbank laufen.


Die Willkommens-Seite
=====================

#. Sie müssen sich anmelden, bevor Sie mit Mapbender arbeiten können.

#. Die Willkommen-Seite verfügt über Links zu den wichtigsten Seiten zu Mapbender.

#. Sie können sich mit dem Benutzer :guilabel:`root` und Passwort :guilabel:`root` anmelden (root ist der einzige Benutzer, der nach der Installation von Mapbender vorliegt. Bitte ändern Sie das Passwort des Benutzers root, wenn Sie Mapbender in einer produktiven Umgebung einsetzen wollen. Bitte löschen Sie den Benutzer :guilabel:`root` nicht, da dieser Benutzer Zugriff auf die Mapbender Vorlageanwendungen hat und beim Aktualisieren von Mapbender verwendet wird).
  
  .. image:: ../../images/screenshots/800x600/mapbender_welcome.png
     :scale: 80

Nach erfolgreicher Anmeldung werden Sie zur :guilabel:`Anwendungsübersicht` weitergeleitet.


Anwendungsübersicht
===================
Nach der Anmeldung werden Sie zur :guilabel:`Anwendungsübersicht` weitergeleitet, die eine Liste der Anwendungen, auf die Sie zugreifen können, enthält. Mapbender verfügt über Anwendungsvorlagen, die Sie verwenden können, um eigene Anwendungen aufzubauen.

  .. image:: ../../images/screenshots/800x600/mapbender_application_overview.png
     :scale: 80

Es gibt verschiedene Arten von Vorlagen:
   * Administrationsanwendungen
   * Kartenanwendungen
   * Dienste Container

Die Anwendungen werden in :guilabel:`Kategorieren` in Reitern angezeigt. Sie können Ihre eigenen Kategorien erstellen und Ihre Anwendungen darüber kategorisieren.


Administrationsanwendungen
==========================

:guilabel:`Administrationsanwendungen` erlauben es Ihnen, z. B. Dienste zu laden, Benutzer anzulegen oder neue Anwendungen zu erstellen.

Jede :guilabel:`Administrationsanwendung` verfügt über unterschiedliche Funktionalitäten. Sie können eigene :guilabel:`Administrationsanwendungen` erstellen und nur mit der Funktionallität ausstatten, die Sie den Anwendern zur Verfügung stellen möchten.

Nach der Installation hat der Benutzer :guilabel:`root` Zugriff auf die folgenden Anwendungen:
   * ADMINISTRATION, ADMINISTRATION_DE - WMS Administration, Anwendungsverwaltung, Benutzer- und Gruppenverwaltung (neu in Version 2.7)
   * admin2_en, admin2_de - WMS Administration, Anwendungsverwaltung, Benutzer- und Gruppenverwaltung
   * admin_en_services, admin_de_services - Fokus auf WFS und Metadatenverwaltung sowie owsproxy
   * admin1 - Vorlage mit allen Administrationsmöglichkeiten (ungeordnet)
   * admin_wms_metadata, admin_wfs_metadata, admin_wmc_metadata - Metadatenverwaltung

Das folgende Bild zeigt die Anwendung admin2_en. Auf der linken Seiten stehen diverse LInks zur Verwaltung zur Verfügung.
  .. image:: ../../images/screenshots/800x600/mapbender_admin2_en.png
     :scale: 80

.. tip:: Über den |HOME| Button kommen Sie zur Anwendungsübersicht zurück.

  .. |HOME| image:: ../../images/screenshots/800x600/mapbender_home.png
     :scale: 100

Kartenanwendungen
=================
Kartenanwendungen enthalten OGC Web Map Services (WMS), Buttons, einen Geodataexplorer, eine Legende, Ihr Logo und mehr.

#. Wählen Sie :guilabel:`per Klick` eine Kartenanwendung aus der :guilabel:`Anwendungsübersicht`.

#. Lernen Sie Mapbender kennen und testen Sie die Funktionen, die die Kartenanwendung zur Verfügung stellt.
   
   * wählen Sie beispielsweise die Anwendungen gui und gui_digitize
     
  .. image:: ../../images/screenshots/800x600/mapbender_gui_digitize.png
     :scale: 80

.. tip:: Wenn ihr Browser Reiter unterstützt, können Sie die Anwendung auch in einem neuen Reiter öffnen und so leicht zur Anwendungsübersicht zurückkehren.


WMS Container Anwendungen
=========================
Sie können eine Container Anwendungen zum Speichern von WMS Diensten anlegen. WMS Container sind nicht für die Anzeige der Daten bestimmt. Mit Containern können Sie ein Dienste Repository aufbauen.

  .. image:: ../../images/screenshots/800x600/mapbender_container.png
     :scale: 60

Erzeugen Sie eine eigene individuelle Anwendung
===============================================

#. Öffnen Sie die Administrationsoberfläche `admin2_de` 

#. Wählen Sie den Link :menuselection:`Anwendungsverwaltung --> Anwendung erzeugen`

#. Geben Sie einen Namen und eine Beschreibung für Ihre neue Anwendung an und bestätigen Sie die Eingabe über den Button **new**. Die Anwendung wird erzeugt.

#. Wählen Sie den Link :menuselection:`Anwendungsverwaltung --> Anwendungselemente bearbeiten` und wählen Sie die neue Anwendung aus.

#. Wählen Sie aus der Auswahlbox oben rechts eine Anwendungs aus, die Sie als Vorlage für Ihre neue Anwendung verwenden möchten und bestätigen Sie die Eingabe mit **add all elements**. Diese Aktion wird alle Elemente der ausgewählten Vorlage in Ihre Anwendung kopieren.

#. Sie können auch einzelne Elemente aus anderen Anwendungen in Ihre neue Anwendung übertragen. Wählen Sie dazu wiederum über die Auswahlbox eine Anwendung aus. Sie können nun ein einzelnes ELement über den Radiobutton des Elementes auswählen. Über den Button ***save*** wird das Element in Ihre Anwendung kopiert.

#. Ihre Anwendung liegt nun vor. Nun brauchen Sie einen Kartendienst, den Sie in Ihrer Anwendung anzeigen möchten. Die Einbindung von Kartendiensten wird im nächsten Abschnitt behandelt.


Anwendung umbenennen oder kopieren
=============================
Sie können auch eine neue Anwendung als Kopie einer bestehenden Anwendung erzeugen. Wählen Sie den Link :menuselection:`Anwendungsverwaltung --> `Anwendung kopieren/umbenennen`, wählen Sie die Anwendungen, die kopiert werden soll und geben Sie einen Namen für die neue Anwendung an.


Anwendung löschen
=====================
Sie können eine Anwendung über :menuselection:`Anwendungsverwaltung --> Anwendung löschen` löschen. Dabei wird lediglich die Anwendung gelöscht. Die Dienste, die in der Anwendung eingebunden waren, liegen weiterhin vor.
Sie haben nicht das Recht Anwendungen zu löschen, die noch anderen Benutzern zugewiesen sind.

Anwendung exportieren
=====================
Sie können eine Anwendung als SQL exportieren. Dies erfolgt über :menuselection:`Anwendungsverwaltung --> Anwendung exportieren (SQL)`. Das SQL enthält die Definitionen der Anwendungselemente und kann in andere Mapbender Datenbanken überführt werden.

.. tip:: Der Export einer Anwendung enthält nicht die Diensteinformationen und auch nicht die Informationen über Benutzer- und Gruppenzugriff.

**************
WMS Verwaltung
**************

Laden eines Web Map Services
============================
Sie können einen OGC Web Map Services (WMS) in Ihre Anwendung laden.

Ein WMS gibt beim getCapabilities-Aufruf ein XML zurück. Diese Information wird durch Mapbender eingelesen und Mapbender erhält darüber alle notwendigen Informationen über den Dienst.

.. tip:: Bevor Sie einen Dienst in Mapbender einbinden, sollten Sie das Capabilities-Dokument in Ihrem Browser prüfen.


#. Gehen Sie hierzu in die Anwendung :guilabel:`admin2_de` und wählen Sie den Link :menuselection:`WMS Verwaltung --> Capabilities hochladen`. Wählen Sie die Anwendung, die den WMS enthalten soll, aus. Tragen Sie den Link zum WMS Capabilities-Dokument in das Textfeld ein und klicken Sie **Load**.

#. Hier sind ein paar Beispiel WMS, die Sie in Ihre Anwendung laden können:

Spanisches Kataster(Cadastre of spain)

http://ovc.catastro.meh.es/Cartografia/WMS/ServidorWMS.aspx?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS

Geoportal Barcelona (Geoportalbcn)

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

Sie können mehr als einen Kartendienst in eine Anwendung laden. Wählen Sie *WMS Anwendungseinstellungen* um die Reihenfolge der Dienste zu ändern oder um einen Dienst aus der Anwendung zu entfernen.

Der WMS mit dem Index 0 definiert das Koordinatenreferenzsystem, in dem die Anwendung gestartet wird. Außerdem legt dieser Dienst den Startbereich fest.

.. tip:: Legen Sie eine Container-Anwendung an und laden Sie jeden WMS nur einmal in diesen Container. Aus diesem Container können Sie die Dienste in andere Anwendungen übertragen. Wenn Sie einen WMS aktualisieren werden die Änderungen in allen Anwendungen wirksam, die diesen WMS enthalten. Sie können einen Dienst leicht über *WMS in Anwendung einbinden* in andere Anwendungen übertragen.
	

WMS konfigurieren
=================
Nach dem Laden eines WMS kann dieser für Ihre Anwendung angepasst werden. Vielleicht sollen nicht alle Ebenen des Dienstes angezeigt werden, vielleicht wollen Sie die Reihenfolge oder Titel der Ebenen ändern oder Sie wollen die Infoabfrage deaktivieren oder die Maßstabsstufen anpassen.

.. image:: ../../images/screenshots/800x600/mapbender_wms_application_settings.png
  :scale: 80

* on/off - de-/aktivieren einer Ebene innerhalb der gewählten Anwendung 
* sel - soll die Ebene im Geodataexplorer auswählbar sein?
* sel_default - Ebene wird beim Start der Anwendung aktiviert
* info / info default - Ebene unterstützt die Infoabfrage (featureInfo-Request), info default aktiviert die Infoabfrage beim Start der Anwendung
* minscale / maxscale - Maßstabsbereich, in dem die Ebene angezeigt werden soll (Angabe des Nenners), 0 steht für keine Einschränkung der Anzeige
* style - sofern ein WMS Style unterstützt, kann bei der Kartenanfrage ein andere Style als der default-Style angefordert werden
* prio - definiert die Zeichenreihenfolge der Ebenen
* setWFS - verbindet eine WMS Ebene mit einer WFS FeatureType-Konfiguration (später dazu mehr)


********************************
Konfigurieren Sie Ihre Anwendung
********************************
In diesem Abschnitt sollen Sie erfahren wie einfach es ist eine Mapbender Anwendung anzupassen ohne den Code verändern zu müssen.

Wählen Sie ein Element Ihrer Anwendung Beispielweise die Karte **mapframe1** über einen Klick auf den Radiobutton aus. Nach der Auswahl werden die Attribute des Elementes angezeigt. Hierbei handelt es sich um HTML Elemente. On start of an application Mapbender will create an HTML page from all the elements. 

	* id - eindeutiger Name für das Element
	* on/off - de-/aktivieren eines Elements
	* title - Name der als Tooltip oder Reiter angezeigt wird
	* HTML-TAG/CLOSE-TAG - Art des HTML Elements z. B. div, img
	* top, left - Definition der Position des Elements (für ein Layout mit festen Positionen)
	* width/height - Definition der Größe eines Elements (Breite/Höhe)

Manche Elemente verfügen über Elementvariablen, die es ermöglichen variierende Parameter für ein Element zu setzen. Die Elementvariablen können JavaScript oder PHP Variablen, Referenzen auf CSS-Dateien oder CSS Textdefinitionen sein. 

Beispiele für Elementvariablen:

* Das Element copyright hat eine Elementvariable, um das eigene individuelle Copyright zu setzen
* Das Element overview (Übersichtskarte) hat eine Elementvariable, um zu definieren, welcher WMS in der Übersichtskarte verwendet werden soll
* Das Element treeGDE (Geodata Explorer) hat diverse Elementvariablen, um den Style der Baumstruktur anzupassen


Probieren Sie es aus
====================
* Passen Sie die Größe des Kartenfensters an (Element mapframe1)
* Ändern Sie das Logo - wählen Sie das foss4g-Logo als Bild (element logo)
* Setzen Sie die Hintergrundfarbe (background-color - element body Elementvariable css_class_bg)
* Verschieben Sie Ihre Buttons (Verändern Sie left und top Ihres Elements auf eine andere Pixelposition)
* Verändern Sie den copyright-Text

*******************************
Benutzer- und Gruppenverwaltung
*******************************
Der Zugriff auf eine Anwendung setzt bei Mapbender immer eine Berechtigung voraus. Ein Anwender hat die Berechtigung auf eine oder mehrere Anwendungen und die Dienste (WMS, WFS) in diesen Anwendungen zu zu greifen.

Es besteht kein Unterschied zwischen den Rollen :guilabel:`Gast`, :guilabel:`Operator` oder :guilabel:`Administrator`. Die :guilabel:`Rolle` eines Benutzer hängt von dem Funktionsumfang und den Diensten ab, die dem Benutzer durch seine Anwendungen zur Verfügung stehen.


Benutzer anlegen
================

#. Gehen Sie in die Anwendung :guilabel:`admin2_de` und wählen Sie unter :menuselection:`Benutzerverwaltung --> Benutzer anlegen und bearbeiten`

#. Wählen Sie einen Namen und eine Paßwort für Ihren Benutzer. 

.. image:: ../../images/screenshots/800x600/mapbender_create_user.png
     :scale: 80 


Anlegen einer Gruppe
====================
#. Erzeugen Sie über :menuselection:`Benutzerverwaltung --> Gruppe anlegen und editieren`. Vergeben Sie für Ihre Gruppe einen Namen und eine Beschreibung.

**Anwendung einem/r Benutzer/Gruppe zuweisen**

#. Sie können einen Benutzer einer Gruppe zuweisen, indem Sie unter :menuselection:`Benutzerverwaltung --> Benutzer in Gruppe eintragen` oder durch link :menuselection:`Benutzerverwaltung --> Gruppe mit Benutzern bestücken`

#. Weisen Sie über :menuselection:`Benutzerverwaltung --> einem Benutzer Zugriff auf Anwendungen erlauben` eine Anwendung einem Benutzer zu.

#. Weisen Sie über :menuselection:`Benutzerverwaltung --> Gruppe Zugriff auf Anwendung erlauben` eine Anwendung einer Gruppe zu.

.. tip:: Wenn Sie einem Benutzer Schreibrechte für eine Anwendung geben möchten, müssen Sie dem Benutzer die Anwendung über :menuselection:`Benutzerverwaltung --> Anwendung editieren Benutzer zuordnen` zuweisen.

#. Melden Sie sich über den |LOGOUT| Button ab.

#. Melden Sie sich als der neue Benutzer an.

#. Was passiert, wenn der Benutzer Zugriff auf nur eine bzw. auf mehrere Anwendung hat?

  .. |LOGOUT| image:: ../../images/screenshots/800x600/mapbender_logout.png
     :scale: 100

**************
WFS Verwaltung
**************
Mapbender unterstützt OGC Web Feature Service WFS 1.0.0 und 1.1.0. Ein WFS (Datendienst) kann in Mapbender Anwendungen für verschiedene Funktionalitäten verwendet werden:

* alphanumerische Suche
* räumliche Suche
* Digitalisierung
* Informationausgabe
* Generierung von Tooltips

Wenn Sie einen WFS in Mapbender nutzen möchten müssen Sie den Dienst laden und anschließend eine FeatureType-Konfiguration vornehmen. 

Afterwards you have to grant access to your new feature type configuration to an application before you can use it.

If you want to set up an application with WFS digitizing you need a WFS which supports transactions (WFS-T). You can for example use the software GeoServer or deegree to set up a WFS-T.

Loading Web Feature Services
============================
The modules to configure WFS are integrated in the administration application **admin_de_services**.

.. tip:: You should first check the WFS getCapabilities document in your browser before you try to load it in Mapbender.

#. Go to *admin_en_services* and choose *WFS Management --> Load WFS*. Choose any application in the application list. Link to the WFS getCapabilities URL in the text field and hit **Load**.

Demo WFS

http://wms.wheregroup.com/geoserver/wfs?REQUEST=getCapabilities&VERSION=1.0.0&SERVICE=WFS


.. image:: ../../images/screenshots/800x600/mapbender_loadWFS.png
     :scale: 80 

Create a WFS feature type configuration
========================================
The next step is to set up a configuration for a feature type. After the configuration and authorization of an application, the configuration can be used in your applications.

.. image:: ../../images/screenshots/800x600/mapbender_configure_WFS_featureType.png
     :scale: 80 

Configuration

#. first you have to choose a WFS from the selectbox *Select WFS*. All feature types of this WFS will be listed
#. choose the feature type that you want to configure
#. after selection of the feature type a couple of fields appear (configuration fields, attribute fields)
#. define an abstract and label for your search. 
#. define the text on the search button (f. e. ok or search)
#. in the style and result-style block you can define css-text
#. define a buffer which will be used when zoomed on a result object
#. choose the geometry column
#. search - define the columns to offer in your search and the order (pos for position) in which they shall be listed
#. label - define a label for the search column  
#. show - define the columns which you want to show in the result list and define the position
#. show_detail - define the columns which shall be displayed in the detail information window which provides informations about a single object
#. mandatory (**digitizing**) - the column has to be set and can't be left empty
#. edit (**digitizing**) - define which columns you want to offer for digitizing
#. html - offer selectbox, datepicker instead of an inputfield
#. auth - here you can define authorization to get user dependent access to feature objects.  
#. **save** your settings
#. your configuration will get a configuration id


.. image:: ../../images/screenshots/800x600/mapbender_configure_WFS_featureType_attribute_table.png
     :scale: 80 

Assign a feature type configuration to an application
=====================================================
Your new configuration has to be assigned to an application. This is done in *WFS configuration -> Assign WFS conf to application*.

#. Choose your WFS
#. Choose the application
#. Move your configuration to the *GUI configuration list* on the right

.. image:: ../../images/screenshots/800x600/mapbender_set_featureType_access.png
     :scale: 80 


Set up WFS search
=================
To enable your feature type configuration in an application go to *admin_en_services -> Edit application elements* choose your application and go to the element gazetteerWFS. The elements has an element variable *wfsConfIdString*. Here you can list you WFS configuraton ids (comma separated).

.. image:: ../../images/screenshots/800x600/mapbender_wfsConfIdString.png
     :scale: 80 

Have a look how the search could appear in an application. In this example there is a search frame at the left where you can search for Mapbender User. You can run a spatial search and define a region to search or you can do an alphanumeric search. The search results are displayed in a result table. On click on a result entry Mapbender zooms to the location and detail information is displayed.

.. image:: ../../images/screenshots/800x600/mapbender_WFS_search.png
     :scale: 100

Set up a WFS digitize functionality
===================================
The easiest way to get an application that supports WFS digitizing is to copy gui_digitize. Now you only have to connect a WMS layer with your feature type configuration. This is done in *WMS application settings* with the button *set WFS* in the layer-list. Hit the button and select your configuration id.

.. tip::Make sure that the WMS layer which is connected with the WFS configuration id supports feature info. This is how Mapbender decides whether to send a WFS getFeature request or not.

Now you can search with the spatial search at the right for existing objects which are displayed in a *seach result* frame. The objects can be updated (move object, add basepoint, edit attributes, split line, continue line, merge polygons...). You also can create new objects.

.. image:: ../../images/screenshots/800x600/mapbender_gui_digitize.png
     :scale: 80 

Weitere Aufgaben
================
Hier sind ein paar weitere Aufgaben, die Sie lösen können.

#. Versuchen Sie ein paar weitere WMS in Ihre Anwendung zu laden. Konfigurieren Sie anschließend die WMS über :menuselection:`WMS Verwaltung --> WMS Anwendungseinstellungen`.

#. Versuchen Sie eine individuelle Anwendung aufzubauen - ändern Sie die Hintergrundfarbe, verschieben Sie Buttons, ändern Sie die Kartengröße (Element mapframe1). Diese Änderungen erfolgen über :menuselection:`Anwendungsverwaltung --> Anwendungselemente bearbeiten`.


Der nächste Schritt
====================

Dies war lediglich der erste Einstieg in Mapbender. Es gibt sehr viel mehr Funktionalität zu entdecken.

Mapbender Projektseite

  http://www.mapbender.org/
Dokumentationen finden Sie unter

  http://www.mapbender.org/Tutorials

Schauen Sie sich das Mapbender Tutorial an

  `Mapbender Tutorial (deutsch) <http://www.mapbender.org/Mapbender_Tutorial_de>`_

Lernen Sie Mapbender kennen
	
	http://projects.mapbender.orgeo.org

Bringen Sie sich in das Projekt ein

	http://www.mapbender.org/Community