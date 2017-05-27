:Author: Jan Drewnak (j.drewnak@52north.org)
:Author: Frank Gasdorf
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/security
  
********************************************************************************
52°North WSS Quickstart 
********************************************************************************

Erste Schritte
================================================================================

Der 52°North WSS Web Service erlaubt einen regelbasierten Zugriff für OGC Web Services zu definieren 
und zu kontrollieren. Dabei agiert der Service als Proxy.

Für die OSGeo-Live Distribution ist der WSS Service so vorkonfiguriert, dass alle WMS-, WFS-, WPS- 
und SOS-Instanzen abgesichert werden. Um eine Liste der gesicherten Services zu bekommen und den 
Zugriff zu einem WMS Dienst zu testen, folgen Sie bitte den folgenden Schritten:

#. Gehen Sie über :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WSS`, um 
   den 52°North WSS Service zu starten oder verwenden Sie direkt den 
   `Link <http://localhost:8080/wss/site/manage.html>`_.
  
#. Die 52°North WSS Management Oberfläche wird in einem Browser geöffnet.

#. Wenn erforderlich, authentifizieren Sie Sich als user/user.

#. Klicken Sie auf :guilabel:`Manage WSS`, um eine Liste der Services zu bekommen, zu den man sich 
   mit WSS verbinden kann.
  
   Für jeden gesicherten Service, auch *Enforcement Point* genannt, enthält die Tabelle die Basis-Links 
   zum Service über die Authentifizierungs-Methoden (*httpauth*, *saml*, *WSS*, ...).
 
   Um einen Capabilities-Dokument eines WMS Services abzufragen, 

#. geben Sie http://localhost:8080/wss/service/wms_demis/httpauth?SERVICE=WMS&REQUEST=GetCapabilities in 
   einem Browser ein

#. Authentifizieren Sie Sich als ``alice``/``alice``, um Zugriff mit allen Rechten zu bekommen.

   oder

#. Authentifizieren Sie Sich als ``bob``/``bob``, um Zugriff mit eingeschränkten Befugnissen zu bekommen. Einige
   Layer sind versteckt und können nicht angefragt werden.

Um die gesicherte Services weiter zu testen, können Sie http://localhost:8080/wss/service/wms_demis/httpauth in 
jedem WMS Desktop Client verwenden, der HTTP Basis-Authentifizierung unterstützt (z.B. 
:doc:`uDig <../overview/udig_overview>`) und nutzen Sie den Service, wie sie es mit jedem anderen WMS Service 
tun würden.


Weitere Informationen
================================================================================

Wo sind die Benutzer definiert?
--------------------------------------------------------------------------------
``/var/lib/tomcat6/webapps/wss/WEB-INF/classes/users.xml``

Wo sind die Zugriffsgenehmigungen definiert?
--------------------------------------------------------------------------------
``/var/lib/tomcat6/webapps/wss/WEB-INF/classes/permissions.xml``

Wo kann man weitere Informationen erhalten?
--------------------------------------------------------------------------------
Lesen Sie weitere Details im 52°North `User Guide <http://52north.org/communities/security/general/user_guide_intro.html>`_
