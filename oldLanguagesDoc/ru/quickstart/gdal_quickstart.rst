:Author: Astrid Emde, material from Frank Warmedam's RasterTutorial
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/


********************************************************************************
Начало работы с GDAL/OGR
********************************************************************************

Для начала работы вам не понадобится ничего, кроме терминала
(командной строки). Если вы захотите визуализировать свои результаты,
вы можете использовать одну из настольных ГИС из состава OSGeo-Live,
например, QGIS (:doc:`../overview/qgis_overview`). 

Это введение разбито на две части — GDAL (растровые данные) и OGR
(векторные данные).  

Ниже описывается, как:

GDAL
  * получать информацию о растровых данных с помощью *gdalinfo*;
  * конвертировать в различные форматы с помощью *gdal_translate*; 
  * перепроецировать данные с помощью *gdalwarp*;
  * создавать мозаику из растров с помощью *gdal_warp* или *gdal_merge.py*;
  * создавать шейп-файл с тайловым индексом растров с помощью *gdaltindex*.
   

OGR
  * получать информацию о векторных данных с помощью *ogrinfo*; 
  * использовать *ogr2ogr* для конвертации данных в другие форматы и их обработки.
 

Знакомимся с GDAL
================================================================================

Вы можете найти тестовые данные здесь :file:`/usr/local/share/data`. В этом
"введении" мы будем использовать набор данных 
:doc:`Natural Earth <../overview/naturalearth_overview>`. Лучше работать с
копией данных, так что первым делом скопируйте их в вашу домашнюю
директорию.  

:: 
  
  cd /home/user
  cp -R /usr/local/share/data/natural_earth/ ./gdal_natural_earth 

 
Возьмём какой-либо растровый файл из состава Natural Earth и world-файл
к нему (файл привязки):

:: 

 cd /home/user/gdal_natural_earth/HYP_50M_SR_W

.. tip:: Чтобы посмотреть на файл, откройте его в какой-либо настольной ГИС, например, QGIS. 

