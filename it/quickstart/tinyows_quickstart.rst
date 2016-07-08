:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: ../../images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://mapserver.org/trunk/tinyows/

********************************************************************************
Guida rapida su TinyOWS 
********************************************************************************

TinyOWS è un server Transactional Web Feature Service (WFS-T) ad alto rendimento,
che è leggero e facile da installare, con un interfaccia CGI o FastCGI e utilizza
:doc:`PostGIS <../overview/postgis_overview>` per archiviare i dati.

Questa guida rapida descrive come:

  * visualizzare un layer WFS in QGIS
  * editare un layer WFS usando WFS-T in QGIS


Visualizzare un layer WFS con QGIS
================================================================================

#. Cliccare :menuselection:`Desktop --> Desktop GIS --> Quantum GIS`.

#. Cliccare :menuselection:`Layer --> Add PostGIS Layer...`.

   * Visualizzeremo prima il layer originale PostGIS

#. Premere :guilabel:`New`.

#. Inserite **tinyows_demo** come Connection name e Database

#. Premere :guilabel:`OK`.

#. Premere :guilabel:`Connect`.

#. Selezionare **france** nella lista delle tabelle

#. Premere :guilabel:`Add`.

#. Aumentare lo zoom

#. Cliccare :menuselection:`Layer --> Add WFS Layer...`.

   * Ora si aggiunge un layer WFS basato sulla stessa tabella

#. Prenere :guilabel:`New`.

#. Inserite  **tinyows** come nome e **http://localhost/cgi-bin/tinyows** come URL

#. Premere :guilabel:`OK`.

#. Premere :guilabel:`Connect`.

#. Selezionare **ows:france** nella lista dei layer

#. Controllare :guilabel:`Only request features overlapping the current view extent`.

#. Premere :guilabel:`OK`.

   * Il layer WFS verrà visualizzato:

.. image:: ../../images/screenshots/800x600/tinyows_wfs_layer.png
  :scale: 80 %

Editare dati con WFS-T
================================================================================

#. Cliccare :menuselection:`Layer --> Toggle Editing`.

#. Cliccare :menuselection:`Edit --> Node Tool`.

#. Muovere una vertice (croce) in un'altra posizione

#. Cliccare :menuselection:`Layer --> Save edits`.

#. Nascondere il layer disattivando **tows:france** nella lista dei layer

   * Dovreste vedere la via editate in un altro colore, poichè viene letto direttamente da PostGIS.


Ed ora?
================================================================================

Per imparare di più su TinyOWS, il punto d'inizione è la `documentazione di TinyOWS`_ sulla homepage MapServer.

.. _`documentazione di TinyOWS`: http://mapserver.org/trunk/tinyows/
