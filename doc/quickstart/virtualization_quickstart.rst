:Author: OSGeoLive
:Author: Christopher Ganta, Gayathri Krishnaswamy, Nelson Guya, Micha Silver
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Stephen Woodbridge
:Version: osgeolive11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
Running in a Virtual Machine
********************************************************************************

Overview
--------------------------------------------------------------------------------

This Quick Start describes one way to run OSGeoLive within a VirtualBox virtual machine (VM). For other methods, follow links from the "See Also" section below.

.. note::
    To learn more about the benefits of virtualization, see `Virtualization <https://en.wikipedia.org/wiki/Virtualization>`_ in Wiki

Prerequisites
--------------------------------------------------------------------------------

**Software**

* Download `Virtual Box <https://www.virtualbox.org/>`_  for your platform, and install the software. On Windows run the installer, or on Ubuntu-like Linux systems run the following:
  
  ``apt-get install virtualbox-ose``

* Download the OSGeo Virtual disk file (vmdk) from :doc:`live.osgeo.org <../download>`.

  * Under **osgeolive-vm**, download the 7-zip file. Then unzip the downloaded file (using `7zip <https://www.7-zip.org>`_ ).

**Hardware**

* **RAM**: Minimum 2 GB. The Lubuntu system runs well with 1 GB of RAM, and you'll need to keep at least the same amount of memory for some of your applications (such as GeoServer). So a total of 2 GB is recommended for a smooth operation. 
* **Spare**: Minimum 20 GB Hard Disk Space. The virtual disk file (vmdk) from :doc:`live.osgeo.org <../download>`  unzips to almost 10 GB. You'll also want more space to allow some room to work on the virtual machine. So a total of 20 GB is a good recommendation.
* **CPU**: Any CPU will do, but a processor which supports "Virtualization Technology" will be faster. Check if your computer supports `Virtualization Technology <https://www.intel.com/content/www/us/en/support/articles/000005486/processors.html>`_

.. note::
    Most machines produced after 2010 will meet these requirements.


Step 1 : Create a Virtual Machine
--------------------------------------------------------------------------------

1. Start the VirtualBox application and click **New**. Create Virtual Machine pop up is displayed.


  .. image:: /images/projects/osgeolive/virtualbox.png
         :scale: 50 %

2. Enter a name such as OSGeoLive, and select Linux as the "Operating system", and Ubuntu as the "Version", and then click **Next**.

  .. image:: /images/projects/osgeolive/virtualbox_select_name.png
         :scale: 70 %

3. In the next screen set the memory to at least 1024 MB (or more if your host computer has more than 4GB, like in the screenshot below).

  .. image:: /images/projects/osgeolive/vmdk_memory.png
     :scale: 65 %

4. Continue to the next screen and select **Use an existing virtual hard disk file**. Click the folder icon to browse to where you saved the OSGeoLive vmdk-file. Select the file, click **Next** and **Create**.

  You should now be able to view the **OSGeoLive** listed in your virtual box.

  .. image:: /images/projects/osgeolive/vmdk_disk.png
     :scale: 65 %


Step 2: Configure VM
--------------------------------------------------------------------------------

**VM Settings**


1. Once the VM is created, click the **Settings** button. In the **User Interface** section, click to select **Show at top of screen** for the Mini toolbar.

  .. image:: /images/projects/osgeolive/vmdk_user_interface.png
     :scale: 65 %

2. Go to the **Display** section and increase video memory to 32 or 64 MB. In some host operating systems, it may be required to "Enable 3D Acceleration" for display to work properly.

  .. image:: /images/projects/osgeolive/vmdk_display.png
     :scale: 65 %

**Add shared folders to access files from host**

3. Go to the **Shared Folders** section, and click the **Add folder** (green + icon on the right) to find a directory on your host computer that you wish to share inside the VM.

  .. image:: /images/projects/osgeolive/vmdk_shared_folders.png
     :scale: 65 %

You can choose to make the shared folder read-only, and auto-mounted. Once the "Folder path" and "Folder name" are defined, click OK, and again OK to finish and close the settings window.


Step 3 : Running the Virtual Machine
--------------------------------------------------------------------------------

Now bootup the VM by clicking the **Start** (green arrow) button.

* The OSGeo-Live virtual display (i.e., the window size) may be very small, and will not be able to increase until you install Guest Additions. You should install the virtualbox guest additions, this will allow you to use full-screen mode.

  ``sudo apt-get install --yes virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11``

(Alternative) If the above command does not work, use the following alternative:

  1. From the VirtualBox Devices menu, select **Insert Guest Additions CD Image**
  2. Click **OK** when prompted to open the removable media in **File Manager**.
  3. In **File Manager**, select **Tools** → **Open Current Folder** in terminal.
  4. In the terminal type:
    
    ``sudo ./VBoxLinuxAdditions.run``

  5. Press ENTER.


Step 4 : Set OSGeoLive user
--------------------------------------------------------------------------------

.. note::
   Some tools configured on OSGeoLive rely of "user" to be in the "users" group so they can write into the data directory. If not set, these tools will fail when run.

1. Start a terminal.
2. Run ``sudo adduser user users``.
3. Apply this change by starting a new desktop session: either restart the virtual machine or log out and log back in (username "user", password "user").

Step 5: Access shared folders
--------------------------------------------------------------------------------

* Add yourself to the vboxsf group so that the shared folders (defined above) are accessible by running in a terminal window:

  ``user@osgeolive:~$ sudo usermod -a -G vboxsf user``


Step 6: Mount shared folder
--------------------------------------------------------------------------------

* In the above example, we defined a Shared Folder path on the host system and named it "GIS" in the VM Settings. The shared folder will appear in the file system under /media/sf_GIS/. To mount this folder in the user's home directory, for example, in a terminal run:

  ``user@osgeolive:~$ mkdir GIS``

  ``user@osgeolive:~$ sudo mount -t vboxsf -o uid=user,rw GIS /home/user/GIS``

Now files on your host machine in the chosen folder will also be available in the VM in the "GIS" folder in the user's home directory.

Congratulations, you should now have OSGeoLive running in a Virtual Machine.

Next steps:
--------------------------------------------------------------------------------

Why don't you try running some applications, as described in the `OSGeoLive Quickstart <https://live.osgeo.org/en/quickstart/osgeolive_quickstart.html>`_

See Also:
--------------------------------------------------------------------------------

 * OSGeo wiki pages: `Other ways to create a Virtual Machine <https://wiki.osgeo.org/wiki/Live_GIS_Virtual_Machine>`_
 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`
