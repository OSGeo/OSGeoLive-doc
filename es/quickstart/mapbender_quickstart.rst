:Author: OSGeo Live
:Author: Astrid Emde
:Author: Christoph Baudson
:Author: Arnulf Christl
:Version: osgeo-live4.5
:License: Creative Commons
:Thanks: mapbender-user list

.. _mapbender-quickstart:
 
.. image:: ../../images/project_logos/logo-Mapbender.png
  :scale: 100 %
  :alt: project logo
  :align: right

*******************************
Mapbender Guía de Inicio Rápido 
*******************************

Mapbender es un entorno de geoportales basado en la web que permite publicar, registrar, ver, navegar, controlar y garantizar el acceso seguro a servicios de Infraestructura de Datos Espaciales.

Las interfaces de administración fortalece la gestión de los administradores quienes necesitan mantener y clasificar los servicios web de mapas y de fenómenos, y permitir el acceso a personas, grupos y otros servicios.

Usted no necesitará nada más que un navegador web estándar para esta guía de inicio rápido.

Esta guía de inicio rápido describe como:

  * iniciar Mapbender
  * crear una aplicación
  * cargar un Web Map Service (OGC WMS)
  * configurar un servicio WMS
  * crear una aplicación individual
  * crear un usuario y un grupo y asignarles aplicaciones
  * cargar un Web Feature Service (OGC WFS)
  * configurar tipos de elementos o fenómenos y crear una aplicación con opción de búsqueda contra un WFS y funcionalidades de digitalización (vectorización). 

Iniciar Mapbender
=================

.. TBD: Add menu graphic to this uDig Quickstart

#. Seleccione  :menuselection:`Mapbender` del menú de Inicio

#. La aplicación tomará unos pocos momentos en levantar

Si ud. tiene algunas dificultades al ejecutar Mapbender, por favor verifique que su servidor web Apache y su manejador de base de datos PostgreSQL están ejecutándose. 

Página de Bienvenida
====================

#. Antes de que ud. pueda comenzar a trabajar con Mapbender ud. debe ingresar un usuario o loguearse para tener acceso a las aplicaciones.

#. La página de bienvenidad provee enlaces a las páginas web mas importantes relacionadas con Mapbender. 

#. Ud. puede ingresar o loguearse con el usuario :guilabel:`root` y la contraseña :guilabel:`root` (Estos son los usuarios y contraseña por defecto que ud. tendrá una vez instalado Mapbender. Por favor, cambie la contraseña del usuario root si ud desea ejecutar Mapbender en un ambiente de producción. Por favor, no elimine el usuario :guilabel:`root` ya que este usuario tienen acceso a las plantillas de aplicaciones de Mapbender y es usado para las actualizaciones de versiones.
  
  .. image:: ../../images/screenshots/800x600/mapbender_welcome.png
     :scale: 80

Luego de haber ingresado satisfactoriamente ud. será dirigido directamente a la :guilabel:`application overview`.



Vista de Aplicaciones
=====================
Despues de ingresar a Mapbender, ud será direccionado a :guilabel:`application overview` con una lista de aplicaciones a las cuales ud, está permisado de acceder.
En Mapbender ud. tiene aplicaciones de plantillas, que ud puede utilizar para crear sus propias aplicaciones.


  .. image:: ../../images/screenshots/800x600/mapbender_application_overview.png
     :scale: 80

Mapbender provee
   * aplicaciones de administración
   * aplicaciones de mapas
   * aplicaciones de contenidos
Las aplicaciones son listadas en :guilabel:`categories`. Luego ud. puede definir sus propias categorías y agregar sus aplicaciones a las categorías que ud. desee.


Aplicaciones de Administración
==============================

:guilabel:`Administration applications` le permite por ejemplo, cargar servicios, crear usuarios, crear nuevas aplicaciones. 

Cada :guilabel:`administration application` provee diferentes funcionalidades. Después ud. puede configurar su propia :guilabel:`administration applications` con las funcionalidades que ud. desee proveer.

