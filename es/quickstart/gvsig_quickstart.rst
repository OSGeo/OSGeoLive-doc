:Author: Simon Cropper
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-gvSIG.png
   :scale: 50 
   :align: right

********************************************************************************
Guía de inicio rápido de gvSIG  
********************************************************************************

Descripción del proyecto
================================================================================

"gvSIG Desktop es un Sistema de Información Geográfica (SIG), esto es, una
aplicación de escritorio diseñada para capturar, almacenar, manipular, analizar 
y desplegar en todas sus formas, la información geográficamente referenciada 
con el fin de resolver problemas complejos de planificación y gestión. Se caracteriza 
por disponer de una interfaz amigable, siendo capaz de acceder a los formatos
más comunes, tanto vectoriales como *raster* y cuenta con un amplio número de 
herramientas para trabajar con información de naturaleza geográfica (herramientas
de consulta, creación de mapas, geoprocesamiento, redes, etc.) que lo convierten 
en una herramienta ideal para usuarios que trabajen con la componente territorial." 
`gvSIG 2011 <http://www.gvsig.org/web/projects/gvsig-desktop/descripcion/view?set_language=es>`_ 

Esta guía de inicio rápido describe como...
================================================================================

* Arrancar gvSIG y crear una vista
* Definir la proyección de una vista
* Añadir datos *raster* y vectorial a una vista
* Desplazarse en una vista
* Cambiar cómo se presentan las capas en una vista
* Seleccionar los municipios que se encuentra en una región en particular y
  exportar el resultado a un nuevo fichero
* Crear un mapa con una cuadrícula
* Guardar el proyecto y salir de gvSIG



Arrancar gvSIG y crear una vista
================================================================================

Seleccione gvSIG desde el menú de aplicaciones. La aplicación suele tardar
alrededor de un minuto en arrancar.

#. Por defecto gvSIG arranca con un proyecto vacío con el tipo de documento
   vista seleccionado por defecto.
#. Haga clic en el botón [New] para crear una vista.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_001.png
   :scale: 55 


Definir la proyección de una vista
================================================================================

Abrir el diálogo de propiedades de la vista
--------------------------------------------------------------------------------

#. Seleccione la vista recientemente creada. Por defecto se llama ``Untitled - 0``
   pero podría ser ``Untitled - 1`` si ha creado anteriormente una vista y la ha borrado.
#. Haga clic en el botón [Properties] para abrir el diálogo **View properties**.
#. Haga clic en el botón [...] junto a 'Current projection'. Esto
   abrirá el diálogo de nuevo SRS (**New CRS**).

.. image:: ../../images/screenshots/1024x768/gvsig_qs_002.png
   :scale: 55 

Definir el Sistema de Referencia
--------------------------------------------------------------------------------

#. Seleccione de la lista desplegable 'Type' el elemento **EPSG**
#. Introduzca el código EPSG para el sistema de de referencia coordenado. Para
   este ejemplo vamos a usar el EPSG=4326, que es el correspondiente a la
   proyección geográfica 2D para el elipsoide WGS84. Después haga clic en el
   botón [Search]. Esto mostrará una lista de los CRS seleccionados en la
   tabla inferior a la caja de entrada de texto.
#. Seleccione [OK] para volver a la ventana de propiedades de la vista. 

.. image:: ../../images/screenshots/1024x768/gvsig_qs_003.png
   :scale: 55 

Salvar las propiedades de la vista
--------------------------------------------------------------------------------

#. Fíjese que ahora el código EPSG es 4326 y que las unidades de mapa han
   cambiado a grados.
#. Seleccione [OK] para volver al gestor de proyectos.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_004.png
   :scale: 55 

Abrir la vista
--------------------------------------------------------------------------------
 
#. Seleccione la vista recién creada
#. Haga clic en el botón [Open] para abrir la vista
#. La vista consiste en tres zonas diferenciadas
#. La zona superior izquierda contiene una lista de todas las capas vectoriales
   y *raster* utilizadas en la vista. Esta zona se conoce como la Tabla de 
   Contenidos
#. La zona inferior izquierda corresponde al visualizador, sirve para mostrar
   la ubicación de la vista sobre una capa general
#. La zona derecha es el área principal donde se muestran los datos geográficos
   tanto *raster* como vectorial
#. Seleccione el icono de 'Maximizar' para que la vista ocupe toda la pantalla

