:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Anna Muñoz
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: logotip del projecte
  :align: right
  :target: http://52north.org/sos


52°North SOS (Servei d'Observació de Sensors)
================================================================================

Servei Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

El :doc:`Servei d'Observació de Sensors (SOS) <../standards/sos_overview.html>` 
52ºNorth permet tant la lectura de dades capturades en temps real com les emmagatzemades en arxius, 
així com les que hagin estat capturades tant per sensors in-situ com remots. Els sensors poden ser 
de tipus molt diferents, com per exemple una càmera digital en un satèl·lit o 
bé un dispositiu per mesurar el cabdal d'un riu. 

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_v1.0.0_GetCapabilities.png
  :scale: 100 %
  :alt: captura de pantalla d'un client SOS
  :align: right

Característiques
--------------------------------------------------------------------------------

L'actual projecte 52°North SOS (versió 3.1.1) implementa el nucli, les operacions transaccionals,
i parts de l'especificació SOS que s'han millorat. Aquesta versió implementa la darrera versió 
de l'esquema (1.0.0) i les següents operacions:

**Operacions del nucli SOS**:

* GetCapabilities, per consultar una descripció del propi servei.
* GetObservation, per consultar les dades obtingudes directament dels sensors i codificades segons es descriu en Observacions & Mesures (O&M)
* DescribeSensor, per consultar les metadades del propi sensor codificades en Llenguatge de Modelització de Sensors (SensorML, Sensor Model Language).

**Operacions transaccionals de SOS**:

* RegisterSensor, per registrar nous sensors.
* InsertObservation, per insertar noves observacions de sensors registrats.

**Operacions adiccionals SOS**:

* GetResult, per facilitar la consulta periódica de les dades dels sensors.
* GetObservationById, per obtenir observacions individuals d'un tipus específic.
* GetFeatureOfInterest, per consultar l'element obtingut de l'observació en format GML.
* GetFeatureOfInterestTime, per determinar la disponibilitat temporal de les dades del sensor.

**Client**:

* Un navegador que permet consultes XML per a totes les operacions suportades.

Estàndards implementats
--------------------------------------------------------------------------------

* `Estàndards OGC del Servei d'Observació de Sensors (SOS) <http://www.ogcnetwork.net/SOS>`_

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://52north.org/communities/sensorweb/sos

**Llicència:** GNU General Public License (GPL) versió 2

**Versió del programari:** SOS 3.2.0

**Plataformes suportades:** Windows, Linux, Mac

**API Interfaces:** Java

**Suport comercial:** http://52north.org/

**Suport de la comunitat:** http://sensorweb.forum.52north.org/

**Lloc web de la comunitat:** http://52north.org/communities/sensorweb/

Guia d'inici ràpid
--------------------------------------------------------------------------------

* :doc:`Documentació de la guia d'inici ràpid <../quickstart/52nSOS_quickstart>`

