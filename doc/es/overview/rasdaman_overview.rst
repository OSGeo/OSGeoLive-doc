:Author: Peter Baumann
:Author: Jinsongdi Yu
:Author: Dimitar Misev
:Author: Michael Owonibi
:Author: Alan Beccati
:Reviewer: Cameron Shorter, Jirotech
:Translator: Aitor Freire Astray
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-rasdaman.png
 :alt: project logo
  :align: right
  :target: http://rasdaman.org

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100
  :alt: OSGeo Incubation Project
  :align: right
  :target: http://www.osgeo.org

Rasdaman
================================================================================

Base de datos Ráster MultidimensionalMulti-Dimensional Raster Database
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rasdaman es una implementación de varios modelos de bases de datos que permite a las bases datos relacionales estándar, como PostgreSQL, almacenar y recuperar datos ráster multidimensionales de tamaño ilimitado. Los datos pueden ser almacenados y recuperados empleando una consulta en lenguaje estilo SQL ráster, con una alta optimización de la efectividad del servidor. Este componente también proporciona interfaces basadas en la web para los datos adecuadas para aplicaciones geoespaciales y basadas en los estándares OGC como WCS, WCPS y WPS. También están disponibles APIs promagadoras para lenguajes C++ y Java.
Un driver rasdaman es parte de :doc:`GDAL <gdal_overview>` (Geospatial Data Abstraction Library) librería para formatos de datos geoespaciales, está disponible una integración de :doc:`MapServer <mapserver_overview>` en beta.

La tecnología rasdaman es estable y madura, es empleada en producción desde hace más de 10 años; el Instituto Francés Nacional de Geografía emplea rasdaman con una docena de Terabytes de mapas de imágenes aéreas. En los principios del ACM de la Conferencia de Sistemas de Bases de Datos en 2007, Rona Machlin describió rasdaman como "la implementación más completa de un sistema".

.. image:: ../../images/screenshots/1024x768/rasdaman-collage.png
  :scale: 50 %
  :align: right

Funciones principales
--------------------------------------------------------------------------------

    * multidimensionalidad verdadera - desde 1-D pasando por 2-D hasta 3-D, 4-D, y más allá
    * potente, flexible, lenguaje de consulta estilo SQL para tareas como: visualización, clasificación, agregación y muchas más funciones geoespaciales
    * indexado espacial y *tiling* adaptativo para un rápido acceso a los datos
    * *tile streaming* para mayor rendimiento y escalabilidad en hardware moderado
    * soporte multiusuario mediante multiplexado del servidor
    * integración completa de la información de los datos ráster con otros datos geográficos presentes en la base de datos PostgreSQL
    * acceso a capas de servicios Web vía estándares OGC para acceso a coberturas y procesados

Estándares implementados
--------------------------------------------------------------------------------

    * OGC WCS 2.0, WCPS 1.0, WPS 1.0

Detalles
--------------------------------------------------------------------------------

**Página web:** www.rasdaman.org

**Licencia:**

* clientes y petascope: GNU Lesser General Public License (LGPL) version 3
* núcleo del servidor: GNU General Public License (GPL) version 3

**Versión de Software:** 8.3.1

**Plataformas compatibles:** Linux, Mac, Solaris

**API Interfaces:** rasql (CLI), C++, Java; OGC-based WCS, WCPS, WCS-T, and WPS interfaces

**Soporte:**  www.rasdaman.com

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/rasdaman_quickstart>`