Luego de la instalación de Mapbender, el usuario :guilabel:`root` tiene acceso a:
   * ADMINISTRATION, ADMINISTRATION_DE - WMS, WFS, application, user/group, handling (nuevo para la version 2.7)
   * admin2_en - WMS, application, user/group handling
   * admin_en_services - se centra en el manejo de servicios WFS y Metadatos y en la configuración de OWS-Proxy.
   * admin1 - plantilla que contiene todos los elementos de administración
   * admin_wms_metadata, admin_wfs_metadata, admin_wmc_metadata - metadata handling 

.. Tip:: Mapbender cuenta con interfaz de administración en inglés y alemán. Actualmente se está traduciendo al español. Los lenguajes de las interfaces de administración nos lo indica el sufijo "en" para inglés y "de" para alemán.

La siguiente imagen muestra la interfaz admin2_en. En el lado izquierdo ud. puede ver el menú con las opciones que esta aplicación ofrece.

  .. image:: ../../images/screenshots/800x600/mapbender_admin2_en.png
     :scale: 80

.. Tip:: Para ir "atrás" o "volver" a la vista principal de aplicaciones utilice el botón |HOME| ir a casa.

  .. |HOME| image:: ../../images/screenshots/800x600/mapbender_home.png
     :scale: 100

Aplicaciones de Mapas
=====================
Las aplicaciones de mapas contienen servicios OGC de tipo WMS, uno o mas mapas, botones, un explorador de geodata, un elemento de leyendas, tu propio logo y mas. 

#. Seleccione una aplicación de mapas :guilabel:`by click` desde la :guilabel:`application overview`

#. Conozca Mapbender y las funcionalidades que estas aplicaciones ofrecen.
   
   * seleccione por ejemplo de GUI, gui_digitize
     
  .. image:: ../../images/screenshots/800x600/mapbender_gui_digitize.png
     :scale: 80

.. tip:: Si su navegador web soporta pestañas, ud. puede abrir las aplicaciones in pestañas y facilmente desplazarse entre ellas.

Aplicaciones que contienen WMS
==============================
Ud. puede crear una aplicación de contenidos que contenga su servicio OGC WMS. Tener el servicio WMS contenido o almacenado en una aplicación Mapbender no implica que sea desplegado de forma automática. Con el concepto de "contenedores" ud. puede crear un sofisticado repositorio de servicios web de mapas.

  .. image:: ../../images/screenshots/800x600/mapbender_container.png
     :scale: 60

Crear una aplicación individual
===============================

#. vaya a la aplicación de administración :menuselection:`admin2_en` 

#. seleccione :menuselection:`Application Management --> Create new application`

#. defina un nombre y descripción para su aplicación y seleccione el botón **new** para crear la aplicación (geoportal)

#. vaya al enlace :menuselection:`Application Management --> Edit application elements` y seleccione la nueva aplicación

#. en la casilla de selección en la parte superior seleccione una aplicación que le guste para usar como plantilla y haga click en el botón  **add all elements**. Este proceso tomará todos los elementos desde la aplicación que ud. seleccionó y los cargará en SU aplicación nueva.

#. también podría seleccionar un solo elemento desde otra aplicación y cargarlo en la suya nueva. Seleccione el elemento de forma individual activando el ovalo del elemento y haciendo click en botón **save** para salvar este elemento nuevo en su aplicación.

#. su aplicación está configurada. Ahora necesita un WMS que se muestre en su aplicación. Esto se describe en la sección de Gestión de WMS: **WMS Management**.


Copiar o renombrar una aplicación
=================================
También puede crear una nueva aplicación mediante la copia de una aplicación existente. Para ello, vaya a :menuselection:`Application Management --> Rename/copy application`, seleccione la aplicación que desea copiar y defina un nombre para la nueva aplicación. Esta funcionalidad no sólo copia la aplicación, también copia los servicios de la aplicación original y los usuarios / grupos (opcional). Esto significa que la nueva aplicación ya tiene servicios de mapas y que los respectivos usuarios / grupos tienen acceso a la nueva aplicación producida a partir de la copia de una existente.

Eliminar una aplicación
=======================
Puede eliminar una aplicación con :menuselection:`Application Management --> Delete application`. Sólo la aplicación es eliminada, no los servicios que formaban parte de ella (p.e WMS/WFS). No está permitido eliminar aplicaciones que también pertenecen a otros usuarios.

