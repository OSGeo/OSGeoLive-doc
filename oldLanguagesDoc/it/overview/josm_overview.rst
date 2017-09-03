:Author: OSGeo-Live
:Author: Javier Sanchez, GeoNaTec
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-josm.png
  :alt: project logo
  :align: right
  :target: http://josm.openstreetmap.de

JOSM
================================================================================

Desktop Editor per dati OpenStreetMap
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

JOSM è un editor offline per dati OpenStreetMap (OSM) ricco di caratteristiche ed estensibile, scritto in Java.

Supporta il caricamento di tracce GPX a se stanti e dati da traccie GPX così come editare gli esistenti nodes (punti), ways (linee), tags per i metadati (informazioni chiave/valore) e relations (sequenze ordinate di punti e linee) dal database OSM.
Le tracce GPX, sono usualmente scaricate precedentemente da un ricevitore GPS o da altre sorgenti di dati.

Un grande numero di plugins specializzati sono stati scritti per JSOM, che sono disponibili per lo scaricamento e l'installazione

.. image:: /images/screenshots/josm/josm_inteface.png
  :scale: 55 %
  :alt: JOSM Editor.
  :align: right

Caratteristiche principale
--------------------------------------------------------------------------------

* Strumenti comuni alle interfacce Desktop GIS:

  * Barra degli strumenti personalizzabile, controlli della vista (zoom, pan. etc), stili, icone e gestione dei layers.

* Scaricamento e caricamento dei dati vettoriali OSM.

* Apre i dati locali:

  * file NMEA-0183: .nmea, .nme, .nma, .log, .txt
  * file OSM: .osm, .xlm, .osmbz2, .osmbz
  * file di cambiamenti OSM: .osc, .osc.bz2, .osc.bz, .osc.gz
  * immagini (.jpg)

* Immagini:
  
  * Visualizzazione di mappe di base da OSM, Bingsat, Lansat, MapBox satellite, MapQuest Open Aerial o qualsiasi altre sorgenti WMS.

* Stumenti di editing:

  * Nodes: fondi, unisci, separa, distribuisce, allinea in cerchio, allinea in linee, unisci nodo a via, e altri.
  * Ways: dividi, unisci, verso opposto, semplifica, unglue ways, e altri.
  * Areas: unisci aree sovrapposte, crea multipoligoni, e altri.

* Mappatura audio: gestione rilevamento tramite registrazioni audio.

* Mappatura foto: gestione rilevamento tramite immagini.
 
* Plugin: A list of specialized plugins are available for download.


Standard implementati
--------------------------------------------------------------------------------

* JOSM visualizza layer WMS, ma usa le `API OSM <http://wiki.openstreetmap.org/wiki/API_v0.6>`_ per communicare con i database OSM.


Dettagli
--------------------------------------------------------------------------------

**Siti web:** http://http://josm.openstreetmap.de/

**Licenze:** GNU General Public License (GPL) version 2. Note: JOSM plugins may use other licences.

**Versione software:** r11427

**Piattafrome Supportate:** Windows, Linux, Mac

**Interfacce API:** Java


.. Quickstart
.. --------------------------------------------------------------------------------
.. 
.. * :doc:`Quickstart documentation <../quickstart/josm_quickstart>`


