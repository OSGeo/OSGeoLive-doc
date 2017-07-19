:Author: Henry Addo
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-ushahidi.png
  :scale: 100 %
  :alt: project logo
  :align: right 

Ushahidi Quickstart 
================================================================================

Diese Anleitung beschreibt, wie Sie:

* Ushahidi zum Laufen bekommen

Ushahidi zum Laufen bekommen
--------------------------------------------------------------------------------

1. Das Starten von Ushahidi über das Desktop-Symbol oder Menüpunkt öffnet den 
   Web-Browser und bringt Sie auf die Seite für die Installation. Eine Ushahidi 
   Seite ist ziemlich einfach einzurichten

.. image:: /images/screenshots/1024x768/ushahidi-drc-screenshot.png
  :scale: 50 %
  :alt: ushahidi desktop icons
  :align: center 

2. Wählen Sie **"Basic Installation"**, **"Let's get started"**, und Sie 
   werden gebeten, ein paar Details einzugeben. Der Name der Datenbank ist 
   **"ushahidi"**, der Datenbank-Benutzername ist **"user"**, ebenso lautet 
   das Passwort **"user"**. Der Datenbank-Host lautet **"localhost"**. Dann 
   weiter. Auf der *General* Setup-Seite wählen Sie einen Seitennamen (Titel) 
   für Ihre Webseite wie z.B. **OSGeo Demo**, und - wenn Sie möchten - *tag-line 
   subheading*. Die Emailaddresse, nach der Sie gefragt werden, wird zum 
   automatischen Empfang von Beiträgen, die verarbeitet und zur Datenbank und 
   Karte hinzugefügt werden, und als Absender von automatischen Berichten 
   verwendet. Fürs Erste setzen Sie diese auf **"ushahidi@localhost.localdomain"** 
   oder **"ushahidi@example.org"** oder so ähnlich und wählen Sie **"Continue"**.
   
.. image:: /images/screenshots/1024x768/ushahidi_installer_mode_screenshot.png
   :scale: 50 %
   :alt: mapguide desktop icons
   :align: center

.. note:: Es kann sein, dass Ushahidi meldet **"Oops! We couldn't make a 
   connection to the database server with the credentials given. Please make 
   sure they are correct."**. Dies bedeutet, dass das Installationsskript die Datenbankverbindung nicht aufbauen konnte.
   Dies muss nun manuell erfolgen, bevor die Installtion fortgeführt werden kann.
   Geben Sie die folgenden Befehle an (es wird angenommen, dass Sie als root angemeldet sind).

   **"mysql -uroot -p"** -- Sie werden nach dem MySQL Servers root <Passwort gefragt. Geben Sie das root Passwort ein. Liegt kein Passwort vor, drücken Sie enter.

   Über die folgenden Befehle erzeugen Sie anschließend eine neue Datenbank und einen neuen Benutzer. 
   **"CREATE DATABASE ushahidi;"** -- Der Befehl legt eine neue Datenbank mit Namen ushahidi an.
   
   Nun folgt der Befehl.
   
   **"GRANT ALL PRIVILEGES ON ushahidi.* TO 'user'@'localhost' IDENTIFIED BY 'user';"**
   
   -- Der Befehl legt einen Benutzer **"user"** mit Passwort **"user"** an.

   Gehen Sie nun zurück zum Ushahidi Web Installer Schritt 2 und geben Sie die Details ein.

3. Anschließend werden Sie nach einer Anmelde-Email und Passwort gefragt. Setzen Sie die Emailadressen auf
**"admin@example.org"** und das Passwort auf **"admin"** (zweimal eingeben). Danach ist alles erledigt ist, und es wird Ihnen mitgeteilt, dass die Installation erfolgreich war, sowie unter welchem Link Ihre Webseite aufrufbar ist.

.. image:: /images/screenshots/1024x768/ushahidi_installer_finished_screenshot.png
  :scale: 50%
  :alt: ushahidi installer finishes
  :align: center
 
4. Um Änderungen im `Administrationsbereich <http://localhost/ushahidi/admin>`_ 
   vorzunehmen, melden Sie sich mit dem eingerichteten Benutzer **"admin@example.org"** und das Passwort **"admin"** an. 
   Auf der Setup-Seite finden Sie nun den Link **"Settings"** 
   (oben rechts) und können dort unter der **"Map"** Registerkarte den 
   **"Map provider"** zu OpenStreetMaps ändern (keine API Schlüssel erforderlich 
   für OSM :-) ). Speichern Sie die Einstellungen über :guilabel:`SAVE SETTINGS`.

.. image:: /images/screenshots/1024x768/ushahidi_admin_login_screenshot.png
   :scale: 50%
   :alt: ushahidi admin login
   :align: center

Die Setup README-Seite ist auch lokal verfügbar unter `/var/www/ushahidi/README.markdown <../../ushahidi/README.markdown>`_.
