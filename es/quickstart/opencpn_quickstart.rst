:Author: Hamish Bowman
:Version: osgeo-live4.0
:License: Creative Commons

.. _opencpn-quickstart:
 
.. image:: ../../images/project_logos/logo-opencpn.png
  :scale: 75 %
  :alt: project logo
  :align: right
  :target: http://www.opencpn.org

********************************************************************************
OpenCPN Inicio Rápido 
********************************************************************************

Ejecución
================================================================================

Configurando sus Cartas
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Antes de ejecutar OpenCPN en el LiveDVD se deberían activar los datos de ejemplo.
Para hacer esto abrir un Terminal desde el menú de Aplicaciones principal y ejecutar
:command:`opencpn_noaa_agreement.sh`. Se deberá dar la clave del usuario en el archivo en 
el escritorio principal.

También se puede descargar cartas náuticas de Estados Unidos desde NOAA en 
http://www.charts.noaa.gov

Configurando el GPS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Si tiene un GPS conectado se querrá iniciar el servicio gpsd.
Para hacer esto ejecutar:

::

  sudo dpkg-reconfigure gpsd

y luego

::

  sudo /etc/init.d/gpsd start

Los usuarios de BlueTooth GPS deberían tener especial cuidado en leer acerca de
las opciones no-probe. ( Por esta razón no se inicia gpsd automáticamente)

* '`xgps`' is a good program to check that Gpsd can see your GPS ok.


Documentación
================================================================================

* La documentación esta disponible en el 
  `Menú de Ayuda <../../opencpn/doc/help_en_US.html>`_, u
  online en http://www.opencpn.org/docwiki

*  `Consejos para iniciar <../../opencpn/doc/tips.html>`_


Ver También
================================================================================

El tiempo actual y los datos de pronóstico pueden ser descargados
y puestos sobre la carta usando el plugin GRIB. El `zyGrib software <../overview/zygrib_overview.html>`_
(también en este disco) provee una fácil manera para descargarlos. Para mas 
detalles ver el `zyGrib inicio rápido <../quickstart/zygrib_quickstart.html>`_.
Habilitar el conector (plugin) que se encuentra en la pestaña mas a la derecha en el menú
de configuración; hacer click en la ventana de selección del directorio GRIB. Para 
mostrar los archivos ocultos incluidos en el directorio ``.zygrib`` que contiene
el directorio de descarga de GRIB por omisión. Si salva el archivo GRIB en
el directorio home navegar a :file:`/home` para seleccionar el directorio ``user``.
No se necesita descomprimir los archivos. Haciendo un click en el "+" a la izquierda
del nombre de archivo y seleccionando de la lista los pronósticos disponibles.

