:Author: Bob Basques
:Version: GeoMoose 2.6
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-geomoose.png
  :width: 250px
  :height: 65px
  :alt: project logo
  :align: right
  :target: http://www.geomoose.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
Guía de inicio rápido de GeoMoose
********************************************************************************

Introducción
================================================================================

GeoMoose es un portal de gestión de datos GIS. La versión de GeoMoose instalada en el DVD Live es un ejemplo de configuración que visualiza un conjunto de capas de ejemplo.

* Ir a la carpeta "Clientes de navegador" en el escritorio.

* Hacer Click en el icono de escritorio "Arrancar GeoMoose". Esto lanzará el navegador Web establecido por defecto que navegará a la localización correcta automáticamente.

* Se presentará una página Web con una interface de demostración de una instancia de GeoMoose.

  .. image:: /images/screenshots/geomoose/geomoose-2_6-screenshot001.png
    :align: right
    :alt: Pantallazo GeoMoose

El interface presentado arriba muestra:

  1. Una barra de banner
  #. Una barra de herramientas
  #. Una ventana de map con:

    - Controles de navegación y zoom

  4. Un menú lateral con:

    - Una lista desplegable para ir a Localizaciones ( "Jump to" location )
    - Un área de solapas de controles empezando por un catálogo ( "Catalog" ), que muestra la lista de capas.  Según se requiera, aparecerán solapas adicionales ("tabs"), como la de Información, o una personalizada.
  
  5. Una barra a pie de página con:

    - Lecturas múltiples de coordenadas, cada una por: X,Y (coordinadas de dataset local), LAT/LON (Decimal) y United States National Grid (USNG)
    - Una lista desplegable y editable para seleccionar una escala de vista o poder definir una nueva escala.


Consultando una localización GeoMoose
================================================================================

Se puede identificar una localización en el interface haciendo click en "identify", (icono del círculo azul con una "i") en la barra de herramientas superior, y luego haciendo click en el punto del mapa que se quiere consultar.

  .. image:: /images/screenshots/geomoose/geomoose-2_6-screenshot002.png

En el menú lateral de la vista de mapa se visualizará un informe relacionado con los datos del punto seleccionado en el mapa. Este es un servicio del paquete Demo de GeoMoose que se ha configurado para responder a consultas de la capa de parcelas ("Parcel") cuando se hace click en un punto.

Midiendo con GeoMoose
================================================================================

GeoMoose tiene dos herramientas de medida instaladas y activadas por defecto. Haciendo click en el icono de la regla recta de la barra de herramientas se arranca la herramienta de medición lineal  Se puede hacer click en tantos puntos como se quiera en la ventana de mapa y se irá dibujando una polilínea. Cuando se decida terminar, solo hay que hacer doble click para finalizar. La distancia total calculada de todas las líneas dibujadas se visualizará en el campo distancia total ("Total Length") según las unidades de medida seleccionadas en el menú lateral Haciendo click en el otro icono de menú tipo regla de la barra de herramientas superior, se pueden medir áreas. 

  .. image:: /images/screenshots/geomoose/geomoose-2_6-screenshot004.png

Estas herramientas de usuario se consideran servicios por parte del interface GeoMoose y se pueden añadir a través del fichero de control MAPBOOK de GeoMoose.

Seleccionando elementos ("Features")
================================================================================
Se pueden seleccionar elementos mediante punto, linea, poligono, or caja.  Para empezar, hacer click en el icono de Selección de Elementos ("Select Features") y empezar dibujar un polígono de selección en el mapa. Se puede hacer doble click para terminar con el último punto del proceso de dibujo. La imagen muestra el proceso de dibujo en el mapa.  El menú lateral se visualiza el formulario con el criterio de selección, en este caso, un polígono contra la capa de parcelas. También se dispone de la opción de seleccionar elementos mediante buffer que es el valor "0" por defecto. Este es un servicio en paquete Demo de GeoMoose que se ha configurado para responder a consultas de la capa parcelas. 

  .. image:: /images/screenshots/geomoose/geomoose-2_6-screenshot005.png

