:Author: OSGeo-Live
:Author: Cameron Shorter
:Version: osgeo-live4.0
:License: Creative Commons

.. _virtualbox-quickstart:
 
**************************************
Wprowadzenie do OSGeo-Live Virtual Box
**************************************

Tu opisaliśmy metodę uruchomienia OSGeo-Live DVD lub ISO na `VirtualBox <http://www.virtualbox.org/>`_ wirtualnej maszynie.

VirtualBox jest wirtualną maszyną na licencji Open Source, używaną przez wielu programistów i testerów OSGeo-Live.

Wymagania systemowe
-------------------

* RAM: 1 GB, najlepiej 2 GB, jeśli planowane jest używanie także innych programów.
* Wolne miejsce na twardym dysku: 
 * 5 GB jeśli uruchamiane z ISO
 * 17 GB jeśli instalowane lokalnie z ISO

Utwórz wirtualną maszynę
------------------------
Pobierz i zainstaluj `Virtual Box <http://www.virtualbox.org/>`_. Na systemie linux w ten sposób:

  ``apt-get install virtualbox-ose``

Otwórz Virtual Box 

  .. image:: ../../images/screenshots/800x600/virtualbox.png
    :scale: 70 %

Wybierz "New" aby utworzyć nową wirtualną maszynę.

  .. image:: ../../images/screenshots/800x600/virtualbox_create_vm.png
    :scale: 70 %

Wybierz "Next"

  .. image:: ../../images/screenshots/800x600/virtualbox_select_name.png
    :scale: 70 %

Wprowadź nazwę dla obrazu, i wybierz "Linux", "Ubuntu".

  .. image:: ../../images/screenshots/800x600/virtualbox_memory.png
    :scale: 70 %

Ustaw wielkość pamięci na co najmniej 512 MB.

  .. image:: ../../images/screenshots/800x600/virtualbox_no_hard_disk.png
    :scale: 70 %

Instalacja uproszczona: Nie zaznaczaj "Boot Hard Disk", a wirtualna maszyna zawsze uruchomi się z symulowanego DVD.

Jeśli chcesz utworzyć stałą wirtualna maszynę, która zapisuje stan między sesjami oraz ma lepsze ustawienia rozdzielczości ekranu, a także zestawy narzędzi, zaznacz "Boot Dard Disk" i zainstaluj później.

  .. image:: ../../images/screenshots/800x600/virtualbox_warning_no_hard_disk.png
    :scale: 70 %

Wybierz "Continue"

  .. image:: ../../images/screenshots/800x600/virtualbox_final_check.png
    :scale: 70 %

Wybierz "Finish"

  .. image:: ../../images/screenshots/800x600/virtualbox_select_settings.png
    :scale: 70 %

Obraz został stworzony, ale musimy teraz symulować istnienie OSGeo-Live DVD w napędzie CD.

Kliknij prawym na obrazie "osgeo-live" i wybierz "Settings".

  .. image:: ../../images/screenshots/800x600/virtualbox_set_cd.png
    :scale: 70 %

Wybierz "Storage", CD/DVD Device, ...

  .. image:: ../../images/screenshots/800x600/virtualbox_add_dvd.png
    :scale: 70 %

Dodaj obraz OSGeo-Live.

  .. image:: ../../images/screenshots/800x600/virtualbox_start_vm.png
    :scale: 70 %

Teraz możesz uruchomić wirtualną maszynę jak opisano w :doc:`osgeolive_quickstart`

Utwórz stałą wirtualną maszynę
------------------------------
Jeśli planujesz często używać wirtualnej maszyny OSGeo-Live DVD, prawdopodobnie chcesz utworzyć ją na stałe, jak w: :doc:`osgeolive_install_quickstart`.

Zwiększ rozmiar wyświetlania
----------------------------
Teraz możesz dodać wirtualne narzędzia bootowania, które wspomagają większą rozdzielczość ekranu, możliwość kopiowania i wklejania pomiędzy goszczonym systemem i hostem,  przyspieszające grafikę, i inne.

Upewnij się, że komputer ma połączenie z Internetem.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_menu.png
    :scale: 70 %

Wybierz aplikację "Synaptic Package Manager".

Wprowadź hasło = "user"

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_select_tools.png
    :scale: 70 %

Zaznacz "virtualbox-ose-guest-utils" do instalacji.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_apply.png
    :scale: 70 %

Zatwierdź zmiany.

Ponownie uruchom wirtualną maszynę, a ustawienia wyświetlania powinny być takie same jak ustawione dla gospodarza komputera. Można je zmienić w następujący sposób:

Wybierz: Applications -> Settings -> Xfce 4 Settings Manager -> Display

Zobacz również:
---------------

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

