:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org), Daniel Nüst (d.nuest@52north.org)
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: Logo du projet
  :align: right
  :target: http://52north.org/sos


52°North SOS
================================================================================

Service Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>` de 52°North supporte la lecture en directe  et la capture de données compressées depuis des capteurs in-situ et distants. Un capteur peut aussi bien être une caméra sur un satellite qu'une échelle pour mesurer le niveau d'eau dans un courant.
 
.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_v1.0.0_GetCapabilities.png
  :scale: 60 %
  :alt: Capture d'écran du client de test de 52°North SOS version 1.0.0
  :align: right

Caractéristiques
--------------------------------------------------------------------------------

* Implémente les standards SOS 1.0.0 et 2.0.0.

* Un client basé sur une interface web fournit des requêtes de test en XML pour 
toutes les opérations supportées.


OGC SOS 1.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Opérations principales de SOS**:

* GetCapabilities, pour demander une description automatique du service interrogé.
* GetObservation, pour demander les données pures encodées en suivant le standard Observations & Measurements (O&M).
* DescribeSensor, pour demander les informations sur le capteur en lui-même, encodé dans un document d'instance Sensor Model Language (SensorML).

**Opérations SOS transactionnelles**:

* RegisterSensor, pour enregistrer nouveaux capteurs.
* InsertObservation, pour ajouter de nouvelles observations pour des capteurs enregistrés.

**Opérations SOS supplémentaires**:

* GetResult, pour faciliter l'interrogation périodique des données du capteur.
* GetObservationById, pour récupérer des observations individuelles spécifiques.
* GetFeatureOfInterest, pour demander la représentation encodée en GML de l'objet qui est la cible de l'observation.
* GetFeatureOfInterestTime, pour déterminer la disponibilité temporelle de la donnée du capteur.

OGC SOS 2.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* GetCapabilities, pour demander une description automatique du service interrogé.
* GetObservation, pour demander les données pures encodées en suivant le standard Observations & Measurements (O&M).
* DescribeSensor, pour demander les informations sur le capteur en lui-même, encodé dans un document d'instance Sensor Model Language (SensorML).
* GetFeatureOfInterest, pour demander la représentation encodée en GML de l'objet qui est la cible de l'observation.

Pour ces requêtes, les opérateurs de filtrage suivants sont possibles:

* Filtre spatial: BBOX, en utilisant un rectngle englobant.
* Filtre temporel: During, avec une période.
* Filtre temporel: TEquals, avec une heure donnée.

Standards associés
--------------------------------------------------------------------------------

* :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>`
* :doc:`Geography Markup Language (GML) <../standards/gml_overview>`
* :doc:`Sensor Model Language (SensorML) <../standards/sensorml_overview>`

Détails
--------------------------------------------------------------------------------

**Site web:** http://52north.org/communities/sensorweb/sos

**Licence:** Licence GNU General Public (GPL) version 2

**Version du logiciel:** SOS 3.5.0

**Plateformes supportées:** Windows, Linux, Mac

**Interface de l'API:** Java

**Support commercial:** http://52north.org/

**Support communautaire:** http://sensorweb.forum.52north.org/

**Site web communautaire:** http://52north.org/communities/sensorweb/

Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/52nSOS_quickstart>`