Exportar una aplicación
=======================
Puede exportar una aplicación usando un script SQL con :menuselection:`Application Management --> Export application (SQL)`. El SQL contiene todas las definiciones de los elementos de la aplicación y se pueden importar en otra instalación Mapbender (en otro servidor).

.. tip:: La exportación de una aplicación de geoportal en Mapbender con SQL no conlleva la exportación de la información de los servicios ni la información sobre el usuarios/grupos que contiene la aplicación de origen.


**************
Gestión de WMS 
**************

Cargando un Web Map Services
============================
Ud. puede cargar servicios OGC Web Map Services (WMS) a su aplicación.

Un WMS devuelve un archivo XML cuando se solicita el documento getCapabilities. Esta información es analizada por Mapbender y Mapbender obtiene toda la información necesaria sobre el servicio de este archivo XML

.. tip:: Ud. podría inicialmente verificar el documento de capacidades o Capabilities del servicio WMS en su navegador web antes de tratar de cargarlo con Mapbender


#. Vaya a :guilabel:`admin2_en` y seleccione :menuselection:`WMS Management --> Load WMS`. Seleccione la aplicación la cual contendrá el WMS. Escriba el enlace a la URL del WMS getCapabilities en el campo de texto y seleccione cargar **Load**.

#. Aqui tiene algunos ejemplos de WMS los cuales puede cargar en su aplicación:

Catastro de España

http://ovc.catastro.meh.es/Cartografia/WMS/ServidorWMS.aspx?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS

Geoportal Barcelona (Geoportalbcn - el enlace hace referencia a un repositorio de servicios)

http://www.bcn.cat/geoportal/es/geoserveis.html

Demis World Map 

http://www2.demis.nl/wms/wms.asp?wms=WorldMap&VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS

Bird Studies Canada 

http://www.bsc-eoc.org/cgi-bin/bsc_ows.asp?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS

Germany demo 

http://wms.wheregroup.com/cgi-bin/mapserv?map=/data/umn/germany/germany.map&VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS 

WhereGroup OSM WMS 

http://osm.wheregroup.com/cgi-bin/osm_basic.xml?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=1.1.1
 
.. image::../../images/screenshots/800x600/mapbender_admin2_en.png
  :scale: 80

Ud. puede cargas mas de un WMS en una aplicación o geoportal. Seleccione *WMS application settings* para cambiar el orden de carga de los WMS o remover un WMS de su aplicación. 

El WMS con el índice 0 define el valor por defecto del sistema de referencia y los valores límites del extendido del mapa.

.. tip:: Cree una aplicación contenedora de servicios y cargue todos los WMS una sola vez a esta aplicación contenedora. Usted puede transferir el WMS desde esta aplicación para otras aplicaciones. Al actualizar un servicio WMS los posibles cambios aparecerán en todas las aplicaciones que contienen ese servicio WMS. Usted puede copiar fácilmente un WMS de una a otra aplicación con la entrada del menú * Link WMS de la aplicación *

Configurar un WMS
=================
Después de cargar un servicio WMS ud. puede configurarlo para su aplicación específica. Tal vez usted no desea servir todas las capas o desea cambiar el orden o títulos de la capa o desactivar la función de "información" o cambiar las escalas de visualización para una capa.

.. image:: ../../images/screenshots/800x600/mapbender_wms_application_settings.png
  :scale: 80

* on/off - activar/desactivar una capa para esta aplicación o geoportal
* sel - hacer elegible en el explorador de datos geográficos
* sel_default - la capa es activada por defecto cuando la aplicación inicia
* info / info default - la capa provee respuesta a solicitudes de información de los elementos o fenómenos, info default activa por defecto esta funcionalidad para una capa
* minscale / maxscale - define el rango de escalas dentro de los cuales la capa será desplegada; valor cero (0) significa que tiene limitaciones
* style - si un servicio WMS provee mas de un estilo ud. puede seleccionar uno de los diferentes estilos proveídos como "estilo por defecto"
* prio - define el orden en el cual las capas serán dibujadas o cargadas
* setWFS - conecta una capa de un servicio WMS a la configuración de tipos de fenómenos de la misma capa en un servicio WFS (ud. podrá aprender mas sobre esta funcionalidad luego)


