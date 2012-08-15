:Author: Henry Addo
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-ushahidi.png
  :scale: 100 %
  :alt: project logo
  :align: right 

Ushahidi Quick Start 
================================================================================

This guide describes how to:

* Getting Ushahidi Up and Running 

Getting Ushahidi Up and Running
--------------------------------------------------------------------------------

1. Starting Ushahidi via the desktop icon or menu item opens the web 
   browser and brings you to the Installation page. An Ushahidi site is 
   pretty easy to set up

.. image:: ../../images/screenshots/1024x768/ushahidi-drc-screenshot.png
  :scale: 50 %
  :alt: ushahidi desktop icons
  :align: center 

2. Choose **"Basic Installation"**, **"Let's get started"**, and it will prompt 
   you for a few details. The database name is **"ushahidi"**, database user 
   name is **"user"**, the password is also **"user"**. The database host is 
   **"localhost"**. Then continue. In the *General* setup page choose a
   site name (title) for your website such as **OSGeo demo** and if you like
   a tag-line subheading as well. The email address it asks you for is used 
   for receiving automatic submissions which it will process and add to the
   database and maps, and send automated reports from. For now set it to 
   something like **"ushahidi@localhost.localdomain"** or **"ushahidi@example.org"** and **"Continue"**.

   **Note:** If Ushahidi complains about this **"Oops! We couldn't make a 
   connection to the database server with the credentials given. Please make 
   sure they are correct."**. This means the installer script couldn't create 
   the database credentials. This has to be done manually before you can continue 
   with the installation. Issue these commands assuming you have logged into the 
   system as root.

   **"mysql -uroot -p"** -- This should prompt you for mysql server's root
   password. Enter the root password if there is one, otherwise hit the enter key.
   
   Then enter the command below to create a new user.
   **"CREATE DATABASE ushahidi;"** -- This should create a database called ushahidi
   
   Followed by this command.
   
   **"GRANT ALL PRIVILEGES ON ushahidi.* TO 'user'@'localhost' IDENTIFIED BY 'user';"**
   
   -- This should create a username **"user"** and a password **"user"**

   Now go back to the Ushahidi web installer step 2 and fill in the details.

.. image:: ../../images/screenshots/1024x768/ushahidi_installer_mode_screenshot.png
  :scale: 50 %
  :alt: mapguide desktop icons
  :align: center

3. After that is all done it should tell you that installation was
   successful and give you a link to 'View your website'.

.. image:: ../../images/screenshots/1024x768/ushahidi_installer_finished_screenshot.png
  :scale: 50%
  :alt: ushahidi installer finishes
  :align: center
 
4. To make changes in the `administration area <http://localhost/ushahidi/admin>`_, 
   the login username is **"admin"** and the password is also **"admin"**. 
   For example in the setup page you might want to select **"Settings"**
   (top right) and then the **"Map"** tab, and change the 
   **"Map provider"** to OpenStreetMaps (no API key 
   necessary for OSM, as it's Open :-) ).

.. image:: ../../images/screenshots/1024x768/ushahidi_admin_login_screenshot.png
   :scale: 50%
   :alt: ushahidi admin login
   :align: center

The setup up README page is available locally in the `/var/www/ushahidi/readme.html <../../ushahidi/readme.html>`_ file.
