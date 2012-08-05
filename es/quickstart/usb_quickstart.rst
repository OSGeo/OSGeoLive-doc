
:Author: OSGeo-Live
:Author: Cameron Shorter
:Translator: Jorge Sanz
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _usb-quickstart-es:
 
********************************************************************************
Creando una unidad USB arrancable de OSGeo Live
********************************************************************************

Este documento describe cómo crear una unidad USB arrancable de OSGeo-Live.
Arrancar una computadora desde una unidad USB es más rápido que desde un USB,
y la unidad puede configurarse para almacenar datos entre sesiones.

Se ha descubierto que hay algunas peculiaridades y trucos involucrados en la
creación satisfactoria de una unidad USB. Se ha documentado todo lo posible,
pero pueden aparecer más inconvenientes o problemas. Puede consultar la versión
más reciente de este documento en 
http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB


Requisitos
--------------------------------------------------------------------------------

- Una unidad USB de 4GB, si se usa osgeo-live-mini (sin los instaladores para
  Windows y MacH)
- Una unidad USB de 8GB, si se usa osgeo-live (con los instaladores para
  Windows y Mac)
- Un DVD o una imagen ISO de OSGeo-Live (descargada de
  http://live.osgeo.org/en/download.html)


Creación de la unidad USB desde Ubuntu
--------------------------------------------------------------------------------

.. note :: Este es el proceso recomendado para crear el USB

.. note:: La versión de Ubuntu que esté utilizando debe de ser la misma o más
  reciente que la versión de Xubuntu que va a instalar en su USB. Si está
  instalando OSGeo-Live 5.0 o 5.5 en el USB, necesitará ejecutar este proceso
  sobre Ubuntu 11.04 o posterior.

- Descargue osgeo-live u osgeo-live al disco duro de su computadora.
- Inserte la unidad USB en su computadora
- Si está usando un DVD entonces colóquelo en la unidad de disco

  .. image:: ../../images/screenshots/800x600/usb_select.png
    :scale: 70 %

- Seleccione  :menuselection:`System --> Administration --> Startup Disk Creator`

  .. image:: ../../images/screenshots/800x600/usb_set_params.png
    :scale: 70 %

- Seleccione la imagen ISO osgeo-live u osgeo-live-mini

- Seleccione la unidad USB

- Seleccione :guilabel:`Make Startup Disk`

  .. image:: ../../images/screenshots/800x600/usb_installing.png
    :scale: 70 %

- Espere aproximadamente unos 20 minutos para que se vuelque la información

Creación de la unidad USB desde Windows
--------------------------------------------------------------------------------

- Inserte la unidad USB en us computadora
- Descargue y ejecute *Universal USB Installer* desde 
  http://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3/

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_licence.gif

- Acepte los términos de la licencia

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_selection.gif

Una vez instalado proceda de la siguiente forma:

#. Distribución: Seleccione la distribución ``xubuntu i386`` usada para la
   imagen de osgeo-live. Para OSGeo-Live 5.5 seleccione 
   ``xubuntu 11.04 Desktop i386``

#. Seleccione la última imagen ISO osgeo-live descargada localmente. 

   .. note::  Necesitará introducir manualmente la ruta al fichero ``.iso``,
              ya que el botón :guilabel:`Browse` solo sirve para encontrar
              ficheros ISO de Xubuntu.

#. Seleccione su unidad USB

#. Seleccione *Persistence* si desea que se recuerde el estado de la unidad
   entre sesiones
   
#. Seleccione :guilabel:`Create`

   .. image:: ../../images/screenshots/1024x768/usb_penlinux_installing.gif

   Espere unos 20 minutos aproximadamente para que la unidad flash de
   OSgeo-Live se genere completamente


Creación de la unidad USB en diferentes sistemas operativos
--------------------------------------------------------------------------------

#. Instalar *UNetbootin* (descargado desde 
   http://unetbootin.sourceforge.net/)

#. Insertar la unidad USB en su computadora

#. Arrancar *UNetbootin*, seleccionar *Diskimage* (la unidad USB se selecciona
   automáticamente)

#. Seleccionar el fichero ISO de OSGeo-Live

#. Selecciona :guilabel:`OK`

   .. image:: ../../images/screenshots/1024x768/unetbootin_live_osgeo.png

Establecer el orden de arranque en la BIOS
--------------------------------------------------------------------------------

Muchas computadoras no establecen por defecto la unidad USB en la secuencia de búsqueda de dispositivos de arranque.

Para conseguir esto, arranque su computadora y presione la tecla apropiada cuando se muestre en pantalla los mensajes de la BIOS (generalmente presionando
la tecla <Delete>, alguna tecla de función o similar).

Seleccione que la máquina arranque desde la unidad de USB antes del disco duro.

.. note:: En algunas computadoras es necesario tener la unidad USB insertada
          para poder seleccionarla.
          
          Nótese también que a menudo la unidad USB se lista junto a los
          discos duros en lugar de junto a los dispositivos extraíbles.
          


Ejecución:
--------------------------------------------------------------------------------

Siga las instrucciones de  :doc:`osgeolive_quickstart`


Problemas conocidos:
--------------------------------------------------------------------------------

- Las computadoras Mac no podrán usar esta unidad USB, deberán usar el LiveDVD

Véase también:
--------------------------------------------------------------------------------

- :doc:`osgeolive_quickstart`
- :doc:`virtualbox_quickstart`
- :doc:`osgeolive_install_quickstart`
- Si conoce otros problemas o incidencias, por favor repórtelas en esta página
  wiki: http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB
  y coméntelas en la lista de correo del proyecto:
  http://lists.osgeo.org/mailman/listinfo/live-demo
- Para consultar más opciones sobre unidades USB arrancables visite 
  http://pendrivelinux.com 