***********************
Configure su aplicación
***********************
Ahora usted debería tener una idea de lo fácil que es cambiar una aplicación o personalizar un geoportal en Mapbender sin cambios en el código.

Cuando se selecciona un elemento, por ejemplo **mapframe1** haciendo click en el óvalo, puede ver que el elemento tiene una gran cantidad de atributos. Estos atributos son atributos HTML. Al definir un elemento en Mapbender ud. define un elemento HTML. Al iniciarse la aplicación o geoportal Mapbender creará una página HTML con todos los elementos definidos previamente.

	* id - nombre único para el elemento
	* on/off - activar/desactivar un elemento
	* title - nombre el cual será desplegado como pestaña o referencia
	* HTML-TAG/CLOSE-TAG - tipo de elemento HTML a crear, por ejemplo div, img
	* top, left - define la posición del elemento (para diseños estáticos)
	* width/height - define el tamaño del elemento

Algunos elementos tienen variables las cuales le permiten al usuario configurar los parámetros de ese elemento. Las variables de los elementos pueden ser de tipo JavaScript, PHP, referencias a archivos CSS o definiciones de texto CSS.

Ejemplos para variables en elementos:

* el elemento copyright tiene una variable de elemento para establecer el texto de derechos de autor
* el elemento de información general (mapa general) tiene un elemento variable para definir los WMS se utiliza para el mapa general 
* el elemento treeGDE (explorador de datos geográficos) tiene variables para definir el estilo del explorador de datos geográficos

Inténtelo ud. mismo
===================
* cambie el tamaño del elemento mapframe (elemento mapframe1)
* cambie la imagen del logo - seleccione el logo de foss4g - como imagen (elemento logo)
* defina el color de fondo (elemento body elemento-variable css_class_bg)
* mueva sus botones (cambie los valores de izquierda y superior (left and top) de sus elementos a otra posición en pixeles)
* change the copyright text

****************************
Gestión de Usuarios y Grupos
****************************
Acceder a Mapbender siempre requiere autenticación. Por lo tanto se requiere de un usuario que tiene permisos para acceder a una o un conjunto de aplicaciones y los servicios (WMS, WFS), que se asignan a estas aplicaciones.

No hay diferencias inherente entre los roles como :guilabel:`guest`, :guilabel:`operator` o :guilabel:`administrator`. El :guilabel:`role` de un usuario depende de la funcionalidad y los servicios a los que el usuario tiene acceso a través de sus aplicaciones.


Crear un usuario
================

#. Para crear un usuario vaya a :guilabel:`admin2_en` y seleccione :menuselection:`User Management --> Create and edit user`

#. Seleccione un nombre y una contraseña (name/password) para su usuario. 


.. image:: ../../images/screenshots/800x600/mapbender_create_user.png
     :scale: 80 


Crear un grupo
==============
#. Para crear un grupo vamos a :menuselection:`User Management --> Create and edit group`. Defina un nombre y una descripción para su grupo.


Asignar aplicaciones a usuarios/grupos
======================================

#. Asigne un usuario a un grupo mediante :menuselection:`User Management --> Add one user to several groups` o con el enlace :menuselection:`User Management --> Add several users to one group`

#. Asigne una aplicación a un usuario mediante :menuselection:`User Management --> Allow one user to access several applications`

#. Asigne una aplicación a un grupo con :menuselection:`User Management --> Allow one group to access several applications`

.. tip:: Si desea conceder a un usuario acceso de escritura a una aplicación tiene que utilizar :menuselection:`User Management --> Assign to edit an application to a user`.

#. Cierre la sesión de Mapbender con el botón |LOGOUT|

#. Iniciar sesión como el nuevo usuario

#. ¿Qué sucede cuando el usuario tiene acceso a una o más de una aplicación?

  .. |LOGOUT| image:: ../../images/screenshots/800x600/mapbender_logout.png
     :scale: 100

