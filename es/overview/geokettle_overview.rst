:Author: Thierry Badard
:Reviewer: Cameron Shorter, Jirotech
:Translator: Pedro-Juan Ferrer
:Translator: David Mateos
:Version: osgeo-live7.0draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-geokettle.png
  :alt: project logo
  :align: right
  :target: http://www.geokettle.org/

GeoKettle
================================================================================

Extracción Transformación y Carga (ETL)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoKettle es una versión de `Pentaho Data Integration (Kettle) <http://www.pentaho.com/products/data_integration/>`_ con capacidad de tratamiento de datos espaciales. Es una potente herramienta ETL (siglas en inglés de Extract, Transform and Load: Extracción, Transformación y Carga) orientada al uso de metadatos y con funcionalidades espaciales dedicada a la integración de diversos orígenes de datos para la construcción y/o actualización de bases de datos espaciales y almacenes de datos espaciales.

GeoKettle permite la Extracción desde los orígenes de datos, la Transformación de los datos con el objetivo de corregir errores, realizar limpieza de los mismos, modificar su estructura, hacer que cumplan los estándares y por último la Carga de los datos transformados en un Sistema Gestor de Bases de Datos (SGBD o *DBMS* por sus siglas en inglés), un archivo SIG, o un servicio web geoespacial.

GeoKettle resulta particularmente útil cuando se pretende pretende automatizar procesos complejos y repetitivos sin tener que generar para ello código de programación, o para convertir entre diversos formatos de datos, o para migrar datos de un SGBD a otro, o cuando quiere alimentar con datos varios SGBD o rellenar bases de datos analíticas para dar apoyo a la toma de decisiones, etc.

En el ámbito geoespacial Geokettle puede ser comparado con FME, una herramienta de software privativo para realizar ETL con capacidades espaciales. GeoKettle es estable, rápida, cumple con los estándares, tiene cientos de funciones y lee y escribe en diversos formatos de ficheros, servicios y SGBD. GeoKettle está siendo usada por diversas organizaciones en todo el mundo, incluyendo gobiernos, bancos, aseguradoras e integradores de sistemas geoespaciales.

.. image:: ../../images/screenshots/1024x768/geokettle-overview.png
  :scale: 50 %
  :alt: project logo
  :align: right

Características Principales
--------------------------------------------------------------------------------

* Extracción de información de: 

  * Más de 35 gestores de bases de datos: MySQL, PostgreSQL, Oracle, ...
  * Archivos XML
  * Archivos XLS
  * Archivos Xbase (dBase, Foxpro, etc)
  * Archivos de información de sistema
  * Datos generados
  * Archivos MS Access
  * LDAP
  * sistema SOLAP (OLAP espacial): GeoMondrian
  * Formatos de datos geoespaciales: Shapefile, GML 3.1.1, KML 2.2, todos los formatos soportados por OGR. 
  * Servicios OGC Web: Web Feature Service (WFS), Sensor Observation Service (SOS), Catalogue Web Service (CSW)

* Transformación de datos:

  * Transferencia de datos entre SGBD (sin generar código). 
  * Búsqueda de coincidencias en bases de datos, archivos o memoria.
  * Calculos.
  * Scripting: Javascript, SQL, RegExp.
  * Separación.
  * Mapeados.
  * Selección.
  * Particionado.
  * Filtrado.
  * Fusión.
  * Unión.
  * Duplicado.
  * Agrupación (MPP).
  * Pivote.
  * Analisis y procesado geoespacial:  buffer, centroide, distancia, intersección, unión, ...
  * Geoprocesamiento avanzado: recorte, triangulación de Delaunay, simplificación/suavizado de geometrías, separación de entidades, ...
  * Agregación espacial.
  * Previsualización cartografica.

* Carga de datos en el formato destino:

  * Carga en bases de datos: MySQL, PostgreSQL/PostGIS, Oracle, ...
  * Carga en almacenes de datos.
  * Formatos de datos Geospaciales: Shapefile, GML 3.1.1, KML 2.2, todos los formatos soportados por OGR.
  * OGC Web services: Catalogue Web Service (CSW), Web Feature Service (WFS), ...
  * Carga segmentada.
  * Carga automatizada.
  * Carga en paralelo.
  * Agrupación.

* Entorno:
  
  * Interfaz gráfica de usuario completa (GUI por sus siglas en inglés) denominada "Spoon" que permite editar todas las opciones de las transformaciones.
  * Herramientas de línea de comandos: permiten ejecutar trabajos y transformaciones.
  * Servidor Web: permite ejecución remota y agrupación de trabajos para trabajar con grandes grupos de datos en la nube (*Cloud computing* en inglés).
  * API de programación en Java.
  * Ecosistema de plugins.

Estándares implementados
--------------------------------------------------------------------------------

* Cumple con los estándares OGC (SFS, WFS-T, WPS, CSW, SOS, GML, KML)

Detalles
--------------------------------------------------------------------------------

**Página web:** http://www.geokettle.org/

**Licencia:** GNU Lesser General Public License (LGPL) version 2.1

**Versión de software :** |version-geokettle|

**Platformas soportadas:** Windows, Linux, Mac, Solaris

**Interfaces API:** Java, Javascript

**Soporte:** http://www.spatialytics.org y http://www.spatialytics.com


Guía de inicio rápido
--------------------------------------------------------------------------------
    
* `Guía de inicio rápido <../quickstart/geokettle_quickstart>`_
