:Author: Simon Cropper
:Reviewer: Manuel Madrid
:Reviewer: Jorge Sanz
:Version: osgeo-live7.0
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
`gvSIG 2011 <http://www.gvsig.org/web/projects/gvsig-desktop/descripcion/view?set_language=es>`__

Esta guía de inicio rápido describe como...
================================================================================

* Arrancar gvSIG y crear una vista
* Definir la proyección de una vista
* Añadir datos *raster* y vectorial a una vista
* Desplazarse en una vista
* Cambiar cómo se presentan las capas en una vista
* Seleccionar los municipios que se encuentra en una región en particular y
  exportar el resultado a un nuevo fichero
* Crear un mapa
* Guardar el proyecto y salir de gvSIG
* Instalar un complemento (servicio OpenStreetMap)
* Cargar una capa WMTS

.. contents:: Contents

.. note:: Si el interfaz de gvSIG deja de responder pruebe a presionar :kbd:`Alt+f`.
          Esto abrirá el menú *File* y a partir de ese momento el interfaz volverá
          a responder. Este error es propio de la distribución de gvSIG para OSGeo-Live
          No se produce en una instalación normal.

.. note:: Nota para la versión gvSIG 2.1.0-2218: Para cargar ficheros raster es necesario
          que el usuario tenga permisos de escritura en el directorio en el que está el
          fichero o, en su defecto, indicar uno en el que los tenga. Dado que el usuario
          "user" no tiene permisos de escritura en la carpeta "data" será necesario indicar,
          cuando se solicite, un directorio en el que sí tenga permisos, como por ejemplo,
          "/home/user".

Arrancar gvSIG y crear una vista
================================================================================

Seleccione gvSIG desde el menú de aplicaciones. La aplicación suele tardar
alrededor de un minuto en arrancar.

#. Por defecto gvSIG arranca con un proyecto vacío con el tipo de documento
   vista seleccionado por defecto.
#. Haga clic en el botón [New] para crear una vista. La vista se abrirá automáticamente.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_001_.png
   :scale: 55


Definir la proyección de una vista
================================================================================

Abrir el diálogo de propiedades de la vista
--------------------------------------------------------------------------------

#. Seleccione la entrada de menú ``View > Properties``

.. image:: ../../images/screenshots/1024x768/gvsig_qs_002_.png
   :scale: 55

Definir el Sistema de Referencia
--------------------------------------------------------------------------------

#. Haga clic en el botón [...] junto a 'Current projection'. Esto
   abrirá el diálogo de nuevo SRS (**New CRS**).
#. Seleccione de la lista desplegable 'Type' el elemento **EPSG**
#. Introduzca el código EPSG para el sistema de de referencia coordenado. Para
   este ejemplo vamos a usar el EPSG=4326, que es el correspondiente a la
   proyección geográfica 2D para el elipsoide WGS84. Después haga clic en el
   botón [Search]. Esto mostrará una lista de los CRS seleccionados en la
   tabla inferior a la caja de entrada de texto.
#. Seleccione [OK] para volver a la ventana de propiedades de la vista.

Fíjese que ahora el código EPSG es 4326 y que las unidades de mapa han cambiado a grados.

#. Seleccione [OK] para volver al gestor de proyectos.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_003_.png
   :scale: 55

Conociendo las partes de una vista
--------------------------------------------------------------------------------

#. La vista consiste en tres zonas diferenciadas
#. La zona superior izquierda contiene una lista de todas las capas vectoriales
   y *raster* utilizadas en la vista. Esta zona se conoce como la Tabla de
   Contenidos
#. La zona inferior izquierda corresponde al visualizador, sirve para mostrar
   la ubicación de la vista sobre una capa general
#. La zona derecha es el área principal donde se muestran los datos geográficos
   tanto *raster* como vectorial

.. image:: ../../images/screenshots/1024x768/gvsig_qs_005_.png
   :scale: 55

La vista - añadir datos *raster* y vectorial
================================================================================

Añadiendo capas a partir de ficheros
--------------------------------------------------------------------------------

#. Haga clic en el icono 'Add layer' de la barra de herramientas principal
   para abrir el diálogo **Add layer**
#. Seleccione [Add] en el diálogo **Add layer**. Por defecto la primera pestaña es
   *File* por lo que el diálogo para abrir ficheros aparecerá.
#. Desplácese a la carpeta ``/usr/local/share/data/natural_earth``
#. Seleccione los ficheros tal y como se muestra en la imagen. Nótese que por defecto
   se muestran todos los formatos de fichero soportados lo que nos permite seleccionar
   todos los ficheros al mismo tiempo manteniendo pulsada la tecla *control*.
