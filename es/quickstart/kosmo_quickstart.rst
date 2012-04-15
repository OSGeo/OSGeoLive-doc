:Author: Sergio Baños Calvo
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _kosmo-quickstart-es:
 
.. image:: ../../images/project_logos/logo-Kosmo.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.opengis.es/index.php?lang=es

********************************************************************************
Guía de inicio rápido de Kosmo - Cliente de escritorio
********************************************************************************

Kosmo - Cliente de escritorio es un aplicación SIG de escritorio amigable que permite explorar, editar
y analizar datos espaciales desde una variedad de bases de datos, formatos vectoriales y formatos ráster.

Este inicio rápido describe cómo:

* Iniciar la aplicación
* Cargar capas de archivos, bases de datos y servicios OGC
* Navegar a través del mapa
* Aplicar un estilo a las capas cargadas

	
	
Iniciar Kosmo Escritorio
================================================================================

Para iniciar la aplicación, siga los siguientes pasos:

#. En el menú Inicio, seleccione |osgeolive-appmenupath-geoserver| (o desde el escritorio, entre en la carpeta *GIS de escritorio* y ejecute el acceso directo de Kosmo)

#. La aplicación tardará unos segundos para iniciarse (se muestra una pantalla de bienvenida al cargar)

   .. image:: ../../images/screenshots/800x600/kosmo_splash_screen.png

#. En el diálogo de bienvenida, seleccione la opción *Crear un nuevo proyecto > Nueva vista* (**1**) y presione el botón *Aceptar* (**2**)
 
   .. image:: ../../images/screenshots/1024x768/kosmo_welcome_dialog.png

#. En el cuadro de diálogo de selección de sistema de referencia espacial, pulse el botón *...*

   .. image:: ../../images/screenshots/800x600/kosmo_select_srs.png

#. Seleccione la opción *EPSG* en la lista desplegable con los tipos de SRS (**1**), inserte el texto '4236' en el campo de texto y presione el botón *Buscar* (**2**)

#. Seleccione el SRS EPSG:4326 - WSG4 (**3**) y presione el botón *Aceptar* (**4**)

   .. image:: ../../images/screenshots/800x600/kosmo_select_srs_epsg_4236.png

#. Pulse el botón *Aceptar* otra vez para seleccionar el SRS cargado. La vista se iniciará con EPSG:4326 como la proyección base


.. tip::
  Puede ver qué proyección ha sido seleccionada como base para una vista específica en la barra de título de la ventana de vista, a la derecha del nombre de la vista

	
Ventana principal de Kosmo - Cliente de escritorio
================================================================================

La ventana principal de Kosmo - Cliente de Escritorio tiene las siguientes secciones:

  .. imagen::.../../images/screenshots/1024x768/kosmo_main_window.jpg

* Menú principal
 
* Barra de herramientas

* Árbol de capas

  Árbol que contiene las categorías y las capas que han sido cargadas en la vista actual.

* Mapa

* Barra de Estado

  Muestra al usuario los mensajes de advertencia de la aplicación.

* Coordenadas actuales del cursor
    
	
	
Cargar capas
================================================================================

Archivos
--------------------------------------------------------------------------------

Para empezar, vamos a cargar algunos de los datos de ejemplo incluidos en el LiveDVD:

#. Elija la opción *Vista > Cargar datos...* o presione el botón con el signo más (+) verde de la barra principal de herramientas

#. En la lista desplegable *Formato*, seleccione *Fichero shape* (**1**)

#. En el selector de archivos, seleccione el archivo :file:`10m_admin_0_countries.shp` del directorio :file:`/usr/local/share/data/natural_earth` (**2**)

#. Pulse el botón *Aceptar* para cargar el archivo shapefile seleccionado (**3**)

   .. image:: ../../images/screenshots/800x600/kosmo_select_shape_file.png

#. En el árbol de capas, marque la casilla de visibilidad para hacer visible la capa

#. Elija la opción *Vista > Cargar datos...* o presione el botón con el signo más (+) verde de la barra principal de herramientas

#. En lista desplegable *Formato*, seleccione *Fichero de imagen* (**1**)

#. En el selector de archivos, seleccione el archivo :file:`HYP_50M_SR_W.tif` del directorio :file:`/usr/local/share/data/natural_earth/HYP_50M_SR_W` (**2**)

#. Pulse el botón *Aceptar* para cargar el archivo de imagen seleccionado (**3**)

   .. image:: ../../images/screenshots/800x600/kosmo_select_raster_file.png

#. En el árbol de capas, marque la casilla de visibilidad para hacer visible la capa

