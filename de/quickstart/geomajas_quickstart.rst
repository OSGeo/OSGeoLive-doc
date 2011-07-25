:Author: Pieter De Graef
:Version: osgeo-live4.0
:License: Creative Commons

.. _geomajas-quickstart:
 
.. image:: ../../images/project_logos/logo-geomajas.png
  :width: 50px
  :height: 50px
  :alt: project logo
  :align: right
  :target: http://www.geomajas.org

*******************
Geomajas Quickstart 
*******************

Erste Schritte
==============

GeoMajas ist ein Entwicklungs-Framekwork um WebGIS Anwendungen zu erstellen. Auf der Live DVD wurde hierfür eine Beispiel-Anwendung mit Hilfe der GeoMajas Technologie bereitgestellt. 

.. image:: ../../images/screenshots/1024x768/geomajas_1024x768_screen1.png
  :scale: 50%
  :alt: Geomajas Showcase
  :align: right

* Öffnen Sie den Ordner "Browser Clients" auf dem Desktop.

* Klicken Sie nun auf das Desktop-Symbol "Start Geomajas". Nun öffnet sich der FireFox Browser. Dieser ruft nun automatisch die Anwendung auf.

* Auf der linken Seite der Anwendung wird eine Liste mit Funktionen angezeigt, die Geomajas "out-of-the-box" unterstützt. Durch Anklicken öffnen sich die dazugehörigen Beispiele. 

*  Um die Beispiele besser zu verstehen befindet sich eine kurze Erklärung auf der rechten Seite der Anwendung.


Neue Geomajas Anwendung erstellen
=================================

Um eine neue Geomajas Anwendung zu erstellen muss das Werkzeug `Maven <http://maven.apache.org/>`_ installiert werden. Maven erstellt und managt Java basierte Projekte. Um die Anwendung in einem Kommando zu erstellen verfügt Geomajas über eine Maven Vorlage:: 

    $ mvn archetype:generate -DarchetypeCatalog=http://files.geomajas.org/archetype-catalog.xml

Herzlichen Glückwunsch Sie haben nun ihre eine neue Geomajas Anwendung erstellt. Nun haben Sie die Wahl ob Sie es direkt starten oder es in der Entwicklungsumgebung öffnen möchten um damit zu arbeiten. 

Um die Anwendung direkt zu starten öffnen Sie den Anwendungs-Ordner (in dem sich die pom.xml befindet) und führen Sie folgendes Kommando auf der Konsole aus::

    $ mvn jetty:run

Nun wird die Anwendung kompiliert und in durch den Jetty-Server zur Verfügung gestellt. Jetzt können Sie die Anwendung unter folgender URL im Browser aufrufen: http://localhost:8080/

Für weitere Details über Geomajas oder die Entwicklungsumgebung bietet die Dokumentation einen ersten Einstieg: `Erste Schritte  <http://files.geomajas.org/maven/trunk/geomajas/docbook-gettingstarted/html/master.html#prereq>`_.

Und besuchen Sie doch mal die `Geomajas Homepage <http://www.geomajas.org/>`_.

