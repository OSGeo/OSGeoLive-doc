:Author: Kristof Lange
:Version: osgeo-live4.5
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

*	To run 52°North WPS on the Live DVD, click on the "Start 52NorthWPS" link in the Web services folder on the desktop 
	or you will find it in the menu-items.

*	Firefox will open the 52nWPS-TestClient. 
*	Make sure that you have started Geoserver since some of the demonstrations require data from the local Geoserver installation.


.. image:: ../../images/screenshots/1024x768/52n_test_client.png
  :scale: 50 %
  :alt: screenshot
  :align: right
  
  
*	Push the Send-Button and the request will be transmitted to the 52°North WPS which will
	generate a xml-representation for a buffer around the major roads of tasmania with a width of 0.05 degrees.

.. image:: ../../images/screenshots/1024x768/52n_wps_response.png
  :scale: 50 %
  :alt: screenshot
  :align: right
  

*	Check out the capabilities of the 52°North WPS with this request:
		http://localhost:8080/52nWPS/WebProcessingService?Request=GetCapabilities&Service=WPS

	
*	For further questions you can contact the 52°North WPS mailing list:
	geoprocessingservices@52north.org
