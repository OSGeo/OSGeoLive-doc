:Author: activityworkshop
:Version: osgeo-live4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Traduttore: Luca Delucchi

.. image:: /images/project_logos/logo-prune.png
  :alt: project logo
  :align: right
  :target: http://gpsprune.activityworkshop.net/

********************************************************************************
Guida rapida su GpsPrune 
********************************************************************************

Esecuzione
================================================================================

Per eseguire GpsPrune sul live DVD, selezionare l'icona "GpsPrune" nel menu Navigation e Maps.
Per lavorare con i dati, potrete o caricare una traccia registrate da un file, caricare dati da
un ricevitore GPS usando *Gpsbabel*, ottenere coordinate da Wikipedia, o inserire le vostre 
coordinate a mano. La via più semplice per iniziare è di caricare qualsiasi file gpx, kml o kmz
usando il comando dal menu :menuselection:`File --> Open file` e selezionando il file che volete
caricare. Un file GPX adatto contenente una coppia di tracce può essere trovato sul 
disco in :file:`~/data/vector/R/test_trk2.gpx`.

Ore dovreste vedere la vostra traccia rappresentata in blu, e i waypoints (se presenti) marcati
con il loro nome. Se avete una connessione internet, è raccomandato di attivare le mappe cliccando
l'icona del globo nella parte alta del visualizzatore principale della mappa, o con l'opzione del menu
:menuselection:`View --> Show Map`.

Ora potete muovere la mappa con il mouse, e zoomare in e out per vedere meglio i dettagli.
Cliccando un punto vedrete i dettagli includendo altitudine e orario se disponibili.
Sotto il visualizzatore principale della mappa c'è il grafico delle altezze, che mostrerà il 
profilo della traccia se contiene la altitudine. Cliccando su questo display potrete selezionare il 
punto corrispondente.

Personalizzare il display
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
È possibile cambiare la mappa dal menu opzioni :menuselection:`Settings --> Set map background`.
Potete selezionare una delle mappe già definite, o potete aggiungere il vostro server personalizzato
se conoscete l'URL.  Potete anche aggiungere le mappe di Cloudmade map se conoscete il numero dello stile.

I colori di default possono essere cambiati dall'opzione del menu :menuselection:`Settings --> Set colours`.

Salvate le vostre impostazioni dall'opzione del menu :menuselection:`Settings --> Save settings`, 
verranno ricordate per la prossima volta che eseguirete GpsPrune.  Comunque, è da sapere che usando questo
live DVD, tutti i file che sono salvati nel file system sono persi quando spegnete il computer.

Scaricare mappe
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Per salvare le tile scaricare nel disco, potete selezionare dall'opzione del menu 
:menuselection:`Settings --> Save maps to disk` e selezionate la directory dove salvare le immagini.
Questo aiuta nel velocizzare la visualizzazione poichè non bisogna scaricare le immagini di nuovo.
Questo ha più senso in un sistema installato piuttosto che su un live DVD.

Usare GpsPrune su altri sistemi
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Dopo aver provato GpsPrune su questo live DVD, potreste volerlo usare in un altro sistema, potrebbe
essere un altro sistema Linux o Mac OSX o Windows. Alcune distribuzione Linux includono GpsPrune nei loro
repository normali di software (basta cercare "Prune" o "GpsPrune"), o potete scaricare l'ultima 
versione dalla home page.

Non necessita di essere installato, ma richiedere che una java runtime sia installata, una versione
1.5 o più alta. Potete estendere le funzionalità di GpsPrune installando altri free software, come
*Gpsbabel*, *Gnuplot*, *Exiftool* or *Java3d*.

Ulteriori letture
================================================================================

* GpsPrune home page: http://gpsprune.activityworkshop.net/
* Screenshots: http://gpsprune.activityworkshop.net/screenshots.html
* How-to e istruzioni: http://gpsprune.activityworkshop.net/how-tos.html

