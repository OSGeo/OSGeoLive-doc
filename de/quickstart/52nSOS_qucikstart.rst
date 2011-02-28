:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org), Simon Jirka (s.jirka@52north.org)
:Version: osgeo-live4.0
:License: Creative Commons

.. _52nSOS-quickstart:
 
.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/sos
  
***********************
52°North SOS Quick-Start 
***********************

Erste Schritte
==============

Der 52°North SOS ermöglicht den Zugriff und die Bereitstellung von raumbezogenen Sensordaten. Dies umfasst sowohl Messwerte als auch zugehörige Metadaten.

1) Rufen Sie :menuselection:`Geospatial --> Web Services --> Start 52North SOS` auf, um den 52°North SOS zu starten oder benutzen sie diesen `direkten Link <http://localhost:8080/52nSOSv3.1.1/>`_.
  (Sollte der Dienst nicht erreichbar sein, so versuchen Sie, den Tomcat Web Service Container zu starten. Hinweise hierzu finden Sie am Ende dieser Seite.)

2) Es öffnet sich ein Browser-Fenster, welches den 52°North SOS Test-Client zeigt (siehe Abb. 1):

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS test client
  :align: center
  
**Abb. 1**: 52°North SOS Test-Client - Startseite  
  
3) Wählen Sie als erstes Beispiel die Anfrage **GetCapabilities_allSections.xml** [1] aus der Drop-Down-Liste "Request Examples".
  
4) Drücken Sie den **Send button** [2] damit die Anfrage an den 52°North SOS gesendet wird. Als Antwort erhalten Sie ein XML-Dokument, welches die Eigenschaften und Inhalte des SOS (sogenannte “Capabilities” beschreibt (siehe Abb. 2).

.. image:: ../../images/screenshots/1024x768/52n_sos_response.png
  :scale: 70 %
  :alt: screenshot of 52°North SOS output - GetCapabilities response encoded in XML
  :align: center
  
**Abb. 2**: 52°North SOS – GetCapabilities-Antwort des SOS (XML-kodiert)
  
5) Um eigene Anfragen an den SOS zu stellen, wird das `Capabilities-Dokument des 52°North SOS benötigt <http://localhost:8080/52nSOSv3.1.1/sos?REQUEST=GetCapabilities&SERVICE=SOS&ACCEPTVERSIONS=1.0.0>`_. Mit Hilfe der Inhalte des Capabilities-Dokuments können die Beispielanfragen aus der Beispielliste individuell angepasst werden.

Weitere Informationen
=====================

* Weitere Informationen über den 52°North SOS und/oder 52°North erhalten Sie über folgende Wege:

* der 52°North `SOS-Überblick <../overview/52nSOS_overview.html>`_,
* die 52°North Sensor Web Mailing-Liste: swe@52north.org, 
* das Forum der 52°North `Sensor Web Community <http://sensorweb.forum.52north.org/>`_, 
* die 52°North `SOS-Website <http://52north.org/communities/sensorweb/sos/>`_, or 
* die Website der `52°North Sensor Web Community <http://52north.org/communities/sensorweb/>`_.

* Sollte der SOS nicht erreichbar sein, so prüfen Sie bitt emit folgendem Befehl, oder der Tomcat Web Service-Container läuft:

::

  user@osgeolive:~$ sudo /etc/init.d/tomcat6 status
  * Tomcat servlet engine is running with pid 1234          <-- Tomcat läuft  [...]
  * Tomcat servlet engine is not running.                   <-- Tomcat läuft nicht, starten Sie Tomcat über folgenden befehl:
  user@osgeolive:~$ sudo /etc/init.d/tomcat6 start
  * Starting Tomcat servlet engine tomcat6           [ OK ] <-- Tomcat läuft nun
  
**Listing 1:** Befehlte zum Abfragen des Status von Tomcat und zum Starten (Passwort für sudo: user)

* Die Entwicklung dieser Version des 52°North SOS wurde durch das Europäische FP7 Projekt `EO2HEAVEN <http://www.eo2heaven.org/>`_ 
  Unterstützt (co-finanziert durch die Europäische Kommission unter der Grant Agreement Nummer 244100):

.. image:: ../../images/project_logos/logo_52North_other_200px.png
  :scale: 100 %
  :alt: EO2HEAVEN - Earth Observation and ENVironmental Modeling for the Mitigation of HEAlth Risks
  :align: center
  :target: http://www.eo2heaven.org/