************************
Gestión de Servicios WFS
************************
Mapbender es cliente de servicios OGC Web Feature Service WFS 1.0.0 y 1.1.0. Los servicios OGC WFS pueden ser usados en las aplicaciones y/o geoportal Mapbender para diferentes funcionalidades:

* búsqueda atributiva
* búsqueda espacial
* digitalización o vectorización
* listar información
* generación de información sobre herramientas
* descarga de data

Para usar un servicio WFS ud. debe cargar el servicio WFS en Mapbender y generar configuraciones de tipo de fenónemos.

Luego ud. tiene que permitir el acceso de su nueva configuración de tipo de fenómenos (WFS) a una aplicación antes de poder usarlo.

Si desea crear una aplicación con la opción de digitalización o vectorización de WFS, necesitará de un servicio WFS que soporte transacciones (WFS-T). Por ejemplo, puede utilizar software de servidores de mapas tales como GeoServer o Deegree para establecer un WFS-T.

Cargando un Web Feature Services
================================
El módulo para la configuración de servicios WFS está integrado en la aplicación de administración **admin_en_services**.

#. Vaya a *admin_en_services* y seleccione *WFS Management --> Load WFS*. Seleccione una aplicación de la lista de aplicaciones. Escriba el enlace URL para obtener el documento WFS getCapabilities en el casilla de texto y seleccione con click **Load**.

.. tip:: Ud. podría inicialmente verificar el documento de capacidades o Capabilities del servicio WFS en su navegador web antes de tratar de cargarlo con Mapbender.

Demo WFS

http://wms.wheregroup.com/geoserver/wfs?REQUEST=getCapabilities&VERSION=1.0.0&SERVICE=WFS


.. image:: ../../images/screenshots/800x600/mapbender_loadWFS.png
     :scale: 80 

Crear una configuración de tipo de fenómenos
============================================
El siguiente paso es establecer una configuración para un tipo de fenómenos. Después de la configuración y la autorización de acceso a una aplicación, la configuración se puede utilizar en sus aplicaciones.

.. image:: ../../images/screenshots/800x600/mapbender_configure_WFS_featureType.png
     :scale: 80 

**Configuración**

#. primero ud. tiene que seleccionar un servicios WFS desde el recuadro de selcción *Select WFS*. Todos los tipos de fenómenos de este WFS serán listados
#. seleccione el tipo de fenómeno que ud. quiere configurar
#. después de la selección del tipo de fenómeno un par de campos aparecerán (campos de configuración, campos de atributos)
#. defina un resumen descriptivo y una etiqueta para su búsqueda
#. defina el texto que aparecerá en el botón de búsqueda (p.e. ok o buscar)
#. en las casillas de estilo y de estilo-de-resultados ud. puede definirlo con uso de texto-ccs
#. defina una área (buffer) la cual será usada cuando se haga un acercamiento sobre los objetos que resulten de la búsqueda
#. seleccione el campo o columna de la geometria (espacial)
#. search / pos - define las columnas a ofrecer para realizar la búsqueda y el orden (pos de position) en el cual serán listados
#. minimum_input (**Search**) - define la entrada mínima de datos para un campo
#. label - define una etiqueta para la columna de búsqueda
#. show - define las columnas las cuales ud. desea mostrar en la lista de resultados y define la posición de éstas
#. show_detail - define las columnas las cuales serán desplegarán información detallada en una ventana que provee información por cada objeto en individual
#. mandatory (**digitizing**) - la columna o campo ha de ser llenado y nos puede dejarse vacío
#. edit (**digitizing**) - define cuales columnas o campos ud, desde ofrecer para ser digitalizados o vectorizados
#. html - ofrece cuadros de selección (selectbox), búsqueda por fechas, casillas de verificación (checkbox), áreas de texto o de carga de archivos por medio de una campo de captura sencillo
#. auth - aquí ud puede definir autorizaciones para que los usuarios tengan acceso dependiendo de los objetos y fenómenos
#. operator - (**Search**) - define cual operador será usado para la búsqueda
#. helptext - ++define un texto de ayuda para cada campo.
#. category - ud. puede definir categorías. Los atributos serán asignados a esta categoría y serán desplegados en forma de pestaña con el nombre de la categoría.
#. **save** guarda sus preferencias
#. su configuración tendrá un indentificador de configuración o "configuration id"


