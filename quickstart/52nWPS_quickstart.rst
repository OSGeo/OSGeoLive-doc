:Author: Kristof Lange
:Version: osgeo-live4.0
:License: Creative Commons

.. _52nWPS-quickstart:
 
.. image:: images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************
52°North WPS Quickstart 
********************

Running
=======

*	To run 52°North WPS on the Live DVD, click on the "start 52NorthWPS" link on the desktop 
	or you will find it in the menu-items.

*	Firefox will open the 52WPS-TestClient.


.. image:: images/screenshots/1024x768/52n_test_client.png
  :scale: 50 %
  :alt: screenshot
  :align: right
  
  
*	Push the Send-Button and the request will be transmitted to the 52°North WPS which will
	generate a xml-representation for a buffer around playgrounds with a width of 20.

.. image:: images/screenshots/1024x768/52n_wps_response.png
  :scale: 50 %
  :alt: screenshot
  :align: right
  

*	In Order to build your own requests you will need the capabilities of the 52°North WPS: 
	* http://localhost:8083/wps/WebProcessingService?Request=GetCapabilities&Service=WPS
