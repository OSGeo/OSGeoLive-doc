:Author: OSGeo-Live
:Author: Alex Mandel, Cameron Shorter
:Translator: Milena Nowotarska, OSGeo
:Reviewer: Milena Nowotarska, OSGeo
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _usb-quickstart-pl:
 
********************************************************************************
Tworzenie rozruchowego PenDrive USB z OSGeo-Live
********************************************************************************

Poniżej opisujemy jak utworzyć bootowalny PenDrive USB z OSGeo-Live. Uruchamianie z PenDrive jest szybsze niż z DVD, poza tym napęd ten może być tak skonfigurowany, aby
przechowywać dane pomiędzy sesjami.

Odkryliśmy wiele tricków związanych z tworzeniem instalatora napędu USB. Udokumentowaliśmy znalezione problemy, ale zapewne jest ich więcej. Najświeższe wskazówki znajdziesz tutaj: http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB

Wymagania
--------------------------------------------------------------------------------

* PenDrive USB (conajmniej 4GB, 8GB jest zalecane).
* OSGeo-Live obraz ISO (pobrany z: http://live.osgeo.org/pl/download.html) lub przekonwertowany z DVD.

 * Dla PenDrive 4 GB USB, użyj ISO osgeo-live-mini (bez instalatorów Windows i Mac)
 * Dla PenDrive 8 GB USB, użyj ISO osgeo-live-mini lub osgeo-live ISO (z instalatorami Windows i Mac)


Tworzenie rozruchowego PenDrive USB na Ubuntu
--------------------------------------------------------------------------------

(This is the recommended process for creating a USB. It is applicable to Ubuntu and Ubuntu variants such as Lubuntu and OSGeo-Live.)

.. note::
   The version of Ubuntu you are running, needs to be the same or newer than the version of Lubuntu being installed onto your USB.  If installing OSGeo-Live 6.0 onto a USB, then you will need to be running Ubuntu 12.04 or newer.

`Download <http://live.osgeo.org/en/download.html>`_ osgeo-live or osgeo-live-mini to your computer's hard drive. 

Boot your computer into a recent Ubuntu/Xbuntu distribution. You can do this by running from an OSGeo-Live DVD, as explained in :doc:`osgeolive_quickstart`.

Wsuń PenDrive do napędu USB komputera.
  .. image:: /images/projects/usb/usb_select.png
    :scale: 70 %

Wybierz :menuselection:`Applications --> System --> Startup Disk Creator`, lub wyszukaj `Startup Disk Creator` z Unity desktop.

  .. image:: /images/projects/usb/usb_set_params.png
    :scale: 70 %
	
Wybierz pobrany obraz ISO osgeo-live lub osgeo-live-mini.
Wskaż PenDrive USB. Jeśli masz więcej miejsca, możesz dopasować suwakiem dodatkowe miejsce na USB (zalecane).

Wybierz :guilabel:`Make Startup Disk`

  .. image:: /images/projects/usb/usb_installing.png
    :scale: 70 %

Poczekaj około 20 minut na stworzenie PenDrive USB.


Bootowanie z napędu USB:
--------------------------------------------------------------------------------

#. Zacznij od wyłączenia komputera.
#. Wsuń USB drive do portu USB.
#. Włącz komputer i wybierz uruchomienie z USB:

   * Większość komputerów nie jest domyślnie ustawiona na uruchomienie systemu z PenDrive USB
   * Podczas bootowania zwróć uwagę na informację pozwalającą dostać się do menu bootowania (zwykle należy wcisnąć F12)
   * If your computer does not have a boot menu, then boot into your system BIOS. The button to enter BIOS varies by brand and model of computer. If you can't figure out yours try this website that lists many BIOS hotkeys. http://www.mydigitallife.info/comprehensive-list-of-how-key-to-press-to-access-bios-for-various-oem-and-computer-systems/

#. Ustaw startowanie z urządzenia USB.

   * Zauważ, że dla niektórych komputerów urządzenie USB musi znajdować się w napędzie, aby można było je wskazać.
   * Zauważ też, że urządzenie USB jest zwykle listowane za twardymi dyskami, a nie urządzeniami mobilnymi. 
   * `Wideo <http://www.youtube.com/watch?v=eQBdVO-n6Mg>`_ demonstruje bootowanie z USB.
   
Uruchomienie:
--------------------------------------------------------------------------------

Uruchom jak w: :doc:`osgeolive_quickstart`

Zobacz także:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`virtualization_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * Jeśli napotkasz problemy, zgłoś je na tej stronie wiki: http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB oraz liście dyskusyjnej: http://lists.osgeo.org/mailman/listinfo/live-demo
 * Inne opcje bootowania z USB znajdziesz na http://pendrivelinux.com 
