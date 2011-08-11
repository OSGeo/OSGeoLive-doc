:Author: Eric Lemoine, Bruno Binet
:Author: Dominik Helle
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _mapfish-quickstart:
 
.. image:: ../../images/project_logos/logo-mapfish.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.mapfish.org



Mapfish Quickstart 
~~~~~~~~~~~~~~~~~~~~

Mapfish ist ein flexibles Framework um interaktive Internet-Kartenanwendungen zu erstellen. Das Projekt legt besonderen Wert auf hohe Produktivität und hohe Entwicklungsqualität.

Dieser Quickstart beschriebt wie 

* die Beispiel-Anwendung auf der LiveDVD gestartet, 
* Mapfish installiert und zum Schluss 
* eine Mapfish Anwendung erstellt wird. 


Beispiel Anwendung starten
==========================

Um die Beispiel-Anwendung zu starten klicken Sie auf den Mapfish-Link auf dem Desktop. Nun öffnet sich die Anwendung in einem neuen FireFox Fenster. Die Anwendung wird über das Modul mod_wsgi bereitgestellt (http://localhost/mapfishsample/osgeolive/wsgi/).

Die Demo hat folgende Funktionen: abfragen, editieren, suchen und drucken. Um das Mapfish REST Protokoll bei der Arbeit zu sehen, können Sie den Firebug Debugger öffnen. Im Bereich request/responses werden die Daten dargestellt die zwischen Browser und dem Mapfish Web-Services ausgetauscht werden.

Mapfish installieren
====================

Um Mapfish zu installieren muss das Download-Script heruntergeladen und im Terminal ausgeführt werden::

    $ wget http://www.mapfish.org/downloads/go-mapfish-framework-2.2.py

    $ python go-mapfish-framework-2.2.py --no-site-packages venv

Die Kommandozeile erstellt eine virtuelle Python-Entwicklungsumgebung in dem Order ``venv`` und führt das Installation-Script aus. Mapfish wird so mit allen Abhängigkeiten in die virtuelle Umgebung installiert.

Die virtuelle Python Umgebung kann nun aktiviert und die Installation überprüft werden::  

    $ source venv/bin/activate

    (venv) $ paster create --list-templates

Das oben stehende Kommando sollte folgende Ausgabe::

    Available templates:
    basic_package:   A basic setuptools-enabled package
    mapfish:         MapFish application template
    mapfish_client:  MapFish client plugin template
    paste_deploy:    A web application deployed through paste.deploy
    pylons:          Pylons application template
    pylons_minimal:  Pylons minimal application template

Das Framework wurde erfolgreich installiert. Im nächsten Abschnitt folgt nun die Beschreibung wie eine Mapfish Anwendung erstellt werden kann. 

Mapfish Anwendung erstellen
===========================

Nach dem die virtuelle Umgebung aktiviert wurde, kann nun die erste Mapfish Anwendung erstellt werden. Diese trägt zum Beispiel den Namen MyMapFishApp::

    (venv) $ paster create -t mapfish MyMapFishApp sqlalchemy=true

Nun kann auch die Javascript Bibliothek in der Anwendung installiert werden:

    (venv) $ paster create --no-interactive -t mapfish_client MyMapFishApp

Die eben ausgeführten Zeilen haben eine Mapfish-Anwendung in dem Verzeichnis ``MyMapFishApp`` erstellt.

Nun können die Anwendung starten::

    (venv) $ cd MyMapFishApp
    (venv) $ paster serve development.ini

Öffnen Sie http://localhost:5000 in Ihrem Browser. Sie sehen nun eine minimale Mapfish Anwendung, diese enthält eine Karte mit zwei `OSM Layern <http://www.openstreetmap.org/>`_, eine Toolbar überhalb der Karte sowie einem Layerbaum. 

Das Mapfish Framework stellt natürlich noch weitere Funktionen bereit. Insbesondere erlaubt es die Bereitstellung von RESTful Web-Services zum Erstellen, Lesen, Aktualisieren und Löschen von Features. Für weitere Informationen schauen Sie in die Dokumentation unter http://mapfish.org/doc/2.2/quickstart.html und besuchen Sie http://mapfish.org.

