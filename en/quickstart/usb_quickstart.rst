
:Author: OSGeo-Live
:Author: Cameron Shorter
:Version: osgeo-live4.0
:License: Creative Commons

.. _usb-quickstart:
 
***********************************************
Creating an OSGeo-Live Bootable USB flash drive
***********************************************

Here we describe how to create a Bootable OSGeo-Live USB flash drive. Booting from a thumb drive is faster than from a DVD, and the USB drive can be configured to store data between sessions.

We have only recently started testing USB drive Installers from OSGeo-Live 4.0. While we have received a lot of positive feedback, it has only had limited testing, and some people have reported not being able to boot from the USB drive.

Requirements
------------

* A 4 Gig USB flash drive, if using osgeo-live-mini
* A 8 Gig USB flash drive, if using osgeo-live
* An OSGeo-Live DVD or ISO image (downloaded from: http://live.osgeo.org/download.html)

Creating bootable USB drive from Ubuntu
---------------------------------------

Insert the USB flash drive into your computer.

If using a DVD, then put the DVD into the DVD drive.

  .. image:: ../../images/screenshots/800x600/usb_select.png
    :scale: 70 %

Select "System->Administration->Startup Disk Creator"

  .. image:: ../../images/screenshots/800x600/usb_set_params.png
    :scale: 70 %

Select the CD Drive or ISO Image.

Select the USB flash drive.

Select "Make Startup Disk"

  .. image:: ../../images/screenshots/800x600/usb_installing.png
    :scale: 70 %

Wait 20 minutes or so for the USB flash drive to be created.

Creating bootable USB flash drive from Windows
----------------------------------------------

Insert the USB drive into your computer.

Download and run the Universal USB Installer from: http://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3/

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_licence.gif

Accept the licence terms.

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_selection.gif

Step 1: Distribution: Select the xubuntu i386 distribution used for the osgeo-live image. (for osgeo-live-4.0, select xubuntu 10.04 Desktop i386)

Step 2: Select the latest osgeo-live iso which you should have downloaded locally. Note: You will need to manually enter the path to the ISO file, as the "Browse" button only finds xubuntu iso files.

Step 3: Select your USB flash drive

Step 4: Select Persistence if you wish to remember state between sessions.

Select "Create"

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_installing.gif

Wait 20 minutes or so for the OSGeo-Live USB flash drive to be created.

Set BIOS boot order:
--------------------

Most computers are not set to boot from a USB drive by default.

To achieve this, boot your computer, and hit the appropriate key when prompted to go into the BIOS (usually by pressing the <Delete> key or a <Function Key> or similar).

Select to boot from the USB device.

Note, that for some computers you will need to have the USB drive inserted into the computer in order to select it.

Note also, the USB drive is often listed under hard drives rather than removable devices. 

Run:
----

Run as per: :doc:`osgeolive_quickstart`

Known issues:
-------------

* Mac computers will not boot from this USB flash drive, please use the LiveDVD 

See Also:
---------

 * :doc:`osgeolive_quickstart`
 * :doc:`virtualbox_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * If you have issues, please report them on this wiki page: http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB and discuss on our email list: http://lists.osgeo.org/mailman/listinfo/live-demo
 * For further USB boot options, see http://pendrivelinux.com 
