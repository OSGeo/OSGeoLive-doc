.. OSGeo-Live documentation master file, created by
   sphinx-quickstart on Tue Jul  6 14:54:20 2010.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to the OSGeo Live GIS disc
==================================

.. toctree::
   :hidden:
	

   gmt_overview
   grass_overview
   gpsdrive_overview
   mb-system_overview
   opencpn_overview
   osgearth_overview
   ossim_overview
   postgis_overview
   qgis_mapserver_overview
   spatialite_overview
   52nWPS_overview

The OSGeo `Live Disc <http://live.osgeo.org/>`_ is a self-contained live DVD and Virtual Machine based on `Xubuntu <http://www.xubuntu.org/>`_, that allows you to try a wide variety of open source geospatial software without installing anything. It is composed entirely of free software, allowing it to be freely distributed, duplicated and passed around.

The live disc provides effective tools for a range of geospatial use cases, including storage, publishing, viewing, analysis and manipulation of data. It also contains sample datasets and standard software products, including Apache Web Server, Apache Tomcat Application Server, Sun Java, PostgreSQL and PGAdmin.

You can use this software without the need to install anything. Simply reboot your machine with the DVD in the tray, or run the Virtual Machine inside VMware Player or VirtualBox. In the boot menu selection choose "live", or wait 10 secs for the automatic select. The DVD/Virtual Machine will then start Linux and you will be able to trial all the applications and services directly from the desktop.

Application passwords are in the `passwords.txt <file:../passwords.txt>`_ file on the desktop. 

.. todo:: link to passwords.txt here so the user is not hunting around

Windows and Mac Installation
----------------------------

Most of the `Live DVD <http://live.osgeo.org/>`_ applications can be installed on Apple OSX and Microsoft Windows as well. The Live  DVD also comes with Macintosh and Windows installers for these applications in the `WindowsInstallers <file:../WindowsInstallers/>`_ and `MacInstallers <file:../MacInstallers/>`_  folders.


Switching Language
------------------

We have installed many common languages. In order to switch the system you will need to:

#. Log out
#. On the user selection screen pick a user.
#. In the bottom panel you will now see a menu to select a different language
#. Select another language and enter the password and continue the login as usual
#. Repeat the process if wish to change languages again.

The system menus and many of the applications will now appear in the language choosen. If a specific program continues to display in english there is no translation available currently, please consider volunteering to write a translation. Contact the program of interest directly for more information.

For additional languages see :menuselection:`Application --> System --> Language Support` (Requires an internet connection) 

Keyboard Support
^^^^^^^^^^^^^^^^

International keyboard support is installed, but you will need to configure the system for your specific keyboard. 

Virtual Machine Toolbox
-----------------------

Many virtual machine managers (Like VMWare and VirtualBox) have additional tools that enable additional features when running guests. These include, higher screen resolution support, copy and past between guest and host, support for graphics acceleration, and more. If you plan to run the live disc as a virtual machine you will likely want to install these additional tools, read below for instructions on how to do this for your particular virtual machine manager.

These methods require an internet connection. Remember the password is: **user**

Using the package manager
^^^^^^^^^^^^^^^^^^^^^^^^^

1. Open :menuselection:`Applications --> System --> Synaptic Package Manager`
2. Use the appropriate pacakge manager
 
   Virtual Box
       Search for open-vm-toolbox

   VMWare (Player or Server)
       Search for virtualbox-ose-guest-x11 and then search for
       virtualbox-ose-guest-utils

3. Select the check box next to the package
4. Now choose apply from the toolbar at the top

In a Command Line Terminal
^^^^^^^^^^^^^^^^^^^^^^^^^^

Virtual Box::

    sudo apt-get install virtualbox-ose-guest-utils virtualbox-ose-guest-x11

VMWare (Player or Server)::

    sudo apt-get install open-vm-tools open-vm-toolbox

A reboot will be required for the installation of the tools to take effect.
Once rebooted look in the Display settings to change your screen resolution. 
