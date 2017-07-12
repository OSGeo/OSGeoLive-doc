:Author: Henry Addo
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-ushahidi.png
  :scale: 100 %
  :alt: project logo
  :align: right 

Guida rapida su Ushahidi
================================================================================

Questa guida descrive come:

* Configurare Ushahidi e eseguirlo

Configurare Ushahidi e eseguirlo
--------------------------------------------------------------------------------

1. Avviare Ushahidi tramite l'icona sul desktop o il menu che aprirà il browser web
   e vi porterà alla pagina di Installazione. Un sito Ushahidi è molto semplice da
   impostare

.. image:: /images/screenshots/1024x768/ushahidi-drc-screenshot.png
  :scale: 50 %
  :alt: ushahidi desktop icons
  :align: center 

2. Scegli **"Basic Installation"**, **"Let's get started"**, e visualizzerà alcuni
   dettagli. Il nome del database è **"ushahidi"**, il nome dell'utent del database
   è **"user"**, la password è anche **"user"**. Il database host è **"localhost"**. 
   Quindi continuate. Nella pagina delle impostazioni *General* scegliere un nome per 
   il sito (title) per il vostro sito web come **OSGeo demo** e se volete anche un valore
   come sottotitolo. L'indirizzo email che vi è chiesto è usato per ricevere le
   sottomissioni automatiche che saranno processate e aggiunte al database e mappe,
   e inviare reports automatici. Per ora impostatela a qualcosa di simile a
   **"ushahidi@localhost.localdomain"** o **"ushahidi@example.org"** e **"Continue"**.

.. note::

   Se Ushahidi riporta **"Oops! We couldn't make a connection to the database 
   server with the credentials given. Please make sure they are correct."**. Questo
   significa che lo script di installazione non può collegarsi con le credenziali
   al database. Questo può essere fatto manualmente prima di continuare con l'installazione
   I comandi seguenti assumono che siate loggati nel sistema come root.

   **"mysql -uroot -p"** -- Questo può essere digitato per inserire la password di 
   root nel server mysql. Inserire la password di root se ce n'è una, altrimente dare invio.
   
   Quindi inserite il comando di segueti per creare un nuovo utente.
   **"CREATE DATABASE ushahidi;"** -- Questo dovrebbe creare un database denominato ushahidi
   
   Seguito da questo comando.
   
   **"GRANT ALL PRIVILEGES ON ushahidi.* TO 'user'@'localhost' IDENTIFIED BY 'user';"**
   
   -- Questo dovrebbe creare un utente **"user"** e una password **"user"**

   Ora tornato all'installer web di Ushahidi al passaggio 2 e riempite i dettagli.

.. image:: /images/screenshots/1024x768/ushahidi_installer_mode_screenshot.png
  :scale: 50 %
  :alt: mapguide desktop icons
  :align: center

3. Dopo questo è tutto fatto e questo dovrebbe dirvi che l'installazione è andata
   a buon fine e ritorna un collegamento a 'View your website'.

.. image:: /images/screenshots/1024x768/ushahidi_installer_finished_screenshot.png
  :scale: 50%
  :alt: ushahidi installer finishes
  :align: center
 
4. Per fare cambiamenti nell'`area di amministrazione <http://localhost/ushahidi/admin>`_, 
   il nome utente per il login è **"admin"** e la password è anche **"admin"**. 
   Per esempio nella pagina di configurazione potrete selezionare **"Impostazioni"**
   (top right) e quindi la scheda **"Map"**, e cambiare la **"Sorgente di Mappe"** a
   OpenStreetMaps (nessuna chiave API necessaria per OSM, siccome è Aperto :-) ).

.. image:: /images/screenshots/1024x768/ushahidi_admin_login_screenshot.png
   :scale: 50%
   :alt: ushahidi admin login
   :align: center

La pagine README per la configurazione è disponibile localmente nel file `/var/www/ushahidi/readme.html <../../ushahidi/readme.html>`_.
