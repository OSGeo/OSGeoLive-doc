:Author: Henry Addo
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-ushahidi.png
  :scale: 100 %
  :alt: project logo
  :align: right 

Guía de inicio rápido de Ushahidi
================================================================================

En esta guía se describe cómo:

* Conseguir iniciar y configurar Ushahidi

Conseguir iniciar y configurar Ushahidi
--------------------------------------------------------------------------------

1. Iniciando Ushahidi desde el icono del escritorio o ítem del menú abre el navegador web y en la pagina de instalación. Y desde el sitio es realmente facil de configurar.

.. image:: /images/screenshots/1024x768/ushahidi-drc-screenshot.png
  :scale: 50 %
  :alt: ushahidi desktop icons
  :align: center 
 
2. Elija **"Basic Installation"**, **"Let's get started"**, le solicitara algunos detalles. El nombre de la base de datos es **"ushahidi"**, el nombre de usuario  es **"user"**, la contraseña es **"user"**. El dominio de la base de datos es **"localhost"**. Entonces continua. En la pagina de configuración *General* elija un nombre de sitio (Titulo) para su sitio como **OSGeo demo** y si usted quiere ademas un atributo como subtitulo. La dirección de email que le solicita es utilizada para recibir envíos automáticos que procesara e integrara a la base de datos y los mapas, y desde donde enviara reportes automatizados. Por ahora establezcalo en algo como **"ushahidi@localhost.localdomain"** o **"ushahidi@example.org"** y **"Continue"**.

   **Nota:** Si Ushahidi se queja de **"Oops! We couldn't make a connection to the database server with the credentials given. Please make sure they are correct."**. Esto significa que la rutina de instalación no pudo crear las credenciales de la base de datos. Y esto debe ser realizado manualmente antes de poder continuar con la instalación. Ejecute estos comandos asumiendo que haya ingresado al sistema como root.

   **"mysql -uroot -p"** -- Este comando debería solicitarle la contraseña del root del servidor mysql. Ingrese la contraseña de root si es que tiene o presione la tecla enter.
   
   Luego ingrese los siguientes comando para crear un usuario nuevo.
   **"CREATE DATABASE ushahidi;"** -- Este comando debería crear la base de datos ushahidi
   
   Siga con el comando.
   
   **"GRANT ALL PRIVILEGES ON ushahidi.* TO 'user'@'localhost' IDENTIFIED BY 'user';"**
   
   -- Este comando debería crear al usuario **"user"** con la contraseña **"user"**

   Ahora regrese al instalador web de Ushahidi.

.. image:: /images/screenshots/1024x768/ushahidi_installer_mode_screenshot.png
  :scale: 50 %
  :alt: mapguide desktop icons
  :align: center

3. Después de que todo esta terminado debería decirle que la instalación fue satisfactoria y darle un enlace a 'View your website'.

.. image:: /images/screenshots/1024x768/ushahidi_installer_finished_screenshot.png
  :scale: 50%
  :alt: ushahidi installer finishes
  :align: center
 
4. Para hacer cambios en `Área de Administración <http://localhost/ushahidi/admin>`_, el nombre de usuario para el acceso es **"admin"** y la contraseña es **"admin"**. 
   Por ejemplo en la página de configuración quizás desee  **"Settings"** (Arriba a la derecha) y luego la pestaña **"Map"**, y cambie  **"Map provider"** a OpenStreetMaps (no es necesaria una clave de acceso para OSM, es abierto :-) ).

.. image:: /images/screenshots/1024x768/ushahidi_admin_login_screenshot.png
   :scale: 50%
   :alt: ushahidi admin login
   :align: center

El README de instalación esta disponible localmente en el archivo `/var/www/ushahidi/readme.html <../../ushahidi/readme.html>`_.
