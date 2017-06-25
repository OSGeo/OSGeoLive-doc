:Author: Hamish Bowman
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-viking.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://sourceforge.net/apps/mediawiki/viking/

********************************************************************************
Guida rapida su Viking 
********************************************************************************

Eseguirlo
================================================================================

Come iniziare
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. from /usr/share/doc/viking/GETTING_STARTED

Per iniziare ad usare Viking in poco tempo, seguite le seguenti istruzioni.

1) Prendere dati dal vostro dispositivo GPS. Ci sono un paio di vie per fare ciò,
un file GPX conforme contenente una coppia di tracce può essere trovato nel disco
al file :file:`~/data/vector/R/test_trk2.gpx`.

2) Avviare Viking e usare :menuselection:`File --> Open` per aprire il file GPX.
Viking proverà a cambiare l'area di visualizzazione nel centro del layer (file)
ma alcune volte se avete waypoints e tracce che sono molto distanti potrebbe
capitare di vedere niente. In questo caso, espandete il layer (nel Pannello dei
Layers a sinistra), quindi espandete "Waypoints", trovate un waypoint e cliccate
con il testo destro e poi "Goto". Potete spostare la mappa con il tasto sinistro
o centrale del mouse e fare zoom in e out con la rotella del mouse

3) Ora aggiungte una mappa (:menuselection:`Layers --> New Map Layer`), iniziare con
*OpenStreetMap (Mapnik)* è una buona scelta visto che ha una buona copertura per la 
maggior parte del mondo. Poi scegliete una directory per la cache dove possiate archiviare
le vostre mappe scaricate, quella di default va bene. Aggiustare il livello dello
slider di opacità per cambiare il livello di trasparenza del layer della mappa e
selezionate il checkbox `Autodownload map`. Potete sempre scaricare manualmente le mappe
da :menuselection:`Tools --> Maps Download`, cliccare dove volete scaricare una mappa.
In ultimo per impostare la scala ad un livello confortabile dello zoom corrente impostate
`Zoom level` a *Use Viking Zoom Level*.

4) Potete notare che le tile sono disegnate sopra le tracce, che probabilmente
non è quello che desiderate. Guardate al Pannello dei layers a sinistra. Notate come
il layer denominato "Map" è sopra al layer TrackWaypoint che contiene i vostri dati
del GPS. Questo significa che sarà disegnato per ultimo, o sopra gli altri layers.
Selezionate il layer *Map* dalla lista e cliccate il bottone con la freccia in basso.
La traccia sarà ora rappresentata sopra la mappa.

.. TODO: some explanation of the layers, etc. is required.

.. Geocoding: available in version 1.3 and newer


