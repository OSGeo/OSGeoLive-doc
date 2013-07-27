:Author: Benjamin Pross, Kristof Lange
:Version: osgeo-live7.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
52°North WPS Quickstart 
********************************************************************************

Running
================================================================================

* To run 52°North WPS on the Live DVD, go to :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WPS`	to start the 52°North WPS or use this `direct link <http://localhost:8080/52nWPS/>`_. (If the service is not reachable, try to start the Tomcat servlet engine following the steps at the bottom of the :doc:`SOS quickstart page <../quickstart/52nSOS_quickstart>`.)

* The 52n WPS welcome page will appear. 

  .. image:: ../../images/screenshots/800x600/52nWPS_welcome_page.png
    :scale: 70 %
    :alt: screenshot

* Check out the capabilities of the 52°North WPS with this request:

  http://localhost:8080/52nWPS/WebProcessingService?Request=GetCapabilities&Service=WPS

* Click on the link to open the 52nWPS-TestClient. 
* Make sure that you have started :doc:`GeoServer <../overview/geoserver_overview>` since the demonstrations require data from the local GeoServer installation.


  .. image:: ../../images/screenshots/800x600/52nWPS_test_client.png
    :scale: 70 %
    :alt: screenshot
  
  
* Push the Send-Button and the request will be transmitted to the 52°North WPS which will
  generate a buffer around the major roads of Tasmania with a width of 0.05 degrees and store
  the result in GeoServer. 

  .. image:: ../../images/screenshots/800x600/52nWPS_output_stored_in_wfs.png
    :scale: 70 %
    :alt: screenshot
  
* Copy the ResourceID from the response. This is the name of the GeoServer layer. Add the ID to the
  following request: http://localhost:8082/geoserver/wms?service=WMS&version=1.1.0&request=GetMap&styles=&bbox=145.14757902405984,-43.47330297262748,148.32274986232298,-40.80286290459129&width=512&height=430&srs=EPSG:4326&format=application/openlayers&layers=Add-ResourceID-here
  You should get the following result:

  .. image:: ../../images/screenshots/800x600/52nWPS_result_in_geoserver.png
    :scale: 70 %
    :alt: screenshot

* Try out other example requests from the dropdown list of the WPS test client.

* You could also install the WPS plugin for QGIS and try it out with the 52°North WPS.
	
* For further questions you can contact the 52°North WPS mailing list:

  geoprocessingservices@52north.org

