:Author: Benjamin Pross, Kristof Lange
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
Guida rapida su 52°North WPS
********************************************************************************

Eseguire
================================================================================

* Per eseguire 52°North WPS sul Live DVD, andate :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WPS`
  per avviare 52°North WPS o usate questo `link diretto <http://localhost:8080/52nWPS/>`_. 
  (Se il servizio non è raggiungibile provate ad avviare Tomcat servlet seguendo i passaggi
  in fondo alla :doc:`pagina sulla guida rapida SOS <../quickstart/52nSOS_quickstart>`.)

* Apparirà la pagina introduttiva di 52n WPS. 

.. image:: /images/screenshots/800x600/52nWPS_welcome_page.png
  :scale: 100 %
  :alt: screenshot

* Ottenete le funzionalità di 52°North WPS con questa richiesta:

  http://localhost:8080/52nWPS/WebProcessingService?Request=GetCapabilities&Service=WPS

* Cliccare sul link per aprire il 52nWPS-TestClient. 
* Siate sicure di aver avviato :doc:`GeoServer <../overview/geoserver_overview>` poichè
  la dimostrazione richiede dati dall'installazione locale di GeoServer.


.. image:: /images/screenshots/800x600/52nWPS_test_client.png
  :scale: 70 %
  :alt: screenshot
  
  
* Premete il bottone Send e la richiesta sarà trasmessa a 52°North WPS che genererà
  un XML per un buffer intorno alle strade più importanti della Tasmania con una distanza
  di 0.05 gradi e ritornerà il risultato con GeoServer.

.. image:: /images/screenshots/800x600/52nWPS_output_stored_in_wfs.png
  :scale: 70 %
  :alt: screenshot
  
* Copiare il ResourceID dalla risposta. Questo è il nome del layer in GeoServer. Aggiungete l'ID
  alla seguente richiesta: http://localhost:8082/geoserver/wms?service=WMS&version=1.1.0&request=GetMap&styles=&bbox=145.14757902405984,-43.47330297262748,148.32274986232298,-40.80286290459129&width=512&height=430&srs=EPSG:4326&format=application/openlayers&layers=Add-ResourceID-here
  Dovreste ottenere il seguente risultato:
  
  .. image:: /images/screenshots/800x600/52nWPS_result_in_geoserver.png
    :scale: 70 %
    :alt: screenshot

* Provate altre richieste di esempio dalla lista nel client di test del WPS

* Potete anche installare il plugin WPS per QGIS e provarlo con 52°North WPS.
	
* Per maggiori informazioni potete contattare la mailing list di 52°North WPS:

  geoprocessingservices@52north.org

