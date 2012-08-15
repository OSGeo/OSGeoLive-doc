:Author: OSGeo-Live
:Author: Micha Silver
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
OSGeo-Live Quickstart for Running in a Virtual Machine
********************************************************************************

This Quick Start describes one way to run OSGeo-Live within a VirtualBox virtual machine. For other methods, follow links from the "See Also" section below.

Virtual Machine Advantages
--------------------------------------------------------------------------------

* Response speed of a VM is much faster than on the DVD, and typically comparable with installing directly on the host machine.

* All configuration changes, software updates, and saved files are permanent, just like on any "regular" computer. So

 * You can customize and update the system
 * You can save your work within the VM
 * You can install additional software
 
* You can backup your virtual machine installation.

System Requirements
--------------------------------------------------------------------------------

* RAM: 2 GB at least. The Xubuntu system runs well with 1 GB of RAM, and you'll need to keep at least the same amount of memory for your host system. So a total of 2 GB will be needed for smooth operation.
* Spare Hard Disk Space: The virtual disk file (vmdk) from:  `live.osgeo.org <http://live.osgeo.org/en/download.html>`_  unzips to almost 10 GB. And you'll want more space to allow some room to work on the virtual machine. So 20 GB is a good recommendation.
* CPU: Any CPU will do, but a processor which supports "Virtualization Technology" will be faster. You can check your computer CPU `here <http://www.intel.com/support/processors/sb/cs-030729.htm>`_.

Most machines produced in the last 4-5 years will meet these requirements.

Howto
--------------------------------------------------------------------------------

**Downloads**

Download `Virtual Box <http://www.virtualbox.org/>`_  for your platform, and install the software. On windows run the installer, or on Ubuntu-like linux systems do the following:

  ``apt-get install virtualbox-ose``

In addition download the OSGeo Virtual disk file (vmdk) from `live.osgeo.org <http://live.osgeo.org/en/download.html>`_
. Click on the "Download virtual machine" button. Then unzip the downloaded file (using `7zip <http://www.7-zip.org>`_ ).


**Create a Virtual Machine**

Start the VirtualBox application and click on the New button to create a new VM, and then Next.

  .. image:: ../../images/screenshots/800x600/virtualbox.png
         :scale: 50 %

Enter a name such as OSGeo-Live, and choose Linux as the "Operating system", and Ubuntu as the "Version".

  .. image:: ../../images/screenshots/800x600/virtualbox_select_name.png
         :scale: 70 %

In the next screen set the memory to 1024 MB (or more if your host computer has more than 4GB).

  .. image:: ../../images/screenshots/800x600/vmdk_memory.jpg
              :scale: 65 %

Continue to the next screen and choose "Use existing hard disk" . Now click on the button (a folder icon) to browse to where you saved the osgeo-live-vm-6.0.vmdk file. Select this file, press Next and Create.

  .. image:: ../../images/screenshots/800x600/vmdk_disk.jpg
                   :scale: 65 %

Once the VM is created, click on the Settings button. In the "General" section, go to the Advanced tab, and click to select "Show at top of screen" for the Mini toolbar.

  .. image:: ../../images/screenshots/800x600/vmdk_general_advanced.jpg
                   :scale: 65 %

Go to the "Display" section and increase video memory to 32 or 64 MB.

  .. image:: ../../images/screenshots/800x600/vmdk_display.jpg
                   :scale: 65 %

In addition, move to the "Shared Folders" section, and click the "Add folder" (green + icon on the right) to find a directory on your host computer that you wish to share inside the VM.

 .. image:: ../../images/screenshots/800x600/vmdk_shared_folders.jpg
                      :scale: 65 %

Once the "Folder path" and "Folder name" are defined, click OK, and again OK to finish and close the settings window.


**Running the Virtual Machine**

Now bootup the VM by clicking the Start (green arrow) button.

Once the OSGeo system comes up, you have the option to add the VirtualBox "Guest Additions" to improve video performance, and enable the shared folders option that was defined above. The guest addition installations are supplied as an ISO file togther with the VirtualBox application from Oracle, and are not licensed as Free and Open Source Software. This ISO is mounted within the VM as a CD, and the installation is run from there. Here's how it's done:

In the VirtualBox window, open the :menuselection:`Devices` menu and click :menuselection:`Install Guest Additions`. This will mount the Guest Additions as a CD drive in your OSGeo Live VM.

  .. image:: ../../images/screenshots/800x600/vmdk_guest_additions.jpg
                        :scale: 80 %

Once the CD folder appears, open a terminal and run the following commands:

``user@osgeolive:~$ sudo apt-get install linux-headers-`uname -r```

``user@osgeolive:~$ cd /media/VBOXADDITIONS_4.1.18_78361/``

``user@osgeolive:/media/VBOXADDITIONS_4.1.18_78361$ sudo ./VBoxLinuxAdditions.run``

This will complete after a few moments. Reboot your VM, and you will now be able to run in full screen mode, and mount your shared folders. In the above example, we defined a Shared Folder path on the host system and named it "GIS" in the VM Settings. To mount it within the VM, open a terminal window and run:

``user@osgeolive:~$ mkdir GIS``

``user@osgeolive:~$ sudo mount -t vboxsf -o uid=user,rw GIS /home/user/GIS``

Now files on your host machine in the chosen folder will also be available in the VM in the "GIS" folder in user's home directory.

See Also:
--------------------------------------------------------------------------------
 * OSGeo wiki pages: 
        `Other ways to create a Virtual Machine <http://wiki.osgeo.org/wiki/Live_GIS_Virtual_Machine>`_

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

