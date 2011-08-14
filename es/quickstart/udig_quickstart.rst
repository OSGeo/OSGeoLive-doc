.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  This Quick Start should describe how to run a simple example, which
    covers one of the application's primary functions.
  The Quick Start should be able to be executed in around 5 minutes.
  The Quick Start may optionally include a few more sections
    which describes how to run extra functions.
  This document should describe every detailed step to get the application
    to work, including every screen shot involved in the sequence.
  Finish off with "Things to Try" and "What Next?" sections.
  Assume the user has very little domain expertise, so spell everything out.
  If using example data, please use the general layers from NaturalEarth
   and Open Street Map. These layers are loaded into:
   Open Street Map:
     /home/user/data/osm/
   Vector Data: Available as .shp files
     /home/user/data/natural_earth/
       cultural/10m-populated-places-simple
       cultural/10m-admin-0-countries
       cultural/10m-populated-places-simple
       cultural/10m-urban-area
       physical/10m-land
       physical/10m-ocean
       physical/10m-lakes
       physical/10m-rivers-lake-centerlines
   Raster Raster basemap Cross Blended Hypso with Shaded Relief and Water
     1:50 million (40mb). Available as .tif
     /home/user/data/natural_earth/HYP_50M_SR_W/

.. Writing Tip:
  Metadata about this document

:Author: OSGeo-Live
:Author: Jody Garnett
:Author: Micheal Bedward
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Thanks: geotools-user list

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _udig-quickstart:
 
.. image:: ../../images/project_logos/logo-uDig.png
  :scale: 60 %
  :alt: project logo
  :align: right

********************************************************************************
uDig Inicio Rápido 
********************************************************************************

.. Writing Tip:
  First sentence defines what the application does.
  You may also need to include a sentence of two describing the domain.
  Eg: For a Business Intelligence application, you should describe what
  Business Intelligence is.

uDig (User Friendly Internet Desktop GIS), es un Escritorio SIG para edición y análisis de datos geoespaciales.

.. Writing Tip:
  Describe what will be covered in this Quick Start.

Este rápido inicio describe como:

  * cargar una capa de un mapa desde un shapefile y desde un Web Map Service (WMS) 
  * utilizar las herramientas de mapa estándares
  * aplicar color a las entidades geográficas (features) de un mapa utilizando estilos 

.. contents:: Contenidos
  
Iniciar uDig
================================================================================

.. Writing Tip:
  Describe steps to start the application
  This should include a graphic of the pull-down list, with a red circle
  around the application menu option.
  #. A hash numbers instructions. There should be only one instruction per
     hash.

.. TBD: Add menu graphic to this uDig Quickstart

#. Seleccionar :menuselection:`Applications --> Other --> uDig` en el menú de inicio
#. La aplicación tomará unos momentos para iniciarse

.. Writing Tip:
  For images, use a scale of 50% from a 1024x768 display (preferred) or
  70% from a 800x600 display.
  Images should be stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/screenshots/1024x768/

  .. image:: ../../images/screenshots/800x600/udig_Quickstart1Splash.png
   :scale: 70 %

Si tiene alguna dificultad ejecutando uDig por favor lea la pagina de referencia Running uDig.

Ventana de Bienvenida
================================================================================

#. Cuando se inicia uDig por primera vez la vista de Bienvenida se mostrará en toda la pantalla. Esta pantalla tiene vínculos a las tutorías, documentación y al sitio del proyecto.

#. Haciendo Click en la flecha titulada Workbench, se accede a los contenidos del banco de trabajo de uDig.
  
  .. image:: ../../images/screenshots/800x600/udig_welcome.png

En cualquier momento se puede volver a la vista de Bienvenida seleccionando :menuselection:`Help --> Welcome` en la barra de menú.

Workbench
================================================================================

La ventana Workbench ofrece múltiples Editores (cada uno muestra un Mapa) y soporta Vistas (para ofrecer información acerca del mapa actual).

  .. image:: ../../images/screenshots/800x600/udig_workbench.png

En la imagen anterior se presenta una típica sesión de uDig con un mapa en el editor llamado Map, la vista Project (Proyecto), la vista Layer (Capa) y finalmente la vista Catalog (Catalogo).
Estas vistas serán descriptas en mas detalle cuando se muestre su uso.

Archivos
================================================================================

Para comenzar vamos a cargar algunos de los datos de ejemplo incluidos en el DVD.

#. Elija :menuselection:`Layer --> Add` desde la barra de menú para abrir el asistente **Add Data** 

#. Seleccione **Files** en la lista de fuentes de datos

#. Presione :guilabel:`Next` para abrir el diálogo de archivo

#. El OSGeo-Live DVD contiene los datos de ejemplo en:

   * :file:`~/data` (el camino corto es :file:`/usr/local/share/data`)

#. Seleccione el siguiente archivo de la carpeta udig-data:

   * :file:`countries.shp`
   