#. Haga clic en el botón [OK] para volver al diálogo **Add layer**
#. Haga clic en el botón [OK] para volver a la vista

.. image:: ../../images/screenshots/1024x768/gvsig_qs_006_.png
   :scale: 55

La vista - navegación básica
================================================================================

Preparando la vista
--------------------------------------------------------------------------------

#. Para una mejor visualización de los datos maximizaremos la ventana de la vista.
#. El tamaño de la columna de la tabla de contenidos puede ajustarse usando el
   ratón para poder ver los nombres completos de ficheros.
#. En caso de que la capa raster esté sobre las capas vectoriales
   será necesario desplazarla manualmente debajo de las demás.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_008_.png
   :scale: 55

Zoom a una zona determinada
--------------------------------------------------------------------------------

#. Por defecto la herramienta *Zoom in* está seleccionada en la barra de
   herramientas
#. Use el puntero del ratón para dibujar un rectángulo alrededor de la zona
   sudeste de Australia. Haga esto seleccionado la esquina superior izquierda
   del rectángulo, sostenga el botón izquierdo del ratón y arrastre hasta la
   esquina inferior derecha del rectángulo sobre la zona seleccionada. Suelte
   el botón izquierdo del ratón una vez ha dibujado el rectángulo deseado.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_009_.png
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

.. image:: ../../images/screenshots/1024x768/gvsig_qs_010_.png
   :scale: 55

Cambiando la simbología de una capa vectorial
--------------------------------------------------------------------------------

#. Seleccione la pestaña *Sybmols* de la zona superior del diálogo
   **Layers properties**
#. Seleccione el botón [Choose symbol] para que aparezca el diálogo del
   constructor de símbolos

Eliminando el relleno y cambiando el color del borde
--------------------------------------------------------------------------------

#. Desactive la caja *Fill color* para hacer que los polígonos sean
   transparentes
#. Haga clic en el botón [...] junto a 'Border color:'
#. Elija el color blanco.
#. Haga clic en el botón [OK] para volver a la ventana del selector de símbolos
#. Haga clic en el botón [OK] para volver a la ventana de propiedades
   de la capa

.. image:: ../../images/screenshots/1024x768/gvsig_qs_012_.png
   :scale: 55

Cambiando el etiquetado de una capa vectorial
--------------------------------------------------------------------------------

#. Seleccione la pestaña *Labelling* en la parte superior del diálogo de
   propiedades de capa
#. Cambie los atributos de texto a los mostrados en la figura siguiente,
   después haga clic en el botón [Accept].

.. image:: ../../images/screenshots/1024x768/gvsig_qs_013_.png
   :scale: 55

El resultado
--------------------------------------------------------------------------------

Cabe destacar que esta una visualización muy sencilla, mostrando una capa de
puntos, otra de líneas y otra de polígonos superpuestas a una capa *raster*.
Es igual de sencillo cargar una fotografía aérea o un Modelo Digital del
Terreno como fondo bajo sus datos vectoriales, o mostrar datos vectoriales
almacenados en otros formatos diferentes.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_014_.png
   :scale: 55

Ejercicio propuesto - cambiar la simbología y etiquetado de las otras capas
--------------------------------------------------------------------------------

Siguiendo los pasos mencionados anteriormente, cambie los símbolos, colores y
etiquetado de ríos y poblaciones para, aproximadamente, conseguir una simbología
similar a la de la siguiente figura.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_015_.png
   :scale: 55

Añadiendo un localizador (overview)
================================================================================

Abriendo el configurador del localizador
--------------------------------------------------------------------------------

#. Seleccione :menuselection:`View --> Locator setup`.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_016_.png
   :scale: 55

Añadiendo una capa al localizador
--------------------------------------------------------------------------------

#. Haga clic en el botón :guilabel:`Add layer…`.
#. En la ventana de añadir capa, haga click en el botón :guilabel:`Add`.
#. Seleccione el fichero ``HYP_50M_SR_W.tif``.
#. Haga clic en el botón :guilabel:`Open` para volver a la ventana de añadir capa.
#. Haga clic en el botón :guilabel:`Ok` y cierre el configurador del localizador.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_017_.png
   :scale: 55

El resultado
--------------------------------------------------------------------------------

Ahora podemos ver fácilmente en qué parte del mundo se encuentra localizada
nuestra vista.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_018_.png
   :scale: 55

Análisis básico - seleccionar los municipios de una región
================================================================================

Seleccionando la región
--------------------------------------------------------------------------------

