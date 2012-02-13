:Author: OSGeo-Live
:Author: Micha Silver
:Author: Frank Gasdorf
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _vmware-quickstart-de:
    
********************************************************************************
OSGeo-Live Quickstart für VMWare Player
********************************************************************************
OSGeo-Live kann auf einem Host-Rechner installiert und als "Gast"-Betriebssystem gestartet werden. Der Host kann sowohl Windows als auch Linux sein. Hierfür erforderlich ist eine installierte Software, wie zum Beispiel VM Ware Player, um die virtuelle Maschine (VM) starten zu können. Folgend sind die Schritte dokumentiert, um die OSGeo-Live als VM aufzusetzen.

================================================================================
Warum die OSGeo-Live als VM laufen lassen?
================================================================================
Wird OSGeo-Live als VM verwendet, besteht für den Anwender die Möglichkeit, die Arbeiten abzuspeichern, das Live-System zu aktualisieren oder weitere Software zu installiern. Hinzu kommt, dass der virtuelle Computer besser auf User-Interaktion anspricht, als wenn OSGeo-Lie von der DVD gestartet wird. Die OSGeo-Live VM erzeugt eine voll funktionsfähige Computer-Umgebung, im Gegensatz zur LiveDVD werden alle Dateien und Daten sowie Einstellungen gespeichert und sind nach dem Neustart weiterhin verfügbar. Aufgrund der Platform ist es nicht nur möglich, OSGeo-Live für Präsentationen und Schulungen zu nutzen, sondern wirklich in GIS-Welt einzudringen und zu arbeiten.

================================================================================
Anforderungen
================================================================================

Hardware
----------------
Der Host-Computer sollte mindestens 2GB Arbeitsspeicher haban, wovon 1GB von der VM genutzt werden können. Auch hier gilt, je mehr desto besser, was die Performance entsprechend verbessert. Sie können die Größe des Speichers später noch anpassen.
Den freien Festplattenspeicher betreffend, sollten mindestens 25GB vorhanden sein. Steht mehr zur Verfügung, können Sie in der VM mehr für Ihre Arbeit verwenden.
Ebenso sollte die CPU des Host-Systems VM's unterstützen (die meisten Computer der letzten 5 Jahre wurden mit VT-Virtualization Technology ausgeliefert).

Software
----------------
Laden Sie die VM Version von OSGeo-Live herunter. Es wird 7 ZIP benötigt, um das Archib zu entpacken. Natürlich wird auch der VM Ware Player benötigt. Berücksichtigen Sie, dass der VM Ware Player nicht OpenSource ist, auch wenn er kostenlos heruntergeladen werden kann. Darüber hinaus ist eine Registrierung erforderlich sowie eine Zustimmung zu den Lizenzbedingungen, um die Software herunterladen und nutzen zu können.

`OSGeo-Live VM <http://download.osgeo.org/livedvd/release/5.5/osgeo-live-vm-5.5.7z>`_

`7 ZIP Download Seite <http://www.7-zip.org/download.html>`_

`VMWare Player Registrierung & Download: <https://www.vmware.com/tryvmware/?p=player&lp=1>`_


Entpacken Sie das Zip-Archivs `osgeo-live-vm` mit folgendem Kommando

::

        7z e osgeo-live-vm-5.5.7z

Oder verwenden Sie das 7 ZIP Programm mit Dialogunterstützung. Installieren Sie ebenso die VMWare Player Software.

================================================================================
Einrichten der VM
================================================================================
Um die OSGeo-Live VM nutzen zu können, ist es erforderlich, eine Konfiguration **vmx** zu erstellen. Am einfachsten geht dies über folgenden Link:

`EasyVMX Webseite: <http://www.easyvmx.com/>`_

