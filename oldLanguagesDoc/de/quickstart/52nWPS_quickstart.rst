:Author: Benjamin Pross, Kristof Lange
:Author: Frank Gasdorf
:Version: osgeo-live8.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
52°North WPS Quickstart 
********************************************************************************

Starten und verwenden
================================================================================

* Starten Sie den den 52°North WPS Service auf der OSGeo-Live DVD über 
  |osgeolive-appmenupath-52nWPS| oder verwenden 
  Sie diesen `Link <http://localhost:8080/52nWPS/>`_. (Ist der Service nicht erreichbar, versuchen 
  Sie den Tomcat Service zu starten. Folgen Sie dabei den einzelnen Schritten, wie es am Ende des 
  Dokumentes :doc:`SOS Quickstart<../quickstart/52nSOS_quickstart>` beschrieben ist.)

* Die 52n WPS Willkommenseite wird erscheinen.

  .. image:: /images/projects/52nWPS/52nWPS_welcome_page.png
    :scale: 70 %
    :alt: screenshot

Ausgabe von Information über den Dienst
================================================================================

* Prüfen Sie das Capabilities-Dokument des 52°North WPS über den folgenden Aufruf:

  http://localhost:8080/52nWPS/WebProcessingService?Request=GetCapabilities&Service=WPS

Prozessieren von Daten 
================================================================================

* Klicken Sie auf den Link in der Sektion :guilabel:`Test Client`, um einen Test-Client zu öffnen.

  .. image:: /images/projects/52nWPS/52nWPS_welcome_page_2.png
    :scale: 70 %
    :alt: screenshot

* Stellen Sie sicher, dass der :doc:`GeoServer <../overview/geoserver_overview>` gestartet ist, 
  da die Demo Daten dieses lokalen Services verwendet. Sie können dies prüfen, indem Sie den folgenden Link aufrufen http://localhost:8082/geoserver/web. Wenn die Seite nicht angezeigt werden konnte, wählen Sie |osgeolive-appmenupath-geoserver| im Menü. GeoServer sollte nach einigen Augenblicken starten.

* Wählen Sie den einfachen Aufruf "SimpleBuffer_out_wfs.xml" aus der Auswahlliste:
  

  .. image:: /images/projects/52nWPS/52nWPS_test_client.png
    :scale: 70 %
    :alt: screenshot
  

* Drücken Sie den :guilabel:`Send` -Button und die Anfrage wird an den 52°North WPS Service 
  übermittelt. Dieser wird eine XML-Repräsentation der Puffer um die Hauptstraßen von Tasmanien mit 
  einem Abstand von 0.05 Grad zurückliefern und in GeoServer speichern.

.. image:: /images/projects/52nWPS/52nWPS_output_stored_in_wfs.png
  :scale: 70 %
  :alt: screenshot

* Kopieren Sie den Wert der ResourceID vom zurückgelieferten Dokument. Dies ist der Name des GeoServer Layers. Fügen Sie die ID zur folgender Anfrage hinzu: http://localhost:8082/geoserver/wms?service=WMS&version=1.1.0&request=GetMap&styles=&bbox=145.14757902405984,-43.47330297262748,148.32274986232298,-40.80286290459129&width=512&height=430&srs=EPSG:4326&format=application/openlayers&layers=Fügen-Sie-hier-die-ResourceID-ein
  Folgendes Ergebnis sollte zu sehen sein:

  .. image:: /images/projects/52nWPS/52nWPS_result_in_geoserver.png
    :scale: 70 %
    :alt: screenshot

Weitere Aufgaben
================================================================================

* Versuchen Sie weitere Besipielaufrufe aus der Auswahlliste des WPS Testclients.
* Sie können das WPS Plugin für :doc:`QGIS <../overview/qgis_overview>` installieren und es mit dem 52°North WPS testen.

Weitere Aufgaben
================================================================================

* Erstellen Sie eigene Prozesse und  führen Sie diese in verschiedenen Clients aus.

* Setzen Sie einen WPS zum Ausführen von GRASS GIS 7 Prozessen auf.

* Setzen Sie einen WPS zum Ausführen von :doc:`R <../overview/R_overview>` Skripten auf.

Verfügbar im 52°North Wiki: https://wiki.52north.org/bin/view/Geoprocessing/GeoprocessingTutorials
	
* Haben Sie weitere Fragen? Nehmen Sie Kontakt über die 52°North WPS mailing list auf:

  geoprocessingservices@52north.org

