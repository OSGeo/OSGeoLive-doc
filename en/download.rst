.. Writing Tip:
  There a several replacements defined in conf.py in the root doc folder.
  Do not replace |osgeolive-iso-size|, |osgeolive-iso-mini-size| and |osgeolive-vm-7z-size|
  The actual ISO sizes are defined in settings.py.

Download
================================================================================

The latest stable release is |osgeo-live-version| and can be downloaded from:
https://sourceforge.net/projects/osgeo-live/files/

Picking the right image for you:

**osgeo-live iso**: |osgeolive-iso-size|

A Lubuntu based bootable image, which can be copied to an 8 Gig USB thumb drive (faster and recommended) or DVD (cheaper). This image includes windows and mac installers for many of the applications, and is the image you would typically use if handing out OSGeo-Live to new users at a conference.

**osgeo-live-mini iso**: |osgeolive-iso-mini-size|

This smaller image is the same as the osgeo-live iso, but without windows and mac installers. It fits on a 4 Gig USB thumb drive. Use this image if using OSGeo-Live for personal use. It can also be used to build a virtual machine from scratch.

**osgeo-live-vm**: |osgeolive-vm-7z-size|

This is a pre-made virtual machine (.vmdk), based on osgeo-live-mini, suitable for use in VirtualBox, VMWare, KVM and other virtual machine applications. It has been compressed using `7-Zip <http://www.7-zip.org/>`_.

**amd64 or i386 architecture**

ISO images are available for recent amd64 hardware (recommended) as well as older i386 hardware.

**md5 checksum**

You can use the md5 checksum to verify the image downloaded successfully.

**System Requirements**

`Minimum suggested system resources: 1 GB RAM (2 GB are better for trying Java based applications), 1GHz i386 or amd64 compatible CPU. No hard drive required. Mac users will benefit from a 3-button USB mouse.`