Klicken Sie auf die easyvmx Schaltfläche und geben Sie folgende Einstellungen bei den entsrechenden Eingabefeldern an:
        - Virtual Machine Name: osgeolive-5.5 (Verwenden Sie den Namen der vmdk Datei)
        - Select GuestOS: Ubuntu
        - Memory Size: 1024 MB (mindestens)
        - Virtual Machine Description: OSGeo-Live 5.5
        - Network Interface Card: (Standardeinstellungen belassen)
        - Hardisk Drives: Disk#1 Disk Size 20GB (mindestens) und aktivieren Sie SCSI
        - Sound and IO: alle Optionen deaktivieren

.. image:: ../../images/screenshots/800x600/vmware_easyvmx_form.png
        :scale: 75


.. image:: ../../images/screenshots/800x600/vmware_easyvmx_disk.png
        :scale: 75

Klicken Sie auf die Schaltfläche "Create Experimental Virtual Machine". Es wird eine formatierte **vmx** Datei von der Webseite bereitgestellt, die die oben eingegebenen Einstellungen beinhaltet. Die Date ist in dem Verzeichnes Ihres Computers abzulegen, wo zuvor die die OSGeo vmdk Datei aus dem ZIP Archiv entpackt wurde. Die in der folgenden Ansicht zu sehenden Zeilen, beginnend ab ``#!/usr/bin/vmplayer`` bis ``# END OF EasyVMX! CONFIG`` sind zu kopieren und in eine neue Datei `osgeolive-5.5.vmx` einzufügen. 

.. image:: ../../images/screenshots/800x600/vmware_easyvmx_output.png
        :scale: 75

Der Dateiname (ohne der Extension vmx) sollte dem der vmdk Datei entsprechen. Bitte prüfen Sie sorgfältig die Datei, besonders die Zeile für die SCSI Definition ``scsi0:0.fileName =``. Stellen Sie sicher, dass der referenzierte Dateiname dem der vmdk Datei entspricht. Speichern Sie anschließend die neue Datei in das gleiche Verzeichnis der vmdk Datei.

Sie können nun den VMWare Player starten und im Menü über **Open a Virtual Machine** die vmdk Datei auswählen, die im Verzeichnis zu finden ist, wo zuvor die vmx Datei gespeichert worden ist. Die neue VM sollte nun in der Liste des VMWare Players erscheinen. Wählen Sie **Play Virtual Machine** und die VM sollte booten.

.. image:: ../../images/screenshots/800x600/vmware_open.png
        :scale: 90
.. image:: ../../images/screenshots/800x600/vmware_play.png
        :scale: 90

================================================================================
Wenn die VM läuft
================================================================================
Als ersten Schritt sollten Sie die VMWare Tools installieren. Sobald diese installiert worden sind, können Sie die Display-Einstellungen anpassen und optimieren. Ebenso ist es dann möglich, Verzeichnisse des Host-Systems gemeinsam über Freigaben, sogenannten **shared folders** zu nutzen. Die Installation der VMWare Tools erfolget über folgendes Kommando in einem Terminal:

::

        sudo apt-get install open-vm-dkms open-vm-toolbox


Im Fenster des VMWare Players wählen Sie :menuselection:`Virtual Machine --> Virtual Machine Settings` wechseln Sie in den Optionen Tab und klicken Sie anschließend auf die Shared Folder Einstellungen. Hier können Sie mit "+" neue Verzeichnisse hinzufügen. Für den Fall, dass Sie unter Windows das Verzeichnis `C:\\Users\\your_name\\Downloads` nutzen wollen, navigieren Sie zum entsprechenden Verzeichnis und geben Sie der Freigabe den Namen "Downloads". Anschließend die Konfiguration übernehmen und speichern, fertig.

.. image:: ../../images/screenshots/800x600/vmware_shared.png 
        :scale: 80

Im Terminal der VM sollten noch zwei Kommandos aufgerufen werden, um diese Freigabe nutzen zu können:
::

        sudo mkdir /mnt/Downloads
        sudo mount -t vmhgfs .host:/Downloads /mnt/Downloads

Viel Spaß ...
