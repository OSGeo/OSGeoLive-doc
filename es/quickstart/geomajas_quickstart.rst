:Author: Pieter De Graef
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _geomajas-quickstart:
 
.. image:: ../../images/project_logos/logo-geomajas.png
  :width: 50px
  :height: 50px
  :alt: project logo
  :align: right
  :target: http://www.geomajas.org

**********************************
Guía de inicio rápida de Geomajas
**********************************

Primeros pasos
===============

Geomajas es un framework de desarrollo para crear aplicaciones SIG Web. Por tanto, lo que ve en el Live DVD es un ejemplo de una aplicación construída utilizando
la tecnología de Geomajas.

.. image:: ../../images/screenshots/1024x768/geomajas_1024x768_screen1.png
  :scale: 50%
  :alt: Geomajas Showcase
  :align: right

* Vaya a la carpeta "Browser Clients" en el escritorio.

* De click en el ícono del escritorio "Start Geomajas". Esto iniciará el navegador Firefox, el cual lo direccionará a la localización correcta de manera automática.

* En el lado izquierdo, observará una lista de ejemplos cortos de las funcionalidades que Geomajas soporta y están listas para utilizar. Al dar click sobre ellos, se
  abrirán los ejemplos asociados.

* Para cada ejemplo, encontrará una descripción / explicación corta en el lado derecho. Se recomienda su lectura para clarificar cada ejemplo.


Creación de nuevas aplicaciones con Geomajas
============================================

Para crear nuevas aplicaciones con Geomajas, necesitará instalar `Maven <http://maven.apache.org/>`_ . Maven es una herramienta para cosntruir y gestionar cualquier proyecto basado en Java.
Geomajas ha definido un arquetipo Maven, que genera una aplicación por defecto con un solo comando::


    $ mvn archetype:generate -DarchetypeCatalog=http://files.geomajas.org/archetype-catalog.xml

Felicitaciones, ha creado exitosamente una nueva aplicación Geomajas. Ahora, tiene la posibilidad de ejecutarla inmediatamente, o abrirla en un entorno de desarrollo para comenzar a trabajar.

Para ejecutar la aplicación inmediatamente, vaya a la carpeta de la aplicación (donde está el archivo pom.xml) y de el siguiente comando de Maven::


    $ mvn jetty:run

Esto compilará la aplicación, y la ejecutará en un contenedor jetty. Puede verlo en la URL: http://localhost:8080/

Vea la documentación guía `Primeros pasos con Geomajas <http://files.geomajas.org/maven/trunk/geomajas/docbook-gettingstarted/html/master.html#prereq>`_ para más detalles en la creación de aplicaciones
Geomajas, o para iniciar con un entorno de desarrollo.

Para información general visite `Geomajas home page <http://www.geomajas.org/>`_.
