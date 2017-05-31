:Author: OSGeo-Live
:Author: Alex Mandel, Cameron Shorter
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live7.9
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
Bootfähigen OSGeo-Live USB-Stick erstellen
********************************************************************************

Hier beschreiben wir, wie ein bootbarer OSGeo-Live USB-Stick erstellt werden kann. Von einem USB-Stick zu starten ist schneller als von einer DVD zu starten und das USB-Laufwerk zusätzlich kann zur Sicherung der Daten zwischen Sessions genutzt werden (dies wird persistent genannt).

Die USB Installation ist noch ziemlich neu. Wir haben zwar bereits eine Menge an positiven Rückmeldungen erhalten, allerdings ist die Installation noch nicht ausgiebig getestet. Es wurde alles Dokumentiert, was bisher zu Schwierigkeiten geführt hat, darüber hinaus können Sie auch aktuelle Hinweise hier ansehen : http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB 

Systemvoraussetzungen
--------------------------------------------------------------------------------

* Ein USB Stick (mindestens 4 GB, 8+ GB wird empfohlen)
* Eine OSGeo-Live DVD oder ein ISO Abbild (heruntergeladen von: http://live.osgeo.org/en/download.html) oder von DVD.

 * Einen 4 GB USB-Stick, wenn osgeo-live-mini genutzt wird (ohne Windows und Mac Installationsprogrammen). 
 * Einen 8+ GB USB-Stick, wenn osgeo-live genutzt wird (mit Windows und Mac Installationsprogrammen). 8+ GB werden empfohlen, wenn Sie eine persistente Umgebung aufbauen wollen. 

Einen startbaren USB-Stick unter Ubuntu erstellen
--------------------------------------------------------------------------------

(dies ist die empfohlene Vorgehensweise und kann auch für andere Ubuntu Distributionen, wie Lubuntu oder OSGeo-Live, angewendet werden)

.. note::
   Die eingesetzte Ubuntu-Version Ihres Systems muss der Version des Lubuntu, welches auf dem USB-Laufwerk installiert ist, entsprechen oder aktueller sein. Bei der Installation von OSGeo-Live in der Version 7.9 müssen Sie Ubuntu 12.04 oder höher verwenden.

Laden Sie `download <http://live.osgeo.org/en/download.html>`_ osgeo-live oder osgeo-live-mini auf ihren Computer herunter. 

Booten Sie ihren Computer in einer Ubuntu/Xbuntu Distribution. Sie können dies über den Start von einer OSGeo-Live DVD durchführen, siehe Dokumentation :doc:`osgeolive_quickstart`.


Schließen Sie einen USB-Stick an Ihren Rechner an.

  .. image:: ../../images/screenshots/800x600/usb_select.png
    :scale: 70 %

Wählen Sie :menuselection:`System Tools --> Startup Disk Creator` oder suchen Sie nach `Startup Disk Creator` vom Unity-Desktop.

  .. image:: ../../images/screenshots/800x600/usb_set_params.png
    :scale: 70 %

Wählen Sie das ISO-Abbild osgeo-live oder osgeo-live-mini ISO Image, das Sie zuvor heruntergeladen haben. 

Wählen Sie den USB-Stick. Sofern Sie über weiteren Platz verfügen können Sie über den Schieber persistenten Speicher auf dem USB-Stick erzeugen (empfohlen). Damit diese Option verfügbar ist, benötigen Sie einen 8+ GB USB Stick.

Wählen Sie :guilabel:`Make Startup Disk`

  .. image:: ../../images/screenshots/800x600/usb_installing.png
    :scale: 70 %

Warten Sie ca. 20 Minuten, während der USB-Stick bearbeitet wird.

Booten über USB 
--------------------------------------------------------------------------------

#. Beginnen Sie mit einem ausgeschalteten Rechner
#. Schließen Sie einen USB-Stick an Ihren Rechner an.
#. Starten Sie den Rechner und wählen Sie Start vom USB.

   * Die meisten Computer sind nicht so eingestellt, das sie per default von einem USB-Laufwerk starten.
   * Um dies zu ändern starten Sie Ihren Rechner und drücken Sie die entsprechende Taste um ins BIOS zu gelangen (üblicherweise durch F12).
   * Wenn ihr Computer kein Boot-Menü besitzt, booten Sie in ihr Sytem-BIOS. Die Taste, um ins BIOS zu gelangen, variiert nach Marke und Modell. Wenn Sie es nicht herausfinden sollten, schauen Sie auf der folgenden Webseite nach http://www.mydigitallife.info/comprehensive-list-of-how-key-to-press-to-access-bios-for-various-oem-and-computer-systems/.

#. Wählen Sie vom USB Laufwerk booten.

   * Hinweis: Bei manchen Rechnern lässt sich die nur einstellen, wenn der USB-Stick währenddessen angeschlossen ist.
   * Hinweis: Das USB-Laufwerk ist häufig unter Festplatten aufgeführt und nicht unter Wechselplatten.
   * `Video <http://www.youtube.com/watch?v=eQBdVO-n6Mg>`_ demonstriert das Boten von USB.

Starten:
--------------------------------------------------------------------------------

Starten Sie wie unter: :doc:`osgeolive_quickstart` beschrieben.

Siehe auch:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`virtualization_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * Wenn Sie Probleme haben, tragen Sie diese bitte auf dieser Wiki-Seite ein: `wiki <http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB>`_ 
 * Fragen können auch an unsere Mailingliste gestellt werden: http://lists.osgeo.org/mailman/listinfo/live-demo