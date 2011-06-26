:Author: Sergio BaÃ±os Calvo
:Version: osgeo-live4.0
:License: Creative Commons

.. _kosmo-quickstart:
 
.. image:: ../../images/project_logos/logo-Kosmo.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.opengis.es/index.php?lang=en

*************************
Kosmo Desktop Quick Start 
*************************

Inicio rápido de Kosmo Escritorio
*************************

Kosmo Escritorio es un amigable cliente SIG de escritorio que permite explorar, editar
y analizar datos espaciales desde una variedad de bases de datos, formatos vectoriales y formatos raster.

Este inicio rápido describe cómo:

* Iniciar la aplicación
* Cargar capas de archivos, bases de datos y servicios OGC
* Navegar a través del mapa
* Aplicar un estilo a las capas cargadas

	
	
Iniciar Kosmo Escritorio
===================

Para iniciar la aplicación, siga los siguientes pasos:

.. SBC: Add screenshots to this option, one for each step

* En el menú Inicio, seleccione *Geoespacial > SIG de escritorio > Kosmo*
* La aplicación tomará unos segundos para iniciarse (se muestra una pantalla de bienvenida al cargar)
* En el cuadro de diálogo de bienvenida, seleccione la opción *Crear un nuevo proyecto > Nueva vista* y presione el botón *Aceptar*
* En el cuadro de diálogo de selección de sistema de referencia espacial, pulse el botón *...*
* Seleccione la opción *EPSG* en la lista desplegable con los tipos de SRS, inserte el texto '4236' en el campo de texto y presione el botón *Buscar*
* Seleccione el SRS EPSG:4326 - WSG4 y presione el botón *Aceptar*
* Pulse el botón *Aceptar* otra vez para seleccionar el SRS cargado. La vista se iniciará con EPSG:4326 como la proyección base

.. tip::
  Puede ver qué proyección ha sido seleccionada como base para una vista específica en la barra de título de la ventana de vista, a la derecho del nombre de la vista

	
Ventana principal de Kosmo Escritorio
=========================

La ventana principal de Kosmo Cliente de Escritorio tiene las siguientes secciones:

.. imagen::.../../images/screenshots/1024x768/kosmo_main_window.jpg

* Menú principal
* Barra de herramientas
* Árbol de capas

  El árbol que contiene las categorías y las capas que han sido cargadas en la vista actual.

* Mapa
* Barra de Estado

  Muestra al usuario los mensajes de advertencia de la aplicación.

* Coordenadas actuales del cursor
    
	
Cargar capas
==============

Archivos
-----

Para empezar, vamos a cargar algunos de los datos de ejemplo incluidos en el LiveDVD:

#. Elija la opción *Vista > Cargar datos... * o presione el botón en el signo más (+) verde de la barra principal de herramientas
#. En la lista desplegable *Formato*, seleccione *Shapefile*
#. En el selector de archivos, seleccione el archivo `countries.shp` en el directorio `/home/user/data/udig-data/data-v1.2`
#. Pulse el botón *Aceptar* para cargar el archivo shapefile seleccionado
#. En el árbol de capas, pulse la casilla de visibilidad para hacer visible la capa
#. Elija la opción *Vista > cargar datos...* o presione en el signo más (+) verde de la barra principal de herramientas
#. En lista desplegable *Formato*, seleccione *Archivo de imagen*
#. En el selector de archivos, seleccione el archivo `clouds.jpg` dentro del directorio `/home/user/data/udig-data/data-v1.2`
#. Pulse el botón *Aceptar* para cargar el archivo de imagen seleccionado
#. En el árbol de capas, marque la casilla de visibilidad para hacer visible la capa
#. Puede ver que el orden de la capa dibujada se muestra de abajo a arriba en el árbol de capas: para modificar el orden de las capas arrástrelas a fin de mostrarlas correctamente


  .. image:: ../../images/screenshots/1024x768/kosmo_load_file_example.jpg

.. note::
  El LiveDVD contiene algunos archivos de datos de ejemplo en el siguiente directorio:

  * `~/data` (a short cut to `/usr/local/share/data`)
  * `/home/user/data/udig-data/data-v1.2`
      
	
Intente cargar más ejemplos de estos directorios. Recuerde que debe seleccionar el formato correcto en la lista desplegable *Formato*

.. Tip::
  Es posible añadir todas las imágenes de un directorio como una única capa, seleccione el directorio principal en el diálogo *Cargar datos*: Kosmo Desktop   cargará las imágenes como un mosaico.

Bases de datos
---------

Vamos a cargar una tabla de una base de datos de ejemplo

#. Elija la opción *Vista > Carga datos...* o presione el botón con un signo más (+) verde en la barra de herramientas principal
#. En la lista desplegable *Formato*, seleccione *Base de datos*
#. Rellene los campos nombre del servidor, puerto, nombre de la base de datos, nombre de usuario y contraseña con los siguientes valores:

