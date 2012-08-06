:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Reviewer: 
:Translator: Jorge Sanz
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-eoxserver-2.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

================================================================================
Guía de inicio rápido de EOxServer
================================================================================

Resumen
--------

EOxServer es un servidor para datos de observación de la tierra (Earth Observation, EO). 
En concreto se trata de una aplicación y un marco de trabajo desarrollado en Python para 
presentar datos y metadatos EO.

Esta guía de inicio rápido describe cómo:

* Instalar EOxServer en OSGeo-Live
* Acceso y uso de la instancia de demostración

Ver el :doc:`resumen de EOxServer <../overview/eoxserver_overview>`, la 
`documentación de EOxServer 0.2.1 <../../eoxserver-docs/EOxServer_documentation.pdf>`_, 
o la `documentación en línea <http://eoxserver.org/doc/>`_ para obtener más información.

.. contents:: Contenidos

Instalación
------------

Para instalar EOxServer ejecuta los siguientes comandos:

    cd /usr/local/share/gisvm/bin/
    sudo ./install_eoxserver.sh

Nota, la contraseña del usuario `user` es `user`.

El guión no solo instala EOxServer, también crea y despliega una 
`instancia de demostración <http://localhost/eoxserver/>`_, descarga la documentación, añade accesos directos en el escritorio, etc.

Instancia de demostración
-------------------------------

El nuevo icono en el escritorio etiquetado como `EOxServer` lanza el navegador web, mostrando la instancia de demostración disponible en http://localhost/eoxserver/.

.. image:: ../../images/screenshots/1024x768/eoxserver_start.png
  :scale: 50 %
  :alt: Inicio de la demostración de EOxServer

El otro icono nuevo etiquetado como `EOxServer Documentation` abre el visor de archivos PDF, mostrando la documentación disponible.

.. image:: ../../images/screenshots/1024x768/eoxserver_documentation.png
  :scale: 50 %
  :alt: Documentación de EOxServer

Cliente web
~~~~~~~~~~~~~~~

El enlace al **cliente web** te permite ver una lista de los `Dataset 
Series` y `Stitched Mosaics` (series de datos y mosaicos) disponibles. La demostración tiene un `Dataset Series` configurado llamado "MER FRS 1P RGB reduced" que contiene tres escenas ENVISAT MERIS. Para obtener más información sobre los datos disponibles por favor dirígete a la `documentación en línea <http://eoxserver.org/doc/en/users/demonstration.html>`_.

.. image:: ../../images/screenshots/1024x768/eoxserver_webclient1.png
  :scale: 50 %
  :alt: Selección de juegos de datos en el cliente incrustado de demostración de EOxServer

Seleccionando una entrada de la lista se muestra un mapa con los bordes de los juegos de datos disponibles.

.. image:: ../../images/screenshots/1024x768/eoxserver_webclient2.jpg
  :scale: 50 %
  :alt: Bordes en el cliente incrustado de demostración de EOxServer

También puedes activar previsualizaciones de los datos disponibles usando los controles estándar de OpenLayers.

.. image:: ../../images/screenshots/1024x768/eoxserver_screenshot.jpg
  :scale: 50 %
  :alt: Bordes y previsualizaciones en el cliente incrustado de demostración de EOxServer

Con el control deslizante de fecha (*Date slider*) los juegos de datos se pueden filtrar a un intervalo de tiempo que sea de interés.

.. image:: ../../images/screenshots/1024x768/eoxserver_webclient3.jpg
  :scale: 50 %
  :alt: Cambio de fecha en el cliente incrustado de demostración de EOxServer

El botón **Download** proporciona una lista de juegos de datos descargables. 
Descargable significa en el contexto del cuadrado de coordenadas seleccionado, o datos mostrados en la extensión del mapa si no se ha establecido un intervalo de tiempo. Puedes seleccionar qué juegos de datos a descargar, qué tamaño, proyección, formato y subconjunto de bandas.

.. image:: ../../images/screenshots/1024x768/eoxserver_webclient4.jpg
  :scale: 50 %
  :alt: Selección de descarga en el cliente incrustado de demostración de EOxServer

**Start Download** inicia la descarga que puede resultar en varios ficheros si se han seleccionado varios juegos de datos.

.. image:: ../../images/screenshots/1024x768/eoxserver_webclient5.jpg
  :scale: 50 %
  :alt: Descarga en el cliente incrustado de demostración de EOxServer

Cliente de administración
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

El enlace al cliente de administración te envía a la página de acceso. La contraseña para el usuario `admin` es `admin`.

.. image:: ../../images/screenshots/1024x768/eoxserver_adminclient1.png
  :scale: 50 %
  :alt: Acceso al cliente de administración de EOxServer

El cliente de administración es la aplicación estándar de Django y te permite configurar los datos disponibles. Por favor, siéntete libre de explorar el cliente. Se puede encontrar más información en la `documentación en línea <http://eoxserver.org/doc/en/users/operators.html>`_.

.. image:: ../../images/screenshots/1024x768/eoxserver_adminclient2.png
  :scale: 50 %
  :alt: Arranque del cliente de administración de EOxServer

Es por ejemplo posible ver y alterar los `EO Metadata` de los juegos de datos configurados.

.. image:: ../../images/screenshots/1024x768/eoxserver_adminclient3.jpg
  :scale: 50 %
  :alt: Cliente de administración de EOxServer 

Visor de logs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

El enlace al visor de logs (*Log Viewer*)  proporciona un mecanismo sencillo para visualizar las últimas entradas de log.

.. image:: ../../images/screenshots/1024x768/eoxserver_logviewer.png
  :scale: 50 %
  :alt: Visor de logs de EOxServer

¿Qué es lo siguiente?
-----------------------------------------------------------------------

Esto es una demostración sencilla, con EOxServer puedes hacer mucho más. Puedes encontrar muchos recursos para ayudarte a empezar en la web del proyecto. Estos son algunos de los recursos que puedes consultar:

* Leer la `Guía del operador de EOxServer <http://eoxserver.org/doc/en/users/operators.html>`_.
* Leer la completa `documentación de usuario de EOxServer <http://eoxserver.org/doc/en/users/index.html>`_ 
  empezando por lo `básico de EOxServer Basics <http://eoxserver.org/doc/en/users/basics.html>`_.
* ¿Listo para usar EOxServer? Entonces únete a `lista de correo  
  <http://eoxserver.org/doc/en/users/mailing_lists.html>`_ de la comunidad para compartir ideas, 
  hablar sobre posibles mejoras del software y hacer preguntas.
