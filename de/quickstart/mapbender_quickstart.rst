:Author: OSGeo Live
:Author: Astrid Emde
:Author: Christoph Baudson
:Author: Arnulf Christl
:Version: osgeo-live4.0
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
  * wie Sie Benutzer und Gruppen anlegen können und diesen Zugriff auf Anwendungen geben können


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
   * admin2_en, admin2_de - WMS Administration, Anwendungsverwaltung, Benutzer- und Gruppenverwaltung
   * admin_en_services, admin_de_services - Fokus auf WFS und Metadatenverwaltung sowie owsproxy
   * admin1 - template with all administration elements 

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

.. tip:: Sie können auch eine neue Anwendung als Kopie einer bestehenden Anwendung erzeugen. Wählen Sie den Link :menuselection:`Anwendungsverwaltung --> `Anwendung kopieren/umbenennen`, wählen Sie die Anwendungen, die kopiert werden soll und geben Sie einen Namen für die neue Anwendung an.


Laden eines Web Map Services
============================
Sie können einen OGC Web Map Services (WMS) in Ihre Anwendung laden.

#. Gehen Sie hierzu in die Anwendung :guilabel:`admin2_de` und wählen Sie den Link :menuselection:`WMS Verwaltung --> Capabilities hochladen`. Wählen Sie die Anwendung, die den WMS enthalten soll, aus. Tragen Sie den Link zum WMS Capabilities-Dokument in das Textfeld ein und klicken Sie **Load**.

#. Hier sind ein paar Beispiel WMS, die Sie in Ihre Anwendung laden können:

   * Demis World Map http://www2.demis.nl/wms/wms.asp?wms=WorldMap&VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS
   * Bird Studies Canada http://www.bsc-eoc.org/cgi-bin/bsc_ows.asp?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS
   * Germany Demo http://wms.wheregroup.com/cgi-bin/mapserv?map=/data/umn/germany/germany.map&VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS 
   * WhereGroup OSM WMS http://osm.wheregroup.com/cgi-bin/osm_basic.xml?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=1.1.1
   
.. image:: ../../images/screenshots/800x600/mapbender_wms_application_settings.png
  :scale: 80

Benutzer- und Gruppenverwaltung
===============================
Der Zugriff auf eine Anwendung setzt bei Mapbender immer eine Berechtigung voraus. Ein Anwender hat die Berechtigung auf eine oder mehrere Anwendungen und die Dienste (WMS, WFS) in diesen Anwendungen zu zu greifen.

Es besteht kein Unterschied zwischen den Rollen :guilabel:`Gast`, :guilabel:`Operator` oder :guilabel:`Administrator`. Die :guilabel:`Rolle` eines Benutzer hängt von dem Funktionsumfang und den Diensten ab, die dem Benutzer durch seine Anwendungen zur Verfügung stehen.


**Benutzer anlegen**

#. Gehen Sie in die Anwendung :guilabel:`admin2_de` und wählen Sie unter :menuselection:`Benutzerverwaltung --> Benutzer anlegen und bearbeiten`

#. Wählen Sie einen Namen und eine Paßwort für Ihren Benutzer. 

.. image:: ../../images/screenshots/800x600/mapbender_create_user.png
     :scale: 80 


**Anlegen einer Gruppe**

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

Weitere Aufgaben
================
Hier sind ein paar weitere Aufgaben, die Sie lösen können.

#. Versuchen Sie ein paar weitere WMS in Ihre Anwendung zu laden. Konfigurieren Sie anschließend die WMS über :menuselection:`WMS Verwaltung --> WMS Anwendungseinstellungen`.

#. Versuchen Sie eine individuelle Anwendung aufzubauen - ändern Sie die Hintergrundfarbe, verschieben Sie Buttons, ändern Sie die Kartengröße (Element mapframe1). Diese Änderungen erfolgen über :menuselection:`Anwendungsverwaltung --> Anwendungselemente bearbeiten`.


Der nächste Schritt
====================

Dies war lediglich der erste Einstieg in Mapbender. Es gibt sehr viel mehr Funktionalität zu entdecken.

* Mapbender Projektseite

  http://www.mapbender.org/

* Dokumentationen finden Sie unter

  http://www.mapbender.org/Tutorials

* Testen Sie das Mapbender Tutorial

  `Mapbender Tutorial (deutsch) <http://www.mapbender.org/Mapbender_Tutorial_de>`_

