:Author: OSGeo-Live
:Author: Cameron Shorter
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _virtualbox-quickstart-de:
 
********************************************************************************
OSGeo-Live Quickstart für Virtual Box
********************************************************************************

An dieser Stelle beschreiben wir eine Methode, um eine OSGeo-Live DVD oder ein ISO in `VirtualBox <http://www.virtualbox.org/>`_ 
laufen zu lassen.

VirtualBox ist eine Open Source Virtualisierungsumgebung, die von vielen OSGeo-Live Entwicklern und Testern verwendet wird.

Systemvoraussetzungen
--------------------------------------------------------------------------------

* RAM: 1 GB, besser 2 GB wenn Sie eine weitere Anwendung laufen lassen wollen
* Freier Speicher auf der Festplatte:

 * |osgeo-live-hdspace|, wenn von dem ISO gestartet wird
 * 17 GB, wenn das ISO lokal installiert werden soll

Erstellen der Virtualisierungsumgebung
--------------------------------------------------------------------------------

Herunterladen und Installieren von `Virtual Box <http://www.virtualbox.org/>`_. Unter Linux mache Folgendes:

  ``apt-get install virtualbox-ose``

Öffne Virtual Box 

  .. image:: ../../images/screenshots/800x600/virtualbox.png
    :scale: 70 %

Wähle :guilabel:`New`, um eine neue Virtualisierungsumgebung zu erstellen.

  .. image:: ../../images/screenshots/800x600/virtualbox_create_vm.png
    :scale: 70 %

Wähle :guilabel:`Next`

  .. image:: ../../images/screenshots/800x600/virtualbox_select_name.png
    :scale: 70 %

Gebe einen Namen für das Image an und wähle "Linux", "Ubuntu".

  .. image:: ../../images/screenshots/800x600/virtualbox_memory.png
    :scale: 70 %

Setze den Arbeitsspeicher auf mindestens 768 MB.

  .. image:: ../../images/screenshots/800x600/virtualbox_no_hard_disk.png
    :scale: 70 %

Einfache Installation: Deaktivieren der Option "Boot Hard Disk", die 
Virtualisierungsumgebung  wird immer von der DVD booten.

Wenn Sie eine dauerhafte Virtualisierungsumgebung wünschen, um Einstellungen 
zu speichern oder die Bildschirmauflösung zu optimieren, dann fügen Sie auch 
die hard disk hinzu und installieren später.

  .. image:: ../../images/screenshots/800x600/virtualbox_warning_no_hard_disk.png
    :scale: 70 %

Wähle :guilabel:`Continue`

  .. image:: ../../images/screenshots/800x600/virtualbox_final_check.png
    :scale: 70 %

Wähle :guilabel:`Finish`

  .. image:: ../../images/screenshots/800x600/virtualbox_select_settings.png
    :scale: 70 %

Das Image ist nun erstellt, wir können die Simulation starten, mit der OSGeo-Live 
DVD im DVD Laufwerk.

Klicken Sie mit der rechten Maustaste auf "osgeo-live" Image und wählen Sie :guilabel:`Settings`.

  .. image:: ../../images/screenshots/800x600/virtualbox_set_cd.png
    :scale: 70 %

Wähle "Storage", CD/DVD Device, ...

  .. image:: ../../images/screenshots/800x600/virtualbox_add_dvd.png
    :scale: 70 %

Wählen Sie das OSGeo-Live Image.

  .. image:: ../../images/screenshots/800x600/virtualbox_start_vm.png
    :scale: 70 %

Jetzt können Sie die Virtualisierungsumgebung starten, wie unter :doc:`osgeolive_quickstart`

Permanente Virtualisierungsumgebung erstellen
--------------------------------------------------------------------------------

Wenn Sie die OSGeo-Live DVD häufig benutzen wollen, wollen Sie wahrscheinlich eine 
permanente Virtualisierungsumgebung erstellen, beschrieben unter: :doc:`osgeolive_install_quickstart`.

Bildschirmauflösung erhöhen
--------------------------------------------------------------------------------

Sie können die 'virtual boots tools' hinzufügen, die eine höhere Bildschirmauflösung, 
kopieren und einfügen zwischen Gast und Host, Graphikbeschelunigung u.v.m. ermöglichen.

Stellen Sie sicher, dass der PC mit dem Internet verbunden ist.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_menu.png
    :scale: 70 %

Wählen Sie die "synaptic package manager" Anwendung.

Das Passwort ist = "user"

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_select_tools.png
    :scale: 70 %

Markieren Sie "virtualbox-ose-guest-utils" für die Installation.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_apply.png
    :scale: 70 %

Übernehmen Sie die Änderungen.

Rebooten Die die Virtualisierungsumgebung. Danach sollten die Bildschirmeinstellungen 
denen ihres Hosts entsprechen. Sie können dies ändern durch:

Selektieren von: :menuselection:`Applications --> Settings --> Xfce 4 Settings Manager --> Display`

Weiterführende Links
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

