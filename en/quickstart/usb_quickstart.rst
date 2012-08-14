:Author: OSGeo-Live
:Author: Alex Mandel, Cameron Shorter
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
Creating an OSGeo-Live Bootable USB flash drive
********************************************************************************

This quickstart describes the preferred method for creating a Bootable OSGeo-Live USB flash drive. Booting from a flash drive is faster than from a DVD, and the USB drive can be configured to store data between sessions.

We have have found that there are a number of quirks and tricks involved in successfully building a USB drive. We have documented what we know, but there are likely more tricks and issues. Look for latest tips here: http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB

Requirements
--------------------------------------------------------------------------------

* A USB flash drive (at least 4 Gig, 8 Gig is recommended).
* An OSGeo-Live ISO image (downloaded from: http://live.osgeo.org/en/download.html) or converted from a DVD.

 * For a 4 GB USB flash drive, use osgeo-live-mini ISO (without Windows and Mac installers)
 * For a 8 GB USB flash drive, use either osgeo-live-mini ISO, osgeo-live ISO (with Windows and Mac installers)


Creating bootable USB drive from Ubuntu
--------------------------------------------------------------------------------

(This is the recommended process for creating a USB. It is applicable to Ubuntu and Ubuntu variants such as Xubuntu and OSGeo-Live.)

.. note::
   The version of Ubuntu you are running, needs to be the same or newer than the version of Xubuntu being installed onto your USB.  If installing OSGeo-Live 6.0 onto a USB, then you will need to be running Ubuntu 12.04 or newer.

`Download <http://live.osgeo.org/en/download.html>`_ osgeo-live or osgeo-live-mini to your computer's hard drive. 

Boot your computer into a recent Ubuntu/Xbuntu distribution. You can do this by running from an OSGeo-Live DVD, as explained in :doc:`osgeolive_quickstart`.

Insert the USB flash drive into your computer.

  .. image:: ../../images/screenshots/800x600/usb_select.png
    :scale: 70 %

Select :menuselection:`Applications --> System --> Startup Disk Creator`, or search for `Startup Disk Creator` from the Unity desktop.

  .. image:: ../../images/screenshots/800x600/usb_set_params.png
    :scale: 70 %

Select the osgeo-live or osgeo-live-mini ISO Image that you downloaded earlier.

Select the USB flash drive. If you have extra room you might adjust the slider to create persistent storage space on the USB drive (recommended).

Select :guilabel:`Make Startup Disk`

  .. image:: ../../images/screenshots/800x600/usb_installing.png
    :scale: 70 %

Wait 20 minutes or so for the USB flash drive to be created.


Booting from the usb drive:
--------------------------------------------------------------------------------

#. Start with the computer off.
#. Insert the usb drive into an open usb port.
#. Power on the Machine and select to boot from USB:

   * Most computers are not set to boot from a USB drive by default.
   * When booting, look for a message indicting a Boot Menu (most commonly you press F12)
   * If your computer does not have a boot menu, then boot into your system BIOS. The button to enter BIOS varies by brand and model of computer. If you can't figure out yours try this website that lists many BIOS hotkeys. http://www.mydigitallife.info/comprehensive-list-of-how-key-to-press-to-access-bios-for-various-oem-and-computer-systems/

#. Select to boot from the USB device.

   * Note, that for some computers you will need to have the USB drive inserted into the computer in order to select it.
   * Note also, the USB drive is often listed under hard drives rather than removable devices. 
   * `Video <http://www.youtube.com/watch?v=eQBdVO-n6Mg>`_ demonstrates booting from usb.

Run:
--------------------------------------------------------------------------------

Run as per: :doc:`osgeolive_quickstart`

See Also:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`virtualization_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * Alternative USB creation methods and latest tips are collected here: `wiki <http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB>`_
 * Questions can be directed to our email list: http://lists.osgeo.org/mailman/listinfo/live-demo
