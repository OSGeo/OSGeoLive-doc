
:Author: OSGeo-Live
:Author: Cameron Shorter
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _usb-quickstart:
 
***********************************************
Einen startbaren OSGeo-Live USB-Stick erstellen
***********************************************

Hier beschreiben wir, wie ein bootbarer OSGeo-Live USB-Stick erstellt werden kann. Von einem USB-Stick zu starten ist schneller als von einer DVD zu starten und das USB-Laufwerk zusätzlich kann zur Sicherung der Daten zwischen Sessions genutzt werden.

Die USB Installation ist noch ziemlich neu. Wir haben zwar bereits eine Menge an positiven Rückmeldungen erhalten, allerdings ist die Installation noch nicht ausgiebig getestet und einige Leute haben von Schwierigkeiten berichtet, vom USB-Laufwerk zu starten.

Systemvoraussetzungen
---------------------

* Einen 4 GB USB-Stick, wenn osgeo-live-mini genutzt wird.  
* Einen 8 GB USB-Stick, wenn osgeo-live genutzt wird.  
* Eine OSGeo-Live DVD oder ein ISO Abbild (heruntergeladen von: http://live.osgeo.org/download.html)

Einen startbaren USB-Stick unter Ubuntu erstellen
-------------------------------------------------

Schließen Sie einen USB-Stick an Ihren Rechner an.

Falls Sie eine DVD benutzen legen Sie die DVD in das DVD-Laufwerk.

  .. image:: ../../images/screenshots/800x600/usb_select.png
    :scale: 70 %

Wählen Sie :menuselection:`System --> Administration --> Startup Disk Creator`

  .. image:: ../../images/screenshots/800x600/usb_set_params.png
    :scale: 70 %

Wählen Sie das DVD-Laufwerk oder das ISO-Abbild.

Wählen Sie den USB-Stick.

Wählen Sie :guilabel:`Make Startup Disk`

  .. image:: ../../images/screenshots/800x600/usb_installing.png
    :scale: 70 %

Warten Sie ca. 20 Minuten, während der USB-Stick bearbeitet wird.

Einen startbaren USB-Stick unter Windows erstellen
--------------------------------------------------

Schließen Sie einen USB-Stick an Ihren Rechner an.

Laden Sie den Universal USB Installer von: http://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3/ und starten ihn.

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_licence.gif

Akzeptieren Sie die Nutzungsbedingungen.

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_selection.gif

Schritt 1: Distribution: Wählen Sie die xubuntu i386 Distribution, die für das OSGeo-live Image benutzt wird. (Für |osgeo-live-version| wählen Sie xubuntu 10.04 Desktop i386)

Schritt 2: Wählen Sie die aktuelle OSGeo-Live ISO-Datei, die Sie hoffentlich local abgespeichert haben. Achtung: Sie müssen den Pfad zur ISO-Datei manuell eingeben, da der :guilabel:`Browse`-Button nur xubuntu ISO-Dateien anzeigt.

Schritt 3: Wählen Sie Ihr USB-Laufwerk.

Schritt 4: Wählen Sie "Persistence", wenn Sie Daten zwischen Ihren Sessions abspeichern wollen.

Wählen Sie :guilabel:`Create`

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_installing.gif

Warten Sie ca. 20 Minuten, während der USB-Stick bearbeitet wird.

Einstellen der Startreihenfolge im BIOS:
----------------------------------------

Die meisten Computer sind nicht so eingestellt, das sie von einem USB-Laufwerk starten.

Um dies zu ändern starten Sie Ihren Rechner und drücken Sie die entsprechende Taste um ins BIOS zu gelangen (üblicherweise durch die <Entf>-Taste oder einen der F-Tasten.

Ändern Sie die Bootreihenfolge, so dass der Rechner vom USB-Stick gestartet werden kann.

Bei manchen Rechnern lässt sich die nur einstellen, wenn der USB-Stick währenddessen angeschlossen ist.

Das USB-Laufwerk ist häufig unter Festplatten aufgeführt und nicht unter Wechselplatten.

Starten:
--------

Starten Sie wie unter: :doc:`osgeolive_quickstart` beschrieben.

Bekannte Probleme:
------------------

* Mac Computer starten nicht von diesen USB-Sticks, benutzen Sie stattdessen die LiveDVD.

Siehe auch:
-----------

 * :doc:`osgeolive_quickstart`
 * :doc:`virtualbox_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * Wenn Sie Probleme haben, tragen Sie diese bitte auf dieser Wiki-Seite ein: http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB und diskutieren Sie auf unserer Mailingliste: http://lists.osgeo.org/mailman/listinfo/live-demo
 * Für weitere USB Startoptionen lesen Sie http://pendrivelinux.com 