#. Puede ver que el orden de la capa dibujada se muestra de abajo a arriba en el árbol de capas: para modificar el orden de las capas arrástrelas con el fin de mostrarlas correctamente

   .. image:: ../../images/screenshots/1024x768/kosmo_load_file_example.jpg

.. note::
  El LiveDVD contiene algunos archivos de datos de ejemplo en los siguientes directorios:

  * :file:`~/data` (un acceso directo a :file:`/usr/local/share/data` or `/home/user/data`)
  * :file:`/usr/local/share/openjump/data`
      	
  Intente cargar más ejemplos de estos directorios. Recuerde que debe seleccionar el formato correcto en la lista desplegable *Formato*

.. Tip::
  Es posible añadir todas las imágenes de un directorio como una única capa seleccionando el directorio principal en el diálogo *Cargar datos*: Kosmo - Cliente de escritorio cargará las imágenes como un mosaico.


Bases de datos
--------------------------------------------------------------------------------

Vamos a cargar una tabla de una base de datos como ejemplo:

#. Elija la opción *Vista > Carga datos...* o presione el botón con el signo más (+) verde en la barra de herramientas principal

#. En la lista desplegable *Formato*, seleccione *Base de datos* (**1**)

#. Rellene los campos nombre del servidor, puerto, nombre de la base de datos, nombre de usuario y contraseña con los siguientes valores:

   * Nombre del servidor: localhost

   * Puerto: 5432

   * Nombre de la base de datos: natural_earth

   * Usuario: user

   * Contraseña: user

#. Presione el botón *Conectar* para cargar las tablas presentes en la base de datos *natural_earth* (**2**)

#. Marque la casilla correspondiente a la tabla *10m_populated_places_simple* (**3**)

#. Presione el botón *Aceptar* para cargar la tabla seleccionada de la base de datos (**4**)

   .. image:: ../../images/screenshots/800x600/kosmo_database_connection.png
  
#. En el árbol de capas, marque la casilla de visibilidad para hacer visible la capa

   .. image:: ../../images/screenshots/1024x768/kosmo_load_database_example.jpg

	
Servicios OGC
--------------------------------------------------------------------------------

#. Inicie el servicio WMS de GeoServer incluido en el LiveDVD seleccionando la opción *Educación > Iniciar GeoServer* (o desde el escritorio, entre en la carpeta *Servicios Web* y ejecute el acceso directo de Iniciar GeoServer)

#. Pulse el botón *Carga servicio IDE* en la barra de herramientas principal para abrir el asistente

#. En *Seleccionar tipo de servicio IDE*, escoja la opción *Servicio WMS* (**1**) y pulse el botón *Siguiente* (**2**)

   .. image:: ../../images/screenshots/800x600/kosmo_wms_1.png

#. En *Seleccionar el Localizador uniforme de recursos (URL)*, escriba la dirección URL http://localhost:8082/geoserver/ows?VERSION=1.1.1 (**1**) en el campo de texto correspondiente y presione el botón *Conectar* (**2**)

#. Si la conexión es correcta, pulse el botón *Siguiente* para ir al panel siguiente (**3**)

   .. image:: ../../images/screenshots/800x600/kosmo_wms_2.png

#. Seleccione la capa `North America Sample Imagery` (**1**) y pulse el botón *>* (**2**) para moverlo a la lista de la derecha. Pulse el botón *Siguiente* (**3**)

   .. image:: ../../images/screenshots/800x600/kosmo_wms_3.png

#. Deje las opciones cargadas por defecto y presione el botón *Terminar* (**1**) para iniciar la carga de la capa

   .. image:: ../../images/screenshots/800x600/kosmo_wms_4.png

#. En el árbol de capas, marque la casilla de visibilidad para hacer visible la capa

#. Seleccione la capa en el árbol de capas y presione el botón *Zoom a la capa* para centrar el mapa en la vista de la capa WMS

#. Reorganice el árbol de capas arrastrando la nueva capa y colóquela sobre la capa ráster *HYP_50M_SR_W*

   .. image:: ../../images/screenshots/1024x768/kosmo_load_wms_results.jpg


.. note::
  Kosmo - Cliente de Escritorio contiene una lista de servidores WMS predeterminada (la mayoría son de España).
  Si está conectado a internet, puede utilizarlos como se describe en el ejemplo con el servidor local.

	
Herramientas de navegación por el mapa
================================================================================

Puede controlar donde se localiza el mapa en el mundo utilizando las herramientas de navegación presentes en la barra de herramientas principal:

