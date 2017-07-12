
:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Author: Daniel Nüst (d.nuest@52north.org)
:Author: Simon Jirka (s.jirka@52north.org)
:Author: Ann Hitchcock (a.hitchcock@52north.org)
:Reviewer: Cameron Shorter (Jirotech), Nicolas Roelandt
:Version: osgeo-live11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :alt: 52°North - exploring horizons (Logo du projet)
  :align: right
  :target: http://52north.org/sos


52°North SOS
================================================================================

Service Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>` de 52°North supporte 
la lecture en directe et la capture de données compressées depuis des capteurs in-situ et distants. 
Un capteur peut aussi bien être une caméra sur un satellite qu'une échelle pour mesurer le niveau d'eau 
dans un courant, une station météo ou de mesure de la qualité de l'air.
 
.. image:: /images/screenshots/1024x768/52n_sos_overview.png
  :scale: 60 %
  :alt: Capture d'écran du client javascript de 52°North SOS
  :align: right

Caractéristiques
--------------------------------------------------------------------------------

* **Client web**: l'application SOS est livrée avec une application basée sur des technologies web.
  Elle fournit les moyens d'administrer et de configurer l'instance de service,
  ainsi que des requêtes pour les opérations SOS; 
  des requêtes appropriées à titre d'exemple sont fournies.
* **Helgoland**: SOS contient aussi l'application Helgoland pour l'exploration,
  l'analyse et la visualisation de données issues de réseaux de capeurs dans divers champs d'applications, 
  Par exemple, l'hydrologie, la météorologie, la surveillance de l'environnement, la gestion du trafic.
* **Specifications**: 52°North SOS implémente les spécifications actuelles version 2.0.0 et la
  version 1.0.0 précédente (sans opération transactionnelle). 
  Les opérations implémentées pour chaque version du standard sont listées ci-dessous.
* **INSPIRE Download Service Extension**: A partir de la version 4.2.0, une
extension permet à SOS d'être utiliser comme service de téléchargement INSPIRE. 
Des informations de contexte sont fournis sur `le post de blog
  <http://blog.52north.org/2014/01/30/52north-supports-the-jrc-in-developing-an-inspire-download-service-based-on-sos/>`_
  et dans le `wiki
  <https://wiki.52north.org/bin/view/SensorWeb/SensorObservationServiceIVDocumentation#INSPIRE_Download_Service_extensi>`_ .
* **Air Quality Data e-Reporting Extension**: A partir de la version 4.3.0, une
extension est disponible pour fournir des flux de données sur la qualité de l'air. Les données sont compatibles E1a,
  E1b et E2a(l'instance d'OSGeo-Live n'est toutefois pas configurée pour). 
L'`installation et la configuration
  <https://wiki.52north.org/bin/view/SensorWeb/AqdEReporting#Installation>`_
  sont documentées dans le wiki de 52°North.
* **RESTful API for Timeseries**: A compter de la version 4.1.1., une version
packagée est disponible, qui fournit directement l'`API RESTful 
<https://wiki.52north.org/bin/view/SensorWeb/SensorWebClientRESTInterface>`_.
  Ainsi, les séries temporelles peuvent être requêtées via RESTful avec des requêtes encodées en JSON.
  Plus de détails sont inclus dans la documentation
  `SOS webapp <http://localhost:8080/52nSOS/static/doc/api-doc/>`_.
* **Lire plus**: les `détails des fonctionnalités implémentées
  <https://wiki.52north.org/bin/view/SensorWeb/SensorObservationServiceIVDocumentation#Features>`_
  peuvent être trouvés sue le wiki de 52°North.

SOS Operations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Requêtes**:

* GetCapabilities: pour demander une description automatique du service interrogé.
* DescribeSensor: pour demander les informations sur le capteur.
* GetFeatureOfInterest/ GetFeatureOfInterestTime (from 1.0): pour demander des entités (par exemple la localisation des capteurs / mesures).
* GetObservationById / GetObservation: pour demander les données des issues des capteurs.
* GetResult (depuis les spécifications version 2.0):  pour demander les données des issues des capteurs.
* GetResultTemplate (depuis les spécifications version 2.0):  pour demander  un modèle de la structure du résultat 
  qui sera retourné pour une requête GetResult.
* GetDataAvailability (à partir de `SOS 2.0 Hydrology Profile - OGC Best Practice
  <http://docs.opengeospatial.org/bp/14-004r1/14-004r1.html#38>`_): pour
  demander la disponibilité des données pour certaines configurations.

**Opérations SOS transactionnelles**:

* InsertSensor (depuis les spécifications version 2.0): pour insérer les métadonnées de nouveaux capteurs.
* InsertObservation (depuis les spécifications version 2.0):  pour ajouter de nouvelles observations.
* UpdateSensorDescription (depuis les spécifications version 2.0): for updating the description of a sensor.
* DeleteSensor (depuis les spécifications version 2.0): pour supprimer un capteur/procédure et toutes les 
  propositions et observations liées.
* DeleteObservation (depuis les spécifications version 2.0): pour supprimer une observation.
* InsertResultTemplate (depuis les spécifications version 2.0): pour insérer un modèle de résultat.
* InsertResult (depuis les spécifications version 2.0): pour insérer des résultats.
* InsertFeatureOfInterest pour l'insertion d'entités
* DeleteResultTemplate pour la suppression de modèles de résultat par indentifiant
  ou des paires proposition / propriété observée.

Pour ces requêtes, les opérateurs de filtrage suivants sont possibles:

* Filtre spatial: BBOX, en utilisant un rectangle englobant.
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

**Version du logiciel:** SOS |version-52nSOS|

**Plates-formes supportées:** Windows, Linux, Mac

**Versions de Java supportées:** 7+, (bundle version: 8+)

**Interface de l'API:** Java, HTTP + JSON/XML/SOAP/KVP

**Support commercial:** http://52north.org/

**Support communautaire:** http://sensorweb.forum.52north.org/

**Site web communautaire:** http://52north.org/communities/sensorweb/

Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Guide de démarrage rapide <../quickstart/52nSOS_quickstart>`

