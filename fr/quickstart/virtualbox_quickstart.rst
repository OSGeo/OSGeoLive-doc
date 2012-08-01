:Author: OSGeo-Live
:Author: Cameron Shorter
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
OSGeo-Live Quickstart for Virtual Box
********************************************************************************

Nous décrivons ici une méthode pour faire fonctionner un DVD OSGeo-Live DVD ou une image ISO dans la Machine Virtuelle `VirtualBox <http://www.virtualbox.org/>`.

VirtualBox est une Machine Virtuelle Open Source qui est utilisée par de nombreux développeurs et testeurs du OSGeo-Live.

Configuration requise
--------------------------------------------------------------------------------

* RAM: 1 GB, de préférence 2 GB si vous prévoyez de faire fonctionner d'autres applications
* Spare Hard Disk Space:

 * |osgeo-live-hdspace| s'il fonctionne depuis l'image ISO
 * 17 GB si vous installez localement depuis l'image ISO

Créez une Machine Virtuelle
--------------------------------------------------------------------------------
Téléchargez et installez`la Virtual Box<http://www.virtualbox.org/>`_. Sur linux faites ainsi:

  ``apt-get install virtualbox-ose``

Ouvrez la Virtual Box 

  .. image:: ../../images/screenshots/800x600/virtualbox.png
    :scale: 70 %

Sélectionnez :guilabel:`New` pour créer une nouvelle Machine Virtuelle.

  .. image:: ../../images/screenshots/800x600/virtualbox_create_vm.png
    :scale: 70 %

Sélectionnez :guilabel:`Next`

  .. image:: ../../images/screenshots/800x600/virtualbox_select_name.png
    :scale: 70 %

Indiquez un nom pour l'image, et sélectionnez "Linux", "Ubuntu".

  .. image:: ../../images/screenshots/800x600/virtualbox_memory.png
    :scale: 70 %

Indiquez la mémoire de base au plus à 768 MB, 1 GB est mieux pour essayer les applications absées sur java.

  .. image:: ../../images/screenshots/800x600/virtualbox_no_hard_disk.png
    :scale: 70 %

Installation simple: Déselectionnez "Boot Hard Disk", la Machine Virtuelle démarrera toujouirs depuis un DVD simulé.

Si vous voulez avoir une machine virtuelle permanente, qui conserve l'état entre les sessions et qui a amélioré les paramètres de résolution de l'écran et les outils, inluez alors le disque dur, et installez-la plus tard.

  .. image:: ../../images/screenshots/800x600/virtualbox_warning_no_hard_disk.png
    :scale: 70 %

Sélectionnez :guilabel:`Continue`

  .. image:: ../../images/screenshots/800x600/virtualbox_final_check.png
    :scale: 70 %

Sélectionnez :guilabel:`Finish`

  .. image:: ../../images/screenshots/800x600/virtualbox_select_settings.png
    :scale: 70 %

L'image est maintenant créée, mais nous avons maintenant besoin de simuler avoir un DVD OSGeo-Live dans le lecteur de CD.

Click-droit sur l'image "osgeo-live", et sélectionnez :guilabel:`Settings`.

  .. image:: ../../images/screenshots/800x600/virtualbox_set_cd.png
    :scale: 70 %

Sélectionnez "Storage", CD/DVD Device, ...

  .. image:: ../../images/screenshots/800x600/virtualbox_add_dvd.png
    :scale: 70 %

Sélectionnez l'image OSGeo-Live.

  .. image:: ../../images/screenshots/800x600/virtualbox_start_vm.png
    :scale: 70 %

Maintenant vous pouvez démarrer la machine virtuelle ainsi :doc:`osgeolive_quickstart`

Créez une Machine Virtuelle permanente
--------------------------------------------------------------------------------
Si vous prévoyez d'utiliser souvent le DVD OSGeo-Live DVD, vous apprécierez de créer une machine virtuelle permanente, ainsi: :doc:`osgeolive_install_quickstart`.

Augmentez la taille d'affichage
--------------------------------------------------------------------------------
Vous pouvez ajouter les outils d'amorçage virtuel qui supportent une résolution d'écran plus importante, copiez et collez entre l'invité et le host, l'accélération graphique, et davantage.

Assurez-vous que votre ordinateur est connecté sur internet.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_menu.png
    :scale: 70 %

Sélectionnez l'application de gestion des paquets synaptiques.

Entrez le mot de passe = "user"

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_select_tools.png
    :scale: 70 %

Marquez "virtualbox-ose-guest-utils" pour l'installation.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_apply.png
    :scale: 70 %

Appliquez les changements.

Redémarrez la machine virtuelle et affichez les paramètres pour trouver les paramètres d'affichage de votre ordinateur. Cela peut être changé depuis:

Sélectionnez: :menuselection:`Applications --> Settings --> Xfce 4 Settings Manager --> Display`

Voir aussi:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

