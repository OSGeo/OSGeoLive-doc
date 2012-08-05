:Author: Jan Drewnak (j.drewnak@52north.org)
:Translator: Jorge Sanz
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/security
  
********************************************************************************
Guía de inicio rápido de 52°North WSS
********************************************************************************

Para Empezar
================================================================================

52°North WSS es un servicio web que permite el acceso basado en políticas a servicios web OGC, trabajando como un proxy.

52°North WSS está ya configurado para proteger una instancia de WMS, WFS, WPS y SOS de la distribución OSGeo Live..
Siga los siguientes pasos para obtener una lista de los servicios protegidos así como probar el acceso al WMS:

1) Vaya a :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WSS` para arrancar  52°North WSS o utilice este `enlace directo <http://localhost:8080/wss/site/manage.html>`_.
  
2) La interfaz de administración de 52°North WSS aparecerá en una ventana del navegador web.

3) Autentícate como user/user si es necesario.

4) Haz clic en *Manage WSS* para obtener una lista de los servicios que pueden ser conectados mediante WSS.
  
Para cada uno de los servicios protegidos, llamados *Enforcement Point*, la tabla contiene los enlaces base al servicio por método de autenticación (*httpauth*, *saml*, *WSS*, ...).
 
Para obtener las capacidades del WMS

5) Acceda en un navegador a http://localhost:8080/wss/service/wms_demis/httpauth?SERVICE=WMS&REQUEST=GetCapabilities

6) Para obtener acceso completo utiliza el usuario y contraseña ``alice``/``alice``

o

7) Utiliza ``bob``/``bob`` para acceder al servicio con permisos limitados. Algunas capas estarán ocultas y no se podrá acceder a ellas.

Para probar más a fondo el servicio protegido carga http://localhost:8080/wss/service/wms_demis/httpauth como una capa WMS en cualquier herramienta GIS de escritorio que soporte autenticación básica HTTP, por ejemplo uDig, y utilízala como cualquier otra capa WMS.


Información adicional
================================================================================

¿Dónde se definen los usuarios?
--------------------------------------------------------------------------------
``/var/lib/tomcat6/webapps/wss/WEB-INF/classes/users.xml``

¿Dónde se definen los permisos?
--------------------------------------------------------------------------------
``/var/lib/tomcat6/webapps/wss/WEB-INF/classes/permissions.xml``

¿Dónde puedo obtener más información?
--------------------------------------------------------------------------------
Visita la `Guía de Usuario 52North <http://52north.org/communities/security/general/user_guide_intro.html>`_