.. image:: ../../images/screenshots/800x600/mapbender_configure_WFS_featureType_attribute_table.png
     :scale: 80 

Asignar una configuración de tipos de fenómenos a una aplicación
================================================================
Su nueva configuración ha de ser asignada a una o mas aplicaciones. Esto se hace en *WFS configuration -> Assign WFS conf to application*.

#. Seleccione su servicio WFS
#. Seleccione una aplicación
#. Mueva su configuración para el *GUI configuration list* ubicado a la derecha

.. image:: ../../images/screenshots/800x600/mapbender_set_featureType_access.png
     :scale: 80 


Establecer una búsqueda en un WFS
=================================
Para hacer compatible una configuración de tipos de fenómenos en una aplicación, vaya a *admin_en_services -> Edit application elements* seleccione su aplicación y vaya hasta el elemento *gazetteerWFS*. Seleccione el elemento para editarlo haciendo click sobre el texto o nombre del elemento, y verá en una nueva ventana que el elemento *gazetteerWFS* tiene una variable *wfsConfIdString*. Aquí ud. puede listar los identificadores (ids) de sus servicios WFS (separados por coma). En el orden en que se listen serán desplegados los resultados de las búsquedas en la aplicación.

.. image:: ../../images/screenshots/800x600/mapbender_wfsConfIdString.png
     :scale: 80 

Echa un vistazo de cómo la búsqueda podría aparecer en una aplicación. En este ejemplo hay un recuadro de búsqueda de la izquierda, donde puede buscarse un "Usuario Mapbender". Usted puede realizar una búsqueda espacial y definir una región para buscar o puede hacer una consulta alfanumérica. Los resultados de la búsqueda se muestran en una tabla de resultados. Al hacer click en uno de los elementos listados en un resultado, Mapbender hace un acercamiento a la ubicación y la información detallada del objeto es desplegada.

.. image:: ../../images/screenshots/800x600/mapbender_WFS_search.png
     :scale: 100
	 
Establecer funcionalidades de digitalización a un WFS
=====================================================
La forma más sencilla de disponer de una aplicación que admita la digitalización o vectorización sobre un servicio WFS es copiar la plantilla gui_digitize. Ahora sólo tiene que conectar una capa del servicio WMS con la configuración tipo de fenómenos. Esto se hace en *WMS application settings*  con el botón *set WFS* en la lista de capas. Pulse el botón y seleccione el identificador de configuración suyo.

.. tip:: Asegúrese de que la capa WMS que está conectado con la configuración de tipos de fenómenos del servicio WFS soporta la opción de solicitud de información por elemento. Así es como Mapbender decide si se envía una solicitud getFeature CMA o no

Ahora usted puede buscar con la búsqueda espacial que está del lado derecho, la existencia de objetos los cuales son mostrados en un recuadro de resultados. Los objetos pueden ser actualizados (mover objeto, agregar punto, modificar los atributos, cortar una línea (split), continuar una línea, fusionar polígonos (merge)...). También puede crear nuevos objetos.

.. image:: ../../images/screenshots/800x600/mapbender_gui_digitize.png
     :scale: 80 

Cosas por intentar
==================

Estos son algunos cambios adicionales para que los intentes:

#. Intenta cargar algunos WMS en tu aplicación. Trata de configurar tus WMS con :menuselection:`Configure WMS access --> WMS application settings`.

#. Intenta crear una aplicación individual - cambia de color de fondo, mueve los botones, cambia el tamaño del mapa (elemento mapframe1). :menuselection:`Application Management --> Edit application elements`.


Que sigue ahora?
================

Estos son sólos los primeros pasos en el camino de utilizar Mapbender. Hay muchísimas mas funcionalidades que puedes probar.

Proyecto Mapbender:

  http://www.mapbender.org/

Encontrarás tutoriales en:

  http://www.mapbender.org/Tutorials

Prueba el tutorial en inglés acá:

  http://www.mapbender.org/Mapbender_Tutorial_en

Conoce mas de Mapbender en:
	
	http://projects.mapbender.osgeo.org

Participa del proyecto:

	http://www.mapbender.org/Community
