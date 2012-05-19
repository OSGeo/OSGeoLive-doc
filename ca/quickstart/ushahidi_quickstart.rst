:Author: Raf Roset
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-ushahidi.png
  :scale: 100 %
  :alt: project logo
  :align: right 

Guia ràpida Ushahidi 
================================================================================

Aquesta guia descriu com:

* Instal·lar i posar en marxa Ushahidi 

Instal·lar i posar en marxa Ushahidi
--------------------------------------------------------------------------------

1. Escollir Ushahidi des de l'icona de l'escriptori o des del menú obrirà
l'explorador d'internet i mostrarà la pàgina d'Instal·lació. Un lloc web
d'Ushahidi és força simple de crear

.. image:: ../../images/screenshots/1024x768/ushahidi-drc-screenshot.png
  :scale: 50 %
  :alt: ushahidi desktop icons
  :align: center 

2. Escolliu **"Basic Installation"**, **"Let's get started"**, i us demanarà uns
   quants detalls. El nom de la base de dades és **"ushahidi"**, l'usuari de la
   base de dades és **"user"**, i la contrassenya també és **"user"**. El
   servidor de la base de dades és **"localhost"**. Llavors continueu. A la
   pàgina de configuració *General* escolliu un nom per al vostre lloc web
   (títol) com per exemple **OSGeo demo** i si voleu també una línia de
   subtítol. L'adreça de correu que us demanarà s'utilitzarà per a rebre
   trameses que es processaran i s'afegiran a la base de dades i als mapes, i
   per a enviar informes. De moment la podeu definir com
   **"ushahidi@localhost.localdomain"** o **"ushahidi@example.org"** i
   **"Continue"**.

   **Note:** Si Ushahidi es queixa amb el missatge **"Oops! We couldn't make a 
   connection to the database server with the credentials given. Please make 
   sure they are correct."**. Aixٍ vol dir que l'arxiu d'instal·lació no ha
   pogut crear les credencials de la base de dades. Caldrà fer-ho manualment
   abans que pogueu continuar amb la instal·lació. Executeu aquestes comandes si
   heu entrat al sistema com root.

   **"mysql -uroot -p"** -- Això us hauria de demanar la contrassenya del
   servidor mysql per a l'usuari root. Poseu la contrassenya de l'usuari root.
   
   Llavors executeu aquesta comanda per a crear un nou usuari.
   **"CREATE DATABASE ushahidi;"** -- Això hauria de crear una nova bases de
   dades de nom ushahidi
   
   Seguida d'aquesta altra comanda.
   
   **"GRANT ALL PRIVILEGES ON ushahidi.* TO 'user'@'localhost' IDENTIFIED BY 'user';"**
   
   -- Això hauria de crear l'usuari **"user"** i la contrassenya **"user"**

   Ara heu de tornar al segon pas de l'instal·lació d'Ushahidi i acabar d'omplir
   els detalls.

.. image:: ../../images/screenshots/1024x768/ushahidi_installer_mode_screenshot.png
  :scale: 50 %
  :alt: mapguide desktop icons
  :align: center

3. Després de tot aixٍ us hauria de dir que la instal·lació ha acabat amb éxit i
   us donarà un enllaç a 'View your website'.

.. image:: ../../images/screenshots/1024x768/ushahidi_installer_finished_screenshot.png
  :scale: 50%
  :alt: ushahidi installer finishes
  :align: center
 
4. Per fer canvis a l'àrea d'`administració <http://localhost/ushahidi/admin>`_, 
   heu d'emprar l'usuari **"admin"** i la contrassenya **"admin"**. 
   Per exemple a la pàgina de configuració potser voldreu escollir
   **"Settings"** (a dalt a la dreta) i llavors la pestanya **"Map"**, i canviar
   el **"Map provider"** a OpenStreetMaps (no cal una clau API per OSM, ja que
   és Obert :-) ).

.. image:: ../../images/screenshots/1024x768/ushahidi_admin_login_screenshot.png
   :scale: 50%
   :alt: ushahidi admin login
   :align: center

L'arxiu README per a la configuració el podeu consultar localment aquí
`/var/www/ushahidi/readme.html <../../ushahidi/readme.html>`_.

