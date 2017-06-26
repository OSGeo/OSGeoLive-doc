:Author: Jan Drewnak (j.drewnak@52north.org)
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/security
  
********************************************************************************
Guida rapida 52°North WSS
********************************************************************************

Come incominciare
================================================================================

52°North WSS è un servizio web, che permette accesso ai Servizi Web OGC basato su
regole funzionando come proxy.

Per la distribuzione OSGeo-Live, 52°North WSS è già impostato per proteggere una
instanza di ogni, WMS, WFS, WPS, e SOS.
Per ottenere una lista dei servizi protetti ed effettuare un test di accesso al WMS,
seguite questi passaggi:

1) Andate in :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North WSS`
per avviare 52°North WSS o usate questo `link diretto <http://localhost:8080/wss/site/manage.html>`_.
  
2) L'interfacci per la gestione di 52°North WSS sarà aperta in una finestra del browser.

3) Se necessario, autenticatevi come user/user.

4) Cliccate *Manage WSS* per ottenere una lista di questi servizi, ai quali ci si può
connettere usando WSS.
  
Per ogni servizio protetto, chiamato *Enforcement Point*, la tabella contiene i link di 
base al servizio del metodo di autentificazione (*httpauth*, *saml*, *WSS*, ...).
 
Per richiedere le capacità del WMS

5) Richiedete http://localhost:8080/wss/service/wms_demis/httpauth?SERVICE=WMS&REQUEST=GetCapabilities in un browser

6) Autenticatevi come ``alice``/``alice`` per accedere con i permessi completi.

o

7) Autenticatevi come ``bob``/``bob`` per accedere al servizio con permessi limitati.
Alcuni layers sono nascosti e non è possibile accedervi.

Per maggiori test di servizi protetti, caricate http://localhost:8080/wss/service/wms_demis/httpauth
come WMS in un qualsiasi desktop GIS che supporta HTTP Basic Authentication, per esempio
:doc:`uDig <../overview/udig_overview>`, e usatelo come qualsiasi altro WMS.


Ulteriori informazioni
================================================================================

Come sono definiti gli utenti?
--------------------------------------------------------------------------------
``/var/lib/tomcat6/webapps/wss/WEB-INF/classes/users.xml``

Dove sono definiti i permessi?
--------------------------------------------------------------------------------
``/var/lib/tomcat6/webapps/wss/WEB-INF/classes/permissions.xml``

Dove posso ottenere maggiori informazioni?
--------------------------------------------------------------------------------
Visitate la `Guida utente di 52°North WSS <http://52north.org/communities/security/general/user_guide_intro.html>`_
