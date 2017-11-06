.. Consejo para redactar:
  Los "consejos para redactar" describen el tipo de contenido que debería aparecer en la sección que aparece a continuación.
  El documento postgis_overview.rst se usa como ejemplo de referencia para otros overviews.
  En todos los otros overviews se deberían eliminar los "consejos para redactar" para que esos documentos
  sean más fáciles de traducir.

.. Consejo para redactar:
   Metadatos sobre este documento

:Author: OSGeo Live
:Author: Barry Rowlingson
:Reviewer: Cameron Shorter, Jirotech
:Translator: Lucía Sanjaime
:Translator: Roberto Antolín
:Version: osgeo-live10.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)


.. Consejo para redactar:
   El siguiente elemento es un ancla HTML para enlazar con esta página 

.. Consejo para redactar:
   Los logos del proyecto están almacenados en:
   https://github.com/OSGeo/OSGeoLive-doc/tree/master/images/project_logos
   y se puede acceder a ellos en:
   /images/project_logos/<filename>

.. image:: /images/project_logos/logo-PostGIS.png
  :alt: project logo
  :align: right
  :target: http://postgis.net/

.. Consejo para redactar:
   Incluya un logo de OSGeo si el proyecto es un proyecto de OSGeo o si está en incubación.
   Hay una lista de los proyectos de OSGeo en esta página: http://www.osgeo.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

.. Consejo para redactar: Nombre de la aplicación

PostGIS
================================================================================

.. Consejo para redactar:
   Descripción de la categoría de la aplicación:

Base de datos Espacial
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Consejo para redactar:
   Se deben tratar cuestiones de los usuarios como "¿Qué hace la aplicación?",
   "¿Cuándo debería usarla?", "¿Por qué debería usar ésta y no otra aplicación?",
   "¿Qué grado de madurez y de uso tiene la aplicación?".
   No se debe mencionar el tema de la licencia ni del software libre en esta sección.
   El público objetivo son los profesionales SIG o los estudiantes que se inician en el software libre.
   * La primera oración debería explicar la aplicación.
   * Como generalmente el lector no estará familiarizado con el ámbito de uso de la aplicación, 
     las siguientes una o dos líneas deberían explicar su ámbito de uso. Ej. en el caso de GeoKettle,
     las siguientes líneas deberían explicar en qué consiste la inteligencia de negocios geoespacial.
   * Los párrafos restantes (1 o 2) de esta sección del overview deberían proporcionar
     una descripción más amplia y las ventajas desde la perspectiva del usuario.

PostGIS ofrece soporte espacial a la popular base de datos objeto-relacional PostgreSQL. Puede ser usada como base de datos subyacente para sistemas de información geográfica (SIG) y aplicaciones de cartografía web de la misma forma que Oracle Spatial hace con la base de datos Oracle.

PostGIS es estable, rápido, compatible con estándares, con cientos de funciones espaciales y actualmente es la base de datos espacial de código abierto más ampliamente utilizada. Diversas organizaciones de todo el mundo usan PostGIS, incluyendo agencias gubernamentales de riesgos adversos y organizaciones que almacenan terabytes de datos y sirven millones de peticiones web al día.

La administración de la base de datos es posible a través de pgAdmin y
phpPgAdmin, entre otros. Es posible importar y exportar datos mediante
herramientas en línea de comandos (shp2pgsql, pgsql2shp, ogr2ogr, dxf2postgis) o
a través de clientes SIG de escritorio o web. Además, estos clientes pueden
crear visualizar y manipular tablas espaciales PostGIS.

.. Consejo para redactar:
   Incluye una imagen de la aplicación, generalmente una captura de pantalla 
   o un collage de capturas de pantalla.
   Guarda la imagen en image/<application>_<name>.png . Ej.: udig_main_page.png
   Las capturas de pantalla se deberían realizar a partir de una visualización de 1024x768.
   No debe aparecer el fondo de escritorio porque cambia con cada versión
   y se podrá datar.

.. image:: /images/projects/pgadmin/pgadmin.png
  :scale: 70 %
  :alt: pgAdmin database manager
  :align: right

Características principales
--------------------------------------------------------------------------------

* Cientos de funciones espaciales
  
  * Áreas de influencia, uniones, superposiciones, distancia, etc.

* Integridad transaccional ACID. 
* Índice espacial R-Tree.
* Soporte multiusuario.
* Bloqueo a nivel de fila.
* Replicación.
* Particionado.
* Seguridad basada en roles.
* Table-spaces, esquemas.

Estándares implementados
--------------------------------------------------------------------------------

.. Consejo para redactar: Lista los estándares OGC o relacionados que estén soportados.

* Compatible con los estándares OGC (SFSQL).

Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://postgis.net

**Licencia:** GNU General Public License (GPL) version 2

**Versión del software:** |version-postgis|

**Plataformas soportadas:** Windows, Linux, Mac

**Interfaces del API:** SQL

.. Consejo para redactar:
   Enlace a la página Web que inculye un listado de los detalles de soporte básico para la aplicación.
   Este listado debería incluir tanto contactos comerciales como de la comunidad.

**Soporte:** http://www.osgeo.org/search_profile


Guía de inicio rápido
--------------------------------------------------------------------------------
    
* :doc:`Guía de inicio rápido <../quickstart/postgis_quickstart>`
