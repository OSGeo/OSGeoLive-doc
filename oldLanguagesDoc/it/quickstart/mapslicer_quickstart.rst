:Author: OSGeo-Live
:Author: Petr Pridal
:Author: Christopher Fleet
:Author: Angelos Tzotsos
:Translator: Margherita Di Leo
:Version: osgeo-live8.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-mapslicer.png
  :scale: 100 %
  :alt: project logo
  :align: right

Guida rapida su MapSlicer
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`MapSlicer <https://wiki.osgeo.org/wiki/MapSlicer>`_ offre un semplice strumento per dividere una mappa
georiferita in diverse parti (tile). I tile possono essere presentati come una sovrapposizione
georiferita su un server web.
Segue le specifiche `Tile Map Service (TMS) <http://wiki.osgeo.org/wiki/Tile_Map_Service_Specification>`_
della fondazione `Open Source Geospatial Foundation (OSGeo) <http://www.osgeo.org/>`_ .


* **Opzioni input**: Qualsiasi immagine georiferita, p.es. TIFF, JPEG da ArcGIS, QGIS.
* **Opzioni output**: Una serie di cartelle con le immagini che possono essere copiate su un server web
  per essere presentati come una sovrapposizione georiferita.
* **Punti di forza**: MapSlicer e` semplice, e` software libero, con un semplice wizard, descritto di seguito,
  per guidarti attraverso le opzioni.

MapSlicer approfitta del fatto che `Google Maps <http://maps.google.com/>`_ , `Microsoft Bing <http://maps.bing.com>`_ , `Yahoo Maps <http://maps.yahoo.com/>`_ , e altri provider di mappe online, compreso `OpenStreetMap <http://www.openstreetmap.org/>`_  usano la stessa proiezione e profilo di tiling e quindi i tile sono compatibili. MapSlicer prepara i tile usando questa specifica come un modo facile e veloce per preparare una mappa georiferita per un mash up su una pagina web.

Avviare MapSlicer
--------------------------------------------------------------------------------

1. Avvia MapSlicer dal menu Geospatial, sotto il menu secondario Spatial Tools.

2. Seleziona **Tile Profile**. Scegli *Image Based Tiles (raster)* for standard web publishing. Clicca *Continue*.

.. image:: /images/screenshots/1024x768/mapslicer1.jpg
    :align: center

3. Scegli il **Source Data Files**. Sfoglia per selezionare l'immagine raster che vuoi dividere. E` anche possibile scegliere un colore per i NODATA che appariranno trasparenti nell'immagine risultante. Clicca *Continue*.

.. image:: /images/screenshots/1024x768/mapslicer2.jpg
    :align: center

4. Specifica il **sistema di riferimento (Spatial Reference System / Coordinate System)** dell'immagine. Specifica il codice id-number dal database EPSG. Clicca *Continue*.

.. image:: /images/screenshots/1024x768/mapslicer3.jpg
    :align: center

5. Specifica i dettagli riguardo le **Tile Pyramid**. Le impostazioni automatiche per i livelli di zoom e il formato del file sono spesso le migliori. Clicca *Continue*.

.. image:: /images/screenshots/1024x768/mapslicer4.jpg
    :align: center

6. Specifica i dettagli riguardo la **cartella di destinazione e indirizzi (Destination folder and Addresses / URLs)** per l'insieme di tile. Se non le conosci, possono essere aggiunte nei file di default *googlemaps.html* e *openlayers.html* dopo la separazione in tile. Clicca *Continue*.

.. image:: /images/screenshots/1024x768/mapslicer5.jpg
    :align: center

7. Spunta **Visualizzatori che devono essere generati (Viewers that should be generated)**. In automatico, viene generato un file *openlayers.html*. Clicca *Continue*.

.. image:: /images/screenshots/1024x768/mapslicer6.jpg
    :align: center

8. Specifica i **Dettagli per generare i visualizzatori (Details for generating the Viewers)**, come il titolo, il copyright, e le chiavi API. Se non le conosci, possono essere aggiunte nei file di default *googlemaps.html / openlayers.html* dopo la separazione in tile. Clicca *Continue*.

.. image:: /images/screenshots/1024x768/mapslicer7.jpg
    :align: center

9. Clicca **Render** per cominciare a rappresentare l'immagine.

.. image:: /images/screenshots/1024x768/mapslicer8.jpg
    :align: center

10. Una volta completato, MapSlicer fornisce un link al gruppo di tile completo.

.. image:: /images/screenshots/1024x768/mapslicer9.jpg
    :align: center

11. Apri il file *openlayers.html* in un browser per visualizzare il gruppo di tile come sovrapposizione sulla mappa online. Per pubblicare sul web, copia l'intero gruppo di tile e tutte le cartelle secondarie in un server web, e modifica i file googlemaps.html o openlayers.html come richiesto.

.. image:: /images/screenshots/1024x768/mapslicer10.jpg
    :align: center


Utilizzare gdal2tiles per creare un database MBTiles
--------------------------------------------------------------------------------

MapSlicer non e` altro che un'interfaccia grafica per lo script `gdal2tiles.py`.
Sul disco della Live e` anche presente una versione aggiornata di `gdal2tiles.py`.
I tile tree creati con questo programma possono essere usati con il programma
`mb-util` per creare un database mbtiles, da utilizzare con i software per
smartphone come `Geopaparazzi <http://geopaparazzi.github.io/geopaparazzi/>`_.

Per creare un database SQLite MBTiles dal nuovo tile tree appena creato, apri un
terminale e

::

  cp data/raster/bluemarble.tif .
  mapslicer    # (select /home/user/bluemarble.tif for input, JPEG as format)
  mb-util --scheme=tms --image_format=jpg bluemarble bluemarble.mbtiles
  qgis bluemarble.mbtiles

Consulta `gdal2tiles.py --help` e `mb-util --help` per ulteriori informazioni su questi programmi.