.. image:: ../../images/screenshots/1024x768/gvsig_qs_005.png
   :scale: 55 

La vista - añadir datos *raster* y vectorial
================================================================================


Abrir el diálogo de añadir capa
--------------------------------------------------------------------------------
   
#. Haga clic en el icono 'Add layer' de la barra de herramientas principal
   para abrir el diálogo **Add layer**
#. Seleccione [Add] en el diálogo **Add layer**. Por defecto la primera pestaña es
   *File* por lo que el diálogo para abrir ficheros aparecerá.
#. Desplácese a la carpeta ``/usr/local/share/data/natural_earth/HYP_50M_SR_W``


.. image:: ../../images/screenshots/1024x768/gvsig_qs_006.png
   :scale: 55 

Seleccionar un fichero *raster*
--------------------------------------------------------------------------------
   
#. Seleccione del desplegable inferior *gvSIG Raster Driver*. Por defecto está
   seleccionado el driver para *shapefiles* por lo que en principio la carpeta
   parecerá vacía
#. Seleccione el fichero ``HYP_50M_SR_W.tif``
#. Haga clic en el botón [OK] para volver al diálogo **Add layer**


.. image:: ../../images/screenshots/1024x768/gvsig_qs_007.png
   :scale: 55 

Seleccionar ficheros vectoriales
--------------------------------------------------------------------------------

#. Ahora el diálogo **Add layer** lista el fichero raster añadido
#. Seleccione el botón [Add] para añadir algunos ficheros vectoriales. El diálogo
   para añadir ficheros aparecerá de nuevo
#. Suba a una carpeta superior presionando el botón [Up one level] para cambiar
   a la carpeta ``/usr/local/share/data/natural_earth``
#. Seleccione esta vez del desplegable el *gvSIG shp driver*
#. Seleccione los *shapefiles* siguientes de la carpeta utilizando la tecla Control
   para poder seleccionar varios a la vez: 10m_admin_1_states_provinces.shp``,
   ``10m_populated_places_simple.shp`` y ``10m_rivers_lake_centerlines.shp``
#. Haga clic en el botón [OK] para volver al diálogo **Add layer**
#. Haga clic en el botón [OK] para volver a la vista

.. image:: ../../images/screenshots/1024x768/gvsig_qs_008.png
   :scale: 55 

La vista - navegación básica
================================================================================

Zoom a una región
--------------------------------------------------------------------------------

Una vez en la vista de nuevo verá que los ficheros vectoriales se superponen
al fichero *raster*. Los colores mostrados en la figura pueden depender de
los suyos dependiendo de las preferencias de usuario de su instalación.

#. Por defecto la herramienta *Zoom in* está seleccionada en la barra de
   herramientas
#. Use el puntero del ratón para dibujar un rectángulo alrededor de la zona
   sudeste de Australia. Haga esto seleccionado la esquina superior izquierda
   del rectángulo, sostenga el botón izquierdo del ratón y arrastre hasta la
   esquina inferior derecha del rectángulo sobre la zona seleccionada. Suelte
   el botón izquierdo del ratón una vez ha dibujado el rectángulo deseado.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_009.png
   :scale: 55 

Navegación a una escala determinada
--------------------------------------------------------------------------------
   
La vista automáticamente habrá cambiado para mostrar el área inscrita en el
rectángulo dibujado.

#. El tamaño de la columna tabla de contenidos puede ajustarse usando el
   ratón para poder ver los nombres de ficheros que no caben en la columna
#. Ajuste la zona de la vista usando las herramientas destacadas en la figura
   siguiente, de forma que quede Victoria en el centro 

.. image:: ../../images/screenshots/1024x768/gvsig_qs_010.png
   :scale: 55 
   

La vista - cambiando la apariencia de las capas
================================================================================

Hacer un polígono transparente
--------------------------------------------------------------------------------

#. Seleccione la capa ``10m_admin_1_states_provinces.shp`` usando el
   botón izquierdo del ratón y haga después clic con el botón
   derecho del ratón para mostrar el menú contextual
#. Seleccione la opción *Properties*
#. El diálogo de propiedades de capa (**Layer properties**) aparecerá

.. image:: ../../images/screenshots/1024x768/gvsig_qs_011.png
   :scale: 55 

Cambiando la simbología de una capa vectorial
--------------------------------------------------------------------------------

