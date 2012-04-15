
:Author: OSGeo-Live
:Author: Cameron Shorter
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _usb-quickstart-zh:
 
********************************************************************************
Creating an OSGeo-Live Bootable USB flash drive
********************************************************************************

Here we describe how to create a Bootable OSGeo-Live USB flash drive. Booting from a flash drive is faster than from a DVD, and the USB drive can be configured to store data between sessions.

We have have found that there are a number of quirks and tricks involved in successfully building a USB drive. We have documented what we know, but there are likely more tricks and issues. Look for latest tips here: http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB

Requirements
--------------------------------------------------------------------------------

* A 4 GB USB flash drive, if using osgeo-live-mini (without Windows and Mac installers)
* A 8 GB USB flash drive, if using osgeo-live (with Windows and Mac installers)
* An OSGeo-Live DVD or ISO image (downloaded from: http://live.osgeo.org/en/download.html)

Creating bootable USB drive from Ubuntu
--------------------------------------------------------------------------------

(This is the recommended process for creating a USB, and is also applicable Ubuntu variants, such as Xubuntu or OSGeo-Live.)

.. note::
   The version of Ubuntu you are running, needs to be the same or newer than the version of Xubuntu being installed onto your USB.  If installing OSGeo-Live 5.0/5.5 onto a USB, then you will need to be running Ubuntu 11.04 or newer.

Download osgeo-live or osgeo-live-mini to your computer's hard drive.

Insert the USB flash drive into your computer.

  .. image:: ../../images/screenshots/800x600/usb_select.png
    :scale: 70 %

Select :menuselection:`System --> Administration --> Startup Disk Creator`, or search for `Startup Disk Creator` from the Unity desktop.

  .. image:: ../../images/screenshots/800x600/usb_set_params.png
    :scale: 70 %

Select the osgeo-live or osgeo-live-mini ISO Image.

Select the USB flash drive.

Select :guilabel:`Make Startup Disk`

  .. image:: ../../images/screenshots/800x600/usb_installing.png
    :scale: 70 %

Wait 20 minutes or so for the USB flash drive to be created.

Creating bootable USB flash drive from Windows
--------------------------------------------------------------------------------

Insert the USB drive into your computer.

Download and run the Universal USB Installer from: http://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3/

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_licence.gif

Accept the licence terms.

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_selection.gif

Step 1: Distribution: Select the xubuntu i386 distribution used for the osgeo-live image. (for OSGeo-Live 5.5, select xubuntu 11.04 Desktop i386)

Step 2: Select the latest osgeo-live iso which you should have downloaded locally. Note: You will need to manually enter the path to the ISO file, as the :guilabel:`Browse` button only finds xubuntu iso files.

Step 3: Select your USB flash drive

Step 4: Select Persistence if you wish to remember state between sessions.

Select :guilabel:`Create`

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_installing.gif

Wait 20 minutes or so for the OSGeo-Live USB flash drive to be created.

Creating bootable USB drive in different operating systems
--------------------------------------------------------------------------------

Step 1: Install UNetbootin (downloaded from: http://unetbootin.sourceforge.net/).

Step 2: Insert the USB flash drive into your computer.

Step 3: Start UNetbootin, select Diskimage (the usb flash drive is selectet automatically).

Step 4: Select OSGeoLive iso file.

Select :guilabel:`OK`

  .. image:: ../../images/screenshots/1024x768/unetbootin_live_osgeo.png

Set BIOS boot order:
--------------------------------------------------------------------------------

Most computers are not set to boot from a USB drive by default.

To achieve this, boot your computer, and hit the appropriate key when prompted to go into the BIOS (usually by pressing the <Delete> key or a <Function Key> or similar).

Select to boot from the USB device.

Note, that for some computers you will need to have the USB drive inserted into the computer in order to select it.

Note also, the USB drive is often listed under hard drives rather than removable devices. 

Run:
--------------------------------------------------------------------------------

Run as per: :doc:`osgeolive_quickstart`

Known issues:
--------------------------------------------------------------------------------

* Mac computers will not boot from this USB flash drive, please use the LiveDVD 

See Also:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`virtualbox_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * If you have issues, please report them on this wiki page: http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB and discuss on our email list: http://lists.osgeo.org/mailman/listinfo/live-demo
 * For further USB boot options, see http://pendrivelinux.com 