La imagen superior muestra la capa PARCELAS ("PARCEL") para seleccionar y también usando la capa PARCELAS como la capa de atributos a consultar.  Se pueden utilizar dos capas diferentes para dos argumentos de la consulta, una que define la capa que se selecciona, y otra que define la capa de la que se consultan los atributos para el informe.  La imagen inferior hace un proceso de selección más avanzado, añadiendo un distancia de buffer de 100ft.

  .. image:: /images/screenshots/geomoose/geomoose-2_6-screenshot006.png

Haciendo click en el botón "Go!" del menú lateral en la imagen superior se generará el informe que se visualiza en el menú lateral.  NOTA: La salida se puede también configurar para enviarse a una ventana nueva.

  .. image:: /images/screenshots/geomoose/geomoose-2_6-screenshot007.png

Los resultados de arriba demuestran que la respuesta del servicio a la consulta de buffer resalta el área de selección original (purpura), las parcelas que cruzan o están incluidas en un buffer de 100ft (naranja) y las parcelas que cruzan o están dentro de el polígono de buffer (amarillo).  El menú lateral ahora visualiza los resultados del proceso de consulta con opciones de salida en otros formatos (pdf, csv y html) .

Búsqueda
================================================================================

Se pueden buscar elementos por atributo. Para empezar hacer click en el icono de búsqueda de parcelas  ("Search Parcels"), introducir los parámetros de búsqueda en menú de búsqueda, y hacer click en el botón "Go!". La siguiente imagen muestra una búsqueda de todos los propietarios de parcelas que contienen el nombre "frank".  

  .. image:: /images/screenshots/geomoose/geomoose-2_6-screenshot011a.png

Tres resultados aparecen en la lista y se resaltan en el mapa. 

  .. image:: /images/screenshots/geomoose/geomoose-2_6-screenshot011.png
  
Haciendo click en el icono binocular/numero de parcela azul se hará zoom a la parcela especificada. 

  .. image:: /images/screenshots/geomoose/geomoose-2_6-screenshot012.png

Herramientas de capa 
================================================================================

GeoMoose permite la edición gráfica de capas. Establecer una capa para edición se explica en otro sitio en el sitio Web de GeoMoose. La demo está configurada para que se pueda editar una capa ejemplo como se ilustra en la siguiente imagen.

  .. image:: /images/screenshots/geomoose/geomoose-2_6-screenshot013.png
  
  
Imprimir
================================================================================

La siguiente imagen muestra el aspecto del servicio de impresión de Mapa que se suministra con la demo GeoMoose.  El menú lateal en la siguiente vista, muestra las opciones disponibles para impresión en vista de mapa actual. Tamaño de hoja, orientación, resolución para imágenes raster de fondo y para toda la salida también están disponibles.

  .. image:: /images/screenshots/geomoose/geomoose-2_6-screenshot008.png

El siguiente menú visualiza las selecciones de salida disponibles por defecto que permite GeoMoose para componer una imagen Raster, fichero HTML o PDF.  Haciendo click en la opción de salida PDF se presenta un diálogo similar al siguiente:

  .. image:: /images/screenshots/geomoose/geomoose-2_6-screenshot009.png

La siguiente imagen muestra un ejemplo de salida PDF en modo apaisado.

  .. image:: /images/screenshots/geomoose/geomoose-2_6-screenshot010.png


Otros Servicios
================================================================================

GeoMoose se puede conectar con otros servicios on-line como los de BING, StreetView o Geocodificación de Google. Recuerda siempre revisar los requisitos de licencia para asegurar que se infringen condiciones de uso de Servicios externos. 

  .. image:: /images/screenshots/geomoose/geomoose-2_6-screenshot014.png
