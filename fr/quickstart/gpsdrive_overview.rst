:Author: Hamish Bowman
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported  (CC BY 3.0)

.. image:: ../../images/project_logos/logo-gpsdrive.png
  :scale: 80 %
  :alt: project logo
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
devraient être utilisables, aussi bien que de de nombreux GPS USB utilisant un protocole binaire connu 
comme `Gpsd <http://gpsd.berlios.de>`_ GPS daemon and multiplexer.

Eléments centraux
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/1024x768/gpsdrive-cyclemap.png
  :scale: 50 %
  :alt: screenshot
  :align: right

* téléchargement de données LANDSAT ou OpenStreetMap depuis le Web, ou enregistrez vos propres images
* Affichage direct des données d'OpenStreetMap enregistrées dans une base de données PostGIS utilisant Mapnik
* Affichage direct des données de la mosaïque haute résolution Blue Marble de la NASA
* Commandes verbales utilisant eSpeak
* Tableau de bord et interface graphique utilisteur (GUI) hautement adaptables
* Support les traces et routes GPX, options de stockage d'un nombre de points comprenant SQLite
et compatible avec des fichiers plein texte de GpsBabel 
* Recherche des POI les plus proche à l'intérieur d'un rayon donné
* Préparation d'itinéraires
* Serveur inclus pour garder la trace des positions des vos amis
* Intégration du Wifi Kismet

Détails
--------------------------------------------------------------------------------

**Site Web:** http://www.gpsdrive.de

**License:** GNU General Public License (GPL) version 2

**Version du logiciel:** 2.12svn

**Plateformes supportées:** GNU/Linux, Mac OSX

**Support:** http://gpsdrive.de/support.shtml


Démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/gpsdrive_quickstart>`