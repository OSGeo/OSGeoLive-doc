:Author: Jan Drewnak (j.drewnak@52north.org)
:Reviewer: Sergio Baños Calvo
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/security
  
********************************************************************************
52°North WSS Quickstart 
********************************************************************************

The 52°North WSS is a web service that allows policy-based access to OGC Web Services acting as a proxy.

This Quick Start describes how to:

* start the WSS management interface
* protect a local WMS instance
* register new users
* asign permissions to existent users
* load protected services

.. contents:: Contents



Getting Started
================================================================================

For this OSGeo-Live distribution, the 52°North WSS is already set up to protect an instance of each supported OGC service: WMS, WFS, WPS, and SOS.

To get a list of protected services follow these steps:

#. Go to :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WSS` to start the 52°North WSS or use this `direct link <http://localhost:8080/wss/site/manage.html>`_.
  
#. The 52°North WSS management interface will open in a browser window. Click *Manage WSS* (**1**) to get a list of those services, that can be connected using the WSS.

   .. image:: ../../images/screenshots/800x600/52nWSS_start_manager.png
     :scale: 70 %
     
.. tip:: 
  If it's requested, authenticate as user/user



WSS manager
================================================================================

For each protected service, called *Enforcement Point*, the table contains the base links to the service by authentication method (*httpauth*, *saml*, *WSS*, ...).
The table has the following columns:

   .. image:: ../../images/screenshots/800x600/52nWSS_manager_interface.png
     :scale: 70 %

* Enforcement Point Identifier
 
* Protected OGC Service base URL

* OGC Service Type

* Available authentication methods

* Available actions



Secure a WMS
================================================================================

In this section we're going to protect a local WMS instance. 


Create a new enforcement point
--------------------------------------------------------------------------------

#. Start the :doc:`GeoServer <../overview/geoserver_overview>` WMS included in the OSGeo-Live DVD by selecting the option |osgeolive-appmenupath-geoserver| (or from the desktop, go into *Web Services* folder and double-click the Start GeoServer icon)

#. Press the `Create` link (**1**) in the manager main window

   .. image:: ../../images/screenshots/800x600/52nWSS_create_enforcement_point.png
     :scale: 70 %

#. Fill the new protected server properties: set its **geoserver_localhost** as `ID` (**1**), **http://localhost:8082/geoserver/ows?** as `Protected Service URL` (**2**), **WMS** as `Type` (**3**) and mark the **HTTP Basic** `Autenthication Scheme`  

   .. image:: ../../images/screenshots/800x600/52nWSS_create_new_enforcement_point_properties.png
     :scale: 70 %

#. Press the :guilabel:`Create` button to create the new `Enforcement Point`. A new row will appear in the manager main window

   .. image:: ../../images/screenshots/800x600/52nWSS_new_enforcement_point_added.png
     :scale: 70 %



Create a new user
--------------------------------------------------------------------------------     
     
#. Open a new terminal emulator by selecting the menu option :menuselection:`Accesories --> Terminal Emulator` 

#. Navigate to the directory :file:`/var/lib/tomcat6/webapps/wss/WEB-INF/classes/` using the command `cd /var/lib/tomcat6/webapps/wss/WEB-INF/classes/`
  
#. Edit the file :file:`users.xml` using the command `sudo medit users.xml`

#. Add a new user called 'livedvd' by adding the next text as a new entry at <UserRepository> level (**1**):

  <User  username="livedvd" password="livedvd" realname="LiveDVD">
        <Role name="livedvd"/>
  </User>
  
   .. image:: ../../images/screenshots/800x600/52nWSS_users_xml.png
     :scale: 70 %
  
#. Save the changes and exit medit



Adjust new user policies
--------------------------------------------------------------------------------

#. Open a new terminal emulator by selecting the menu option :menuselection:`Accesories --> Terminal Emulator` 

#. Navigate to the directory :file:`/var/lib/tomcat6/webapps/wss/WEB-INF/classes/` using the command `cd /var/lib/tomcat6/webapps/wss/WEB-INF/classes/`

#. Edit the file :file:`permissions.xml` using the command `sudo medit users.xml` 

#. Add a new permission set called `Geoserver localhost` by adding the next text as a new entry at <SimplePermissions> level (**1**):

  <PermissionSet name="Geoserver localhost">
        <ResourceDomain value="http://localhost:8080/wss/service/geoserver_localhost/*"/>
        <ActionDomain value="http://localhost:8080/wss/service/geoserver_localhost/*"/>
        <SubjectDomain value="urn:n52:security:subject:role"/>
        <Permission name="livedvd_all_geoserver">
            <Resource value="layers/*"/>
            <!-- Any layers -->
            <Action value="operations/*"/>
            <!-- Any operations -->
            <Subject value="livedvd"/>
        </Permission>
	      <Permission name="bobAndGuest_most_GetMap_GetCaps_geoserver">
            <Resource value="layers/tasmania"/>
            <Action value="operations/GetCapabilities"/>
            <Action value="operations/GetMap"/>
            <Subject value="bob"/>
            <Subject value="guest"/>
        </Permission>
  </PermissionSet>
  
  .. image:: ../../images/screenshots/800x600/52nWSS_permissions_xml.png
     :scale: 70 %

#. Save the changes and exit medit


Restart Tomcat
--------------------------------------------------------------------------------

In order to load the users and permissions changes, it's necessary to restart the Tomcat service:

#. Open a new terminal emulator by selecting the menu option :menuselection:`Accesories --> Terminal Emulator` 

#. Type the command `sudo tomcat service stop` and press :guilabel:`ENTER`

#. Type the command `sudo tomcat service start` and press :guilabel:`ENTER`



Load a protected OGC Service
================================================================================

In order to request the capabilities of the protected Demis WMS, follow the next steps:  

#. Type http://localhost:8080/wss/service/geoserver_localhost/httpauth?SERVICE=WMS&REQUEST=GetCapabilities in a browser

#. Authenticate as `livedvd`/`livedvd` to get access with full permissions or authenticate as `guest`/`guest` to access the service under limited permissions (only `tasmania` layer will be available)

   .. image:: ../../images/screenshots/800x600/52nWSS_authorization_required.png
     :scale: 70 %

.. note::
  If you'd like to request the capabilites with a different user account you have to restart the browser in order to invalidate current user cached credentials


To further test the protected service, load http://localhost:8080/wss/service/geoserver_localhost/httpauth as WMS into any desktop mapping client that supports HTTP
Basic Authentication, e.g. :doc:`uDig <../overview/udig_overview>`, and use it as you would with any other WMS.



Things to try
================================================================================

Here are some additional challenges for you to try:

#. Protect a WFS from the local Geoserver instance
#. Add more users to a protected OGC service
#. Modify the access policies to any of the other protected services for the user `livedvd`



What Next?
================================================================================

Visit the 52°North `User Guide <http://52north.org/communities/security/general/user_guide_intro.html>`_
