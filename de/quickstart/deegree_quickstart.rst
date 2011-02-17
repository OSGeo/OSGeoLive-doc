:Author: Johannes Wilden
:Version: osgeo-live4.0
:License: Creative Commons
:Thanks: geotools-user list

.. _deegree-quickstart:

******************
deegree Quickstart 
******************

deegree ist ein Java Framework das für Einrichtung und Betrieb von
web-basierten Geodateninfrastrukturen verwendet werden kann. 

Diese 'Quick Start'-Anleitung beschreibt:

  * wie der iGeoportal-Klient verwendet wird
  * wie Beispiel-Requests gegen unsere Dienste gesendet werden können

deegree starten
===============

#. Wählen Sie 'deegree start' aus dem Startmenü
#. Die Anwendung benötigt einen Moment um zu starten

Begrüßungsansicht
=================

#. Wenn Sie deegree zum ersten mal starten, nimmt die Begrüßungsansicht den
ganzen Bildschirm ein. Diese Ansicht beinhaltet Links zu Tutorien,
Dokumentation und der Projekt-Webseite.
Sie können jederzeit zu dieser Ansicht zurückkehren, indem Sie auf "Start
page" im Menü auf der linken Seite klicken. 


Services
========
Mit einem Klick auf "Services" in dem Menü auf der linken Seite der
Begrüßungsansicht, öffnen Sie ein neues Fenster. Im Menü auf der linken
Seite können Sie zwischen "`WMS example requests & clients`",  "`WFS example requests & client`"
und  "`WCS example requests & client`" wählen. 

Klient (iGeoPortal) 
==================

Ausgehend von der Begrüßungsansicht wählen Sie "`Client (iGeoPortal)`" aus
dem Menü.  Das nächste Fenster zeigt einen Überblick des deegree
iGeoPortal. 
Ein Klick auf "Utah" in dem "`deegree iGeoPortal WebMapContexts`" Menü auf
der linken Seite lädt den  "Utah" WebMapContexts.
Auf der rechten Seite des Kartenfensters erscheint eine Layer-Liste. In
dieser können einzelne Layer an- und ausgeschaltet werden. 
Um aktivierte Layer sichtbar zu machen muss das Kartenfenster durch einen
Klick auf die "`refresh`"-Schaltfläche neu geladen werden. 
Über dem Kartenfenster befindet sich ein Menü mit Werkzeugen, die zur
Navigation innerhalb der Karte genutzt werden können. 
Die "+"-Schaltfläche dient dazu mit einem Klick in die Karte diese zu
vergrößern. Mit Hilfe der "Hand"-Schaltfläche kann der Kartenausschnitt
verschoben werden. 


Web Map Service
===============

Ausgehend von der oben erwähnten "Services"-Seite können die deegreee Web
Map Service Beispiel-Requests und -Klienten aufgerufen werden. Wählen Sie
"Basic WMS requests" um einen Eindruck eines einfachen deegree-WMS-requests
und der Antwort des Service zu gewinnen.
Ein Klick auf "Generic Client" auf der linken Seite startet den generischen
deegree-Klienten für OGC Web Services und sendet einen POST-request an den
WMS. Wählen Sie "WMS" aus der Service Auswahlliste und drücken Sie die
"Send"-Schaltfläche auf der rechten Seite. Die Antwort erfolgt in Form
eines Bildes, das den citelayer unter dem XML-Feld anzeigt. 


Web Feature Service
====================

Ausgehend von der oben erwähnten "Services"-Seite können die deegreee Web
Feature Service Beispiel-Requests und -Klienten aufgerufen werden. Wählen Sie
"Basic WFS requests" um einen Eindruck eines einfachen deegree-WFS-requests
und der Antwort des Service zu gewinnen.
Ein Klick auf "Generic Client" auf der linken Seite startet den generischen
deegree-Klienten für OGC Web Services und sendet einen POST-request an den
WFS. Wählen Sie "Utha" aus der example-Auswahlliste und Springs_code5.xml
aus der Request-Auswahlliste. Drücken Sie nun die "Send"-Schaltfläche auf der 
rechten Seite und betrachten sie das ausgegebene Ergebnis. 


What Next?
==========

Dies war nur ein kurzer Überblick über die deegree-Dienste und -Klienten. Weitere 
Informationen erhalten Sie über das deegree-Wiki, die Online-Demo und die
deegree-Webseite. 

* deegree wiki

  Available on: http://wiki.deegree.org

* deegree online demo

  Available on: http://demo.deegree.org

* deegree home

  Available on http://deegree.org/