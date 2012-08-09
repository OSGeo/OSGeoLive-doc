:Author: Jan Drewnak (j.drewnak@52north.org)
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/security
  
********************************************************************************
52°North WSS Quickstart 
********************************************************************************

Getting Started
================================================================================

The 52°North WSS is a web service, that allows policy-based access to OGC Web Services acting as a proxy.

For OSGeo-Live distribution, the 52°North WSS is already set up to protect an instance of each, WMS, WFS, WPS, and SOS.
To get a list of protected services and test access to the WMS, follow these steps:

1) Go to :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WSS` to start the 52°North WSS or use this `direct link <http://localhost:8080/wss/site/manage.html>`_.
  
2) The 52°North WSS management interface will open in a browser window.

3) If necessary, authenticate as user/user.

4) Click *Manage WSS* to get a list of those services, that can be connected using the WSS.
  
For each protected service, called *Enforcement Point*, the table contains the base links to the service by authentication method (*httpauth*, *saml*, *WSS*, ...).
 
To request the capabilities of the WMS

5) Request http://localhost:8080/wss/service/wms_demis/httpauth?SERVICE=WMS&REQUEST=GetCapabilities in a browser

6) Authenticate as ``alice``/``alice`` to get access with full permissions.

or

7) Authenticate as ``bob``/``bob`` to access the service under limited permissions. Some layers are hidden and cannot be accessed.

To further test the protected service, load http://localhost:8080/wss/service/wms_demis/httpauth as WMS into any desktop mapping client that supports HTTP
Basic Authentication, e.g. :doc:`uDig <../overview/udig_overview>`, and use it as you would with any other WMS.


Additional Information
================================================================================

Where are the users defined?
--------------------------------------------------------------------------------
``/var/lib/tomcat6/webapps/wss/WEB-INF/classes/users.xml``

Where are the permissions defined?
--------------------------------------------------------------------------------
``/var/lib/tomcat6/webapps/wss/WEB-INF/classes/permissions.xml``

Where do I get further information?
--------------------------------------------------------------------------------
Visit the 52°North `User Guide <http://52north.org/communities/security/general/user_guide_intro.html>`_