#. Seleccione la capa ``10m_admin_1_states_provinces.shp`` usando
   el botón izquierdo del ratón
#. Seleccione la herramienta 'Select by point' de la barra de
   herramientas principal
#. Haga clic en el polígono que representa el Estado de New South Wales. El
   polígono se mostrará en amarillo o tal vez en algún otro color
   dependiendo de las preferencias de usuario de su instalación

.. image:: ../../images/screenshots/1024x768/gvsig_qs_019_.png
   :scale: 55

Abriendo la herramienta de Selección por capa
--------------------------------------------------------------------------------

#. Seleccione la capa ``10m_populated_places_simple.shp`` usando el botón
   izquierdo del ratón
#. Seleccione ``View > Selection > Selection by layer`` para abrir el
   diálogo **Selection by layer**

.. image:: ../../images/screenshots/1024x768/gvsig_qs_020_.png
   :scale: 55

Seleccionando los municipios contenidos en una región
--------------------------------------------------------------------------------

#. Cambie el primer criterio de selección usando los cuadros combinables
   del lado izquierdo del diálogo tal y como se muestra en la imagen
#. Cambie el segundo criterio de selección tal y como se muestra en la imagen
#. Haga clic en [New set] para seleccionar los municipios que se encuentran
   dentro del polígono seleccionado
#. Seleccione el botón [Cancel] en el diálogo **Selection by Layer** para
   volver a la vista

.. image:: ../../images/screenshots/1024x768/gvsig_qs_021_.png
   :scale: 55

Deseleccionar el polígono para ver qué ha ocurrido
--------------------------------------------------------------------------------

#. Seleccione la capa ``10m_admin_1_states_provinces.shp`` usando el botón
   izquierdo del ratón
#. Seleccione la herramienta 'Clear selection' de la barra de herramientas
   principal
#. Ahora puede ver que únicamente se han seleccionado los municipios que
   están en New South Wales

.. image:: ../../images/screenshots/1024x768/gvsig_qs_022_.png
   :scale: 55

Exportar elementos seleccionados a un *shapefile* nuevo
===============================================================================

Seleccionando el formato de fichero de salida
--------------------------------------------------------------------------------

#. Seleccione la capa ``10m_populated_places_simple.shp`` usando el
   botón izquierdo del ratón
#. Seleccione la entrada de menú ``Layer > Export to...`` para
   comenzar la exportación
#. Seleccione *Shape format*

.. image:: ../../images/screenshots/1024x768/gvsig_qs_023_.png
   :scale: 55

Seleccionando el nombre del fichero de salida
--------------------------------------------------------------------------------

#. Elija una carpeta e introduzca un nombre para el fichero de salida
#. Haga click en el botón *Open* y luego en *Next*.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_024_.png
   :scale: 55

Opciones de exportación
--------------------------------------------------------------------------------

#. Seleccione la opción *Selected features* para exportar solo los municipios de
   del estate de New South Wales
#. Haga clic en *Export*

.. image:: ../../images/screenshots/1024x768/gvsig_qs_025_.png
   :scale: 55

El resultado
--------------------------------------------------------------------------------

#. La capa has sido añadida a la vista
#. Para comprobar que la exportación se ha realizado correctamente haga invisible
   la capa original desactivándola. Solo deberían mostrarse los municipios del estado
   de New South Wales.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_026_.png
   :scale: 55

Cómo crear un mapa
================================================================================

Crear un mapa y abrirlo
--------------------------------------------------------------------------------

#. Seleccione el tipo de documento *Mapa* en el gestor de proyectos
#. Haga clic en el botón [New] para crear un mapa
#. Un nuevo mapa vacío aparecerá en su propia ventana titulada ``Map: Untitled - 0``.
   Cabe destacar que una serie de puntos aparecen sobre el mapa. Esto se
   conoce como *grid* o guías y se utilizan para ajustar la colocación
   de los elementos al diseñar el mapa.
#. Seleccione el botón de 'Maximizar ventana' para que el mapa ocupe
   toda la pantalla

.. image:: ../../images/screenshots/1024x768/gvsig_qs_027_.png
   :scale: 55

Insertar una vista dentro del mapa
--------------------------------------------------------------------------------

#. Haga clic en la herramienta 'Insertar vista' del menú principal
#. Dibuje un rectángulo que ocupe la totalidad del mapa manteniendo pulsado
   el botón izquierdo del ratón y arrastrándolo hasta ocupar todo el mapa.
   Al soltar el botón del ratón aparecerá el diálogo *Properties of view
   framework*.
#. Seleccione la vista creada anteriormente
#. Seleccione el botón [Accept] para salir y volver a su mapa