#. Seleccione la pestaña *Sybmols* de la zona superior del diálogo
   **Layers properties**
#. Seleccione el botón [Choose symbol] para que aparezca el diálogo del
   constructor de símbolos
#. Desactive la caja *Fill color* para hacer que los polígonos sean
   transparentes
#. Haga clic en el botón [OK] para volver a la ventana de propiedades
   de la capa
   
.. image:: ../../images/screenshots/1024x768/gvsig_qs_012.png
   :scale: 55 

Cambiando el etiquetado de una capa vectorial
--------------------------------------------------------------------------------
   
#. Seleccione la pestaña *Labelling* en la parte superior del diálogo de
   propiedades de capa
#. Cambie los atributos de texto a los mostrados en la figura siguiente,
   después haga clic en el botón [Accept].

.. image:: ../../images/screenshots/1024x768/gvsig_qs_013.png
   :scale: 55 

El resultado
--------------------------------------------------------------------------------

Cabe destacar que esta una visualización muy sencilla, mostrando una capa de
puntos, otra de líneas y otra de polígonos superpuestas a una capa *raster*.
Es igual de sencillo cargar una fotografía aérea o un Modelo Digital del
Terreno como fondo bajo sus datos vectoriales, o mostrar datos vectoriales
almacenados en otros formatos diferentes.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_014.png
   :scale: 55 

Ejercicio propuesto - cambiar la simbología y etiquetado de las otras capas
--------------------------------------------------------------------------------

Siguiendo los pasos mencionados anteriormente, cambie los símbolos, colores y
etiquetado de ríos y poblaciones para, aproximadamente, conseguir una simbología
similar a la de la siguiente figura.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_015.png
   :scale: 55 


Análisis básico - seleccionar los municipios de una región
================================================================================

Seleccionando la región
--------------------------------------------------------------------------------

#. Seleccione la capa ``10m_admin_1_states_provinces.shp`` usando
   el botón izquierdo del ratón
#. Seleccione la herramienta 'Select by point' de la barra de
   herramientas principal
#. Haga clic en el polígono que representa el Estado de Victoria. El
   polígono se mostrará en amarillo o tal vez en algún otro color
   dependiendo de las preferencias de usuario de su instalación

.. image:: ../../images/screenshots/1024x768/gvsig_qs_016.png
   :scale: 55 

Seleccionando los municipios contenidos en una región
--------------------------------------------------------------------------------

#. Seleccione la capa ``10m_populated_places_simple.shp`` usando el botón
   izquierdo del ratón
#. Seleccione ``View > Selection > Selection by layer`` para abrir el 
   diálogo **Selection by layer**
#. Cambie los dos criterios de selección usando los cuadros combinables
   del lado izquierdo del diálogo. Haga clic en [New set] para seleccionar
   los municipios que se encuentran dentro del polígono seleccionado
#. Seleccione el botón [Cancel] en el diálogo **Selection by Layer** para
   volver a la vista

.. image:: ../../images/screenshots/1024x768/gvsig_qs_017.png
   :scale: 55 

Deseleccionar el polígono para ver qué ha ocurrido
--------------------------------------------------------------------------------

#. Seleccione la capa ``10m_admin_1_states_provinces.shp`` usando el botón
   izquierdo del ratón
#. Seleccione la herramienta 'Clear selection' de la barra de herramientas
   principal
#. Ahora puede ver que únicamente se han seleccionado los municipios que
   están en Victoria

.. image:: ../../images/screenshots/1024x768/gvsig_qs_018.png
   :scale: 55 

Exportar los municipios seleccionados a un *shapefile* nuevo
--------------------------------------------------------------------------------

#. Seleccione la capa ``10m_populated_places_simple.shp`` usando el
   botón izquierdo del ratón
#. Seleccione la entrada de menú ``Layer > Export to... > SHP`` para
   comenzar la exportación
#. El diálogo **Export to...** aparecerá. gvSIG reconocerá que hay
   26 geometrías seleccionadas y le alertará de que solo un subconjunto
   de la capa va a ser exportado. Seleccione el botón [Yes] para continuar.
#. El diálogo para guardar fichero aparecerá. Elija una carpeta y un nombre
   donde almacenar el *shapefile* resultante. Cabe destacar que si ya existe
   un fichero con el nombre que ha seleccionado gvSIG mostrará un mensaje
   de alerta informando de tal situación.
