:Author: Ian Turton
:Author: Frank Gasdorf
:Translator: Margherita Di Leo
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GeoServer.png
  :scale: 100%
  :alt: project logo
  :align: right
  :target: http://geoserver.org/display/GEOS/Welcome

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GeoServer
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoServer è un web server che permette di fornire mappe e dati da
una varietà di formati a client standard, come i browser web e GIS desktop. 
Ciò significa che è possibile memorizzare i dati spaziali in quasi
qualsiasi `formato
<http://docs.geoserver.org/stable/en/user/data/index.html>`_
si preferisce, ma gli utenti non hanno bisogno di sapere
nulla dei dati GIS. Al livello più semplice tutto ciò che serve è un browser web
per visualizzare le mappe esattamente come si desidera.

GeoServer e` l'implementazione di riferimento degli standard 
`Open Geospatial 
Consortium <http://www.opengeospatial.org>`_ (OGC) 
:doc:`../standards/wfs_overview` e 
:doc:`../standards/wcs_overview`,
nonche`  conforme
:doc:`../standards/wms_overview` certificato con alte prestazioni. 
GeoServer costituisce una componente di base del Geospatial Web. 

.. image:: ../../images/screenshots/800x600/geoserver.gif
  :scale: 60 %
  :alt: Screen Shot of GeoServer
  :align: right

Caratteristiche di base
--------------------------------------------------------------------------------

**Fornisce dati da una varieta` di depositi di dati:**
    * Vettoriali
        - Shapefiles, WFS esterni
        - PostGIS, ArcSDE, DB2, Oracle Spatial, MySql, SQL Server
    * Raster
        - GeoTiff, JPG e PNG, piramidi, formati GDAL, Image Mosaic, Oracle GeoRaster

**I dati sono mostrati come immagini veloci e sicure utilizzando il protocollo WMS:**
    Poiche` il dato e` mostrato come un'immagine il dato e` completamente salvo e sicuro. A meno di non digitalizzare il dato, non c'e` nessuna possibilita` che il dato venga sottratto.
    L'apparenza di ciascun layer puo` essere controllata usando lo standard SLD che consente di colorare ed etichettare gli oggetti. Combinando queste regole con Filtri OGC e` possibile implementare uno stile dipendente dalla scala, che permette di visualizzare maggiori dettagli aumentando lo zoom. Inoltre sono implementati la gestione delle collisioni delle etichette, il raggruppamento e le priorita`. 

**Interi dati vettoriali possono essere inviati al client usando il protocollo WFS:**
     Un client WFS puo` scaricare i dati vettoriali e usarli per mapping, analisi spaziale ed altre operazioni. Inoltre, se autorizzato, l'utente puo` modificare il dato e mandarlo indietro al server per aggiornare il dato conservato utilizzando il protocollo WFS-T.
     Il dato puo` essere trasmesso usando GML (compresso) nonche` altri formati standard come shapefile e json.

**I valori dei dati raster possono essere inviati al client usando il protocollo WCS:**
     Un client GIS puo` richiedere il dato raster reale per l'uso nell'analisi spaziale. Questo permette all'utente di creare applicazioni che possono modellare i processi descritti dai vostri dati. 

**Riproiezione al volo:**
     GeoServer supporta la gran parte delle proiezioni del database EPSG e puo` riproiettare qualsiasi dato a richiesta per consentire ai client con limitate capacita` di riproiezione di passare il caricamento del server. 

**WMS Tiling Cache**
    `GeoWebCache <http://geowebcache.org/>`_ e` un WMS tiling client. Gira su un server proxy tra la mappa client e la mappa server, effettuando la cache dei tile quando vengono richiesti, eliminando le richieste ridondanti e risparmiando moltissimo tempo di processo. GeoWebCache e` stato integrato in GeoServer.

Standard implementati
--------------------------------------------------------------------------------

Supporto di numerosi standard Open Geospatial Consortium  (OGC):

  * :doc:`../standards/wms_overview`
  * :doc:`../standards/wfs_overview`, WFS-T (transactional)
  * :doc:`../standards/wcs_overview`
  * :doc:`../standards/fe_overview`
  * :doc:`../standards/sld_overview` 
  * :doc:`../standards/gml_overview`

Dettagli
--------------------------------------------------------------------------------

**Website:** http://geoserver.org/display/GEOS/Welcome

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** 2.1.3

**Supported Platforms:** All Java 1.5 platforms: - Windows, Linux, Mac

**API Interfaces:** WMS, WFS, WCS, REST

**Support:** http://geoserver.org/display/GEOS/Commercial+Support

Guida rapida
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/geoserver_quickstart>`
