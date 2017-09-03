:Author: Johan Van de Wauw
:Translator: Mario Andino
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-saga.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.saga-gis.org


********************************************************************************
Guía de inicio rápido de SAGA GIS
********************************************************************************

Iniciando
================================================================================

Para iniciar SAGA GIS desde Live DVD, haz clic en el icono SAGA en el Escritorio.

Al abrir SAGA por primera vez, aparecen 3 ventanas: el Espacio de Trabajo, las ventanas de propiedades de objeto y de mensajes. La información en la ventana de propiedades de objeto cambiara de acuerdo a tu selección en la ventana de Espacio de Trabajo.

  .. image:: /images/projects/saga/saga_guioverview.png
     :scale: 80

Abriendo Datos
================================================================================

Abre SAGA y carga la rejilla `/home/user/saga/DGM_30m_Mt.St.Helens_SRTM.grd` a través del menú **File|Grid|Load Grid**. Obtendrás un mensaje comunicando el éxito o la falla de está tarea. Deberías ver algo como `Load Grid: DGM_30m_Mt.St.Helens_SRTM.grd...okay`. Una vez que cargaste el conjunto de datos, este se mostrara en la pestaña de Data del Espacio de Trabajo. Estará en la lista de Grids y la rejilla de sistema a la que pertenece. 

En este caso, el sistema de información de la rejilla lucirá como **30;312x 458y; 557970x 5108130y**. El primer número es tamaño de celda (30 metros), los dos números siguientes muestra el número de celdas las direcciones x e y respectivamente, y los últimos dos números son el origen de la rejilla. Los sistemas de rejillas SAGA son referenciadas desde la esquina inferior izquierda. Esto, y algunas informaciones útiles en el conjunto de datos se muestran si se selecciona la pestaña de Description en la ventana de Propiedades. Una vez que haces clic en la ventana, no solamente se verá información mas detallada del sistema de rejillas, sino también el tipo de valor de la rejilla (aqui FLOAT), el rango de valores, algunas medidas estadísticas y el tamaño de memoria.


Mostrando datos
================================================================================

Para mostrar el conjunto de datos en una vista de mapa, solo es necesario un doble clic en la pestaña Data de la ventana de Espacio de Trabajo. Una nueva ventana de mapa se abrirá mostrando el conjunto de datos. El lienzo se enmarca: arriba e izquierda se muestran las coordenadas x- e y- mundiales. Abajo ya a la derecha se ven las reglas en unidades de mapa. Si se mueve el puntero del ratón sobre el mapa se visualizan en la barra inferior de la ventana de SAGA las coordenadas x-, y- y z-. Las coordenadas z- que se muestran corresponden a los valores de elevación del conjunto de datos (Ten en cuenta que los valores que se muestran son siempre del conjunto de datos seleccionado en la pestaña Data o Maps)

Ahora usa las herramientas de navegación para hacer zoom, y desplazar la vista. La herramienta de Zoom es elegida por defecto. Un clic izquierdo en el mapa acerca la vista , un clic derecho aleja la vista. Sosteniendo presionado el botón izquierdo, arrastrando a la esquina opuesta y soltando el botón le permite acercar a un área de interés. Si acerca mucho la vista, notara que los valores de la celda son mostrados. Para desplazar la vista, seleccione la herramienta de desplazamiento y con el ratón haga clic y arrastre para mover el mapa. Observe los otros botones en la barra de herramientas: estos permiten hacer zoom, por ejemplo a la extensión completa.

.. image:: /images/projects/saga/saga_fullextent.png

.. tip:: Saga acerca bastante rápido, si te pierdes navegando tus datos, haz clic en el botón Zoom a la extensión' en la barra de herramientas.