* Nombre del servidor: localhost
* Puerto: 5432
* Nombre de la base de datos: natural_earth
* Usuario: user
* Contraseña: user

#. Presione el botón *Conectar* para cargar las tablas presentes en la base de datos *natural_earth*
#. Marque la casilla correspondiente a la tabla *10m_populated_places_simple*
#. Presione el botón *Aceptar* para cargar la tabla seleccionada de la base de datos
#. En el árbol de capas, marque la casilla de visibilidad para hacer visible la capa

	
Servicios OGC
------------

#. Inicie el servicio WMS de GeoServer incluido en el LiveDVD seleccionando la opción *Geospacial > Servidores web > Iniciar GeoServer*
#. Pulse el botón *Carga servicio IDE* en la barra de herramientas principal para abrir el asistente
#. En *Seleccionar tipo de servicio SDI*, escoja la opción *Servicio WMS* y pulse el botón *Siguiente*
#. En *Seleccionar el Localizador uniforme de recursos (URL)*, escriba la dirección URL http://localhost:8082/geoserver/ows en el correspondiente campo de texto y presione el botón *Conectar*
#. Si la conexión es correcta, pulse el botón *Siguiente* para ir al panel siguiente.
#. Seleccione la capa `North America Sample Imagery` y pulse el botón *>* para moverlo a la lista de la derecha. Prensa el botón *Siguiente*.
#. Deje las opciones predeterminadas cargadas y presione el botón *Terminar* para iniciar la carga de la capa
#. En el árbol de capas, pulse la casilla de visibilidad para hacer visible la capa
#. Seleccione la capa en el árbol de capas y la presione el botón *Zoom a la capa* para centrar el mapa en la vista de la capa WMS


  .. image:: ../../images/screenshots/1024x768/kosmo_load_wms_results.jpg


.. note::	
 Kosmo Cliente de Escritorio contiene una lista de servidores WMS predeterminada (la mayoría son de España).
 Si está conectado a internet, puede utilizarlos como se describe en el ejemplo con el servidor local.


	
Mapa de herramientas de navegación
====================

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
  * Pulse el botón izquierdo del ratón, mueva el ratón y liberelo para mover el mapa a la ubicación deseada
      
3. |ZOOM_PREV| Zoom Anterior

  .. |ZOOM_PREV| image:: ../../images/screenshots/800x600/kosmo_zoom_prev.gif
  	
  * Permite hacer un zoom a la visualización anterior desde el historial de zoom (si está disponible)
  
4. |ZOOM_NEXT| Zoom Siguiente

  .. |ZOOM_NEXT| image:: ../../images/screenshots/800x600/kosmo_zoom_next.gif
  
  * Permite hacer un zoom a la visualización siguiente desde el historial de zoom (si está disponible)
    
5. |ZOOM_FULL_EXTENT| Zoom a Escala Completa

  .. |ZOOM_FULL_EXTENT| image:: ../../images/screenshots/800x600/kosmo_zoom_to_full_extent.gif
  
  * Permite cambiar el nivel de zoom del mapa para incluir en la vista todas las capas visibles
  
6. |ZOOM_TO_LAYER| Zoom a la Capa

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

  Aparte de estas herramientas, también está disponible la posibilidad de Acercarse/Alejarse del mapa
  mediante el uso de la rueda del ratón.

.. note::
	
  Si se deshabilita cualquier herramienta/opción, puede colocar el cursor sobre el
  botón/opción para ver una información que muestra la razón.

Estilo
=======

En esta sección vamos a asignar un estilo por rango a una capa con la población del país como atributo de estilo

#. Seleccione la capa `countries` en el árbol de capas
#. Pulse con el botón derecho del ratón sobre ella y seleccione la opción *Simbología > Cambiar Estilos...*
#. Haga clic en la ficha 'Colores temáticos'
#. Active las opciones *Activar Colores temáticos* y *Por intervalo*
#. Seleccione `POP_CNTRY` como *Atributo*, 8 como *Intervalo* y RYB (Color Brewer) como *Esquema de color*
#. Pulse el botón *Aceptar* para aplicar los cambios

  .. image:: ../../images/screenshots/1024x768/kosmo_styled_layer_by_range.jpg

	
	
Cosas para probar
=============

* Utilice el editor de estilo avanzado (`Simbología > Editor avanzado de estilo`) para crear estilos más complejos
* Utilice el Asistente para consultas para seleccionar las entidades que cumplan un criterio
* Active el modo de edición de capa y utilice las herramientas disponibles para editarla
* Genere un conjunto de reglas topológicas para una capa e intente editarla
* Active el conjunto de extensiones que forman parte de la aplicación y verá las nuevas herramientas que incorporan


¿Y ahora qué?
==========

Hay un conjunto de manuales y video disponible en http://www.opengis.es