Получение информации о растровом файле с помощью gdalinfo
================================================================================
:: 
  
      gdalinfo HYP_50M_SR_W.tif 
	Driver: GTiff/GeoTIFF
	Files: HYP_50M_SR_W.tif
	       HYP_50M_SR_W.tfw
	Size is 10800, 5400
	Coordinate System is `'
	Origin = (-179.999999999999972,90.000000000000000)
	Pixel Size = (0.033333333333330,-0.033333333333330)
	Metadata:
	  TIFFTAG_SOFTWARE=Adobe Photoshop CS3 Macintosh
	  TIFFTAG_DATETIME=2009:09:19 10:13:17
	  TIFFTAG_XRESOLUTION=342.85699
	  TIFFTAG_YRESOLUTION=342.85699
	  TIFFTAG_RESOLUTIONUNIT=2 (pixels/inch)
	Image Structure Metadata:
	  INTERLEAVE=PIXEL
	Corner Coordinates:
	Upper Left  (-180.0000000,  90.0000000) 
	Lower Left  (-180.0000000, -90.0000000) 
	Upper Right ( 180.0000000,  90.0000000) 
	Lower Right ( 180.0000000, -90.0000000) 
	Center      (  -0.0000000,   0.0000000) 
	Band 1 Block=10800x1 Type=Byte, ColorInterp=Red
	Band 2 Block=10800x1 Type=Byte, ColorInterp=Green
	Band 3 Block=10800x1 Type=Byte, ColorInterp=Blue

Заметим, что растр имеет следующие характеристики: 
  * Драйвер "GTiff/GeoTIFF";
  * размер 10800x5400;
  * 3 канала типа Byte;
  * есть координатная привязка;
  * координатная система не задана.


Простая конвертация форматов
================================================================================

Вначале узнаем, какие драйверы поддерживаются. В этом нам поможет
флаг `--formats` утилит GDAL (например, *gdal_translate*), с его помощью
выводится полный список доступных драйверов.

Каждый формат представлен в виде:
  * только чтение (ro), 
  * чтение/запись (rw) или
  * чтение/запись/обновление (rw+).

::

 gdal_translate --formats

Флаг `--formats` можно использовать для получения детального описания 
конкретного драйвера с указанием опций создания и разрешённых типов данных.

::

 gdalinfo --format jpeg
 gdal_translate --format png 


Конвертация
================================================================================

Конвертация осуществляется с помощью утилиты *gdal_translate*. Выходной 
формат по умолчанию — GeoTIFF:

::

 gdal_translate HYP_50M_SR_W.tif HYP_50M_SR_W.png 

Флаг `-of` используется для выбора выходного формата, флаг `-co` — для
указания опций создания выходного файла:

::

  gdal_translate -of JPEG -co QUALITY=40 HYP_50M_SR_W.tif HYP_50M_SR_W.jpg

Флаг `-ot` служит для изменения типа выходного файла: 

::
 
   gdal_translate -ot Int16 HYP_50M_SR_W.tif HYP_50M_SR_W_Int16.tif

Используйте *gdalinfo*, чтобы проверить тип данных. 


Изменение размера и масштабирование данных
================================================================================

Для изменения размера выходного файла может быть использован флаг `-outsize`.

::

    gdal_translate -outsize 50% 50% HYP_50M_SR_W.tif  HYP_50M_SR_W_small.tif

Используйте *gdalinfo*, чтобы проверить размер растра. 

Для перемасштабирования данных существует флаг `-scale`. Доступен также
прямой контроль за диапазоном входных и выходных данных. Для вывода
минимальных/максимальных значений растра может быть использован флаг  
*gdalinfo* `-mm`.

Теперь разрежем наш растр на две части с помощью флага `-srcwin`, который
делает копию данных на основе положения пикселов исходного растра (xoff 
yoff xsize ysize). Вы также можете использовать флаг `-projwin`, чтобы задать
границы растра в координатах географической привязки (ulx uly lrx lry).    

::

    gdalinfo -mm HYP_50M_SR_W.tif 
    gdal_translate -srcwin 0 0 5400 5400 HYP_50M_SR_W.tif  west.tif
    gdal_translate -srcwin 5400 0 5400 5400 HYP_50M_SR_W.tif  east.tif


Индекс растровых тайлов с помощью gdaltindex
================================================================================

Вы можете создать шейп-файл с индексом растровых тайлов. Для каждого
растра сгенерируется полигон с границами по охвату растра и с указанным
путём к файлу. 

::

 gdaltindex index_natural_earth.shp *st.tif

Посмотрим на получившийся шейп-файл в QGIS и *ogrinfo* (мы ещё рассмотрим 
ogrinfo ниже).  

  .. image:: ../../images/screenshots/800x600/gdal_gdaltindex.png
     :scale: 80

::

  ogrinfo ../HYP_50M_SR_W/ index
  INFO: Open of `../HYP_50M_SR_W/'
      using driver `ESRI Shapefile' successful.

  Layer name: index
  Geometry: Polygon
  Feature Count: 2
  Extent: (-180.000000, -90.000000) - (180.000000, 90.000000)
  Layer SRS WKT: (unknown)
  location: String (255.0)
  OGRFeature(index):0
    location (String) = east.tif
    POLYGON ((-0.00000000001796 90.0,179.999999999964047 90.0,179.999999999964047 -89.999999999982009,-0.00000000001796 -89.999999999982009,-0.00000000001796 90.0))

  OGRFeature(index):1
    location (String) = west.tif
    POLYGON ((-179.999999999999972 90.0,-0.00000000001796 90.0,-0.00000000001796 -89.999999999982009,-179.999999999999972 -89.999999999982009,-179.999999999999972 90.0))
  

Перепроецирование
================================================================================

Для следующих действий предположим, что растр HYP_50M_SR_W.tif
имеет нужный охват. Как выяснилось ранее с помощью *gdalinfo*, у 
растра не задана координатная система, поэтому первым делом мы
назначим WGS84 в качестве таковой.

::

     gdal_translate -a_srs WGS84 HYP_50M_SR_W.tif HYP_50M_SR_W_4326.tif

Команда *gdalwarp* служит для перепроецирования растров. Попробуем
перепроецировать наш растр в проекцию Меркатора:

::

   gdalwarp -t_srs '+proj=merc +datum=WGS84' HYP_50M_SR_W_4326.tif mercator.tif

Используйте *gdalinfo*, чтобы проверить изменения и посмотреть на
свойства растра. 

  .. image:: ../../images/screenshots/800x600/gdal_mercator.png
     :scale: 80

Теперь перепроецируем растр в ортографическую проекцию:

::

   gdalwarp -t_srs '+proj=ortho +datum=WGS84' HYP_50M_SR_W_4326.tif ortho.tif


.. image:: ../../images/screenshots/800x600/gdal_ortho.png
     :scale: 80

Вы обратили внимание, что земные полюса "обрезаны"? Это случилось потому,
что приполярные области не могут быть перепроецированы *gdalwarp*, т.к. 
программа не получает на входе полный набор данных. Мы может заставить 
*gdalwarp* читать много избыточных данных по частям как один из вариантов
решения этой проблемы. Подробнее читайте на странице RasterTutorial http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial.   


Создание мозаик
================================================================================

*gdal_merge.py* — Python-скрипт, который применяется для задач простого
мозаицирования растров. Например, создадим мозаику из двух растров (east.tif
и west.tif) в виде единого файла merged.tif:

::

   gdal_merge.py  east.tif west.tif -o merged.tif

Подобная задача может быть решена и с помощью *gdalwarp*, это утилита имеет
ряд преимуществ перед *gdal_merge.py*, но может медленно работать при сшивке
большого количества растров:

::

   gdalwarp east.tif west.tif warpmerged.tif



Знакомимся с OGR
================================================================================

:: 
  
  cd /home/usr/gdal_natural_earth/


.. tip:: Чтобы посмотреть на данные, откройте шейп-файл в любой настольной ГИС типа QGIS. 


Получение информации о векторных данных с помощью ogrinfo
================================================================================

:: 

  ogrinfo ./natural_earth
  INFO: Open of `../natural_earth/'
      using driver `ESRI Shapefile' successful.
  1: 10m_lakes (Polygon)
  2: 10m_land (Polygon)
  3: 10m_rivers_lake_centerlines (Line String)
  4: 10m-admin-0-countries (Polygon)
  5: 10m_ocean (Polygon)
  6: 10m-urban-area (Polygon)
  7: 10m_populated_places_simple (Point)

Краткую информацию о векторных данных можно получить с помощью
утилиты *ogrinfo* с флагом `-so`.

::

	ogrinfo -so ../natural_earth/ 10m-admin-0-countries
	INFO: Open of `../natural_earth/'
	      using driver `ESRI Shapefile' successful.

	Layer name: 10m-admin-0-countries
	Geometry: Polygon
	Feature Count: 251
	Extent: (-179.999783, -89.999828) - (180.000258, 83.633811)
	Layer SRS WKT:
	GEOGCS["GCS_WGS_1984",
	    DATUM["WGS_1984",
		SPHEROID["WGS_1984",6378137.0,298.257223563]],
	    PRIMEM["Greenwich",0.0],
	    UNIT["Degree",0.0174532925199433]]
	OBJECTID: Integer (9.0)
	COUNTRY: String (100.0)
	FEATURECLA: String (32.0)
	SOV: String (100.0)
	SHAPE_LENG: Real (19.11)
	SHAPE_AREA: Real (19.11)


Если вы запустите *ogrinfo* без параметров, то получите краткую информацию
о всех данных, а потом отдельный блок информации для каждого из наборов
данных. 

::

	ogrinfo ../natural_earth/ 10m-admin-0-countries

Вы можете отфильтровать вывод *ogrinfo*  с помощью стандартной утилиты *grep*
и получить, например, только атрибуты поля COUNTRY.

::

	ogrinfo ../natural_earth/ 10m-admin-0-countries | grep COUNTRY
	
	COUNTRY: String (100.0)
	COUNTRY (String) = Afghanistan
	COUNTRY (String) = Akrotiri Sovereign Base Area
	COUNTRY (String) = Aland
	COUNTRY (String) = Albania
	COUNTRY (String) = Algeria
	COUNTRY (String) = American Samoa
	COUNTRY (String) = Andorra
	etc.




Использование ogr2ogr для конвертации данных между форматами
================================================================================

Вы можете использовать утилиту *ogr2ogr* для конвертации векторных
данных (стандарта *simple features*) между различными форматами.  
Полный список форматов OGR с указанием поддержки чтения/записи 
выводится флагом `--formats`.

Давайте сконвертируем шейп-файл *countries* в формат GML.

::

  ogr2ogr --formats
  ogr2ogr -f GML countries.xml 10m-admin-0-countries.shp	  


Стоит также попробовать
================================================================================

Есть несколько действий, которые стоит попробовать при работе
с GDAL/OGR:

#. Попробуйте мозаицировать растры с помощью *gdalwarp* или *gdal_merge.py*

#. Попробуйте создать внутренние слои "пирамид" (копий данных низкого разрешения)

#. QGIS использует GDAL/OGR для поддержки большого числа форматов. Эта ГИС также предоставляет плагин GdalTools для работы с растровыми данными, который интегрирует утилиты GDAL в QGIS.

#. Попробуйте *ogr2ogr* для импорта/экспорта векторных данных в различные распространённые форматы (например, PostGIS). Эта утилита имеет довольно длинный списко опций.

#. Попробуйте конвертацию данных в QGIS через OGR.


Что дальше?
================================================================================

Это "введение" — только первый шаг по дороге освоения GDAL/OGR. На самом
деле, доступно гораздо больше функциональности, чем описано здесь.

Официальная страница GDAL:

  http://www.gdal.org

Всё об OGR:

  http://gdal.org/ogr/index.html

Руководство по GDAL:

  http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial
