:Author: Astrid Emde, material from Frank Warmedam's RasterTutorial
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/


********************************************************************************
GDAL/OGR 快速入门
********************************************************************************

　　本教程只涉及命令行操作。对于数据的可视化，请使用 OSGeo-Live 所提供的各款桌面 GIS 系统，例如 :doc:`../overview/qgis_overview` 。

　　本教程分为 GDAL（栅格数据处理）和 OGR（矢量数据处理）两个部分。第一部分为 GDAL 。

　　涉及的内容有：

GDAL
  * 使用 gdalinfo 浏览影象
  * 使用 gdal_translate 转换数据格式 
  * 使用 gdalwarp 重投影
  * 使用 gdal_warp 或 gdal_merge.py 拼接影象
  * 使用 gdaltindex 生成作为栅格切片索引的 shp 文件
   

OGR
  * 使用 ogrinfo 浏览元数据 
  * 使用 ogr2ogr 转换数据格式
 

GDAL
================================================================================

　　OSGeo Live 的演示文件位于 :file:`/usr/local/share/data` 。这里使用 :doc:`Natural Earth data <../overview/naturalearth_overview>` 来进行演示。请先将其拷贝至 home 目录。即：

:: 
  
  cd /home/user
  cp -R /usr/local/share/data/natural_earth/ ./gdal_natural_earth 

 
以下位置将出现一个 NaturalEarth 栅格文件和一个 tfw 文件：
:: 

 cd /home/user/gdal_natural_earth/HYP_50M_SR_W


.. tip:: 建议使用 QGIS 等程序浏览数据。

使用 gdalinfo 获取元数据
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

注： 
  * 数据驱动（Driver）为“GTiff/GeoTIFF”
  * 尺寸为 10800x5400
  * 含有 3 个单字节通道
  * 显示了数据坐标信息
  * 没有地理坐标信息


简单数据格式转换
================================================================================

　　首先，应当了解所需的数据驱动。使用 `--formats` 开关可以显示 gdal_translate 所支持的格式。

　　各个格式的读写能力记为： 
  * 只读（ro）
  * 读写（rw）
  * 读写及更新（rw+）

::

 gdal_translate --formats

　　`--format` 开关等够显示有关数据驱动的许多信息，包括文件创建操作和允许的格式等。

::

 gdalinfo --format jpeg
 gdal_translate --format png 

转换操作
================================================================================

　　使用 gdal_translate 完成转换操作。默认输出是 GeoTIFF：

::

 gdal_translate HYP_50M_SR_W.tif HYP_50M_SR_W.png 

　　使用 `-of` 开关控制输出格式，使用 `-co` 控制文件创建参数（此处为 jpg 文件质量）：

::

  gdal_translate -of JPEG -co QUALITY=40 HYP_50M_SR_W.tif HYP_50M_SR_W.jpg

　　另外，`-ot` 用于控制输出数据类别（此处为转换至 16 位的 tif）

::
 
   gdal_translate -ot Int16 HYP_50M_SR_W.tif HYP_50M_SR_W_Int16.tif

　　使用 gdalinfo 验证输出数据的格式信息。


缩放
================================================================================

　　使用 `-outsize` 可以控制输出文件的尺寸。

::

    gdal_translate -outsize 50% 50% HYP_50M_SR_W.tif  HYP_50M_SR_W_small.tif

　　使用 gdalinfo 验证尺寸信息。

　　使用 `-scale` 可以控制输入/输出范围和比例。使用 `-mm` 开关可以显示像元值极限。

　　使用 `-srcwin` 可以通过定位参数（xoff yoff xsize ysize）将影象切分成两部分。使用 `-projwin` 可定义四角地理坐标（ulx uly lrx lry）。

::

    gdalinfo -mm HYP_50M_SR_W.tif 
    gdal_translate -srcwin 0 0 5400 5400 HYP_50M_SR_W.tif  west.tif
    gdal_translate -srcwin 5400 0 5400 5400 HYP_50M_SR_W.tif  east.tif


使用 gdaltindex 创建栅格切片索引
================================================================================

　　可以建立 shp 文件显示栅格切片外框，作为数据索引。对于每幅栅格影象，将生成一个多边形显示其边界，并包含其路径。

::

 gdaltindex index_natural_earth.shp *st.tif

　　可以使用 QGIS 和 ogrinfo（相见后述）查看输出的 shp 文件。

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
  

重投影
================================================================================

　　这里假设 HYP_50M_SR_W.tif 已被恰当地的创建，具备适当的边界。有前述可见，原始影象没有地理坐标信息，故这里假设使用的是 WGS84 地理坐标。

::

     gdal_translate -a_srs WGS84 HYP_50M_SR_W.tif HYP_50M_SR_W_4326.tif

　　使用 gdalwarp 进行投影变换。这里将影象重采样到莫卡脱投影：

::

   gdalwarp -t_srs '+proj=merc +datum=WGS84' HYP_50M_SR_W_4326.tif mercator.tif

　　使用 gdalinfo 验证或显示查看。

  .. image:: ../../images/screenshots/800x600/gdal_mercator.png
     :scale: 80

　　这里再将影象重采样到正交投影：

::

   gdalwarp -t_srs '+proj=ortho +datum=WGS84' HYP_50M_SR_W_4326.tif ortho.tif


.. image:: ../../images/screenshots/800x600/gdal_ortho.png
     :scale: 80

　　请注意，地球两极被部分裁切了，这是因为非常靠近两极的边缘是难以重投影的，gdalwarp 放弃了这部分的数据。通过强制 gdalwarp 读取两极数据可以改善这一问题。相见栅格处理教程中的有关内容：http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial 。



影象拼接
================================================================================

　　gdal_merge.py 是用于拼接影象的脚本。这里将 east.tif 和 west.tif 拼合成一副影象：

::

   gdal_merge.py  east.tif west.tif -o merged.tif


　　拼接也可通过 gdalwarp 实现。它功能更强，但处理速度较慢：

::

   gdalwarp east.tif west.tif warpmerged.tif



OGR
================================================================================

:: 
  
  cd /home/usr/gdal_natural_earth/


.. tip:: 可以先用 QGIS 等浏览矢量数据。


使用 ogrinfo 查看元数据
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

　　使用 `-so` 获取具体文件的信息：

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


　　若不使用以上参数，输出为综述及各个数据集的信息。

::

	ogrinfo ../natural_earth/ 10m-admin-0-countries


　　将结果递交给 grep 可过滤结果，例如根据 COUNTRY 字段：

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


　　数据可转换至其它格式。格式信息开关为 `--formats` 。

使用 ogr2ogr 转换数据格式
================================================================================

　　ogr2ogr 用于转换矢量数据的文件。`--formats` 开关可用于显示各个格式的读写支持。

　　将 countries 文件转换至 GML：

::

  ogr2ogr --formats
  ogr2ogr -f GML countries.xml 10m-admin-0-countries.shp	  


其它示例
================================================================================

　　你可以尝试完成以下操作：

#. 使用 gdalwarp 或 gdal_merge.py 拼接数据。

#. 使用 gdaladdo 建立缩略图。

#. QGIS 使用 GDAL/OGR 来支持多种数据格式。同时，它使用 GdalTools 插件进行栅格数据处理。

#. 使用 ogr2ogr 将栅格数据输入/输出到 PostGIS 。该模块提供了很多选项。

#. 使用 QGIS 的 OGR-Layer-Konverter 插件。


更多信息
================================================================================

　　完成了以上最初的尝试后，以下资源将帮助你进一步学习 GDAL/OGR：

　GDAL 官方网站

  http://www.gdal.org

　OGR 官方网站：

  http://gdal.org/ogr/index.html

　GDAL 教程：

  http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial

