:Author: Benjamin Pross
:Author: Kristof Lange
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_52nWPS@
@OSGEO_KIND_52nWPS@

********************************************************************************
@NAME_52nWPS@ Quickstart
********************************************************************************

The 52°North WPS is a framework for web-based processing of (geospatial) data. 
The service implements the OGC Web Processing Service 1.0 interface standard.

This quickstart describes how to process data and store the result in another web service using WPS operations. 

.. contents:: Contents

Running
================================================================================

* To run the 52°North WPS on the Live DVD, go to |osgeolive-appmenupath-52nWPS| to start the 52°North WPS or use this `direct link <http://localhost:8080/52nWPS/>`_. (If the service is not reachable, try to start the Tomcat servlet engine following the steps at the bottom of the :doc:`SOS quickstart page <../quickstart/52nSOS_quickstart>`.)

* The 52n WPS welcome page will appear. 

  .. image:: /images/projects/52nWPS/52nWPS_screenshot.png
    :scale: 70 %
    :alt: screenshot

Get information about the service
================================================================================

* Check out the capabilities of the 52°North WPS with this request:

  http://localhost:8080/52nWPS/WebProcessingService?Request=GetCapabilities&Service=WPS

Process data
================================================================================

* Click on the link to open the 52nWPS-TestClient. 

  .. image:: /images/projects/52nWPS/52nWPS_welcome_page_2.png
    :scale: 70 %
    :alt: screenshot

* Make sure that :doc:`GeoServer <../overview/geoserver_overview>` is running since the demonstration requires data from the local GeoServer installation.
  To do this, try to open the page http://localhost:8082/geoserver/web. If the page could not be found, select |osgeolive-appmenupath-geoserver| in the menu.
  The GeoServer should be running after a few moments.

* Select the example request "SimpleBuffer_out_wfs.xml" from the dropdown list:
  
  .. image:: /images/projects/52nWPS/52nWPS_test_client.png
    :scale: 70 %
    :alt: screenshot
  
  
* Push the Send-Button and the request will be transmitted to the 52°North WPS which will
  generate a buffer around the major roads of Tasmania with a width of 0.05 degrees and store
  the result in GeoServer. 

  .. image:: /images/projects/52nWPS/52nWPS_output_stored_in_wfs.png
    :scale: 70 %
    :alt: screenshot
  
* Copy the ResourceID from the response. This is the name of the GeoServer layer. Add the ID to the
  following request: http://localhost:8082/geoserver/wms?service=WMS&version=1.1.0&request=GetMap&styles=&bbox=145.14757902405984,-43.47330297262748,148.32274986232298,-40.80286290459129&width=512&height=430&srs=EPSG:4326&format=application/openlayers&layers=Add-ResourceID-here
  You should get the following result:

  .. image:: /images/projects/52nWPS/52nWPS_result_in_geoserver.png
    :scale: 70 %
    :alt: screenshot

Things to Try
================================================================================

* Try out other example requests from the dropdown list of the WPS test client.
* You could also install the WPS plugin for :doc:`QGIS <../overview/qgis_overview>` and try it out with the 52°North WPS.

What Next?
================================================================================

* Create your own processes and execute them using various clients.

* Set up the WPS to execute GRASS GIS 7 processes.

* Set up the WPS to execute :doc:`R <../overview/R_overview>` scripts as processes.

Available in the 52°North wiki: https://wiki.52north.org/bin/view/Geoprocessing/GeoprocessingTutorials
	
For further questions you can contact the 52°North WPS mailing list:

  geoprocessing@52north.org

