:Author: Hamish Bowman
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-opencpn.png
  :scale: 75 %
  :alt: project logo
  :align: right
  :target: http://www.opencpn.org

********************************************************************************
Guida rapida su OpenCPN
********************************************************************************

OpenCPN è un sintetico plotter cartografico e navigatore. Come sempre, non usare
mai un software o apparecchiature elettroniche, come unico mezzo di navigazione
e tenete d'occhio fuori dalla finestra


Eseguirlo
================================================================================

Impostare la vostra carta nautica
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Prima di eseguire OpenCPN sul LiveDVD dovrete attivare i dati di esempio.
Questa è una condizione di redistribuzione delle carte nautiche libere di NOAA.
La prima volta che eseguirete OpenCPN dal menu :menuselection:`Geospatial --> Navigation and Maps`
o dall'icona sul Desktop vi sarà presentata di scegliere l'opzione per fare questa
operazione automaticamente

.. Per fare ciò manualmente, aprire un Terminale dal menu principale degli
   accessori ed eseguire :command:`opencpn_noaa_agreement.sh` dalla linea di comando.
   La password dell'utente è distribuita in un file sul desktop.

É possibile scaricare addizionali carte nautiche US da NOAA sul sito
http://www.charts.noaa.gov


Impostare il proprio GPS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Se avete un GPS connesso dovrete avviare il servizio gpsd.
Per fare ciò:

::

  sudo dpkg-reconfigure gpsd

e

::

  sudo /etc/init.d/gpsd start

Gli utenti che utilizzano GPS attraverso BlueTooth dovranno prendere maggior cura
to read up about the no-probe option.

.. no longer true? : (for this reason we have not started gpsd automatically)


* '`xgps`' è un buon programma per controllare che Gpsd veda correttamente il
  vostro GPS.


Documentazione
================================================================================

* Documentazione è disponibile dal `Help menu <../../opencpn/help_en_US.html>`_,
  o online all'indirizzo http://www.opencpn.org/ocpn/opencpn_manual

*  `Consigli su come iniziare <../../opencpn/tips.html>`_


Vedere anche
================================================================================

Attualmente i dati di previsione meteo e delle onde possono essere scaricati e sovrapporsi
alle vostre carte usando il plugin GRIB. Il :doc:`software zyGrib <../overview/zygrib_overview>`
(anch'esso sul disco) è una semplice via per scaricarle. Vedere
la :doc:`guida rapida su zyGrib <../quickstart/zygrib_quickstart>` per dettagli.
Attivare il plugin dalla scheda più a destra del menù di configurazione OpenCPN,
una nuova icona apparirà all'estremità destra della barra degli strumenti principale.
Enable the plugin from the right most tab of the OpenCPN configuration menu;
a new icon will appear at the right end of the main toolbar.

Se avete salvato il file zyGrib nella vostra directory home, andate
alla :file:`/home` e selezionate la directory del vostro ``utente`` come directory
dei dati GRIB.
Quindi cliccare sullo sfondo della cartella con il tasto destro per visualizzare i
file nascosti compresa la directory ``.zygrib`` che contiene i file GRIB scaricati.

Non c'è bisogno di file non compressi. Click on the ">" to the left of
the filename and select from the list of available forecast times.
