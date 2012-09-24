:Автор: Howard Butler
:Контакты: hobu.inc at gmail dot com
:Версия: osgeo-live5.0
:Лицензия: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-libLAS.png
  :scale: 100 %
  :alt: Логотип проекта
  :align: right
  :target: http://liblas.org/

********************************************************************************
Начало работы с libLAS
********************************************************************************

.. contents::
    :depth: 3
    :backlinks: none

Обработка
--------------------------------------------------------------------------------

Утилиты командной строки libLAS предоставляют много пользовательских функций, 
при том, что всё это поддерживается одной библиотекой — libLAS. Ниже приведён 
список стандартных операций, которые могут быть проведены с данными лазерного сканирования 
местности (LAS), а также средства и методы для решения конкретных задач.

Перепроецирование данных LAS
..............................................................................

Все данные в формате LAS представлены в определенной системе координат, даже если она
не описана в LAS-файле. Для наземных LAS-данных описания систем координат могут быть 
найдены в базе данных `EPSG`_. Ещё один источник информации о системах координат —
сайт http://spatialreference.org.

::

    lasinfo --no-check srs.las

.. note::

 Опция *--no-check* указывает утилите **lasinfo**, что нужно выводить только информацию из заголовков, без обработки всех точек в файле. Для файла с 10 точками это, конечно, не так критично, но когда точек 50 или 500 миллионов, не стоит ждать полной обработки ради информации из одних заголовков.

Вывод **lasinfo** сообщает, что файл ``srs.las`` содержит данные в системе координат 
UTM в 17-й зоне.

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

Теперь, когда мы знаем исходную систему координат, мы можем сделать вывод о необходимости
перепроецирования данных. В нашем первом примере мы будем использовать систему
координат WGS84 Lat/Long `EPSG:4326`_.

::

    las2las srs.las --t_srs EPSG:4326

Процесс завершён, однако, после быстрой проверки данных командой ``lasinfo output.las``, 
мы обнаруживаем проблему:

::

    ...
    Scale Factor X Y Z:          0.01 0.01 0.01
    Offset X Y Z:                -0.00 -0.00 -0.00
    ...
    Min X, Y, Z:		-83.43, 39.01, 170.58,
    Max X, Y, Z:		-83.43, 39.01, 170.76,

Файл ``srs.las`` имеет масштаб 0.01 или точность два знака после запятой для координат X, Y, и Z. 
Для данных в UTM это нормально, поскольку они подразумевают точность 1 см. В десятичных 
градусах системы координат WGS84 Lat/Long это означает большую потерю точности. Нам нужно установить 
значение масштаба, сохраняющее нужную точность:

::

    las2las --t_srs EPSG:4326 srs.las --scale 0.000001 0.000001 0.01

Повторная проверка даёт более подходящий результат:

::

    ...
    Scale Factor X Y Z:		 0.000001 0.000001 0.01
    Offset X Y Z:		 -0.000000 -0.000000 -0.00
    ...
    Min X, Y, Z:		-83.427598, 39.012599, 170.58
    Max X, Y, Z:		-83.427548, 39.012618, 170.76


Перевод LAS-файла в текстовый формат
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
