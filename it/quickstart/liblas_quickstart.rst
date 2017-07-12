:Author: Howard Butler
:Contact: hobu.inc at gmail dot com
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-libLAS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://liblas.org/

********************************************************************************
Iniziare con libLAS
********************************************************************************

.. contents::
    :depth: 3
    :backlinks: none

Processing
--------------------------------------------------------------------------------

Gli strumenti da linea di comando di libLAS fornisco la maggior parte dei software
per le operazione da parte degli utenti, sebbene sia la libreria libLAS che da la
potenza di lavorare ai comandi.  Di seguito vi è un lista di operazioni comuni che
possono essere fatto con dati LAS, e gli strumenti e approcci per completare questi tasks.

Riproiettare un file LAS
..............................................................................

Tutti i dati LAS data sono in un qualche sistema di coordinate, anche se il sistema di
coordinate non è descritto nel file LAS. Per i dati LAS terrestri, queste descrizioni di
sistema di coordinate spesso coincidono con i sistemi di coordinate descritte dal database
`EPSG`_. Un'altra sorgente di informazioni sui sistemi di coordinate è http://spatialreference.org.  


::
    
    lasinfo --no-check srs.las

.. note::

    L'opzione --no-check informa lasinfo di stampare solo le informazione dell'header
    del file e di non controllare tutti i punti. Per un file di 10 punti, ovviamente
    non è una preoccupazione, ma con un file di 50 o 500 milioni di punti bisognerà
    aspettare per una scansione completa dei dati anche se si è interessati solo
    alle informazioni dell'header.

L'invocazione di 'lasinfo' ci informa che il file ``srs.las`` è in un sistema di
coordinate UTM North Zone 17:

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

Ora che si conosce il sistema di coordinate di input, si può prendere una decisione
in quale sistema riproiettare i dati. Nel primo esempio, si sta utilizzando
il sistema non proiettato Plate Carrée, `EPSG:4326`_.

::

    las2las srs.las --t_srs EPSG:4326

Il processo termina con successo, ma dopo un veloce controllo dei dati con
``lasinfo output.las`` si può vedere un problema:

::

    ...
    Scale Factor X Y Z:          0.01 0.01 0.01
    Offset X Y Z:                -0.00 -0.00 -0.00
    ...
    Min X, Y, Z: 		-83.43, 39.01, 170.58, 
    Max X, Y, Z: 		-83.43, 39.01, 170.76,

Il file ``srs.las`` ha una scala di 0.01, or due posti decimali di precisione per
le sue coordinate X, Y, e Z. Per dati UTM, questo va bene, perchè implica una precisione
implicita di 1 cm. Per i gradi decimali del sistema di coordinate non proiettato
Plate Carrée, causa una grande perdita di precisione. Bisogna impostare i valori della scala
a qualcosa che può mantenere maggiore precisione nel nostro caso:

::

    las2las --t_srs EPSG:4326 srs.las --scale 0.000001 0.000001 0.01

Un altro veloce controllo con 'lasinfo' ritorna qualcosa più confortevole tipo:

::

    ...
    Scale Factor X Y Z:          0.000001 0.000001 0.01
    Offset X Y Z:                -0.000000 -0.000000 -0.00
    ...
    Min X, Y, Z: 		-83.427598, 39.012599, 170.58
    Max X, Y, Z: 		-83.427548, 39.012618, 170.76    


Convertire file LAS in file testuali
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
