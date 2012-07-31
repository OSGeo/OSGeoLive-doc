:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-qgis_mapserver.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
Breve introduzione all'uso di QGIS Server
********************************************************************************

QGIS Server permette di implementare un Web Map Service (WMS): usa le stesse librerie di Quantum GIS (QGIS) desktop.

Questa breve introduzione all'uso descrive come:

  * aggiornare un progetto QGIS esistente e pubblicarlo con QGIS Server
  * creare un nuovo progetto QGIS ed aprire un WMS direttamente nel browser web

Documentazione:
  * http://www.qgis.org/wiki/QGIS_Server_Tutorial

Installazione di QGIS Server su Debian/Ubuntu:

  * :command:`apt-get install qgis-mapserver libapache2-mod-fcgid`
  * -> http://localhost/cgi-bin/qgis_mapserv.fcgi

QGIS Web Client:
  * https://github.com/qgis/qgis-web-client

Avviare il visualizzatore GeoExt
================================================================================

OSGeo-Live contiene un esempio di visualizzatore di mappe web basato sul framework Javascript GeoExt e che 
utilizza QGIS Server per la restituzione della mappa.

* Cliccare :menuselection:`Geospatial --> Web Services --> QGIS Server`

Dovreste vedere una finestra di un browser con un visualizzatore di mappe contenente una mappa del mondo.
   
.. image:: ../../images/screenshots/800x600/qgis_mapserver_browser.jpg

Modificheremo lo stile di visualizzazione usando QGIS.

Modificare un progetto QGIS
================================================================================

#. Cliccare :menuselection:`Geospatial --> Desktop GIS --> Quantum GIS`.

#. Selezionare :menuselection:`File --> Apri progetto...`.

#. Selezionare :file:`QGIS-NaturalEarth-Example.qgs` e cliccare su :guilabel:`Open`.

   * Dovreste vedere la stessa mappa del mondo.
     Ora modificheremo lo stile dei fiumi e controlleremo il risultato nel visualizzatore di mappe. 

#. Doppio click su :file:`10m_rivers_lake_centerlines` nella legenda.

#. Cambiare il colore in un tono diverso di blu.

#. Cliccare :guilabel:`OK`.

   * Ora i fiumi sono visualizzati con un nuovo colore.

#. Salvare il progetto con :menuselection:`File --> Salva progetto`.

#. Riaprire il browser web

#. Ingrandire la vista:

   * Dovreste vedere i fiumi visualizzati con il nuovo colore.


Creare un nuovo progetto QGIS
================================================================================

#. Riaprire QGIS

#. Selezionare :menuselection:`File --> Nuovo progetto`.

#. Selezionare :menuselection:`Layer --> Aggiungi vettore...`.

#. Selezionare il file :file:`/home/user/data/natural_earth/10m_admin_0_countries.shp`.

#. Cliccare :guilabel:`Open`.

   * Dovreste vedere le nazioni del mondo.

#. Salvare il progetto con :menuselection:`File --> Salva progetto`.

#. Usare come nome del file :file:`/home/user/world.qgs`.

#. Aprire nel browser `WMS URL <http://localhost/cgi-bin/qgis_mapserv?map=/home/user/world.qgs&SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&BBOX=-91.901820,-180.000000,83.633800,180.000000&CRS=EPSG:4326&WIDTH=722&HEIGHT=352&LAYERS=10m_admin_0_countries&STYLES=default&FORMAT=image/png&DPI=96&TRANSPARENT=true>`_.

   * Dovreste vedere le stesse nazioni del mondo, ma questa volta renderizzate da QGIS Server.

Per proseguire
================================================================================

Un buon punto di partenza per approfondire la conoscenza di QGIS Server è la `Pagina wiki QGIS Server <http://hub.qgis.org/wiki/quantum-gis/QGIS_Server_Tutorial>`_.
