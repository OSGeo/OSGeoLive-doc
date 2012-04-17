:Author: Hamish Bowman
:Author: Frank Gasdorf
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-opencpn.png
  :scale: 75 %
  :alt: Projekt-Logo
  :align: right
  :target: http://www.opencpn.org

********************************************************************************
OpenCPN Quickstart 
********************************************************************************

Ablauf
================================================================================

Seekarten vorbereiten
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Bevor Sie mit OpenCPN auf der LiveDVD arbeiten können, sind die Beispieldaten zu 
einzurichten. Hierzu öffnen Sie ein Terminal vom Applikationsmenü und geben 
:command:`opencpn_noaa_agreement.sh` per Tastatur ein. Das Passwort für den Benutzer
*user* ist in der Passwort-Datei auf dem Desktop zu finden.

Weitere US Seekarten können Sie von der Webseite des amerikanischen Ministeriums für 
Ozeanik und Atmosphäre (NOAA - National Oceanic and Atmospheric Administration) 
kostenfrei beziehen, zu finden unter http://www.charts.noaa.gov

GPS einstellen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Sollten Sie ein GPS-Gerät angeschlossen haben, können Sie den gpsd Service 
wie folgt starten:

::

  sudo dpkg-reconfigure gpsd

and

::

  sudo /etc/init.d/gpsd start

Möchten Sie über BlueTooth verbundene GPS-Geräte verwenden, sollten Sie zuvor weitere 
Details zur no-probe Option sorgfältig lesen. Aus diesem Grund wird der gpsd Service nicht 
automaitisch gestartet.

* '`xgps`' ist ein Programm, mit dem Sie prüfen können, ob gpsd das GPS-Gerät erkennt und verwenden kann.


Dokumentation
================================================================================

* Dokumentation ist verfügbar über das `Help Icon <../../opencpn/doc/help_en_US.html>`_, oder direkt Online unter 
  http://www.opencpn.org/docwiki

*  `Tipps zum Einstieg <../../opencpn/doc/tips.html>`_

Was kann man noch probieren?
================================================================================

Aktuelle Wetter- und Vorhersagedaten können heruntergeladenen und  mit ded GRIB Plugin
eingebunden werden, so dass diese über den Seekarten dargestellt werden.  Die 
:doc:`zyGrib Software <../overview/zygrib_overview>` (auch auf der LiveDVD vorhanden) 
können Sie verwenden, um die Daten einfach herunterzuladen. Weitere Details können Sie 
in der :doc:`zyGrib Quickstart Dokumentation <../quickstart/zygrib_quickstart>` finden.
Aktivieren Sie das GRIB Plugin im Konfigurationsmenü auf dem äußerst rechten Tab; 
Klicken Sie mit der rechten Maustaste auf ein GRIB Verzeichnis, um versteckte Dateien 
und Verzeichnisse anzuzeigen, wie auch den :file:`.zygrib` Ordner, der standardmäßig 
die heruntergeladenen GRIB Daten enthält. Haben Sie die GRIB Daten im Home-Verzeichnis 
des Benutzers gespeichert, navigieren sie nach :file:`/home` und wählen Sie ``user`` als
GRIB Datenverzeichnis. Die Datei muss nicht dekomprimiert werden. Klicken Sie auf "+" 
links neben dem Dateinamen und wählen Sie aus der Liste der Vorhersagenzeiten.
