:Author: Jean Mathieu
:Author: Thierry Badard
:Translator: Jorge Sanz
:Reviewer: Sergio Baños Calvo
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live7.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-geokettle.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://www.geokettle.org/

********************************************************************************
Guía de inicio rápido de GeoKettle
********************************************************************************

GeoKettle es una versión de Pentaho Data Integration (también conocida como Kettle) con capacidades espaciaes. Es una potente herramienta dirigida por metadatos de ETL (Extracción, Transformación y Carga, *Extract, Transform and Load*). Está enfocada en la integración de diferentes orígenes de datos para la construcción y actualización de bases de datos, almacenes de datos geoespaciales y servicios web.

GeoKettle permite la extracción de datos desde diferentes orígenes, la transformación de los datos para la corrección de errores, limpia los datos, cambia su estructura, hace que cumplan estándares definidos, y carga estos datos transformados en Sistemas Gestores de Bases de Datos (SGBD), ficheros SIG o servicios web geoespaciales. GeoKettle resulta particularmente útil cuando se pretende pretende automatizar procesos complejos y repetitivos sin tener que generar para ello código de programación, para convertir entre diversos formatos de datos, para migrar datos de un SGBD a otro, o para alimentar con datos varias bases de datos, etc.

Esta guía de inicio rápido describe cómo:

  * Cargar y transforma datos existentes
  * Crear una transformación de datos nueva

.. contents:: Contents

Iniciar GeoKettle 
================================================================================

#. Elegir :menuselection:`Spatial Tools --> GeoKettle` desde el menú de inicio *Geospatial*
#. Por favor espere, la aplicación tardará unos momentos en arrancar
#. A continuación se requerirá tu atención en el siguiente diálogo. Completa la información de repositorio o simplemente haga clic en el botón "No repository" para entrar en el espacio de trabajo de GeoKettle.

  .. image:: ../../images/screenshots/800x600/geokettle_welcome.png
    :scale: 80 %

Espacio de trabajo (*Workbench*)
================================================================================

Tal y como se muestra en la captura de pantalla siguiente, el espacio de trabajo es una ventana compuesta por diferentes paneles.

  .. image:: ../../images/screenshots/1024x768/geokettle_workbench.png
    :scale: 80 %

La parte izquierda actúa como un catálogo que contiene todos los pasos que pueden formar parte de una transformación de datos. La parte derecha del espacio de trabajo es el área donde la transformación propiamente dicha será diseñada y ejecutada/inspeccionada

Más adelante se describirá los contenidos de estos paneles conforme se muestre su uso.

Cargando una transformación previa
================================================================================

Para cargar una transformación previa, seleccione :menuselection:`File --> Open`. Navegue a la carpeta de ejemplos de transformaciones :file:`samples/transformations/geokettle`, selecciona una de las transformaciones disponibles y haga clic en :guilabel:`OK`. Las transformaciones de GeoKettle se almacenan en ficheros de extensión `*.ktr`.

La siguiente figura muestra la transformación  «intersection». Puede observar que el contenido de las dos partes principales de las que se compone el espacio de trabajo han cambiado.

  .. image:: ../../images/screenshots/1024x768/geokettle_intersection_transformation.png
    :scale: 80 %

Se puede ver una descripción de la transformación así como algunas directivas opcionales en la zona amarilla de anotaciones.

Antes de arrancar la transformación deberá especificar qué *shapefile* se va a usar. Para hacerlo, haz doble clic en cada uno de los pasos « GIS file input » para que aparezca el siguiente diálogo.

  .. image:: ../../images/screenshots/800x600/geokettle_shapefile_input_step.png

.. note: 
   Puedes personalizar cada uno de los pasos de la transformación haciendo doble clic en ella.

Introduce el nombre de tu *shapefile* incluyendo la extensión `*.shp` o déjalo como está para usar el juego de datos de ejemplo y haz clic en :guilabel:`OK`.

Ya estás listo para arrancar la transformación. Para hacerlo, simplemente pulsa el botón de inicio (*play*) de la barra de herramientas, en la parte superior de la transformación. 

Creando una nueva transformación de datos
================================================================================

Arranca GeoKettle y accede al espacio de trabajo de la misma forma que lo harías al cargar una transformación existente (ver sección anterior).

