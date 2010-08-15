
:Author: OSGeo Live
:Author: Cameron Shorter
:Version: osgeo-live4.0
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _udig-quickstart:
 
.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    images/project_logos/logos-<application>.png

*************************************
OSGeo-Live Quickstart for Virtual Box
*************************************

Here we describe a simple setup for running OSGeo-Live inside the `VirtualBox <http://www.virtualbox.org/>`_ Virtual Machine.

VirtualBox is an Open Source Virtual Machine which is used by many of the OSGeo-Live developers and testers.

System Requirements
-------------------

* RAM: 1 Gig, preferably 2Gig if you plan to run other applications as well
* Spare Hard Disk Space:
 * 5 Gig if running from ISO
 * 12 Gig if downloading just the Virtual Machine
 * 17 Gig if installing locally from an ISO

Create a Virtual Machine
------------------------
Download and install `Virtual Box <http://www.virtualbox.org/>`_. On linux do the following:

  ``apt-get install virtualbox-ose``

Open Virtual Box 

  .. image:: images/screenshots/800x600/virtualbox.png
    :scale: 70 %

Select "New" to create a new Virtual Machine.

  .. image:: images/screenshots/800x600/virtualbox_create_vm.png
    :scale: 70 %

Select "Next"

  .. image:: images/screenshots/800x600/virtualbox_select_name.png
    :scale: 70 %

Set a name for the image, and select "Linux", "Ubuntu".

  .. image:: images/screenshots/800x600/virtualbox_memory.png
    :scale: 70 %

Set Base Memory to at least 512 MB.

  .. image:: images/screenshots/800x600/virtualbox_no_hard_disk.png
    :scale: 70 %

Deselect "Boot Hard Disk", as here we describe the light weight install where we simulate booting from a DVD.

  .. image:: images/screenshots/800x600/virtualbox_warning_no_hard_disk.png
    :scale: 70 %

Select "Continue"

  .. image:: images/screenshots/800x600/virtualbox_final_check.png
    :scale: 70 %

Select "Finish"

  .. image:: images/screenshots/800x600/virtualbox_select_settings.png
    :scale: 70 %

The image is now created, but we now need to simulate having an OSGeo-Live DVD in the CD drive.

Right click on the "osgeo-live" image, and select "Settings".

  .. image:: images/screenshots/800x600/virtualbox_set_cd.png
    :scale: 70 %

Select "Storage", CD/DVD Device, ...

  .. image:: images/screenshots/800x600/virtualbox_add_dvd.png
    :scale: 70 %

Select the OSGeo-Live image.

  .. image:: images/screenshots/800x600/virtualbox_start_vm.png
    :scale: 70 %

Now you can start the virtual machine.

See Also:
---------

 * :doc:`osgeolive_quickstart`

