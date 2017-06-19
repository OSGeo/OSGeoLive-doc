:Author: Hamish Bowman
:Author: Frank Gasdorf
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: /images/project_logos/logo-opencpn.png
  :scale: 75 %
  :alt: Projekt-Logo
  :align: right
  :target: http://www.opencpn.org

********************************************************************************
OpenCPN Quickstart 
********************************************************************************

OpenCPN ist ein präziser Diagramm Drucker und Navigator (CPN). Wie immer: verwende nie eine Software 
oder electronische Ausrüstung als alleiniges Navigationswerkzeug. Halte die Augen offen.

================================================================================

Seekarten vorbereiten
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Bevor Sie mit OpenCPN auf der LiveDVD arbeiten können, sind die Beispieldaten zu 
einzurichten. Dies ist eine Bedingung für die Weiterverbreitung der NOAA nautischen Diagramme.
Wenn Sie OpenCPN das erste Mal über den Menüeintrag :menuselection:`Geospatial --> Navigation and Maps` oder das Desktop Icon
starten, wird Ihnen diese Option automatisch angeboten.

.. Um die Einstellung manuell durchzuführen, öffnen Sie ein Terminal über Öffnen Sie ein Terminal über :menuselection:`LXDE Menu -> Zubehör -> LXTerminal` und geben 
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

* Dokumentation ist verfügbar über das `Help Icon <../../opencpn/help_en_US.html>`_, oder direkt Online unter 
  http://www.opencpn.org/ocpn/opencpn_manual

*  `Tipps zum Einstieg <../../opencpn/tips.html>`_

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
die heruntergeladenen GRIB Daten enthält.

Haben Sie die GRIB Daten im Home-Verzeichnis 
des Benutzers gespeichert, navigieren Sie nach :file:`/home` und wählen Sie Ihr ``user``-Verzeichnis
als das GRIB Datenverzeichnis. Versteckte Dateien inklusive des ``.zygrib``-Verzeichnissen mit den GRIB
download Dateien werden über den rechten Klick auf die Dateieigenschaften angezeigt.

Die Datei muss nicht dekomprimiert werden. Klicken Sie auf ">" 
links neben dem Dateinamen und wählen Sie aus der Liste der Vorhersagenzeiten.
