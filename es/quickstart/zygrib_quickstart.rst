:Author: Hamish Bowman
:Translator: Mauricio Pazos
:Translator: David Mateos
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: ../../images/project_logos/logo-zygrib.png
  :scale: 150 %
  :alt: project logo
  :align: right
  :target: http://www.zygrib.org

********************************************************************************
zyGrib Inicio Rápido 
********************************************************************************

Ejecutándolo
================================================================================

Obteniendo los datos
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Después de lanzar el programa se presentará un mapa del mundo. Ningún dato
de pronóstico de tiempo GRIB se provee con éste disco, tendrá que hacer algunas descargas, lo cual requerirá una conexión a internet. Como los datos GRIB son utilizandos a menudo por marineros en altamar, una ancho de banda pequeño tal como el de servicios de e-mail y radio-modem estan disponibles para ellos sin una conexión a internet estable.Por ejemplo, auque se require una conexión al mundo exterior como una fuente de datos, esta conexión no es necesaria en tiempo de ejecución, a diferencia de muchos programas de cartografía web.

Se podría obtener datos GRIB desde muchas fuentes, pero para facilitar las cosas los autores de zyGrib mantienen un servidor de datos. El primer paso es comprobar que la conexión al servidor está operativa. Hacer click en el icono del enchufe a la derecha y al final de la barra de herramientas, después de un momento debería decir que la conexión es correcta.

Generalmente estamos interesados en las condiciones de tiempo local, así lo 
próximo es dibujar un rectángulo manteniendo presionado el botón derecho del ratón y arrastrarlo sobre el mapa en la zona del mundo en la que se está
interesado. El Golfo de México o el sur de Africa a menudo tiene vientos dinámicos.
Con el rectángulo dibujado en el mapa, hacer un click en el icono de acercar en la zona seleccionada disponible en la barra de herramientas (la lupa con el pequeño rectángulo debajo), y nuevamente marcar una zona de interés arrastrando el ratón manteniendo el botón izquierdo del mouse presionado, ahora se cubre mucho o todo el acercamiento en el mapa.

Ahora seleccionar :menuselection:`Archivo --> Descargar GRIB` y elegir los  elementos que se quieren descargar. Si se tiene dudas la selección por
omisión será correcta. Cuando esté listo presione el botón ``Descargar``en la parte de abajo  y salve el archivo en el disco.

Si todo va bien, se debería ver el mapa del tiempo con un desplazador de tiempo a lo largo de la parte inferior. Se puede utilizar la rueda del ratón para acercarse, si así se desea.


Cambiando vistas
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Moviendo el ratón alrededor del mapa se verán las condiciones exactas
bajo el cursor, éstas son presentadas en el panel izquierdo.

Se puede cambiar la hora moviendo el desplazador desplegado en la parte inferior, o seleccionando una en el menú desplegable en la parte superior izquierda de la ventana.

Desde el menú ``Mapa meteo`` se puede seleccionar la variable a visualizar. Por ejemplo selecionar :menuselection:`Mapa meteo --> Nubosidad`, la vista debería cambiar.

Si se descargan datos para el Golfo de México seguramente usted esta interesado en ver los datos CAPE. "CAPE" representa la Energía Potencial Convectiva Disponible a nivel del suelo. Es una medida de la inestabilidad atmosférica y valores altos (miles de J/kg) indican amenaza de tormentas eléctricas y/o tornados.

Podría ser muy interesante si se descargan datos para cobertura de nubes del sur de Africa.


Creando una Animación
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Cuando se hace un clic en el icono mas a la derecha en la barra de herramienta (el cohete) una nueva ventana se abrirá y una animación será generada. Observe como se ejecuta la secuencia de instantes desde el primero de ellos. Cuando termine se rebobinará al primero de la serie temporal, y desde allí se puede reproducir, pausar, o rebobinar segun se desee. También se puede salvar cada marco (frame) como una imagen en un
archivo para mas tarde codificarlo en un AVI, MPEG, o GIF animado 
`usando otro software <http://grass.osgeo.org/wiki/Movies>`_.

Hacer click en el botón rojo de energía para cerrar.


Ver También
================================================================================

El :doc:`OpenCPN software <../overview/opencpn_overview>` (también en este disco) tiene un plugin de overlay de GRIB que usted puede probar con eln archivo GRIB que acaba de descargar. Ver la :doc:`Guía de inicio rápido de OpenCPN <../quickstart/opencpn_quickstart.html>`_ 
para mas detalles.


