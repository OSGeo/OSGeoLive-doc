:Author: OSGeo Live
:Author: Cameron Shorter
:Version: osgeo-live4.0
:License: Creative Commons

.. _virtualbox-quickstart:
 
*************************************
OSGeo-Live Quickstart for Virtual Box
*************************************

Here we describe a method for running an OSGeo-Live DVD or ISO in the `VirtualBox <http://www.virtualbox.org/>`_ Virtual Machine.

VirtualBox is an Open Source Virtual Machine which is used by many of the OSGeo-Live developers and testers.

System Requirements
-------------------

* RAM: 1 Gig, preferably 2Gig if you plan to run other applications as well
* Spare Hard Disk Space:
 * 5 Gig if running from ISO
 * 17 Gig if installing locally from an ISO

Create a Virtual Machine
------------------------
Download and install `Virtual Box <http://www.virtualbox.org/>`_. On linux do the following:

  ``apt-get install virtualbox-ose``

Open Virtual Box 

  .. image:: ../../images/screenshots/800x600/virtualbox.png
    :scale: 70 %

Select "New" to create a new Virtual Machine.

  .. image:: ../../images/screenshots/800x600/virtualbox_create_vm.png
    :scale: 70 %

Select "Next"

  .. image:: ../../images/screenshots/800x600/virtualbox_select_name.png
    :scale: 70 %

Set a name for the image, and select "Linux", "Ubuntu".

  .. image:: ../../images/screenshots/800x600/virtualbox_memory.png
    :scale: 70 %

Set Base Memory to at least 512 MB.

  .. image:: ../../images/screenshots/800x600/virtualbox_no_hard_disk.png
    :scale: 70 %

Simple install: Deselect "Boot Hard Disk", the Virtual Machine will always
boot from an simulated DVD.

If you wish to have a persistent virtual machine, which stores state
between sessions and which can have improved screen resolution settings
and tools set, then include the hard disk, and install later.

  .. image:: ../../images/screenshots/800x600/virtualbox_warning_no_hard_disk.png
    :scale: 70 %

Select "Continue"

  .. image:: ../../images/screenshots/800x600/virtualbox_final_check.png
    :scale: 70 %

Select "Finish"

  .. image:: ../../images/screenshots/800x600/virtualbox_select_settings.png
    :scale: 70 %

The image is now created, but we now need to simulate having an OSGeo-Live DVD in the CD drive.

Right click on the "osgeo-live" image, and select "Settings".

  .. image:: ../../images/screenshots/800x600/virtualbox_set_cd.png
    :scale: 70 %

Select "Storage", CD/DVD Device, ...

  .. image:: ../../images/screenshots/800x600/virtualbox_add_dvd.png
    :scale: 70 %

Select the OSGeo-Live image.

  .. image:: ../../images/screenshots/800x600/virtualbox_start_vm.png
    :scale: 70 %

Now you can start the virtual machine as per the :doc:`osgeolive_quickstart`

Create permanent Virtual Machine
--------------------------------
If you plan to use the OSGeo-Live DVD a lot, you will likey want to create a permanent virtual machine, as per: :doc:`osgeolive_install_quickstart`.

Increase Display Size
---------------------
You can then add the virtual boots tools which support higher screen
resolution support, copy and paste between guest and host, graphics
acceleration, and more.

Make sure you're computer is connected to the internet.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_menu.png
    :scale: 70 %

Select the synaptic package manager application.

Enter password = "user"

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_select_tools.png
    :scale: 70 %

Mark "virtualbox-ose-guest-utils" for installation.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_apply.png
    :scale: 70 %

Apply the changes.

Reboot the virtual machine and the display settings should match your host
computer's display settings. These can be changed via:

Select: Applications -> Settings -> Xfce 4 Settings Manager -> Display

See Also:
---------

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

