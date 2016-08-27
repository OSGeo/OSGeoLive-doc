:Author: OSGeo-Live
:Author: Alex Mandel, Cameron Shorter
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Jorge Sanz
:Version: osgeo-live7.9
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

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

* Una unidad USB (de al menos 4 GB, se recomiendan 8 GB o más).
* Un DVD o una imagen ISO de OSGeo-Live (descargada de
  http://live.osgeo.org/en/download.html).

* Para una unidad USB de 4GB, usar la ISO osgeo-live-mini (sin los instaladores para Windows y Mac), sin persistencia.
* Para unidades USB de 8GB o más, usar o la ISO osgeo-live-mini, o osgeo-live ISO (con los instaladores para   Windows y Mac). Se recomiendan más de 8GB si se quiere usar con persistencia.  


Creación de la unidad USB desde Ubuntu
--------------------------------------------------------------------------------

(Este es el proceso recomendado para crear el USB. Es aplicable para Ubuntu y variantes como OsGeo-Live).

.. note:: 
	La versión de Ubuntu que esté utilizando debe de ser la misma o más
reciente que la versión de Lubuntu que va a instalar en su USB. Si está 
instalando OSGeo-Live 8.0 en el USB, necesitará ejecutar este proceso
  sobre Ubuntu 14.04 o posterior.

`Descargue <http://live.osgeo.org/en/download.html>`_ osgeo-live u osgeo-live al disco duro de su computadora.

Arranque su equipo con una distribución reciente Ubuntu/Xubuntu. Se puede hacer esto desde un DVD OSGeo-Live DVD, como se explicó en  :doc:`osgeolive_quickstart`.

Inserte la unidad USB en su computadora. Si está usando un DVD entonces colóquelo en la unidad de disco.

  .. image:: ../../images/screenshots/800x600/usb_select.png
    :scale: 70 %

Seleccione  :menuselection:`System Tools --> Startup Disk Creator`` o busque `Startup Disk Creator` desde el escritorio Unity.

  .. image:: ../../images/screenshots/800x600/usb_set_params.png
    :scale: 70 %

Seleccione la imagen ISO osgeo-live u osgeo-live-mini que ha descargado.

Seleccione la unidad USB. Si tiene espacio de sobra, se puede ajustar el deslizador para crear espacio de almacenamiento persistente en la unidad USB (recomendado). Para que esta opción esté disponible, se necesita una unidad de ( o más GB.

Seleccione :guilabel:`Make Startup Disk`

  .. image:: ../../images/screenshots/800x600/usb_installing.png
    :scale: 70 %

Espere aproximadamente unos 20 minutos para que se vuelque la información


Arranque desde la unidad USB
--------------------------------------------------------------------------------

#. Empezar con el equipo apagado.
#. Insertar el USB en un puerto USB disponible.
#. Encender el equipo y seleccionar arrancar desde el USB: P

   * Muchas computadoras no establecen por defecto la unidad USB en la secuencia de búsqueda de dispositivos de arranque.
   * Durante el arranque, buscar un mensaje que indica como acceder "Boot Menu" (suele ser alguna de las teclas de función).
   * Si el equipo no tiene menú de arranque, entonces arrancar en la BIOS del sistema. El botón para entrar en la BIOS varía según marcas y modelos de PC (generalmente presionando la tecla <Delete>, F12 u otra tecla de función). Si no consigues averiguarlo intenta esta página web que lista muchas de las teclas de acceso a la BIOS. 
http://www.mydigitallife.info/comprehensive-list-of-how-key-to-press-to-access-bios-for-various-oem-and-computer-systems/

#. Select to boot from the USB device.

   * En algunas computadoras es necesario tener la unidad USB insertada    para poder seleccionarla.
   * Nótese también que a menudo la unidad USB se lista junto a los        discos duros en lugar de junto a los dispositivos extraíbles.
   * Este `Video <http://www.youtube.com/watch?v=eQBdVO-n6Mg>`_ muestra el arranque desde un USB.

Ejecución:
--------------------------------------------------------------------------------

Siga las instrucciones de  :doc:`osgeolive_quickstart`

Véase también:
--------------------------------------------------------------------------------

* :doc:`osgeolive_quickstart`
* :doc:`virtualbox_quickstart`
* :doc:`osgeolive_install_quickstart`
 * Métodos alternativos para la creación de USB y las últimas peculiaridades y trucos están recogidas aquí: `wiki <http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB>`_
 * Puede dirigir sus preguntas a nuestra lista de correo: http://lists.osgeo.org/mailman/listinfo/live-demo

