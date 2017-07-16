:Author: Hamish Bowman
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: /images/project_logos/logo-gpsdrive.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.gpsdrive.de

********************************************************************************
Guía de inicio rápido de GpsDrive
********************************************************************************

Ejecutando
================================================================================

Probablemente querrás instalar el paquete `gpsd <http://savannah.nongnu.org/projects/gpsd>`_ para poder hablar con el dispositivo GPS; sin GpsDrive que permite la visualización en un visor de mapas.

Los tiles de OpenStreetMap se pueden generar automáticamente utilizando la librería Mapnik :doc:`Mapnik <../overview/mapnik_overview>` para renderizar mapas de :doc:`OpenStreetMap <../overview/osm_dataset_overview>` almcenados en una Base de Datos precargada :doc:`PostGIS <../overview/postgis_overview>`.
También se pueden descargar tiles directamente de Internet sin ninguna instalación extra.
Hay soporte de salida por voz teniendo instalado el software "espeak".


Instalación
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Si tienes conectado el GPS, habrá que arrancar el servicio gpsd.
Para hacer eso, ejecutar:

::

  sudo dpkg-reconfigure gpsd

and

::

  sudo /etc/init.d/gpsd start

Usuarios de GPS BlueTooth deberían tener especial cuidado de leer la opción no-probe (por esta razón no hemos arrancado automáticamente gpsd).

* 'xgps' es un buen programa para comprobar que Gpsd puede ver tu GPS.


Utilizandolo sin un GPS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Si no tienes un GPS conectado, se puede poner en estado Explore Mode
con la tecla 'e' y utilizar después la teclas de flecha para moverse alrededor.
Pulsar el botón derecho del ratón para establecer el destino objetivo


Ayuda Rápida
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Para ayuda escribir '**man gpsdrive**' y '**gpsdrive --help**' en el prompt del terminal. Esto mostrará como cambiar al modo Coche o PDA
que puede ser útil si estás trabajando con pantalla pequeña como en un netbook.


Customizar el display
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Besides the options given in the Preferences menu and the different 
car/PDA/desktop modes offered from the command line, you can change the
displayed dashboard meters. Solo hacer click en uno de las tres posiciones del panel y seleccionar un item nuevo. Podrá cambiar de on a off el panel y los controles de mapa con las teclas '**d**' y '**m**'.


Datos de OpenStreetMap renderizados con Mapnik
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Si dispones de una Base de Datos Local PostGIS corriendo (por ejemplo la que viene con este Live DVD) puedes configurar GpsDrive para renderizar bonitos mapas de calles al vuelo desde datos de OpenStreetMap.org utilizando Mapnik como herramienta de renderizacion. La Base de Datos PostgreSQL que utiliza es "osm_local_smerc".
Como este extract de OpenStreetMap solo tiene cargada la ciudad anfitriona de la conferencia FOSS4G, puede que quieras añadir tus propios datos en formato Planet.osm con el programa `osm2pgsql` o cambiar a modo  *Mapnik Mode* desde la ventana *Map Control* y utilizar los tiles de mapas estáticos descargados o disponibles.


Encontrando puntos de interés
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
Con la herramienta *Find POI* se pueden buscar los puntos de interés más cercanos cargados en tu Base de Datos SQLite de puntos. Para iniciación se han cargado los datos OpenStreetMap
de la ciudad de Nottingham. eJ. *Encontrar todos los pubs al rededor de 2 km
del sitio de conferencias*.


Descargando mapas
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Utilizar la herramienta :menuselection:`Options --> Maps --> Download` para previsualizar y descargar nuevos tiles de mapas. Actualmente los Tiles Web de OpenStreetMap y
NASA OnEarth T-WMS están disponibles como fuentes. Hay unos cuantos programas de línea de comando que vienen con GpsDrive que permiten la descarga de conjuntos de tiles que cubren un área local.


Compartiendo la informacion entre amigos
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
En el menú de preferencias se puede activar el servicio Friendsd. Esto transmite tu posición a un servidor central que permite que tus amigos conozcan dóndes estás. Viene con un programa que hace correr un servidor privado por si no quieres que el mundo entero pueda ver dónde estás. Para habilitar este servicio, ir a Preferencias y seleccionar el Tab de amigos (Friends). Escribir un nombre y hacer click en el botón [Lookup] para obtener la dirección IP del servidor friendsd por defecto. Finalmente, marcar la opción de casilla del Servicio habilitar amigos y presinar [Close]. Los iconos mostrando donde están tus amigos y hacia dónde se dirigen se mostrarán a escalas menores de 1:10 million. Parece haber un montón de tipologías amigables en Europa.


Instrucciones verbales
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
GpsDrive puede dar mensajes de atención verbales cuando se está aproximando al destino. Para probar esto, hay que arrancar el software eSpeak que se ha deshabilitado en el Live-Disc para ahorrar memoria.
Para activarlo tendrás que editar (como root) el fichero
**/etc/default/speech-dispatcher** y establecer **RUN=yes**.
Entonces lanzar el servicio "`sudo service speech-dispatcher start`".
GpsDrive lo encontrará automáticamente en tiempo de ejecución si es que está encendido.
En la solapa 'Speech' del menú de Preferencias se puede habilitar/deshabilitar, cambiar la voz, y el nivel de verbosidad.


Más información
================================================================================

* *GpsDrive*: http://www.gpsdrive.de
* Páginas de ayuda y soporte: http://gpsdrive.sf.net
