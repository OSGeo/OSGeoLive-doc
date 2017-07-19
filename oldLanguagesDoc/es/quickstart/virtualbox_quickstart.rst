:Author: OSGeo-Live
:Author: Cameron Shorter
:Translator: Nacho Varela
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
Guía de inicio rápido para OSGeo-Live Virtual Box
********************************************************************************

Aquí se describe una forma de ejecutar un OSGeo-Live DVD o una imagen ISO en `VirtualBox <http://www.virtualbox.org/>`_ .

VirtualBox es un software de virtualización de Código Abierto usado por muchos desarrolladores y testers de OSGeo-Live.

Requerimientos del Sistema
--------------------------------------------------------------------------------

* RAM: 1 GB, preferiblemente 2 GB si se van a ejecutar otras aplicaciones al mismo tiempo
* Espacio de disco duro disponible:

 * |osgeo-live-hdspace| si se ejecuta directamente desde una ISO
 * 17 GB si se instala físicamente en el sistema

Crear una Máquina Virtual
--------------------------------------------------------------------------------
Descargar e instalar `Virtual Box <http://www.virtualbox.org/>`_. En Linux hacer lo siguiente:

  ``apt-get install virtualbox-ose``

Abrir Virtual Box 

  .. image:: /images/screenshots/800x600/virtualbox.png
    :scale: 70 %

Seleccionar :guilabel:`Nuevo` para crear una nueva Máquina Virtual.

  .. image:: /images/screenshots/800x600/virtualbox_create_vm.png
    :scale: 70 %

Seleccionar :guilabel:`Siguiente`

  .. image:: /images/screenshots/800x600/virtualbox_select_name.png
    :scale: 70 %

Introducir un nombre para la imagen, por ejemplo "osgeo-live" y elegir "Linux", "Ubuntu".

  .. image:: /images/screenshots/800x600/virtualbox_memory.png
    :scale: 70 %

Asignar la Memoria Base con al menos 768 MB (1 GB es mejor para probar aplicaciones basadas en java).

  .. image:: /images/screenshots/800x600/virtualbox_no_hard_disk.png
    :scale: 70 %

Instalación simple: Desmarcar "Boot Hard Disk" para que la Máquina Virtual siempre arranque desde el DVD simulado.

Si desea tener una Máquina Virtual persistente, que almacene el estado entre sesiones y que pueda ajustar la resolución de pantalla u otras herramientas, entonces incluya el "disco duro" para su instalación posterior.

  .. image:: /images/screenshots/800x600/virtualbox_warning_no_hard_disk.png
    :scale: 70 %

Seleccionar :guilabel:`Siguiente`

  .. image:: /images/screenshots/800x600/virtualbox_final_check.png
    :scale: 70 %

Seleccionar :guilabel:`Crear`

  .. image:: /images/screenshots/800x600/virtualbox_select_settings.png
    :scale: 70 %

La imagen se creará, pero es necesario simular la existencia de un OSGeo-Live DVD en la unidad de CD.

Pulse el botón derecho de ratón sobre la imagen "osgeo-live" y seleccione :guilabel:`Configuración`.

  .. image:: /images/screenshots/800x600/virtualbox_set_cd.png
    :scale: 70 %

Seleccionar "Almacenamiento", "Unidad CD/DVD", ...

  .. image:: /images/screenshots/800x600/virtualbox_add_dvd.png
    :scale: 70 %

Escoger el fichero con la imagen del OSGeo-Live.

  .. image:: /images/screenshots/800x600/virtualbox_start_vm.png
    :scale: 70 %

Ahora ya es posible iniciar la Máquina Virtual como se indica en :doc:`osgeolive_quickstart`

Crear una Máquina Virtual permanente
--------------------------------------------------------------------------------
Si su intención es usar mucho el OSGeo-Live DVD es probable que desee crear una Máquina Virtual permanente como se indica en :doc:`osgeolive_install_quickstart`.

Incrementar el tamaño de la pantalla
--------------------------------------------------------------------------------
Se pueden añadir las 'virtual boots tools' que ofrecen suporte para mayores resoluciones de pantalla,
copiar y pegar textos entre el sistema huésped y anfitrión, aceleración gráfica y otros.

Para ello, asegurar que el ordenador está conectado a internet correctamente.

  .. image:: /images/screenshots/800x600/virtualbox_synaptic_menu.png
    :scale: 70 %

Seleccionar la aplicación de 'Gestión de paquetes Synaptic'.

Introduzca la contraseña = "user"

  .. image:: /images/screenshots/800x600/virtualbox_synaptic_select_tools.png
    :scale: 70 %

Marcar "virtualbox-ose-guest-utils" para su instalación.

  .. image:: /images/screenshots/800x600/virtualbox_synaptic_apply.png
    :scale: 70 %

Aplicar cambios.

Reiniciar la Máquina Virtual y los ajustes de la pantalla coincidirán con los de la máquina anfitriona. Las opciones pueden ser cambiadas vía:

Seleccionar: :menuselection:`Applications --> Settings --> Xfce 4 Settings Manager --> Display`

Ver también:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

