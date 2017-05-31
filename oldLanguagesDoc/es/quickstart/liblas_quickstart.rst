:Author: Howard Butler
:Contact: hobu.inc at gmail dot com
:Translator: Nacho Varela
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-libLAS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://liblas.org/

********************************************************************************
Guía de inicio rápido de libLAS
********************************************************************************

.. contents::
    :depth: 3
    :backlinks: none

Procesamiento
--------------------------------------------------------------------------------

Las herramientas de línea de comandos libLAS proporcionan el grueso del software operacional 
de interacción con los usuarios de libLAS, aunque es la librería libLAS subyacente la que 
realmente ofrece la funcionalidad.  A continuación se muestra un listado con las operaciones
más comunes que podría realizar sobre los datos LAS y las utilidades y métodos para llevar a
cabo estas tareas.

Reproyectar un fichero LAS
..............................................................................

Todos los datos LAS se encuentran en algún tipo de sistema de coordenadas, a pesar de que éste
no se encuentre descrito en el fichero LAS. Para datos LAS terrestres, estas descripciones de 
sistemas de coordenadas a menudo se corresponden con los descritos en la base de datos `EPSG`_ .  
Otra fuente de información sobre sistemas de coordenadas puede ser encontrado en http://spatialreference.org.  

::
    
    lasinfo --no-check srs.las

.. note::

    La opción --no-check indica al comando 'lasinfo' que sólo debe mostrar la información del encabezado del archivo
    y que no escanee todos los puntos.  Para un archivo con sólo 10 puntos, 
    esto no supone una preocupación, pero para un fichero con 50 o 500 millones de puntos, 
    el tiempo de espera de un análisis completo de los datos no merece la pena si sólo se necesita información
    de la cabecera.

Nuestra llamada a 'lasinfo' nos informa que el fichero ``srs.las`` 
posee coordenadas en UTM Zona 17 Norte:

::

    PROJCS["WGS 84 / UTM zone 17N",
        GEOGCS["WGS 84",
            DATUM["WGS_1984",
                SPHEROID["WGS 84",6378137,298.257223563,
                    AUTHORITY["EPSG","7030"]],
                AUTHORITY["EPSG","6326"]],
            PRIMEM["Greenwich",0],
            UNIT["degree",0.0174532925199433],
            AUTHORITY["EPSG","4326"]],
        PROJECTION["Transverse_Mercator"],
        PARAMETER["latitude_of_origin",0],
        PARAMETER["central_meridian",-81],
        PARAMETER["scale_factor",0.9996],
        PARAMETER["false_easting",500000],
        PARAMETER["false_northing",0],
        UNIT["metre",1,
            AUTHORITY["EPSG","9001"]],
        AUTHORITY["EPSG","32617"]]

Ahora que sabemos cual es el sistema de coordenadas de nuestros datos de entrada, podemos decidir a qué sistema los reproyectaremos. 
En nuestro primer ejemplo, vamos a usar la venerable proyección Plate Carrée (también llamada equirrectangular o equidistante cilíndrica), `EPSG:4326`_.

::

    las2las srs.las --t_srs EPSG:4326

Nuestro proceso tiene éxito, pero después de un vistazo rápido a los datos con
``lasinfo output.las`` apreciamos un problema:

::

    ...
    Scale Factor X Y Z:          0.01 0.01 0.01
    Offset X Y Z:                -0.00 -0.00 -0.00
    ...
    Min X, Y, Z: 		-83.43, 39.01, 170.58, 
    Max X, Y, Z: 		-83.43, 39.01, 170.76,

El fichero ``srs.las`` tenía una escala de 0.01, o dos decimales de precisión para las 
coordenadas X, Y, Z. Para datos UTM, esto está bien porque implica una precisión implícita de 1 cm.
Para los datos en grados decimales del sistema de coordenadas no proyectado Plate Carrée, esto causa 
una gran pérdida de de precisión. Necesitamos poner nuestros valores de escala a algo que pueda tener una mayor precisión.
En nuestro caso:

::

    las2las --t_srs EPSG:4326 srs.las --scale 0.000001 0.000001 0.01

Tras otra nueva revisión con 'lasinfo' obtenemos unos resultados más satisfactorios:

::

    ...
    Scale Factor X Y Z:          0.000001 0.000001 0.01
    Offset X Y Z:                -0.000000 -0.000000 -0.00
    ...
    Min X, Y, Z: 		-83.427598, 39.012599, 170.58
    Max X, Y, Z: 		-83.427548, 39.012618, 170.76    


Exportar un fichero LAS a texto
..............................................................................


::

    las2txt input.las --parse xyzti

.. _`LASzip`: http://laszip.org
.. _`CMake`: http://www.cmake.org/
.. _`CTest`: http://cmake.org/cmake/help/ctest-2-8-docs.html
.. _`CMake 2.8.0+`: http://www.cmake.org/cmake/help/cmake-2-8-docs.html
.. _`CDash`: http://www.cdash.org/
.. _`continuous integration`: http://en.wikipedia.org/wiki/Continuous_integration
.. _`libLAS CDash`: http://my.cdash.org/index.php?project=libLAS
.. _`Curses`: http://en.wikipedia.org/wiki/Curses_%28programming_library%29
.. _`Autoconf`: http://www.gnu.org/software/autoconf/
.. _`LLVM`: http://llvm.org/
.. _`OSGeo4W`: http://trac.osgeo.org/osgeo4w/
.. _`Boost`: http://www.boost.org/
.. _`DebianGIS`: https://wiki.debian.org/DebianGis
.. _`gdal_translate`: http://www.gdal.org/gdal_translate.html
.. _`EPSG`: http://www.epsg-registry.org/
.. _`EPSG:4326`: http://spatialreference.org/ref/epsg/4326/
.. _`Proj.4`: http://trac.osgeo.org/proj/
.. _`WKT`: http://en.wikipedia.org/wiki/Well-known_text#Spatial_reference_systems
.. _`GDAL`: http://gdal.org
.. _`Autzen_Stadium`: http://liblas.org/samples/Autzen_Stadium.zip
