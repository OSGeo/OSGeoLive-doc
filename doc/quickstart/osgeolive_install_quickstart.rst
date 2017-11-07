:Author: OSGeoLive
:Author: Cameron Shorter
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
Install OSGeoLive to Hard Disk
********************************************************************************

OSGeoLive can be installed onto your hard disk, the same way an Ubuntu
distribution is installed.

This process can also be run inside a Virtual Machine to create a permanent
OSGeoLive Virtual Machine from a DVD or ISO image.

System Requirements
--------------------------------------------------------------------------------

* |osgeo-live-hdspace| of spare Hard Disk Space

Install OSGeoLive
--------------------------------------------------------------------------------

  .. image:: /images/projects/osgeolive/osgeolive_install_start.png
    :scale: 70 %

Select :guilabel:`Install RELEASE`

  .. image:: /images/projects/osgeolive/osgeolive_install_password.png
    :scale: 70 %

Enter password="user"

  .. image:: /images/projects/osgeolive/osgeolive_install1_language.png
    :scale: 70 %

Select language

  .. image:: /images/projects/osgeolive/osgeolive_install2_timezone.png
    :scale: 70 %

Select timezone

  .. image:: /images/projects/osgeolive/osgeolive_install3_keyboard.png
    :scale: 70 %

Select keyboard

  .. image:: /images/projects/osgeolive/osgeolive_install4_disk.png
    :scale: 70 %

Specify which disk to want to install on. (Beware, this may delete an existing
  installed partition).

  .. image:: /images/projects/osgeolive/osgeolive_install5_username.png
    :scale: 70 %

Defaults for settings are:

   * Name = "user"
   * username = "user"
   * password = "user"
   * computer name = "osgeolive"
   * Log In automatically

  .. image:: /images/projects/osgeolive/osgeolive_install7_check.png
    :scale: 70 %

Select :guilabel:`Install`

Go and get a cup of coffee while installation is in progress.

That is it.

.. tip:: Installation Tips
      In case you are installing using a username other than "user", tomcat applications require to 
      have permission to service command as described in http://trac.osgeo.org/osgeo/ticket/1153

See Also:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`virtualization_quickstart`
 * :doc:`usb_quickstart`

