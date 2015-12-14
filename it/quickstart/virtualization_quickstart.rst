:Author: OSGeo-Live
:Author: Micha Silver
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

********************************************************************************
Guida rapida per eseguire OSGeo-Live in un macchina virtuale
********************************************************************************

Questa guida rapida descrive una via per eseguire OSGeo-Live con una macchina virtuale VirtualBox.
Per altri metodi, seguire i link dalla seguente sezione "Vedi anche".

Vantaggi della macchina virtuale
--------------------------------------------------------------------------------

* La velocità di risposta di una VM è molto più veloce di un DVD, e tipicalmente comparabile con 
  quella installata sulla macchina fisica.

* Tutti i cambiamenti di configurazione, aggiornamenti di software, e file salvati sono permanenti,
  come in un computer "regulare". Perciò

 * Potete personalizzare e aggiornare il sistema
 * Potete salvare il vostro lavoro nella VM
 * Potete installare nuovo software
 
* Potete fare i backup della vostra macchina virtuale.

Requisiti di sistema
--------------------------------------------------------------------------------

* RAM: al minimo 2 GB. Il sistema Lubuntu gira bene anche solo 1 GB di RAM, e dovete lasciare altrettanta 
  memoria per la macchina che esegue la virtualizzazione. Perciò un totale di 2 GB sarà necessario per smooth operation.
* Spare Hard Disk Space: Il file del disco virtuale (vmdk) da:  `live.osgeo.org <http://live.osgeo.org/en/download.html>`_
  decompresso occupa circa 10 GB. Inoltre vorrete più spazio per permettervi di lavorare con la macchina virtuale.
  Perciò 20 GB è il valore minimo raccomandato.
* CPU: Tutte le CPU funzionano, ma un processore che supporta "Virtualization Technology" sarà più veloce.
  Potete controllare la CPU del vostro PC `qui <http://www.intel.com/support/processors/sb/cs-030729.htm>`_.

La maggior parte delle macchine prodotte negli ultimi 4-5 anni dovrebbero avere questi requisiti.

Come
--------------------------------------------------------------------------------

**Scaricamento**

Scarica `Virtual Box <http://www.virtualbox.org/>`_  per la vostra piattaforma, e installate il software. 
Su windows eseguite l'installer, o su i sistemi Ubuntu-like lanciate il seguente comando:

  ``apt-get install virtualbox-ose``

Inolte scaricatel il file del disco virtuale (vmdk) da `live.osgeo.org <http://live.osgeo.org/en/download.html>`_
. Cliccate sul bottone "Download virtual machine". Quindi decomprimete il file scaricato (usando `7zip <http://www.7-zip.org>`_ ).


**Creare una macchina virtuale**

Avviate VirtualBox e cliccate sul bottone New per creare una nuova VM, e quindi Next.

  .. image:: ../../images/screenshots/800x600/virtualbox.png
         :scale: 50 %

Inserite un nome tipo OSGeo-Live, scegliete Linux come "sistema operativo", e Ubuntu come "Versione".

  .. image:: ../../images/screenshots/800x600/virtualbox_select_name.png
         :scale: 70 %

Nello screen successivo impostate la memoria a 1024 MB (o più se il vostro computer ha più di 4GB).

  .. image:: ../../images/screenshots/800x600/vmdk_memory.jpg
              :scale: 65 %

Continuate e nella finestra successiva scegliete "Usare un esistente hard disk". Ora cliccate sul bottone 
(l'icona di una cartella) per navigare fino dove avete salvato il file osgeo-live-vm-6.0.vmdk. Selezionate questo
file, premente Next e Create.

  .. image:: ../../images/screenshots/800x600/vmdk_disk.jpg
                   :scale: 65 %

Quando la VM è creata, cliccate sul bottone Impostazioni. Nella sezione "Generali", spostatevi nella scheda "Avanzati",
e cliccate su seleziona "Mostra in cima allo schermo" per il Mini toolbar.

  .. image:: ../../images/screenshots/800x600/vmdk_general_advanced.jpg
                   :scale: 65 %

Andate nella sezione "Display" e aumentate la memoria video a 32 o 64 MB.

  .. image:: ../../images/screenshots/800x600/vmdk_display.jpg
                   :scale: 65 %

Inoltre, spostatevi nella sezione "Shared Folders", e cliccate "Add folder" (icona verde "+" sulla destra)
per trovare la directory sul vostro pc che volete condividere con la VM.

 .. image:: ../../images/screenshots/800x600/vmdk_shared_folders.jpg
                      :scale: 65 %

Una volta che "Folder path" e "Folder name" sono definiti, cliccate OK, e di nuovo OK per finire e chiudere
la finestra delle impostazioni.


**Eseguite la macchina virtuale**

Ora avviate la VM cliccando sul bottone Start (freccia verde).

Una volta che il sistema OSGeo è avviato, avete l'opzione di aggiungere i VirtualBox "Guest Additions" per 
migliorare le performance video, e abilitare l'opzione delle cartelle condivise definite sopra. L'installazione
dei guest addition sono fornite come un file ISO insieme con il software VirtualBox da Oracle, e non sono licenziati
come Software Libero e Open Source. Questo ISO è montato con la VM come CD, e l'installazione è eseguita da li.
Di seguito quello che va fatto:

Nella finestra di VirtualBox, aprite il menu :menuselection:`Devices` e cliccate :menuselection:`Install Guest Additions`.
Questo monterà i Guest Additions come CD drive nella vostra OSGeo Live VM.

  .. image:: ../../images/screenshots/800x600/vmdk_guest_additions.jpg
                        :scale: 80 %

Quando la cartella del CD appare, aprite un terminale ed eseguite i seguenti comandi:

``user@osgeolive:~$ su apt-get install build-essential linux-headers-generic``

``user@osgeolive:~$ cd /media/VBOXADDITIONS_4.1.18_78361/``

``user@osgeolive:/media/VBOXADDITIONS_4.1.18_78361$ sudo ./VBoxLinuxAdditions.run``

Questo si completerà do qualche momento. Riavviate la vostra VM, e ora sarete in grado di eseguire
nella modalità a tutto schermo, e montare le vostre cartelle condivise. Nell'esempio sopra, è stato 
definito un percorso Shared Folder nel vostro computer e chiamato "GIS" nelle impostazioni della VM.
Per montarlo nella VM, aprite un terminale ed eseguite:

``user@osgeolive:~$ mkdir GIS``

``user@osgeolive:~$ sudo mount -t vboxsf -o uid=user,rw GIS /home/user/GIS``

Ora i file nel vostro pc nella cartella scelta saranno anche disponibili nella VM nella cartella "GIS" 
nella directory home dell'utente.

Vedi anche:
--------------------------------------------------------------------------------
 * OSGeo wiki pages: 
        `Altre modi per creare una macchina virtuale <http://wiki.osgeo.org/wiki/Live_GIS_Virtual_Machine>`_

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`
