:Author: Jan Drewnak (j.drewnak@52north.org)
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :alt: Logo du projet
  :align: right
  :target: http://52north.org/security

52°North WSS
================================================================================

Au sujet
--------------------------------------------------------------------------------

52North Web Security Service (WSS) vous permet de restreindre facilement l'accès 
aux services spatiaux et à leurs ressources en utilisant des droits d'accès basés 
sur le rôle de l'utilisateur.

Avec 52North WSS, vous pouvez définir des droits d'accès tels que:

  *Tous les utilisateurs ayant le rôle «externe» sont autorisés à accéder seulement aux couches A et B du WMS avec GetMap*

ou

  *GetFeatureInfo est autorisé uniquement sur la couche A dans une zone spécifique définie par un rectangle englobant*

52North WSS est une application Web Java qui s'exécute généralement dans un 
conteneur de servlet Apache Tomcat.
Il agit comme un proxy pour un nombre arbitraire de services web OGC, recevant 
toutes les demandes et agissant suivant les politiques définies. Ainsi, les 
implémentations de services existantes n'ont pas besoin d'être changées.
Les politiques et les utilisateurs sont définis dans les fichiers de 
configuration XML, qui sont gérés à partir d'une interface de gestion.

.. image:: /images/screenshots/1024x768/52n_wss_mgmt.png
  :scale: 70 %
  :alt: Capture d'écran de l'interface de gestion WSS
  :align: right

Caractéristiques
--------------------------------------------------------------------------------

**Autorisation**

Inclut la protection de:

* Web Mapping Service (WMS): les couches, l'étendue spatiale
* Web Feature Service (WFS): les types d'entités, les entités et leurs attributs, les étendues spatiales
* Sensor Observation Service (SOS): les offres d'observations, les procédures, les étendues spatiales, les étendues temporelles
* Web Processing Service (WPS): les processus

**Authentification**

Plusieurs méthodes d'authentification des utilisateurs sont prises en charge, tels que:

* Authentification HTTP basique
* Assertions SAML (Security Assertions Markup Language)
* ... et d'autres


Détails
--------------------------------------------------------------------------------

**Site Web:** http://52north.org/communities/security

**License:** GNU General Public License (GPL) version 2

**Version du logiciel:** WSS 2.2.0

**Plates-formes supportées:** Windows, Linux, Mac

**Interface de l'API:** Java

**Support commercial:** http://52north.org/


Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/52nWSS_quickstart>`
