:Author: Howard Butler
:Contact: hobu.inc at gmail dot com
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-libLAS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://liblas.org/

********************************************************************************
LibLAS 快速入门文档
********************************************************************************

.. contents::
    :depth: 3
    :backlinks: none

LAS 激光测距数据处理
--------------------------------------------------------------------------------

　　LibLAS 'command-line utilities' 命令行工具集集成了 LibLAS 函数库的各种功能，方便用户完成多种数据处理操作。以下对不同处理给出了一些示例。

LAS 文件重投影
..............................................................................

　　LAS 数据总是基于某种坐标系，但其文件中有时也可能不包含坐标系信息。对于大地测量数据而言，通常采用 `EPSG`_ 数据库中的地学坐标参考系统。在 http://spatialreference.org 可以查询更详细的信息。


::
    
    lasinfo --no-check srs.las

.. note::

    　　`--no-check` 使 lasinfo 只读取文件头。对于一个 10 数据，这无关紧要。但 LiDAR 数据常常包含五千万或五亿这样量级的数据，故只需要文件头时该开关就很重要。

　　这里 'lasinfo' 识别 ``srs.las`` 文件的坐标系统为 UTM North Zone 17：

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

　　现在进行重投影操作。这里运用的是 venerable plate carrée non-coordinate system `EPSG:4326`_ 。

::

    las2las srs.las --t_srs EPSG:4326

　　操作正常完成。但是，通过 ``lasinfo output.las`` 检查新文件显示出了问题：

::

    ...
    Scale Factor X Y Z:          0.01 0.01 0.01
    Offset X Y Z:                -0.00 -0.00 -0.00
    ...
    Min X, Y, Z: 		-83.43, 39.01, 170.58, 
    Max X, Y, Z: 		-83.43, 39.01, 170.76,

　　原有的 ``srs.las`` 空间精度为 0.01 即 X、Y 和 Z 均包含两位小数。对于 UTM 数据而言，这对应着 1 cm 的实际精度，能够满足一般的应用需求。但对于 Plate Carrée coordinate system 这样的地理坐标系而言，其精度就太差了。因此需要设置较高的精度：

::

    las2las --t_srs EPSG:4326 srs.las --scale 0.000001 0.000001 0.01

　　重新使用 'lasinfo' 查看，得到了较为合理结果：

::

    ...
    Scale Factor X Y Z:          0.000001 0.000001 0.01
    Offset X Y Z:                -0.000000 -0.000000 -0.00
    ...
    Min X, Y, Z: 		-83.427598, 39.012599, 170.58
    Max X, Y, Z: 		-83.427548, 39.012618, 170.76    


输出 LAS 文件为文本
..............................................................................


::

    las2txt input.las --parse xyzti

.. _`LASzip`: http://laszip.org
.. _`CMake`: http://www.cmake.org/
.. _`CTest`: http://cmake.org/cmake/help/ctest-2-8-docs.html
.. _`CMake 2.8.0+`: http://www.cmake.org/cmake/help/cmake-2-8-docs.html
.. _`CDash`: http://www.cdash.org/
.. _`continuous integration`: http://en.wikipedia.org/wiki/Continuous_integration
.. _`LibLAS CDash`: http://my.cdash.org/index.php?project=LibLAS
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

