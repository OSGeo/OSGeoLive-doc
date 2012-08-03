:Author: OSGeo-Live
:Author: Cameron Shorter
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
Créer une clé flash USB OSGeo-Live amorçable
********************************************************************************

Ici nous décrivons comment créer une clé flash USB OSGeo-Live amorçable. Démarrez à partir d'une clé flash USB OSGeo-Live amorçable est plus rapide que depuis un DVD, et le lecteur USB peut être configuré pour conserver des données entre les sessions.

Nous avons trouvé qu'il y a un nombre de trucs et astuces incluses dans la réalisation réussie d'une clé flash USB OSGeo-Live amorçable. Nous avons documenté ce que nous savons, mais il y a probablement d'autres trucs et questions. Regardez les dernières astuces ici: http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB

Exigences
--------------------------------------------------------------------------------

* Une clé flash USB 4 GB, si vous utilisez la version osgeo-live-mini (sans les installateurs Windows ni Mac)
* Une clé flash USB 8 GB, si vous utilisez la version osgeo-live (avec les installateurs Windows et Mac)
* Un DVD OSGeo-Live ou une image ISO (téléchargée depuis : http://live.osgeo.org/en/download.html)

Créer une clé flash USB depuis Ubuntu
--------------------------------------------------------------------------------

(Ceci est le processus recommandé pour créer une clé USB, et s'applique aussi pour les variantes d'Ubuntu, telles que Xubuntu ou OSGeo-Live.)

.. note::
   La version d'Ubuntu que vous utilisez, nécessite d'être la même ou plus récente à la version de Xubuntu installée sur votre clé USB. Si vous installez OSGeo-Live 5.0/5.5 sur une clé USB, vous avez alors besoin d'Ubuntu 11.04 ou d'une version plus récente.

Téléchargez osgeo-live ou osgeo-live-mini sur le disque dur de votre ordinateur.

Insérez la clé flash USB dans votre ordinateur.

  .. image:: ../../images/screenshots/800x600/usb_select.png
    :scale: 70 %

Sélectionnez :menuselection:`System --> Administration --> Startup Disk Creator`, ou cherchez `Startup Disk Creator` dans l'unité du bureau.

  .. image:: ../../images/screenshots/800x600/usb_set_params.png
    :scale: 70 %

Sélectionnez osgeo-live ou l'image ISO osgeo-live-mini.

Sélectionnez la clé USB flash.

Sélectionnez :guilabel:`Make Startup Disk`

  .. image:: ../../images/screenshots/800x600/usb_installing.png
    :scale: 70 %

Attendez 20 minutes ou jusqu'à que la clé flash USB soit créée.

Créer une clé flash USB depuis Windows
--------------------------------------------------------------------------------

Insérez une clé USB dans votre ordinateur.

Téléchargez et faites fonctionner l'installateur universel USB depuis: http://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3/

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_licence.gif

Acceptez les termes de la licence.

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_selection.gif

Etape 1: Distribution: Sélectionez la distribution xubuntu i386 utilisée pour l'image osgeo-live. (pour OSGeo-Live 5.5, sélectionez xubuntu 11.04 Desktop i386)

Etape 2: Sélectionnez la dernière image iso osgeo-live que vous devez avoir téléchargée localement. Note: Vous aurez besoin d'entrer manuellement le chemin du fichier ISO, avec le bouton :guilabel:`Browse` seulement s'il trouve les fichiers iso xubuntu.

Etape 3: Sélectionez votre clé flash USB flash

Etape 4: Sélectionnez Permanente si vous souhaitez conserver l'état entre les sessions.

Sélectionnez :guilabel:`Create`

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_installing.gif

Attendez 20 minutes ou jusqu'à ce que la clé flash USB soit créée.

Créer une clé USB démarrable dans les différents systèmes d'exploitation
--------------------------------------------------------------------------------

Etape 1: Installez UNetbootin (téléchargé depuis: http://unetbootin.sourceforge.net/).

Etape 2: Insérez une clé flash USB dans votre ordinateur.

Etape 3: Démarrer UNetbootin, sélectionner Diskimage (la clé flash USB est sélectionnée automatiquement).

Etape 4: Sélectionnez le fichier ISO OSGeoLive.

Sélectionnez :guilabel:`OK`

  .. image:: ../../images/screenshots/1024x768/unetbootin_live_osgeo.png

Lancez l'ordre de boot du BIOS:
--------------------------------------------------------------------------------

La plupart des ordinateurs ne sont pas faits pour booter par défaut depuis une clé USB.

Pour permettre cela, démarrez votre ordinateur, et choisissez la clé approprié quand vous êtes prêt à entrer dans le BIOS (habituellement en appuyant sur la touche <Delete> ou <Function Key> ou similaire).

Sélectionnez de démarrer depuis la clé USB.

Notez que pour certains ordinateurs vous aurez besoin d'avoir une lecteur USB externe inséré dans votre ordinateur afin de le sélectionner.

Notez aussi que le lecteur USB est souvent listé sous les lecteurs de disque dur plutôt que sous les lecteurs externes. 

Démarrez:
--------------------------------------------------------------------------------

Démarrez ainsi: :doc:`osgeolive_quickstart`

Problèmes connus:
--------------------------------------------------------------------------------

* Les ordinateurs Mac ne démarreront pas depuis cette clé USB flash amorçable, veuillez utiliser le LiveDVD 

Voir aussi:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`virtualbox_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * Si vous rencontrez des problèmes, veuillez les adresser sur cette page du wiki: http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB et discutez-en sur notre mailing-list: http://lists.osgeo.org/mailman/listinfo/live-demo
 * Pour davantage d'option concernant l'amorçage USB, voir http://pendrivelinux.com 
