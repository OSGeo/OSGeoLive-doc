:Author: Eike Hinderk JÃ¼rrens (e.h.juerrens@52north.org)
:Reviewer: TBD
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/sos
  
********************************************************************************
52°North SOS Inici ràpid
********************************************************************************

Començant
================================================================================

52°North SOS és un servei web que permet proveir i recopilar dades espacials de sensors (incloent-hi metadades i mesures/observacions).

1) Feu clic a :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North SOS`	per a iniciar el 52Â°North SOS o feu servir el següent enllaç directe `direct link <http://localhost:8080/52nSOS/>`_. (Si el servei no és disponible, intenteu iniciar el Tomcat seguint les instruccions del final d'aquesta pàgina.)

2) El Firefox obrirà la pàgina d'inici del client de proves de 52°North SOS (veure Fiq. 1). Si us plau, seleccioneu la versió de l'especificació que vulgui, 1.0.0 per example:

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_start.png
  :scale: 100 %
  :alt: captura de pantalla del client de proves de 52°North SOS - pàgina d'inici
  :align: center

**Fig. 1**: Client de proves de 52°North SOS - pàgina d'inici

3) Apareix el client de proves. Es pot fer servir per enviar peticions al servei fent servir un senzill formulari. Una llista desplegable permet seleccionar d'un seguit de peticions pre-definides, que estan adaptades a la versió del servei seleccionada prèviament.

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_v1.0.0_GetCapabilities.png
  :scale: 100 %
  :alt: captura de pantalla del client de proves de 52°North SOS versió 1.0.0
  :align: center
  
**Fig. 2**: Client de proves de 52°North SOS versió d'especificació 1.0.0
 
4) Per iniciar-se amb el SOS, seleccioneu la petició  GetCapabilities_allSections.xml de la llista desplegable que és al costat de "Request Examples" (veure número [1] a Fig 2).

5) Premeu el botó **Send button** (número [2] a Fig. 2) i la petició serà enviada al servidor de 52°North SOS. S'enviarà un arxiu XML com a resultat (veure Fig. 3), que mostra les "capacitats" (capabilities) del SOS (metadades del servei com ara paraules clau o proveïdor, operacions disponibles i filtres, dades d'observacions disponibles,...). Per a veure la resposta original del servidor, obriu la vista de la font de la resposta (source view) prement Ctrl+U.

.. image:: ../../images/screenshots/1024x768/52n_sos_response.png
  :scale: 70 %
  :alt: captura de pantalla de la sortida una petició a 52°North SOS - resposta GetCapabilities codificada en XML
  :align: center
  
**Fig. 3**: 52°North SOS - resposta de GetCapabilities (codificada en XML)

6) Per a poder construir les vostres pròpies peticions, necessitareu el `capabilities <http://localhost:8080/52nSOS/sos?REQUEST=GetCapabilities&SERVICE=SOS&ACCEPTVERSIONS=1.0.0>`_ del 52°North SOS (especificació 1.0.0). Fent servir la informació proveïda a la resposta de GetCapabilities i, encara més important, la secció de continguts, podeu ajustar les peticions d'exemple al client de prova. Simplement seleccioneu una petició GetObservation (GetObs...) del menú desplegable i feu-la servir de plantilla per a obtenir les vostres peticions.

Informació addicional
================================================================================

Per aprendre més sobre 52°North SOS i la comunitat de sensors web de 52°North, alguns llocs per on començar són:

* 52°North :doc:`SOS overview <../overview/52nSOS_overview>`,
* Llista de correu de sensors web de 52°North: swe@52north.org, 
* Mireu el fòrum de sensors web de 52°North `<http://sensorweb.forum.52north.org/>`_, 
* Comproveu el client SOS de 52°North `<http://sensorweb.demo.52north.org/SOSclient/>`_,
* Pàgina web de 52°North SOS `<http://52north.org/communities/sensorweb/sos/>`_, or 
* Lloc web de la `comunitat de sensors web 52°North <http://52north.org/communities/sensorweb/>`_.

* Quan el SOS no és disponible, si us plau comproveu que el tomcat és en funcionament fent servir la següent comanda:

::

  user@osgeolive:~$ sudo /etc/init.d/tomcat6 status
  * Tomcat servlet engine is running with pid 1234          <-- Tomcat és en funcionament
  [...]
  * Tomcat servlet engine is not running.                   <-- Tomcat no és en funcionament, pel que cal posar-lo en marxa:
  user@osgeolive:~$ sudo /etc/init.d/tomcat6 start
  * Starting Tomcat servlet engine tomcat6           [ OK ] <-- Ara, Tomcat és en funcionament
  
**Listing 1:** Estat de Tomcat i inici (Contrasenya per a executar sudo: user)

* El desenvolupament d'aquesta versió de 52°North SOS va ser recolzat per el projecte europeu de recerca FP7 `EO2HEAVEN <http://www.eo2heaven.org/>`_ (co-finançat per la Comissió Europea amb l'acord de subvenció nº244100):

.. image:: ../../images/project_logos/logo_52North_other_200px.png
  :scale: 100 %
  :alt: EO2HEAVEN - Observació terrestre i modelització ambiental per a la mitigació dels riscos a la salut
  :align: center
  :target: http://www.eo2heaven.org/

