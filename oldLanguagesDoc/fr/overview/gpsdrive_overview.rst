:Author: Hamish Bowman
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported  (CC BY 3.0)

.. image:: /images/project_logos/logo-gpsdrive.png
  :alt: Logo du projet
  :align: right
  :target: http://www.gpsdrive.de


GpsDrive
================================================================================

Logiciel de navigation GPS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`GpsDrive <http://www.gpsdrive.de>`_ est un système de navigation en voiture
(en vélo, en bateau, en avion, à pied).
GpsDrive affiche votre position fournie par le GPS sur une carte zoomable.
Le fichier de carte est sélectionné automatiquement en fonction de votre position
et de l'échelle de préférence. Tous les récepteurs GPS qui supportent le protocole NMEA
devraient être utilisables, aussi bien que de nombreux GPS USB utilisant un protocole binaire connu 
comme le démon et multiplexeur GPS `Gpsd <http://gpsd.berlios.de>`_ .

Caractéristiques principales
--------------------------------------------------------------------------------

.. image:: /images/screenshots/gpsdrive/gpsdrive-cyclemap.png
  :scale: 50 %
  :alt: Capture d'écran GpsDrive
  :align: right

* téléchargement de données LANDSAT ou OpenStreetMap depuis le Web, ou enregistrez vos propres images
* affichage direct des données d'OpenStreetMap enregistrées dans une base de données PostGIS utilisant Mapnik
* affichage direct des données de la mosaïque haute résolution Blue Marble de la NASA
* commandes verbales utilisant eSpeak
* tableau de bord et interface graphique utilisateur (GUI) très personnalisables
* support des traces et routes GPX, options de stockage d'un nombre de points comprenant SQLite
  et compatible avec des fichiers texte de GpsBabel 
* recherche des POI les plus proches à l'intérieur d'un rayon donné
* préparation d'itinéraires
* serveur inclus pour garder la trace des positions des vos amis
* intégration du Wifi Kismet

Détails
--------------------------------------------------------------------------------

**Site web:** http://www.gpsdrive.de

**License:** GNU General Public License (GPL) version 2

**Version du logiciel:** 2.12svn

**Plate-formes supportées:** GNU/Linux, Mac OSX

**Support:** http://gpsdrive.de/support.shtml


Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/gpsdrive_quickstart>`
