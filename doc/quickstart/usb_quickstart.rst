:Author: OSGeoLive
:Author: Alex Mandel, Cameron Shorter
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeolive7.9
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
Creating an OSGeoLive Bootable USB flash drive
********************************************************************************

This quickstart describes the preferred method for creating a Bootable OSGeoLive USB flash drive. Booting from a flash drive is faster than from a DVD, and the USB drive can be configured to store data between sessions (called persistence).

We have found that there are a number of quirks and tricks involved in successfully building a USB drive. We have documented what we know, but there are likely more tricks and issues. Look for latest tips here: https://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB

Requirements
--------------------------------------------------------------------------------

* A USB flash drive (at least 4 Gig, 8+ Gig is recommended).
* An OSGeoLive ISO image (downloaded from: http://live.osgeo.org/en/download.html) or converted from a DVD.

 * For a 4 GB USB flash drive, use osgeolive-mini ISO (without Windows and Mac installers), without persistence.
 * For a 8+ GB USB flash drive, use either osgeolive-mini ISO, or osgeolive ISO (with Windows and Mac installers). 8+ GB is recommended if you wish to support persistence.

Creating bootable USB drive with ``dd`` under Linux
--------------------------------------------------------------------------------

ISO images for OSGeoLive 10.5 and later are *isohybrid* (and for amd64, also support UEFI boot). Under Linux, these images can be written directly to the block device for a USB drive with the ``dd`` command-line utility:

.. code-block:: console

   sudo dd if=osgeolive-10.5-amd64.iso of=/dev/sdX bs=4M; sync

* ``/dev/sdX`` is the block device for the USB drive, where ``X`` might be ``b`` or ``c``.
* Use ``lsblk`` to list block devices and ``dmesg`` to see kernel messages identifying the USB drive when it is connected.
* The USB drive should not be mounted.
* ``sudo`` is not required if the command is run as ``root``.

.. warning::
   Be certain to select the correct block device as ``dd`` will overwrite it without question, even if it is your primary system drive.

Creating bootable USB drive with Ubuntu Startup Disk Creator
--------------------------------------------------------------------------------

(This is the recommended process for creating a USB. It is applicable to Ubuntu and Ubuntu variants such as OSGeoLive.)

.. note::
   The version of Ubuntu you are running, needs to be the same or newer than the version of Lubuntu being installed onto your USB.  If installing OSGeoLive 8.0 onto a USB, then you will need to be running Ubuntu 14.04 or newer.

`Download <http://live.osgeo.org/en/download.html>`_ osgeolive or osgeolive-mini to your computer's hard drive. 

Boot your computer into a recent Ubuntu/Xbuntu distribution. You can do this by running from an OSGeoLive DVD, as explained in :doc:`osgeolive_quickstart`.

Insert the USB flash drive into your computer.

  .. image:: /images/projects/osgeolive/usb_select.png
    :scale: 70 %

Select :menuselection:`System Tools --> Startup Disk Creator`, or search for `Startup Disk Creator` from the Unity desktop.

  .. image:: /images/projects/osgeolive/usb_set_params.png
    :scale: 70 %

Select the osgeolive or osgeolive-mini ISO Image that you downloaded earlier.

Select the USB flash drive. If you have extra room you might adjust the slider to create persistent storage space on the USB drive (recommended). In order for this option to be available you will need an 8+ GB USB flash drive.

Select :guilabel:`Make Startup Disk`

  .. image:: /images/projects/osgeolive/usb_installing.png
    :scale: 70 %

Wait 20 minutes or so for the USB flash drive to be created.


Booting from the USB drive:
--------------------------------------------------------------------------------

#. Start with the computer off.
#. Insert the USB drive into an open USB port.
#. Power on the Machine and select to boot from USB:

   * Most computers are not set to boot from a USB drive by default.
   * When booting, look for a message indicating a Boot Menu (most commonly you press F12)
   * If your computer does not have a boot menu, then boot into your system BIOS. The button to enter BIOS varies by brand and model of computer. If you can't figure out yours try this website that lists many BIOS hotkeys. http://www.mydigitallife.info/comprehensive-list-of-how-key-to-press-to-access-bios-for-various-oem-and-computer-systems/

#. Select to boot from the USB device.

   * Note, that for some computers you will need to have the USB drive inserted into the computer in order to select it.
   * Note also, the USB drive is often listed under hard drives rather than removable devices. 
   * This `Video <http://www.youtube.com/watch?v=eQBdVO-n6Mg>`_ demonstrates booting from USB.

Run:
--------------------------------------------------------------------------------

Run as per: :doc:`osgeolive_quickstart`

See Also:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`virtualization_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * Alternative USB creation methods and latest tips are collected here: `wiki <https://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB>`_
 * Questions can be directed to our email list: https://lists.osgeo.org/pipermail/osgeolive/
