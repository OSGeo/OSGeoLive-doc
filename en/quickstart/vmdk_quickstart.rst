:Author: OSGeo-Live
:Author: Micha Silver
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
Building an OSGeo Live Virtual Machine from the virtual disk file
********************************************************************************

Here are the steps for setting up an OSGeo-Live system as a virtual machine on your computer using  `VirtualBox <http://www.virtualbox.org/>`_  and the vmdk file downloaded from `live.osgeo.org <http://live.osgeo.org/en/download.html>`_

Before beginning check that your machine fulfills the system requirements listed in:  :doc:`virtualization_quickstart` 

Downloads
--------------------------------------------------------------------------------
First download `Virtual Box <http://www.virtualbox.org/>`_  for your platform, and install the software. On windows run the installer, or on linux do the following:

  ``apt-get install virtualbox-ose``

In addition download the OSGeo Virtual machine from the link above. Click on the "Download virtual machine" button. Unzip the downloaded file (using `7zip <http://www.7-zip.org>`_ ).

Create a Virtual Machine
--------------------------------------------------------------------------------
Open Virtual Box 

  .. image:: ../../images/screenshots/800x600/virtualbox.png
    :scale: 50 %

and click on the New button to create a new VM, and then Next.

  .. image:: ../../images/screenshots/800x600/virtualbox_select_name.png
    :scale: 70 %

Enter a name such as OSGeo-Live, and choose Linux as the "Operating system", and Ubuntu as the "Version".
In the next screen set the memory to 1024 MB.

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



Running the Virtual Machine
--------------------------------------------------------------------------------
Now start the VM by clicking the Start (green arrow) button.

Once the OSGeo system comes up, you should add the VirtualBox "Guest Additions" to improve video performance, and enable the shared folders option that was defined above. The installations are supplied as an ISO file togther with VirtualBox application. This ISO is mounted within the VM as a CD, and the installation is run from there. Here's how it's done:

In the VirtualBox window, open the Devices menu and click "Install Guest Additions". This will mount the Guest Additions as a CD drive in your OSGeo Live VM.

  .. image:: ../../images/screenshots/800x600/vmdk_guest_additions.jpg
                   :scale: 80 %

Once the CD folder appears, open a terminal and run the following commands:

``user@osgeolive:~$ sudo apt-get install linux-headers-`uname -r```

``user@osgeolive:~$ cd /media/VBOXADDITIONS_4.1.18_78361/``

``user@osgeolive:/media/VBOXADDITIONS_4.1.18_78361$ sudo ./VBoxLinuxAdditions.run``

This will complete after a few moments. Reboot your VM, and you will now be able to run in full screen mode, and mount your shared folders.If you setup a Shared Folder "geodata" on your host system and called it called "GIS", then to mount it within the VM, open a terminal window and run:

``user@osgeolive:~$ mkdir GIS``

``user@osgeolive:~$ sudo mount -t vboxsf -o uid=user,rw GIS /home/user/GIS``

Now files on your host machine in the "geodata" folder will also be available in the VM in the "GIS" folder in user's home directory. 



See Also:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

