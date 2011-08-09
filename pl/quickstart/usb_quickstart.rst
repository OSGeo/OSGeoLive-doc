
:Author: OSGeo-Live
:Author: Cameron Shorter
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _usb-quickstart:
 
************************************************
Tworzenie rozruchowego PenDrive USB z OSGeo-Live
************************************************

Poniżej opisujemy jak utworzyć bootowalny PenDrive USB z OSGeo-Live. Uruchamianie z PenDrive jest szybsze niż z DVD, poza tym napęd ten może być tak skonfigurowany, aby
przechowywać dane pomiędzy sesjami.

Dopiero niedawno zaczęliśmy testować instalatory napędu USB z OSGeo-Live 4.0. Ponieważ
otrzymaliśmy szeroki pozytywny oddźwięk, testowanie nie było przeprowadzone na szeroką skalę, jednak kilka osób zgłosiło problem z uruchomieniem OSGeo-Live z napędu USB.

Wymagania
---------

* 4 GB PenDrive USB dla OSGeo-Live-Mini
* 8 GB PenDrive USB dla OSGeo-Live
* OSGeo-Live DVD lub obraz ISO (pobrany z: http://live.osgeo.org/download.html)

Tworzenie rozruchowego PenDrive USB na Ubuntu
---------------------------------------------

Wsuń PenDrive do napędu USB komputera.

Jeśli używasz DVD, włóż płytę DVD do napędu DVD.

  .. image:: ../../images/screenshots/800x600/usb_select.png
    :scale: 70 %

Wybierz :menuselection:`System --> Administration --> Startup Disk Creator`

  .. image:: ../../images/screenshots/800x600/usb_set_params.png
    :scale: 70 %

Wybierz CD Drive lub ISO Image.

Wskaż PenDrive USB.

Wybierz :guilabel:`Make Startup Disk`

  .. image:: ../../images/screenshots/800x600/usb_installing.png
    :scale: 70 %

Poczekaj około 20 minut na stworzenie PenDrive USB.

Tworzenie rozruchowego PenDrive USB na Windows
----------------------------------------------

Wsuń PenDrive do napędu USB komputera.

Pobierz i uruchom Universal USB Installer z: http://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3/

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_licence.gif

Zaakceptuj postanowienia licencji.

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_selection.gif

Krok 1: Distrybucja: Wybierz dystrybucję xubuntu i386, która jest użyta w obrazie
OSGeo-Live (dla osgeo-live-4.0, wybierz xubuntu 10.04 Desktop i386).

Krok 2: Wybierz ostatni obraz ISO OSGeo-Live, który został pobrany na komputer. Uwaga: Trzeba ręcznie wprowadzić ścieżkę do pliku ISO, ponieważ przycisk :guilabel:`Browse` znajduje tylko pliki ISO xubuntu.

Krok 3: Wybierz swój PenDrive USB.

Krok 4: Wybierz "Persistence" jeśli chcesz zapamiętać stan pomiędzy sesjami.

Wybierz :guilabel:`Create`

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_installing.gif

Poczekaj około 20 minut na stworzenie PenDrive USB.

Ustaw kolejność bootowania w BIOS-ie:
-------------------------------------

Większość komputerów nie jest domyślnie ustawiona na uruchomienie systemu z PenDrive USB.

Aby to osiągnąć, zrestartuj komputer i naciśnij odpowiendni klawisz,
aby dostać się do BIOS-u (zwykle <Delete> lub <Klawisz funkcyjny> lub podobny).

Ustaw startowanie z urządzenia USB.

Zauważ, że dla niektórych komputerów urządzenie USB musi znajdować się w napędzie, aby można było je wskazać.

Zauważ też, że urządzenie USB jest zwykle listowane za twardymi dyskami, a nie urządzeniami mobilnymi. 

Uruchomienie:
-------------

Uruchom jak w: :doc:`osgeolive_quickstart`

Znane problemy:
---------------

* Komputery Mac nie wystartują z PenDrive USB, należy tu użyć LiveDVD. 

Zobacz także:
-------------

 * :doc:`osgeolive_quickstart`
 * :doc:`virtualbox_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * Jeśli napotkasz problemy, zgłoś je na tej stronie wiki: http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB oraz liście dyskusyjnej: http://lists.osgeo.org/mailman/listinfo/live-demo
 * Inne opcje bootowania z USB znajdziesz na http://pendrivelinux.com 
