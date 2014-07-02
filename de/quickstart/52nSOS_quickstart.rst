:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org), Simon Jirka (s.jirka@52north.org)
:Reviewer: 
:Version: osgeo-live8.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :target: http://52north.org/sos
  :align: right

********************************************************************************
52°North SOS Quickstart 
********************************************************************************

Der 52°North SOS ermöglicht den Zugriff und die Bereitstellung von raumbezogenen
Sensordaten. Dies umfasst sowohl Messwerte als auch zugehörige Metadaten.

Dieses Quickstart-Dokument umfasst:

  * Abschluss der Installation und Konfiguration der SOS-Instanz
  * Einfügen von Testdaten
  * Eine Anfrage eines 52°North SOS Capabilities-Dokumentes, um festzustellen, welche Anfragen unterstützt werden.
  * Eine Detail-Anfrage zu Messdaten des SOS.

.. contents:: Inhalt

Erste Schritte
================================================================================

1. Rufen Sie :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North SOS`.

2. Es öffnet sich ein Browser-Fenster, welches die Willkommens-Seite der
   52°North SOS-Anwendung anzeigt (siehe Abb. 1). Bitte klicken sie auf den 
   Link zur Vervollständigung der Installation (in der rot hinterlegten Meldung):

.. image:: ../../images/screenshots/1024x768/52n_sos_install_start.png
  :scale: 100 %
  :alt: Bildschirmfoto der 52°North SOS-Anwendung-Willkommens-Seite
  :align: center

**Abb. 1**: 52°North SOS Test-Anwendung - Willkommens-Seite

3. Folgen Sie den Schritten der Installation und Konfiguration. Als Datasource sollten sie entsprechend
   ihren Bedürfnissen wählen. Für einen kurzen Test bietet sich die Wahl von H2/GeoDB (in memory) an. Workshops oder
   Installationen sollten einen Datenbankserver wie z.B. PostgreSQL nutzen. Dazu wählen Sie PostgreSQL/PostGIS aus.
   Es wird eine existierende Datenbank mit PostGIS 2.0 erwartet. 

.. image:: ../../images/screenshots/1024x768/52n_sos_insert_test_data.png
  :scale: 100 %
  :alt: Bildschirmfoto der 52°North SOS Anwendung - Test Client mit Batch-Operation
  :align: center
  
**Fig. 2**: 52°North SOS Anwendung - Test Client mit Batch-Operation 
  
4. Nach der Installation werden als nächstes die Testdaten eingefügt. Dazu wählen Sie die Operation Batch
   im Test Client aus und klicken anschließend auf Send (siehe Abb. 2).
    
5. Um eigene Anfragen an den SOS zu stellen, wird das `Capabilities-Dokument des
   52°North SOS benötigt <http://localhost:8080/52nSOS/sos?REQUEST=GetCapabilities&SERVICE=SOS&ACCEPTVERSIONS=1.0.0>`_.
   Mit Hilfe der Inhalte des Capabilities-Dokuments können die Beispielanfragen
   aus der Beispielliste individuell angepasst werden.

Ausprobieren
================================================================================

* Versuchen Sie weitere Abfragen des Test Clients.
* Nutzen Sie den `View Client<http://localhost:8080/52nSOS/viewclient>`_.
* Passen Sie die Beispielanfragen an um andere Daten zu bekommen.

Weitere Informationen
================================================================================

* Weitere Informationen über den 52°North SOS und/oder 52°North erhalten Sie 
  über folgende Wege:

* Der 52°North `SOS-Überblick <../overview/52nSOS_overview.html>`_,
* Die 52°North Sensor-Web-E-Mail-Liste: swe@52north.org, 
* Das Forum der 52°North `Sensor-Web-Community <http://sensorweb.forum.52north.org/>`_, 
* Die 52°North `SOS-Website <http://52north.org/communities/sensorweb/sos/>`_, or 
* Die Website der `52°North Sensor-Web-Community <http://52north.org/communities/sensorweb/>`_.

* Sollte der SOS nicht erreichbar sein, so prüfen Sie bitte mit folgendem Befehl, oder der Tomcat Web Service-Container läuft:

::

  user@osgeolive:~$ sudo /etc/init.d/tomcat6 status
  * Tomcat servlet engine is running with pid 1234          <-- Tomcat läuft  [...]
  * Tomcat servlet engine is not running.                   <-- Tomcat läuft nicht, starten Sie Tomcat über folgenden befehl:
  user@osgeolive:~$ sudo /etc/init.d/tomcat6 start
  * Starting Tomcat servlet engine tomcat6           [ OK ] <-- Tomcat läuft nun
  
**Listing 1:** Befehlte zum Abfragen des Status von Tomcat und zum Starten (Passwort für sudo: user)

* Die Entwicklung dieser Version des 52°North SOS wurde durch verschiedene Projekte, Organisationen und Personen unterstützt. 
  Mehr Informationen in der `52°North SOS Anwendung<http://localhost:8080/52nSOS/index`_.