#. Presione :guilabel:`Open`
   
   * Un nuevo editor Map se abre basado en los contenidos del shapefile. El nombre y proyección por omisión
     serán tomados del shapefile.
   
   * Se puede ver que en el **Catalog view** se ha actualizado con una entrado para :file:`countries.shp`. Esta
     vista es utilizada para seguir el uso de recursos utilizados por la aplicación uDig.
   
   * La vista **Layers** muestra la única capa que se despliega en este mapa. Esta vista es utilizada para cambiar
     el orden y la apariencia de la información del mapa.
   
   * La vista **Projects** muestra que el mapa esta guardado en projects > countries.
     Puede haber multiples proyectos abiertos a la vez, cada proyecto puede tener varios mapas.

#. Abra la carpeta de datos en el escritorio

#. Arrastre :file:`clouds.jpg` en el Editor de Mapa, una nueva capa es agregada al mapa.\

#. Se puede ver el orden en el que son dibujadas las capas en la vista de capas. Ahora la capa clouds.jpg se dibuja
   por encima de la capa countries.

#. Seleccione la capa clouds.jpg en la vista de catálogo y arrastrela al pie de la lista
  
  .. image:: ../../images/screenshots/800x600/udig_QuickstartCountriesMap.jpg

.. Writing Tip:
  Notes are used to provide descriptions and background information without
  getting in the way of instructions. Notes will likely be rendered in
  the margin in some printed formats.

.. note::
   Una de las preguntas mas comunes cuando se considera a uDig para una organización es cuanta memoria 
   utiliza la aplicación. A diferencia de muchas aplicaciones GIS, uDig puede obtener una cantidad fija de memoria.
   El anterior shapefile no se carga en memoria, se tiene como política mantener los datos en disco y dibujar los datos, 
   como los del shapefile, en la pantalla solo cuando es necesario.

.. Writing Tip:
  Tips are used to provide extra useful information, and will 
  likely be rendered in the margin in some printed formats.

.. tip:: Se puede arrastrar y soltar un shapefile directamente en la aplicación uDig!

Mapa
================================================================================

Se puede controlar el lugar del mundo en el que el Editor de Mapa se posiciona por utilización de 
las herramientas de navegación dispuestas en la barra de herramientas en la parte superior de la 
pantalla. 


#. La herramienta de Zoom |ZOOM| está habilitada por omisión
   
   .. |ZOOM| image:: ../../images/screenshots/800x600/udig_zoom_mode.gif
   
   * Use la herramienta de zoom para dibujar un rectángulo utilizando el botón derecho del ratón en el área del mundo que desea ver.

   * Para alejar la imagen (zoom out) dibuje un rectángulo con el botón derecho del ratón. La actual extensión del mapa será localizada en el rectángulo 
     que se ha dibujado.

#. La herramienta Pan |PAN| puede utilizarse para desplazarse sobre el mapa cambiendo la escala.
  
   .. |PAN| image:: ../../images/screenshots/800x600/udig_pan_mode.gif

#. Existen también varios botones de navegación que pueden utilizarse en cualquier momento: 
 
   * |SHOWALL| Mostrar todo, puede utilizarse para retornar a la extensión completa en cualquier momento
   
     .. |SHOWALL| image:: ../../images/screenshots/800x600/udig_zoom_extent_co.gif

   * |ZOOM_IN| Alejar y |ZOOM_OUT| Acercar pueden ser utilizadas para cambiar la escala a una cantidad determinada.

     .. |ZOOM_IN| image:: ../../images/screenshots/800x600/udig_zoom_in_co.gif
     .. |ZOOM_OUT| image:: ../../images/screenshots/800x600/udig_zoom_out_co.gif

   * Puede usar Navigation Back |BNAV| and Forward |FNAV| en la barra de menú para ciclar entre las localizaciones previamente visitadas.

     .. |BNAV| image:: ../../images/screenshots/800x600/udig_backward_nav.gif
     .. |FNAV| image:: ../../images/screenshots/800x600/udig_forward_nav.gif

.. tip:: También es posible una hacer una panorámica manteniendo presionado el botón central y controlar la escala usando la rueda de desplazamiento.

Servidor de Mapas Web
================================================================================

.. note:: Si no se esta conectado a internet ejecute :menuselection:`Applications --> Education --> Start GeoServer` para tener un WMS Local. El script
   abrirá una página con un vínculo a "wms capabilities", que puede ser arrastrado dentro del mapa vacío.
   
Una de las razones para usar una aplicación como uDig es la posibilidad de acceder a la gran cantidad de 
información geoespacial disponible en la web. Esta sección cubre el uso de Servidores Web de Mapas que
cuentan con capas de información que pueden ser incluidos en un mapa propio.

.. tip:: Es posible conectarse a Servidores de Mapas Web usando el asistente "Add Data" mediante una acción de 
         arrastrar y soltar.

