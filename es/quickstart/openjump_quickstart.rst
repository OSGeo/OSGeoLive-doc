:Autor: OSGeo Live
:Autor: Landon Blake
:Versión: osgeo-live4.0
:Licencia: Creative Commons
:Agradecimientos: OpenJUMP Community

.. _OpenJUMP-Guía Rápida:

*******************
OpenJUMP Guía Rápida 
*******************

OpenJUMP es SIG de escritorio que permite fácilmente editar y visualizar datos SIG vectoriales. También se pueden ver algunos datos raster.

Esta guía rápida describe como:

  * Abrir un shapefile con OpenJUMP.
  * Cambiar las propiedades del fichero para verlo mejor.
  * Editar las geometías de la capa.
  * Seleccionar elementos de la capa con una consulta simple.

Priemeros pasos con OpenJUMP
=================

Para empezar con OpenJump, doble click al fichero openjum.bat (en Windows),  oj_linux.sh (Linux) o OpenJUMP (mac) de la carpeta bin. (Atención, Java runtime es necesario para lanzar OpenJUMP. Puedes descarga Java runtime para tu ordenador desde aquí: http://java.com/en/download/index.jsp)

Un vistazo al interfaz básico de usuario
=============================

El interfaz gráfico de OpenJUMP tiene cuatro (4)  componentes básicos. El primero es la barra superior de menús.
El segundo es la barra principal de herramientas que está justo debano de la barra de menús. El tercero es una vista en árbol que muestra las capas existentes en el mapa actual. Esto se llama lista de capas. El cuarto elmento es el visualizador de capas. Se trata del mapa que muestra una representación gráfica de los datos espaciales de cada capa. Cada lista de capas y su vista correspondiente están contenidos de manera conjunta en un cuadro de tareas o en un proyecto. Cada sesión de OpenJUMP puede contener varias cuadros de tareas. En nuestra guía rápida, trabajaremos solo con un cuadro de tareas.


Abrir un Shapefile de ESRI
======================

This section of the quick start briefly explains how to open an ESRI shapefile.

En la barra superior selecciona el Menú Fichero. Después selecciona la opción Abrir ítem.
Se abrirá un diálogo que permite abrir ficheros que contengan datos geoespaciales.
En nuestro ejemplo, queremos abrir un shapefile. Busca un fichero con la extensión .shp.
Seleccionamos el fichero y da al botón abrir. Al cabo de un rato, veremos los datos del shapefile en la vista. También veremos una capa nueva con nuestros datos en la Lista de Capas. El nombre de la capa será el mismo que el del shapefile.

Decorar una capa
=============

Esta sección de la guía rápida explica brevemente como decorar una capa.

En la Lista de Capas, botón derecho sobre el nombre de la capa. Se abrirá un menú. Seleccionar la opción Cambiar Propiedades. Esta opción tiene cuatro (4) pestañas que permiten cambiar la forma en la que la capa se ve el Visor. Esto incluye cambiar el color del contorno, del relleno, la transparencia, añadir etiquetas y determinar las escalas máxima y mínima a la que la que la capa será visible.


Editar las geometrías de una capa
==================================

Esta sección de la guía rápida explica como editar la geometría de uno de los elementos de la capa.

En la Lista de Capas, botón derecho sobre el nombre de la capa. Se abrirá un menú. Selecciona la opción editable en el menú. Esto abrirá una nueva barra sobre el visor. Esta barra de herramientas tiene un conjunto de botones que podemos usar para editar las geometrías. 

Vamos a probar una edición rápida. Primero, seleccionamos el botón con un cursor. Lo usamos para seleccionar un sólo elemento del visor. Debería ponerse amarillos y mostrar cuadradritos del mismo color en cada nodo o ángulo de la geometría. Por ejemplo, selecciona el botón que tiene una mira azul con un cuadradro amarillo en medio. Ahora deberiamos ver como el cursor del ratón cambia a una crucecita negra cuando nos ponemos encima del visor. Trata de usarlo para mover el nodo de la geometría seleccionada.

Otros recursos para familiarizarse con OpenJUMP
=====================================

This is only the first step on the road to using OpenJUMP. Hay muchísimo más material (y posibilidades) para que tu las descubras en nuestros pasadizos.

Puedes descargar una guía de usuario de OpenJUMP aquí:
http://sourceforge.net/projects/surveyos/files/JUMP_PDF_Docs.zip/download

Puedes consultar el wiki de OpenJUMP aquí:
http://sourceforge.net/apps/mediawiki/jump-pilot/index.php?title=Main_Page

Puedes descargar tutoriales de OpenJUMP aquí:
http://sourceforge.net/projects/jump-pilot/files/Documentation/

Las listas de usuarios te pueden ayudar:
http://groups.google.com/group/openjump-users

