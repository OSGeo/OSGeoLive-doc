:Author: OSGeo-Live
:Author: Micha Silver
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
OSGeo-Live Quickstart for Running in a Virtual Machine
********************************************************************************

Most often the OSGeo LiveDVD system is run from the original by booting straight from the DVD. This means that all software and configurations are identical at each reboot of the DVD. Nothing is saved from session to session. However the same system can be setup as a "virtual guest" on your host computer, essentially giving you a fully configurable Xubuntu-based GIS workstation within your computer.   


Advantages
--------------------------------------------------------------------------------
Running OSGeo Live as a virtual machine, rather than from the LiveDVD means:

* All configuration changes, software updates, and saved files are permanent, just like on any "regular" computer. So

 * You can customize and update the system
 * You can save your work within the VM
 * You can install additional software
 
* Response speed of a VM is typically the same as the host machine, and much faster than running from the DVD. 

* By copying the whole vmdk (virtual machine disk file) to some backup media, you have a full system backup including all software, configurations, and data files. Maintaining a "snapshot" on remote media like this insures quick recovery of your full system in case of hardware failure.


System Requirements
--------------------------------------------------------------------------------
Most fairly recent computers can run a virtual machine within the host system. Here are the basic hardware requirements for installing the OSGeo Live system as a VM. 

* RAM: 2 GB at least. The Xubuntu system runs well with 1 GB of RAM, and you'll need to keep at least the same amount of memory for your host system. So a total of 2 GB will be needed for smooth operation.
* Spare Hard Disk Space: The virtual disk file (vmdk) from:  `live.osgeo.org <http://live.osgeo.org/en/download.html>`_  unzips to almost 10 GB. And you'll want more space to allow some room to work on the virtual machine. So 20 GB is a good recommendation.
* CPU: A processor which supports "Virtualization Technology". You can check your computer CPU `here <http://www.intel.com/support/processors/sb/cs-030729.htm>`_  

Most machines produced in the last 4-5 years will meet these requirements.


Howto
--------------------------------------------------------------------------------
These detailed documents explain how to install OSGeo Live as a virtual machine
 * From the ISO image: :doc:`virtualbox_quickstart`
 * From the vmdk file: :doc:`vmdk_quickstart`
and these wiki pages have some additional information:
 * `Creating a fresh virtual machine <http://wiki.osgeo.org/wiki/Live_GIS_Build#Creating_a_fresh_Virtual_Machine>`_
 * `Selecting a virtual machine <http://wiki.osgeo.org/wiki/Live_GIS_Build#Selecting_a_Virtual_Machine>`_

See Also:
--------------------------------------------------------------------------------
 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

