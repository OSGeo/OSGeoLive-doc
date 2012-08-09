:Author: Kristof Lange
:Author: Frank Gasdorf
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
52°North WPS Quickstart 
********************************************************************************

Starten und verwenden
================================================================================

* Starten Sie den den 52°North WPS Service auf der OSGeo-Live DVD über 
  :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WPS` oder verwenden 
  Sie diesen `Link <http://localhost:8080/52nWPS/>`_. (Ist der Service nicht erreichbar, versuchen 
  Sie den Tomcat Service zu starten. Folgen Sie dabei den einzelnen Schritten, wie es am Ende des 
  Dokumentes :doc:`52nSOS_quickstart` beschrieben ist.)

* Die 52n WPS Willkommenseite wird erscheinen.

.. image:: ../../images/screenshots/800x600/52nWPS_welcome_page.png
  :scale: 100 %
  :alt: screenshot
  :align: center

* Klicken Sie auf den Link in der Sektion :guilabel:`Test Client`, um einen Test-Client zu öffnen.

* Stellen Sie sicher, dass der :doc:`GeoServer <../overview/geoserver_overview>` gestartet ist, 
  da die Demo Daten dieses lokalen Services verwendet.

.. image:: ../../images/screenshots/1024x768/52n_test_client.png
  :scale: 100 %
  :alt: screenshot
  :align: center
  
  
* Drücken Sie den :guilabel:`Send` -Button und die Anfrage wird an den 52°North WPS Service 
  übermittelt. Dieser wird eine XML-Repräsentation der Puffer um die Hauptstraßen von Tasmanien mit 
  einem Abstand von 0.05 Grad zurückliefern.

.. image:: ../../images/screenshots/1024x768/52n_wps_response.png
  :scale: 100 %
  :alt: screenshot
  :align: center

* Probieren Sie auch den Capabilities-Request gegen den 52°North WPS Service aus:

  http://localhost:8080/52nWPS/WebProcessingService?Request=GetCapabilities&Service=WPS

* Haben Sie weitere Fragen? Nehmen Sie Kontakt über die 52°North WPS mailing list auf:

  geoprocessingservices@52north.org