1. |ZOOM| Acercarse/Alejarse

  .. |ZOOM| image:: ../../images/screenshots/800x600/kosmo_zoom.gif
	
  * Es la herramienta seleccionada de forma predeterminada al iniciar su sesión
  * Utilice el botón izquierdo del ratón para acercar una cantidad fija al hacer clic en un punto del mapa
  * Utilice el botón derecho del ratón para alejar una cantidad fija al hacer clic en un punto del mapa
  * Pulse el botón izquierdo del ratón, mueva el ratón, dibuje un rectángulo y suelte el botón si desea ampliar la zona delimitada por el rectángulo
  
2. |PAN| Desplazarse
  
  .. |PAN| image:: ../../images/screenshots/800x600/kosmo_pan.gif
	
  * Permite moverse por el mundo sin cambiar la escala
  * Pulse el botón izquierdo del ratón, mueva el ratón y libérelo para mover el mapa a la ubicación deseada
      
3. |ZOOM_PREV| Zoom anterior

  .. |ZOOM_PREV| image:: ../../images/screenshots/800x600/kosmo_zoom_prev.gif
  	
  * Permite hacer un zoom a la visualización anterior desde el historial de zoom (si está disponible)
  
4. |ZOOM_NEXT| Zoom siguiente

  .. |ZOOM_NEXT| image:: ../../images/screenshots/800x600/kosmo_zoom_next.gif
  
  * Permite hacer un zoom a la visualización siguiente desde el historial de zoom (si está disponible)
    
5. |ZOOM_FULL_EXTENT| Zoom a escala completa

  .. |ZOOM_FULL_EXTENT| image:: ../../images/screenshots/800x600/kosmo_zoom_to_full_extent.gif
  
  * Permite cambiar el nivel de zoom del mapa para incluir en la vista todas las capas visibles
  
6. |ZOOM_TO_LAYER| Zoom a la capa

  .. |ZOOM_TO_LAYER| image:: ../../images/screenshots/800x600/kosmo_zoom_to_layer.gif
  
  * Modifica la vista a una escala que permita visualizar completamente la capa seleccionada en el árbol de capas.
    
7. |ZOOM_TO_SELECTED_ITEMS| Zoom a los elementos seleccionados

  .. |ZOOM_TO_SELECTED_ITEMS| image:: ../../images/screenshots/800x600/kosmo_zoom_to_selected_items.gif
  
  * Modifica la vista a una escala que permita visualizar completamente aquellos elementos seleccionados.
    
8. |PAN_TO_CLICK| Centrar mapa

  .. |PAN_TO_CLICK| image:: ../../images/screenshots/800x600/kosmo_pan_to_click.gif

  Centra el mapa en el punto donde se ha hecho clic, sin cambiar la escala actual
  
9. |COORDINATE_LOCALIZATION| Localización por coordenadas

  .. |COORDINATE_LOCALIZATION| image:: ../../images/screenshots/800x600/kosmo_coordinate_localization.gif
  
  * Centra el mapa en las coordenadas X-Y indicadas

Aparte de estas herramientas, también está disponible la posibilidad de Acercarse/Alejarse del mapa mediante el uso de la rueda del ratón.

.. note::	
  Si se deshabilita cualquier herramienta/opción, puede colocar el cursor sobre el botón/opción para ver una información que muestra la razón.



Estilo
================================================================================

En esta sección vamos a asignar un estilo por rango a una capa con la población del país como atributo de estilo:

#. Seleccione la capa `10m_admin_0_countries` en el árbol de capas

#. Pulse con el botón derecho del ratón sobre ella y seleccione la opción *Simbología > Cambiar Estilos...*

#. Haga clic en la pestaña 'Clasificación por color'

#. Active las opciones *Habilitar la clasificación por color* y *Por rango* (**1**)

#. Seleccione `POP_CNTRY` como *Atributo* (**2**), 8 como *Numero de rangos* (**3**) y RYB (Color Brewer) como *Esquema de color* (**4**)

#. Pulse el botón *Aceptar* para aplicar los cambios (**5**)

   .. image:: ../../images/screenshots/800x600/kosmo_basic_style_classification.png
  
#. La capa modificará su estilo para reflejar los cambios:

   .. image:: ../../images/screenshots/1024x768/kosmo_styled_layer_by_range.jpg
	
	
Cosas para probar
================================================================================

* Utilice el editor de estilo avanzado (`Simbología > Editor avanzado de estilos...`) para crear estilos más complejos

* Utilice el `Constructor de consultas` para seleccionar las entidades que cumplan un criterio determinado

* Active el modo de edición de capa y utilice las herramientas disponibles para editarla

* Genere un conjunto de reglas topológicas para una capa e intente editarla

* Active el conjunto de extensiones que forman parte de la aplicación y compruebe las nuevas herramientas que se añaden


¿Y ahora qué?
================================================================================

Existe un conjunto de manuales y vídeos disponibles en http://www.opengis.es/index.php?lang=es
