:Author: OSGeo-Live
:Author: Cameron Shorter
:Translator: Luca Delucchi
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
OSGeo-Live Introduzione per Virtual Box
********************************************************************************

Qui verrà descritto un metodo per eseguire OSGeo-Live DVD o ISO nella Macchina Virtuale `VirtualBox <http://www.virtualbox.org/>`_ .

VirtualBox è una Macchina Virtuale Open Source che è usata da molti dei sviluppatori e delle persone che testano OSGeo-Live.

Requisiti di Sistema
--------------------------------------------------------------------------------

* RAM: 1 GB, preferibilmente 2 GB se si pensa di eseguire altre applicazioni
* Spare Hard Disk Space:

 * |osgeo-live-hdspace| se eseguita dalla ISO
 * 17 GB se installata localmente da una ISO

Creare una Macchina Virtuale
--------------------------------------------------------------------------------
Scaricare e installare `Virtual Box <http://www.virtualbox.org/>`_. Su Linux eseguire le seguenti operazioni:

  ``apt-get install virtualbox-ose``

Aprire Virtual Box 

  .. image:: ../../images/screenshots/800x600/virtualbox.png
    :scale: 70 %

Selezionare :guilabel:`New` per creare una nuova Macchina Virtuale.

  .. image:: ../../images/screenshots/800x600/virtualbox_create_vm.png
    :scale: 70 %

Selezionare :guilabel:`Next`

  .. image:: ../../images/screenshots/800x600/virtualbox_select_name.png
    :scale: 70 %

Impostare un nome per l'immagine, e selezionare "Linux", "Ubuntu".

  .. image:: ../../images/screenshots/800x600/virtualbox_memory.png
    :scale: 70 %

Impostare la Memoria di base almeno a 768 MB, 1 GB è meglio se volete provare le applicazioni basate su Java.

  .. image:: ../../images/screenshots/800x600/virtualbox_no_hard_disk.png
    :scale: 70 %

Installazione semplice: Deselezionare "Boot Hard Disk", la Macchina Virtuale sarà sempre
avviata da un DVD simulato.

Se volete avere una macchina virtuale persistente, che salva lo stato
tra le sessioni e che può avere salvato un'impostazione migliore per lo schermo 
e altri strumenti, includete l'hard disk, e installate dopo.

  .. image:: ../../images/screenshots/800x600/virtualbox_warning_no_hard_disk.png
    :scale: 70 %

Selezionare :guilabel:`Continue`

  .. image:: ../../images/screenshots/800x600/virtualbox_final_check.png
    :scale: 70 %

Selezionare :guilabel:`Finish`

  .. image:: ../../images/screenshots/800x600/virtualbox_select_settings.png
    :scale: 70 %

A questo punto l'immagine è creata, ma ora bisogna simulare di avere un OSGeo-Live DVD nel dispositivo CD.

Cliccate con il tasto destro sull'immagine "osgeo-live", e selezionate :guilabel:`Settings`.

  .. image:: ../../images/screenshots/800x600/virtualbox_set_cd.png
    :scale: 70 %

Selezionare "Storage", CD/DVD Device, ...

  .. image:: ../../images/screenshots/800x600/virtualbox_add_dvd.png
    :scale: 70 %

Selezionare l'immagine OSGeo-Live.

  .. image:: ../../images/screenshots/800x600/virtualbox_start_vm.png
    :scale: 70 %

Ora potete avviare la macchina virtuale secondo :doc:`osgeolive_quickstart`

Creare una Macchina Virtuale permanente
--------------------------------------------------------------------------------
Se avete pianificato di usare intensamente OSGeo-Live DVD, si consiglia di 
creare una Macchina Virtuale permanente, secondo: :doc:`osgeolive_install_quickstart`.

Incrementare la Dimensione dello Schermo
--------------------------------------------------------------------------------
Dovrete aggiungere i virtual boots tools che supportano una risoluzione 
maggiore per lo schermo, copia e incollare tra guest e host, 
accelerazione grafica, e altro.

Siate sicuri che il vostro computer sia connesso a internet.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_menu.png
    :scale: 70 %

Selezionare il software Synaptic Package Manager.

Inserire password = "user"

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_select_tools.png
    :scale: 70 %

Selezionare "virtualbox-ose-guest-utils" per l'installazione.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_apply.png
    :scale: 70 %

Applicare i cambiamenti.

Riavviare la macchina virtuale e le impostazioni dello schermo dovrebbero essere le stesse
di quelle della macchina fisica. Questo può essere cambiato attraverso:

Selezionare: :menuselection:`Applications --> Settings --> Xfce 4 Settings Manager --> Display`

Vedere anche:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