#. gvSIG a continuación le preguntará si desea añadir la capa a la vista.
   Seleccione el botón [Yes] para añadir el nuevo *shapefile* a la tabla
   de contenidos.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_019.png
   :scale: 55 

Mostrando únicamente los municipios de una región 
--------------------------------------------------------------------------------

#. Una vez ha vuelto a la vista, desactive la capa ``10m_populated_places_simple.shp``
   de la tabla de contenidos
#. Cambie la simbología y el etiquetado de ``test.shp`` para que sea similar
   a la figura siguiente
#. Ahora la vista solo muestra los municipios que se encuentran dentro del Estado
   de Victoria
#. Seleccione el icono de cerrar ventana para volver al gestor de proyecto de
   forma que podamos empezar a crear un mapa

.. image:: ../../images/screenshots/1024x768/gvsig_qs_020.png
   :scale: 55 

   
Cómo crear un mapa
================================================================================

Crear un mapa y abrirlo
--------------------------------------------------------------------------------

#. Seleccione el tipo de documento *Mapa* en el gestor de proyectos
#. Haga clic en el botón [New] para crear un mapa
#. Seleccione el mapa cread de la lista. Por defecto se llama ``Untitled - 0``
#. Haga clic en el botón [Open]
#. Un nuevo mapa vacío aparecerá en su propia ventana titulada ``Map: Untitled - 0``.
   Cabe destacar que una serie de puntos aparecen sobre el mapa. Esto se
   conoce como *grid* o guías y se utilizan para ajustar la colocación
   de los elementos al diseñar el mapa.
#. Seleccione el botón de 'Maximizar ventana' para que el mapa ocupe
   toda la pantalla

.. image:: ../../images/screenshots/1024x768/gvsig_qs_021.png
   :scale: 55 

Insertar una vista con una cuadrícula
--------------------------------------------------------------------------------

#. Haga clic en la herramienta 'Insertar vista' del menú principal
#. Dibuje un rectángulo que ocupe la totalidad del mapa manteniendo pulsado
   el botón izquierdo del ratón y arrastrándolo hasta ocupar todo el mapa.
   Al soltar el botón del ratón aparecerá el diálogo *Properties of view
   framework*.
#. Seleccione la vista creada anteriormente
#. Active la opción *Show Grid* (esto añade una cuadrícula por defecto 
   a la vista)
#. En el diálogo de **Grid settings** cambie el intervalo a 1.0, esto significa
   1 grado sexagesimal de separación entre las líneas que representan
   longitudes y latitudes
#. Seleccione el formato de cuadrícula, utilizando líneas en lugar de puntos
   para facilitar la visualización
#. Aumente el tamaño de la fuente a 14 puntos
#. Seleccione el botón [Ok] para volver a **Properties of the view framework** y
   después seleccione el botón [Accept] para salir y volver a su mapa

.. image:: ../../images/screenshots/1024x768/gvsig_qs_022.png
   :scale: 55 

¿Qué más puedo hacer en un mapa?
--------------------------------------------------------------------------------

#. Seleccione la entrada del menú principal ``Map > Properties`` para abrir el
   diálogo **Map Properties**. Deseleccione la casilla *Visualise Grid* y pulse
   el botón [OK]. Las guias/cuadrícula usadas durante el diseño del mapa deberían
   desaparecer del mapa, y la imagen resultante por tanto debería ajustarse
   a la figura siguiente.
#. A un mapa se pueden añadir más elementos como una escala gráfica o numérica
   o una flecha de norte utilizando los botones de la barra de herramientas o
   mediante las entradas del menú ``Map``
#. El mapa puede imprimirse o exportarse a PDF o Postscript para ser incluido en
   trabajos posteriores
#. Seleccione el icono de 'Cerrar Ventana' para volver al gestor de proyectos

.. image:: ../../images/screenshots/1024x768/gvsig_qs_023.png
   :scale: 55 

Guardando su proyecto y saliendo de gvSIG
================================================================================

#. Los proyectos pueden ser guardados para ser usados posteriormente usando la 
   opción en el menú ``File > Save as...`` o
#. Pueden ser cerrados o salir de los mismos usando la opción de
   menú ``File > Exit``.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_024.png
   :scale: 55 


A partir de aquí...
================================================================================

Algunos tutoriales y material de ayuda en Español están disponibles en la página web de `gvSIG <http://www.gvsig.org/web/docusr/learning/>`_. 

