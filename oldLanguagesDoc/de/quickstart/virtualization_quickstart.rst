:Author: OSGeo-Live
:Author: Micha Silver
:Reviewer: Cameron Shorter, Jirotech
:Translator: Astrid Emde
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
OSGeo-Live Quickstart zur Einrichtung in einer Virtuellen Maschine
********************************************************************************

Dieses Quickstart beschreibt die Möglichkeit OSGeo-Live innerhalb einer Virtuellen 
Maschine (VM) laufen zu lassen.
Für andere Methoden folgen Sie bitte den Links weiter unten im Bereich "Weiterführende Links".

Vorteile einer Virtuellen Maschine
--------------------------------------------------------------------------------

* Antwortzeiten einer VM sind viel schneller als die einer DVD und vergleichbar mit einer direkten Installation auf dem Gastrechner.
* Alle Konfigurationsanpassungen, Softwareaktualisierungen und gespeicherte Dateien sind permanent, so wie auf einem normalen Computer.
    Daher

 * können Sie das System anpassen und aktualisieren
 * können Sie ihre Anpassungen innerhalb der VM speichern
 * können Sie zusätzliche Software installieren
 
* Sie können ihre gesamte Virtuelle Maschine sichern.

Systemvoraussetzungen
--------------------------------------------------------------------------------

* RAM: mindestens 2 GB. Das Lubuntu System läuft gut mit 1 GB RAM, es werden mindestens ebenso viel RAM für das Gastsystem benötigt.
    So werden 2 GB für reibungslosen Einsatz benötigt.
* Freier Festplattenspeicher: Die Virtuelle Maschinen Datei (vmdk) von:  `live.osgeo.org <http://live.osgeo.org/en/download.html>`_  ist entpackt etwa 10 GB groß. Sie benötigt noch weiteren Speicher, um Arbeiten auf der Virtuellen Maschine zu ermöglichen. So sind 20 GB Speicher eine gute Empfehlung.
* CPU: Jede CPU reicht aus, doch ist ein Prozessor, der "Virtualization Technology" unterstützt schneller. Sie können ihre CPU `hier <http://www.intel.com/support/processors/sb/cs-030729.htm>`_ prüfen.

Die meisten Maschinen, die in den letzten 4-5 Jahren produziert wurden, erfüllen die Anforderungen.

Die Einrichtung
--------------------------------------------------------------------------------

**Downloads**

Laden Sie `Virtual Box <http://www.virtualbox.org/>`_  für ihr System herunter und installieren Sie die Software. 
Durchlaufen Sie unter Windows den Installer. Führen Sie unter Ubuntu-ähnlichen Linux Systemen den folgenden Befehl aus:

  ``apt-get install virtualbox-ose``

Laden Sie die OSGeo Virtual Disk Datei (vmdk) von `live.osgeo.org <http://live.osgeo.org/en/download.html>`_ herunter. 
Klicken Sie auf den "Download Virtuelle Maschine" Button. Entpacken Sie die heruntergeladene Datei (nutzen Sie dazu `7zip <http://www.7-zip.org>`_ ).


**Erzeugen einer Virtuellen Maschine**

Starten Sie die VirtualBox Anwendung und klicken Sie auf den Neu Button, um eine neue VM zu erzeugen, klicken Sie anschließend auf weiter.

  .. image:: /images/screenshots/virtualization/virtualbox.png
         :scale: 50 %

Geben Sie einen Namen für die VM wie beispielsweise OSGeo-Live ein, und wählen Sie Linux als "Operating System" und Ubuntu als "Version".

  .. image:: /images/screenshots/virtualization/virtualbox_select_name.png
         :scale: 70 %

Setzen Sie im nächsten Fenster den Speicher auf 1024 MB (oder mehr, wenn ihr Gastrechner über mehr als 4GB verfügt).

  .. image:: /images/screenshots/virtualization/vmdk_memory.png
     :scale: 65 %

Gehen Sie zum nächsten Fenster und wählen Sie "Bestehende Festplatte verwenden". Klicken Sie nun auf den Button (ein Ordnersymbol), um zu dem Speicherort der OSGeo-Live vmdk-Datei zu gelangen. Wählen Sie diese Datei aus und klicken Sie weiter und Erzeugen.

  .. image:: /images/screenshots/virtualization/vmdk_disk.png
     :scale: 65 %

Sobald die VM erzeugt wurde, klicken Sie auf den Einstellungen Button. Gehen Sie im Bereich "Allgemein" zum Reiter "Erweitert" und klicken Sie "Show at top of screen" zur Anzeige der Werkzeugleiste im oberen Bereich.

  .. image:: /images/screenshots/virtualization/vmdk_general_advanced.png
     :scale: 65 %

Gehen Sie zu dem Bereich "Anzeige" und erhöhen Sie den Video Speicher auf 32 oder 64 MB.

  .. image:: /images/screenshots/virtualization/vmdk_display.png
     :scale: 65 %

Gehen Sie außerdem in den Bereich "Gemeinsame Ordner" und klicken Sie "Ordner hinzufügen" (grünes Ordnersymbol mit Plus auf der rechten Seite) und wählen Sie ein Verzeichnis auf ihrem Gastrechner aus, das Sie innerhalb der VM freigeben möchten.

 .. image:: /images/screenshots/virtualization/vmdk_shared_folders.png
     :scale: 65 %

Dabei können gemeinsame Ordner wahlweise nur lesend und automatisch verbunden werden. Klicken Sie ok, sobald der "Ordnerpfad" und "Ordnername" definiert wurde und nochmals OK, um die Einstellungen zu speichern und das Fenster zu schließen.


**Start der Virtuellen Maschine**

Starten Sie nun die VM durch Klicken von Start (grüner Pfeilbutton).

Fügen Sie ihren Benutzer sobald das OSGeo System startet zur vboxsf Gruppe hinzu, so dass auf die gemeinsamen Ordner zugegriffen werden kann. Öffnen Sie dazu ein Befehlsfenster:

``user@osgeolive:~$ sudo usermod -a -G vboxsf user``

Im oberen Beispiel wurde ein gemeinsamer Ordner auf dem Gastrechner mit Namen "GIS" in den VM Einstellungen definiert. Der gemeinsame Ordner wird im Dateisystem unter /media/sf_GIS/ auftauchen. Um das Verzeichnis in das Home-Verzeichnis zu leiten, geben Sie Folgendes im Befehlsfenster ein:

``user@osgeolive:~$ mkdir GIS``

``user@osgeolive:~$ sudo mount -t vboxsf -o uid=user,rw GIS /home/user/GIS``

Nun sind Dateien in diesem Verzeichnis auf ihrem Rechner auch in der VM im "GIS"-Verzeichnis im Home-Verzeichnis des Benutzers user verfügbar.

Weiterführende Links:
--------------------------------------------------------------------------------
 * OSGeo Wiki: 
        `Andere Möglichkeiten, um eine Virtuelle Maschine zu erzeugen <http://wiki.osgeo.org/wiki/Live_GIS_Virtual_Machine>`_

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

