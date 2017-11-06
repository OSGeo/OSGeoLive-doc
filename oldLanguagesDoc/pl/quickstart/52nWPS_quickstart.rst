:Author: Kristof Lange
:Translator: Milena Nowotarska, OSGeo
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
Wprowadzenie do 52°North WPS 
********************************************************************************

Jak zacząć
================================================================================

* Aby uruchomić 52°North WPS na Live DVD, idź do :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WPS`	aby włączyć 52°North WPS lub użyj tego `linku <http://localhost:8080/52nWPS/>`_. (Jeśli usługa nie jest osiągalna, spróbuj uruchomić Tomcat servlet engine wykonując kroki opisane na dole :doc:`SOS quickstart page <../quickstart/52nSOS_quickstart>`.)

* Pojawi się strona powitalna 52n WPS. 

.. image:: /images/projects/52nWPS/52nWPS_welcome_page.png
  :scale: 100 %
  :alt: screenshot
  :align: center

* Kliknij link, aby otworzyć 52nWPS-TestClient. 
* Upewnij się, że został utuchomiony :doc:`GeoServer <../overview/geoserver_overview>`, ponieważ demonstracja wymaga danych z lokalnej instalacji GeoServera.


.. image:: /images/projects/800x600/52n_test_client.png
  :scale: 100 %
  :alt: screenshot
  :align: center
  
  
* Przycisk Send wyśle zapytanie do 52°North WPS, który wygeneruje
  plik xml bufora wokół głównych dróg Tasmanii, o szerokości 0.05 stopni.

.. image:: /images/projects/1024x768/52n_wps_response.png
  :scale: 100 %
  :alt: screenshot
  :align: center
  

* Sprawdź możliwości 52°North WPS tym zapytaniem:

  http://localhost:8080/52nWPS/WebProcessingService?Request=GetCapabilities&Service=WPS

  
  
	
* Czekamy na pytania na liście dyskusyjnej 52°North WPS:

  geoprocessingservices@52north.org