Creando una vista de mapa de relieve sombreado
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mejoremos la forma de mostrar del mapa calculando un mapa de relieve sombreado. Cambia a la pestaña Modules de la ventana de Espacio de Trabajo y haz clic en el signo mas a la izquierda de la librería del modulo **Terrain Analysis - Lightning, Visibility**: la lista con los módulos de esta librería se mostrara. Ahora selecciona el modulo de Analytical Hillshading y selecciona la pestaña Configuraciones de la ventana de Propiedades. Esto mostrara los par4ametros del modulo(también observa la pestaña de descripciones, que mostrara mas información acerca del modulo y sus parámetros). haz clic en la columna derecha del parámetros de rejilla del sistema (donde se muestra [not set]) y selecciona la rejilla del conjunto de datos de Mt. St. Helens. Haz clic en la columna derecha de la opción del método de sombreado y selecciona Standard. Ahora presiona Apply y luego el botón de Execute. Un nuevo conjunto de datos conteniendo el Hillshade se calculara.

Observa la pestaña Data de la ventana de Espacio de trabajo - encontraras el conjunto de datos generados anteriormente. Haz doble clic en el conjunto de datos 'Analytical Hillshading' y selecciona New en el dialogo que aparece. Esto mostrara el conjunto de datos en una ventana de mapa nueva. Después de inspeccionar el conjunto de datos, cierra la ventana de mapa seleccionando Close desde el menú de ventana.

Haz doble clic de nuevo en el conjunto hillshade, pero selecciona el mapa que contiene en el cuadro de dialogo(Add layer to selected map). Esto pondrá el hillshade sobre el conjunto de elevación.

Cambie a la ventana de mapas del Espacio de Trabajo. Observara la entrada de su mapa y los conjuntos de datos de los cuales esta compuesto. El orden de dibujado es de arriba para abajo. Ahora haga clic derecho en el conjunto de datos 'Analytical Hillshading' y elija Move to Bottom del menú contextual. Esto cambiara el orden de dibujado, situando el sombreado de colinas bajo el conjunto de datos de elevación (que se mostrara de nuevo en la vista de mapa). Ahora selecciona el conjunto de elevación (haciendo clic a la izquierda) y observa la pestaña Settings de la ventana de Propiedades. Encuentra la sección Display de los parámetros y haz clic en la columna de la derecha de la opción de transparencia. ingresa un valor de 30 y presiona el botón Apply. Ahora veras tus valores de elevación sombreados por relieve.

Siéntete libre de probar otros valores de transparencia o incluso otros métodos de sombreado en el modulo Analytical Hillshading (en caso de que no cambies el parámetro de conjunto de salida, los cambios se harán en la rejilla que ya esta creada, Por lo tanto. veras los cambios en la vista de mapa inmediatamente).

.. image:: /images/projects/saga/saga_withhillshade.png
    :scale: 80

Visualización 3D
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
En un paso siguiente, tal vez quiera visualizar su mapa en 3D. Asegúrese de que su ventana de mapa esta seleccionada y presione el botón de Show 3D-View en la barra de herramientas. En el dialogo, seleccione el sistema de rejillas que contiene su conjunto de datos de elevación y especifique el conjunto de datos de Mt. St. Helens como el parámetro de elevación. Una vez que presione el botón de Okay, la vista 3D de su mapa se mostrara. Conserve presionada el botón izquierdo del ratón y mueva el ratón para girar e inclinar el mapa. Use el botón derecho para acercar/alejar o mover el mapa. También observe la barra de herramientas de la vista 3D: los botones cumplen las mismas funciones del ratón y algunas funcionalidades extra. Para cerrar la vista 3D seleccione la opción Close del menú de Ventana.

.. image:: /images/projects/saga/saga_3d.png
    :scale: 80

