:Author: Benjamin Pross, Kristof Lange
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: ../../images/project_logos/logo_52North_160.png
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

.. image:: ../../images/screenshots/800x600/52nWPS_welcome_page.png
  :scale: 100 %
  :alt: screenshot
  :align: center

* Cliccare sul link per aprire il 52nWPS-TestClient. 
* Siate sicure di aver avviato :doc:`GeoServer <../overview/geoserver_overview>` poichà
  la dimostrazione richiede dati dall'installazione locale di GeoServer.


.. image:: ../../images/screenshots/1024x768/52n_test_client.png
  :scale: 100 %
  :alt: screenshot
  :align: center
  
  
* Premeto il bottone Send e la richiesta sarà trasmessa a 52°North WPS che genererà
  un XML per un buffer intorno alle strade più importanti della Tasmania con una distanza
  di 0.05 gradi.

.. image:: ../../images/screenshots/1024x768/52n_wps_response.png
  :scale: 100 %
  :alt: screenshot
  :align: center
  

* Fatevi ritornare le capacità di 52°North WPS con questa richiesta:

  http://localhost:8080/52nWPS/WebProcessingService?Request=GetCapabilities&Service=WPS

	
* Per maggiori informazioni potete contattare la mailing list di 52°North WPS:

  geoprocessingservices@52north.org

