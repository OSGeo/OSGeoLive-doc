:Author: Howard Butler
:Contact: hobu.inc at gmail dot com
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-libLAS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://liblas.org/

********************************************************************************
Getting Started with libLAS
********************************************************************************

.. contents::
    :depth: 3
    :backlinks: none

Processing
--------------------------------------------------------------------------------

The libLAS 'command-line utilities' provide the bulk of 
user-facing operational software for libLAS, although the underlying libLAS 
library is what powers them.  Below is a listing of common operations that 
you might want to do on LAS data, and the utilities and approaches to 
take to complete those tasks.

Reprojecting an LAS file
..............................................................................

All LAS data are in some sort of coordinate system, even if that coordinate 
system is not described in the LAS file.  For terrestrial LAS data, these 
coordinate system descriptions often map to coordinate systems described 
by the `EPSG`_ database.  Another source of information about coordinate 
systems in http://spatialreference.org.  


::
    
    lasinfo --no-check srs.las

.. note::

    The --no-check option tells lasinfo to only print the header information 
    for the file and to not scan through all of the points.  For a 10 point file, 
    this of course isn't much of a concern, but with a 50 or 500 million point 
    file, it isn't worth waiting for a full scan of the data if all you 
    want is header information.

Our 'lasinfo' invocation tells us that the ``srs.las`` file 
is in a UTM North Zone 17 coordinate system:

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

Now that we know our input coordinate system, we can make a decision about 
what to reproject the data to.  In our first example, we're going to use 
the venerable plate carrée non-coordinate system, `EPSG:4326`_.

::

    las2las srs.las --t_srs EPSG:4326

Our process succeeds, but after a quick inspection of the data with 
``lasinfo output.las`` we see a problem:

::

    ...
    Scale Factor X Y Z:          0.01 0.01 0.01
    Offset X Y Z:                -0.00 -0.00 -0.00
    ...
    Min X, Y, Z: 		-83.43, 39.01, 170.58, 
    Max X, Y, Z: 		-83.43, 39.01, 170.76,

The ``srs.las`` file had a scale of 0.01, or two decimal places of precision
for its X, Y, and Z coordinates. For UTM data, this is ok, because it implies
an implicit precision of 1 cm. For decimal degree data of the unprojected
Plate Carrée coordinate system, it causes us to lose a bunch of precision. We
need to set our scale values to something that can hold more precision in our
case:

::

    las2las --t_srs EPSG:4326 srs.las --scale 0.000001 0.000001 0.01

Another quick inspection with 'lasinfo' gives us something 
we're more comfortable with:

::

    ...
    Scale Factor X Y Z:          0.000001 0.000001 0.01
    Offset X Y Z:                -0.000000 -0.000000 -0.00
    ...
    Min X, Y, Z: 		-83.427598, 39.012599, 170.58
    Max X, Y, Z: 		-83.427548, 39.012618, 170.76    


Output LAS file to text
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
.. _`DebianGIS`: http://wiki.debian.org/DebianGis
.. _`gdal_translate`: http://www.gdal.org/gdal_translate.html
.. _`EPSG`: http://www.epsg-registry.org/
.. _`EPSG:4326`: http://spatialreference.org/ref/epsg/4326/
.. _`Proj.4`: http://trac.osgeo.org/proj/
.. _`WKT`: http://en.wikipedia.org/wiki/Well-known_text#Spatial_reference_systems
.. _`GDAL`: http://gdal.org
.. _`Autzen_Stadium`: http://liblas.org/samples/Autzen_Stadium.zip