.. image:: ../../images/screenshots/1024x768/gvsig_qs_028_.png
   :scale: 55

¿Qué más puedo hacer en un mapa?
--------------------------------------------------------------------------------

#. A un mapa se pueden añadir más elementos como una escala gráfica o numérica
   o una flecha de norte utilizando los botones de la barra de herramientas o
   mediante las entradas del menú ``Map``
#. El mapa puede imprimirse o exportarse a PDF o Postscript para ser incluido en
   trabajos posteriores
#. Seleccione el icono de 'Cerrar Ventana' para volver al gestor de proyectos

.. image:: ../../images/screenshots/1024x768/gvsig_qs_029_.png
   :scale: 55

Guardando su proyecto y saliendo de gvSIG
================================================================================

#. Los proyectos pueden ser guardados para ser usados posteriormente usando la
   opción en el menú ``File > Save as...`` o
#. Pueden ser cerrados o salir de los mismos usando la opción de
   menú ``File > Exit``.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_030_.png
   :scale: 55

Intalar un complemento
================================================================================

Abriendo el administrador de complementos
--------------------------------------------------------------------------------

#. Seleccione :menuselection:`Tools --> Addons manager`.
#. Dentro de la ventana *Install package*, seleccione la opción *Installation from URL*.
#. Elija el repositorio que se indica en la imagen.
#. Haga clic en el botón *Next*.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_031_.png
   :scale: 55

Encontrar el complemento deseado
-------------------------------------------------------------------------------

#. Introduzca 'OpenStreetMap' en el cuadro de texto del filtro rápido (*Fast filter*).
#. Seleccione el complemento *Formats: OpenStreetMap raster tiles support*.
#. Haga clic en *Next*.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_032_.png
   :scale: 55

Finalizando la instalación
---------------------------------------------------------------------------------

#. Haga clic en el botón *Start downloading*.
#. Luego haga clic en *Next*.
#. Finalmente haga clic en *Finish*.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_033_.png
   :scale: 55

Probando el nuevo complemento: añadiendo una capa OpenStreetMap
---------------------------------------------------------------------------------

Tal y como se indica en el mensaje que sale al finalizar la instalación del
complemento, es necesario reiniciar gvSIG.

#. Una vez de vuelta en gvSIG, dentro de una vista nueva, seleccione el botón
   :guilabel:`Add layer…`.
#. Seleccione la pestaña *OSM*.
#. Seleccione una de las capas disponibles.
#. Haga clic en *Ok*.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_036_.png
   :scale: 55

El resultado
-------------------------------------------------------------------------------

Una capa ha sido añadida a la vista. Haciendo zoom sobre ella podremos ver con detalle
los datos de Open Street Map.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_037_.png
   :scale: 55
.. image:: ../../images/screenshots/1024x768/gvsig_qs_038_.png
   :scale: 55

Cargando una capa WMTS
================================================================================

WMTS es una evolution del estándar OGC WMS basada en el manejo de teselas.

Seleccionando un servidor
--------------------------------------------------------------------------------

#. Dentro de una vista, hag clic en el botón :guilabel:`Add layer…`.
#. Elija la pesataña *WMTS*.
#. Elija la URL que se indica en la imagen.
#. Haga clic en *Connect*.
#. Haga clic en *Next*.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_039_.png
   :scale: 55

Seleccionando una de las copas disponibles
--------------------------------------------------------------------------------

#. Seleccione una de las capas disponibles (e.g. bluemarble).
#. Haga clic en *Add*.
#. Haga clic en *Next*.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_040_.png
   :scale: 55

Seleccionado el formato de imagen y el sistema de referencia
--------------------------------------------------------------------------------

#. Selecione *image/jpeg* como formato de imagen.
#. Seleccione *EPSG:4326* (nótese que el sistema de referencia de la vista ha de ser
   el mismo; si no lo es debe cancelar, cambiarlo y volver a empezar).
#. Haga clic en *Accept*.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_041_.png
   :scale: 55

El resultado
--------------------------------------------------------------------------------

Una nueva capa ha sido añadida a la vista.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_042_.png
   :scale: 55

A partir de aquí...
================================================================================

* `Manuales de usuario <http://www.gvsig.org/web/projects/gvsig-desktop/docs/user/view?set_language=es>`_
* `Cursos y tutoriales <http://www.gvsig.org/web/docusr/learning/cursos-gvsig/view?set_language=es>`_
* `Vídeos <http://www.gvsig.org/web/projects/gvsig-desktop/tour/videos/view?set_language=es>`_
* `Blog de gvSIG <http://blog.gvsig.org>`_