Creando líneas de rasante
================================================================================
Como introducción a las capacidades vectoriales de SAGA, ahora generaremos Lineas de Rasante a partir del modelo de elevación digital. Esto se puede hacer usando **Shapes - Grid | Contour Lines From Grid** si abres la pestaña modules en el espacio de trabajo, o igualmente bien abrir el modulo usando el menú: **Modules|Shapes|Grid|Vectorization**. Elije tu sistema de rejillas y rejillas (esta debe ser la elevación). Puedes dejar las opciones como están, pero tal vez es mejor elegir una equidistancia de 50m en lugar del estándar de 10m. Unos segundos después su mapa de rasantes ha sido generado y deberías encontrarlo bajo la pestaña Data en el espacio de trabajo. Intente abrir su mapa de rasantes en un nuevo mapa. Todas las lineas de rasante ahora tienen el mismo color, que no es tan atractivo. Si seleccionas tu conjunto de datos (en el espacio de trabajo, pestaña Data) y revisas las opciones en la ventana de propiedades de objeto, puedes encontrar una sección: Display: color classification. Puedes cambiar la clasificación de 'Unique Symbol' a colores graduados por la elevación. Presiona apply, y se mostraran con lineas de rasante en colores.

Revisa tu historial
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Si seleccionas un conjunto de datos (ej. tus lineas de rasantes) en la pestaña de espacio de trabajo, puedes cambiar la pestaña propiedades del objeto a 'history' para volver a revisar que módulos y que opciones fueron usadas para crear el conjunto de datos. Esta información también se guarda cuando salvas tus archivos (en los archivos .hshp y .hgrd).

.. image:: /images/projects/saga/saga_contour_history.png
    :scale: 80

Guardando datos
================================================================================
Para guardar el trabajo que has creado debes abrir la pestaña data en el espacio de trabajo, y hacer clic derecho en el archivo
 que quieres guardar. SAGA guardara archivos de rejillas en su formato nativo (\*.sgrd) y shapefiles en el formato estandard ESRI (\*.shp). También es posible guardar el proyecto, eligiendo **File|Project|Save Project**. Esto salvara todas las vistas de mapas y configuraciones de datos, como también ofrecerá salvar los archivos de datos.

Importando/Exportando datos
================================================================================
Si quieres importar o exportar datos hay diferentes módulos. El mas útil es el modulo: Import/Export GDAL/OGR, que puede ser encontrado en **modules|file|GDAL/OGR menu**. usando este modulo pueden ser importados muchos formatos raster, incluyendo geotiff. El mismo modulo también puede ser usado para exportar datos a estos formatos.

.. tip:: El formato de rejillas de SAGA GIS es soportado por GDAl desde la versión 1.7.0. Los archivos de rejillas guardados por SAGA pueden ser abiertos muchos otros programas usando GDAL. Como sea, debes abrir el archivo '\*.sdat' y no el archivo '\*.sgrd'.

En este ejemplo usaremos los datos de elevación digital (SRTM) de la región alrededor de Barcelona como la bajarías de la web.

El archivo de datos que queremos usar es `SRTM_u03_n041e002.tif` y puede ser encontrado en `/home/user/data/raster` . Puedes importarlos usando el modulo Import/Export GDAL/OGR, que también puede ser encontrado en **modules|file|GDAL/OGR menu**. 

Después de importar este conjunto de datos y abrirlo en una nueva ventana, probablemente te decepciones: luce totalmente gris! Veamos cual puede ser la causa: algunos píxeles cerca de la costa parecen tener un valor muy pequeño (-32768) (puedes revisar el valor de un píxel revisando el valor z: que se muestra en la barra de estado al mover tu ratón sobre la rejilla).

Estos píxeles en realidad no tienen datos, así que deberíamos ajustar las opciones de nodata: en la ventana de propiedades de objeto (después de seleccionar el conjunto de datos en la ventana de espacio de trabajo) establecer el máximo valor sin datos enb -32768 y aplicar. Después de hacer eso, podemos restablecer nuestra escala de color para encajar el rango de datos. Una forma fácil es haciendo clic derecho en la rejilla en el espacio de trabajo y eligiendo 'Classification|Set Range to minimum maximum'.

¡Ahora estas listo para repetir los primeros pasos para crear un mapa de colinas sombreado o explorar algunos otros módulos de SAGA!

Más Información
================================================================================
Se puede encontrar más información en el sitio web de SAGA:
 * http://www.saga-gis.org y especialmente en el archivo de documentación:
 * http://www.saga-gis.org/en/about/references.html 
 * http://sourceforge.net/projects/saga-gis/files/SAGA%20-%20Documentation/ 