#. Seleccione :menuselection:`File --> New --> New Map` de la barra de menú

#. Cambiar a la vista **Web**, click en la siguiente pestaña para presentar la vista **Catalog** para desplegar la vista *Web* 

	.. image:: ../../images/screenshots/800x600/udig_WebViewClick.png
		:scale: 50 %

#. Hacer click en el vínculo `WMS\:dm solution`_

   .. _WMS\:dm solution: http://www2.dmsolutions.ca/cgi-bin/mswms_gmap?Service=WMS&VERSION=1.1.0&REQUEST=GetCapabilities

#. En la página Resource Selectión (Selección de Recursos) se seleccionan las siguientes capas: 

   * Elevation/Bathymetry
   * Parks
   * Cities

	.. image:: ../../images/screenshots/800x600/udig_AddWMSLayers.png
		:scale: 70 %

#. Presione :guilabel:`Finish` para agregar estas capas en su mapa
   
	.. image:: ../../images/screenshots/800x600/udig_WMSMap.png
		:scale: 70 %

#. Use la herramienta Zoom |ZOOM| para acercarse a uno de los parques (Parks)

#. Cambie a la herramienta Info |INFO| y haga un click sobre los parques para obtener mas información de ellos.

.. |INFO| image:: ../../images/screenshots/800x600/udig_info_mode.gif

.. tip:: Es posible cambiar de la herramienta Zoom a Info presionando las teclas Z e I.

Estilo
================================================================================

#. Selecionar el project > countries, hacer un doble click para abrir este Mapa, o un click con el botón derecho y elegir Open Map  

#. Seleccionar la capa countries en la vista Layer.

#. Abrir el Style Editor por click con el botón derecho sobre la capa countries y elija Change Style (cambiar estilo)

#. Vamos ha realizar cambios en unas pocas cosas referentes a como se están desplegando los países
   
   * Line: Click en el Color y cambiar el color a BLACK
   
   * Fill: eliminar el tilde (check) de la casilla para cambiar el fill a apagado (off).
   
   * Label: marcar con un tilde la casilla, y seleccione CNTRY_NAME de la lista de atributos
   
   .. image:: ../../images/screenshots/800x600/udig_StyleEditor.png
      :scale: 70 %

#. Presionar :guilabel:`Apply` para ver como se presenta el Mapa, la vista **Layer** se actualizará
   para reflejar el estilo actual.

#. Cuando se esté conforme con el resultado se puede presionar :guilabel:`Close` para cerrar el diálogo

#. Algunos archivos incluyen configuraciones de estilo, seleccionar :menuselection:`Layer --> Add` de la barra de menú

#. Seleccionar **Files** de la lista de fuentes de datos y presione :guilabel:`Next`

#. Utilizr el selector de archivos para abrir **timezone.shp** y presionar :guilabel:`Open`

#. Aún es dificultoso para ver, vamos a tomar la capa clouds.jpg para agregar mas detalles.  
   Seleccionar :menuselection:`Map --> Mylar` en la barra de menú para enfocar la capa seleccionada. 

#. Utilizar la vista *Layer* para seleccionar timezone, counties y clouds.jpg sucesivamente para ver el efecto  

	.. image:: ../../images/screenshots/800x600/udig_MapMylar.jpg
		:scale: 70 %

#. Se puede cambiar a apagado (off) este efecto en cualquier momento usando :menuselection:`Map --> Mylar` en la barra de menú  

.. Writing tip
  The final heading should provide pointers to further tutorials,
  documentation or further things to try.
  Present a list of ideas for people to try out. Start off very specific
  with something most people can do based on the materials as presented.
  Continue on with a challenge that involves a small bit of research (it
  is recommended that research be limited to something that can be
  found in documentation packaged on OSGeo-Live, as users might not be
  connected to the internet.

Cosas para Probar
================================================================================

Tenemos algunos desafíos adicionales para que usted pruebe:

#. Probar ver sus propias capas de mapa SIG, o probar agregar una capa desde un Web Feature Service (WFS).

#. Probar los estilos en una capa WFS.

¿Qué es lo que sigue?
================================================================================

.. Writing tip
  Provide links to further tutorials and other documentation.

Este es solo el primer paso en el camino para utilizar uDig. Hay una gran cantidad de material (y habilidades) que quedan por descubrir en nuestros walkthroughs.

* Walkthrough 1 - Prueba el uso de PostGIS, extraer datos desde un Web Feature Server y explorar el
  uso de Temas con la potente tecnología Color Brewer.

  :file:`/usr/local/share/udig/udig-docs/uDigWalkthrough 1.pdf`

* Walkthrough 2 - Enseña como crear shapefile y usar las Herramientas de Edición para manipular
  los datos de las entidades geográficas. También cubre la instalación de GeoServer y la edición con un Web Feature Server.

  Disponible en http://udig.refractions.net/

