:Author: Jan Drewnak (j.drewnak@52north.org)
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/security
  
********************************************************************************
52°North WSS Inici ràpid 
********************************************************************************

Començant
================================================================================

El 52°North WSS és un servei web, que permet accedir a serveis web OGC amb polítiques d'accés, actuant com a proxy.

A la distribució OSGeo Live, el 52°North WSS ja és configurada per a protegir una instància de cada servei: WMS, WFS, WPS i SOS.

Per a obtenir una llista de serveis protegits i provar l'accés al servei WMS, seguiu aquests passos:

1) Aneu a :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WSS` per a començar North WSS o feu servir el següent `enllaç directe <http://localhost:8080/wss/site/manage.html>`_.

2) La interfície de gestió de 52°North WSS s'obrirà a una finestra del navegador.

3) Si és necessari, autentifiqueu-vos com a usuari user amb contrasenya user.

4) Feu clic a *Manage WSS* per a rebre una llista dels serveis accessibles fent servir el WSS.

Per a cada servei protegit, anomenat *Enforcement Point*, la taula conté els enllaços d'inici al servei segons el mètode d'autentificació (*httpauth*, *saml*, *WSS*, ...).

Per a fer la petició d'opcions (capabilities) del WMS: 

5) Feu la petició http://localhost:8080/wss/service/wms_demis/httpauth?SERVICE=WMS&REQUEST=GetCapabilities en un navegador.

6) Autentifiqueu-vos com a ``alice``/``alice`` per a obtenir accés amb tots els permisos.

o bé

7) Autentifiqueu-vos com a ``bob``/``bob`` per a accedir al servei amb permisos limitats. Algunes capes estaran amagades i no seran accessibles.

Per a fer més proves amb el servei protegit, carregueu http://localhost:8080/wss/service/wms_demis/httpauth a qualsevol client d'escriptori que suporti autentificació bàsica d'HTTP, com ara uDig, i feu la servir com faríeu amb qualsevol altre WMS.


Informació addicional
================================================================================

On són definits els usuaris?
--------------------------------------------------------------------------------
``/var/lib/tomcat6/webapps/wss/WEB-INF/classes/users.xml``

On són definits els permisos?
--------------------------------------------------------------------------------
``/var/lib/tomcat6/webapps/wss/WEB-INF/classes/permissions.xml``

On puc obtenir més informació?
--------------------------------------------------------------------------------
Visiteu la `Guia de l'usuari de 52North <http://52north.org/communities/security/general/user_guide_intro.html>`_
