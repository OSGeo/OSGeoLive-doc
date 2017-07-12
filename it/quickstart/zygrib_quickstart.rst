:Author: Hamish Bowman
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-zygrib.png
  :scale: 150 %
  :alt: project logo
  :align: right
  :target: http://www.zygrib.org

********************************************************************************
Guida rapida zyGrib 
********************************************************************************

Eseguire
================================================================================

Ottenere i dati
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Dopo aver lanciato il programma vi si presenterà una mappa del mondo.
Nessun dato delle previsioni meteo GRIB è distribuito con il disco, dovrete
scaricarne alcuni, questo richiede una connessione internet. Siccome i
dati GRIB sono spesso usati da marinai in mare aperto, sono disponibili
un vasto numero di email a bassa larghezza di banda e servizi radio-modem 
senza essere collegati a internet. i.e. while requiring some connection to the outside
world as a data source, this connection is not required at run-time unlike
many other web mapping programs.

Potete ottenere dati GRIB da molte sorgenti, ma per convenienza l'autore di
zyGrib mantiene un server per i dati. La prima cosa che viene fatta è assicurarsi
che la connessione al server sia operativa. Cliccando sul icona power plug
vicino la right hand end della barra degli strumenti, dopo qualche secondo vi 
verrà confermato se la connessione è funzionante.

Solitamente si è interessati nelle condizione meteo locali, quindi create un
box con il pulsante sinistro del mouse sul map canvas nella parte del mondo 
al quale siete interessati. Il Golfo del Messico o la parte sud dell'Africa
hanno spesso venti dinamici.
With your box drawn on the map click the zoom-to-box icon on the taskbar (the
magnifying glass with a small box underneath it), and again mark out a box
of interest with a left-click drag, but this time covering most or all of the
zoomed-in map canvas.

Ora selezionate :menuselection:`File --> Download` e selezionate gli elementi
che volete scaricare. Se avete dubbio i valori di defaults vanno bene. Quando
siete pronti cliccate sul pulsante ``Scarica file GRIB`` in basso e salvate il file
sul disco.

Se tutto ha funzionato correttamente dovreste essere in grado di vedere una mappa
delle previsione con uno slider per il tempo in basso, attualmente impostato a destra.
You can use the mouse wheel to zoom in if you like.


Cambiare vista
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Muovendo il mouse sulla mappa vedrete le esatte condizioni sotto il cursore
elencate nel pannello a sinistra.

Potete cambiare il tempo muovendo lo slider lungo la barra in basso, o da uno dei
menu a scomprarsa in alto a sinistra nella finestra.

Dal menu ``Weather map`` potete visualizzare le variabili da visuallizzare. Per esempio
selezionate :menuselection:`Weather map --> Cloud Cover` e la visualizzazione dovrebbe
cambiare.

Se scaricate i dati per il Golfo del Messico potreste essere interessati nel vedere
i dati CAPE. "CAPE" è l'acronimo per Convective Available Potential Energy al livello
del terreno. È una misura dell'instabilità atmosferica, e i valori altri 
(1000s di J/kg) indica una minaccia di temporale e/o tornado

Se scaricherete i dati di copertura delle nuvole per il sud Africa può essere più
interessante.


Creare una animazione
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Quando cliccate il tasto destro sulla maggior parte delle icone sulla barra degli
strumenti (un rocketship) una nuova finestra si aprirà e un'animazione sarà
generata. Aspettate durante l'esecuzione lungo la sequenza temporale partendo
dalla primo tempo. Quando è finito si riavvolgerà all'inizio della sequenza
temporale, e potete eseguirlo da quel punto, mettere in pausa, e riavvolgerlo
a vostro piacere. Potete anche salvare ogni frame come un immaggine o potete
codificarlo in AVI, MPEG, o GIF animato `usando altri software <http://grass.osgeo.org/wiki/Movies>`_.

Quando avete fatto cliccare sul pulsante rosso per chiuderlo.


Vedere anche
================================================================================

Il :doc:`software OpenCPN <../overview/opencpn_overview>` (anch'esso in questo
disco) ha un plugin per sovrapporre GRIB che potete provare con i vostri file GRIB
scaricati. Guardare la :doc:`guida rapida OpenCPN <../quickstart/opencpn_quickstart>`
per dettagli.