Para crear una transformación nueva selecciona :menuselection:`File --> New --> Transformation`. Puedes especificar el nombre de la transformación salvándola con un nombre diferente (selecciona  :menuselection:`File --> Save as...`).

Tal y como se muestra en la figura siguiente, todos los pasos disponibles se listan por categorías en el área izquierda del espacio de trabajo. Expande cada categoría para ver los pasos disponibles.

  .. image:: ../../images/screenshots/800x600/geokettle_your_transformation.png
    :scale: 80 %

Para añadir un nuevo paso a la transformación, arrástralo desde el panel **Steps** al panel **Transformation**. Entonces puedes personalizar ese nuevo paso de tu transformación haciendo doble clic en él.


**Saltos** (*Hops*)

Un salto, representado como una flecha entre dos pasos, define un flujo de datos entre dos pasos. Tal y como se ve en la figura siguiente, añadiendo un salto desde **Table Input** a **Add sequence** significa que a la salida resultante de **Table Input** se enviará al paso **Add sequence** para posterior procesado, etc. 

  .. image:: ../../images/screenshots/800x600/geokettle_hop.png
    :scale: 60 %

Para crear un nuevo salto, seleccione dos pasos, haga clic con el botón derecho en uno de ellos y seleccione :menuselection:`New hop`. Otra forma de hacerlo es pulsar y mantener la tecla :kbd:`Ctrl` mientras se seleccionan dos pasos. 

Cualquier salto se puede editar en todo momento haciendo doble clic o haciendo clic con el botón derecho y seleccionando menuselection:`Edit hop` en el menú contextual.


**Configurando la transformación**

Muchos de los pasos de una transformación necesitarán una parametrización personalizada antes de ser utilizable. Haz doble clic en cualquier paso para mostrar la interfaz en la que puedes ver y especificar cada uno de los parámetros requeridos.


**Ejecutando una transformación**

Cuando se ejecuta una transformación aparece un nuevo panel debajo del panel en el que se diseña la transformación. Este panel (también conocido como panel de **Resultados de la Ejecución**) contiene información sobre flujo de datos en todos los pasos que intervienen en la transformación. 

Inicialmente se muestra la pestaña **Step Metrics** (siguiente figura). En esta pestaña se puede ver información general sobre el flujo de datos en la transformación como el número de filas leídos y escritos en las entradas y salidas de cada paso. La columna **Active** informa al usuario si el paso ha arrancado, está en marcha, ha acabado o se ha abortado, etc. En la columna **Time** se muestra el tiempo empleado desde que el paso arrancó, así como la velocidad media del paso (columna **Speed**) en filas por segundo.

  .. image:: ../../images/screenshots/1024x768/geokettle_running_transformation.png
    :scale: 70 %


**Previsualizando la transformación**

Tal vez la ejecución de una transformación termine con errores en el panel **Execution Results** (ver figura siguiente). Por favor, revisa el contenido de la pestaña **Logging**. En ella hay siempre mucha información útil acerca del origen y la razón del error. Modifica los parámetros del paso erróneo y reinicia la transformación.

  .. image:: ../../images/screenshots/1024x768/geokettle_transformation_fail.png
    :scale: 70 %

Para ayudarte a encontrar el origen del error, puedes previsualizar los resultados de una transformación de un paso anterior en el flujo de trabajo. Para hacerlo, haz doble clic en el paso y selecciona :menuselection:`Preview` en el menú contextual. De esta forma, puedes ver el aspecto de los datos de forma alfanumérica y espacial en este punto del proceso en el contexto de la transformación sin tener que ejecutarla por completo.

Cosas que se pueden probar:
================================================================================

Aquí hay algunos retos adicionales que puedes probar:

#. Explora la diversidad de pasos que GeoKettle proporciona
#. Prueba el inspector (*debugger*) de GeoKettle para evaluar una transformación errónea
#. Intenta crear una transformación nueva con tus propios datos

¿Qué es lo siguiente?
================================================================================

Echa un vistazo a la documentación de usuario y desarrollo de GeoKettle, así como los tutoriales disponibles en el `wiki <http://docs.spatialytics.com/doku.php?id=en:spatialytics_etl>`_ del proyecto. 
No dudes también en pedir ayuda en el `foro <http://forum.spatialytics.com>`_ de Spatialytics.
