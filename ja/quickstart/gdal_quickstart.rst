:Author: Astrid Emde, material from Frank Warmedam's RasterTutorial
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/


********************************************************************************
GDAL/OGR クイックスタート
********************************************************************************

このクイックスタートではターミナルのみ必要となります。結果を視覚化したい場合には、
:doc:`../overview/qgis_overview`. など、 OSGeo-Live に含まれているデスクトップ GIS アプリケーションをご利用ください。

このクイックスタートは GDAL（ラスタデータ）と OGR（ベクタデータ）の二部で構成しています。まず GDALからはじめます。

クイックスタートの流れ:

GDAL
  * gdalinfo で画像データを探索しましょう
  * gdal_translate でのフォーマット変換
  * gdalwarp での投影法変換
  * gdal_warp もしくは gdal_merge.py を用いたタイリング
  * gdaltindex でのラスタタイルインデックス作成

OGR
  * ogrinfo によるデータの情報取得
  * ogr2ogr によるデータフォーマットの変換
 

GDAL について
================================================================================

:file:`/usr/local/share/data` のデモデータをご覧下さい。このクイックスタートでは :doc:`Natural Earth のデータ <../overview/naturalearth_overview>` について見ていきます。はじめにデータのコピーを作成します。ホームディレクトリにデータをコピーしてください。

:: 
  
  cd /home/user
  cp -R /usr/local/share/data/natural_earth2/ ./gdal_natural_earth 

 
NaturalEarth のラスタファイルと tfw-file は以下の位置にあります。
:: 

 ls /home/user/gdal_natural_earth/HYP_50M_SR_W.*


.. tip:: QGIS などのデスクトップ GIS でファイルを開いてみてください。


gdalinfo でラスタデータの情報を取得する
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

注記:
  * ドライバは "GTiff/GeoTIFF"
  * サイズは 10800x5400
  * 3バンド、8bit color
  * 代表点の座標（4隅）
  * 投影法なし



簡易フォーマット翻訳
================================================================================

まず、ドライバの情報を取得します。
コマンドラインから `--formats` のオプションをつけて gdal_translate を起動すると、利用できるフォーマットドライバが一覧できます。

各フォーマットレポートは以下のように読みます。
  * 読み込みのみ (ro - read only)
  * 読み書き (rw - read write)
  * 読み書き更新 (rw+)

::

 gdal_translate --formats

コマンドラインスイッチ `--format` では指定したドライバについて、作成オプション、
利用できるデータタイプなど詳しい情報を見ることができます。

::

 gdalinfo --format jpeg
 gdal_translate --format png 

フォーマット変換
================================================================================

フォーマット変換は gdal_translate コマンドを使用します。
デフォルトでは出力フォーマットは GeoTIFF になっています。

::

  gdal_translate -of JPEG -co QUALITY=40 HYP_50M_SR_W.tif HYP_50M_SR_W.jpg

`-of` フラグは出力フォーマットの指定に、 -co フラグは作成オプションに使用します。

::
 
   gdal_translate -ot Int16 HYP_50M_SR_W.tif HYP_50M_SR_W_Int16.tif

データ型を知るには gdalinfo を使用してください。


縮尺変更 
================================================================================

gdal_translate で `-outsize` スイッチを使用すると、出力ファイルの縮尺を変更できます。

::

    gdal_translate -outsize 50% 50% HYP_50M_SR_W.tif  HYP_50M_SR_W_small.tif

gdalinfo でサイズの確認を行ってください。

`-scale` スイッチを使って、データの縮尺を変更できます。入出力範囲も細かく調節できます。
gdalinfoで `-mm` スイッチでピクセルの最小/最大の範囲を見ることができます。

`-srcwin` スイッチを使って、ピクセル単位で画像内の特定 box (xoff yoff xsize ysize) を切り抜いたコピーを作成できます。
`-projwin` スイッチを使うと ジオリファレンスによる box 指定 (ulx uly lrx lry) ができます。

::

    gdalinfo -mm HYP_50M_SR_W.tif 
    gdal_translate -srcwin 0 0 5400 5400 HYP_50M_SR_W.tif  west.tif
    gdal_translate -srcwin 5400 0 5400 5400 HYP_50M_SR_W.tif  east.tif


gdaltindex によるラスタタイルインデックスの作成
================================================================================

shp ファイルのタイルインデックスを作成できます。
各画像境界形状のポリゴンを生成します。

::

 gdaltindex index_natural_earth.shp *st.tif

出力した shp ファイルを QGIS と ogrinfo で見ると以下のようになっています。
（詳細は後述する ogrinfo の使い方を参照してください。）

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
  

投影法変更
================================================================================

この手順では、 HYP_50M_SR_W.tif が境界線付きで正確に作成されていることを前提としています。
既に　gdalinfo で見たように、投影法は設定されていませんでした。
そこでます、この画像に WGS84 を指定します。

::

     gdal_translate -a_srs WGS84 HYP_50M_SR_W.tif HYP_50M_SR_W_4326.tif

gdalwarp コマンドでは画像の再投影ができます。ここでは WGS84 からメルカトルに変換してみます:

::

   gdalwarp -t_srs '+proj=merc +datum=WGS84' HYP_50M_SR_W_4326.tif mercator.tif

gadlinfo で投影法の変換が行えたことを確認し、画像を見てみましょう。

  .. image:: ../../images/screenshots/800x600/gdal_mercator.png
     :scale: 80

続いて、正射投影 に変換してみます。

::

   gdalwarp -t_srs '+proj=ortho +datum=WGS84' HYP_50M_SR_W_4326.tif ortho.tif


.. image:: ../../images/screenshots/800x600/gdal_ortho.png
     :scale: 80

ノート 極付近を切り出すにはどうしたらよいでしょうか？ gdalwarp ではすべてのデータを読むことができないため、極付近は投影を変換できません。足りない部分のデータを周辺のデータで強制的に埋めることで読み込ませることができます。詳しくは http://trac.osgeo.org/gdal/wiki/UserDocs/ にあるラスタチュートリアルをご覧下さい。



モザイキング
================================================================================

python スクリプト gdal_merge.py を使って、シンプルなモザイキングを行えます。
east.tif と west.tif を一つのファイルにしてみます。

::

   gdal_merge.py  east.tif west.tif -o merged.tif


gdalwarp を使っても同じことができます。
gdalwarp は様々な gdal_merge よりも多くの利点を持ち合わせていますが、多くのファイルを結合する際にはより時間がかかります。

::

   gdalwarp east.tif west.tif warpmerged.tif



OGR について
================================================================================

:: 
  
  cd /home/usr/gdal_natural_earth/


.. tip:: QGIS などのデスクトップ GIS でここにある shp ファイルを開いてみてください。

ogrinfo でベクタデータの情報を得る
================================================================================

:: 

  ogrinfo -ro /home/user/gdal_natural_earth
  INFO: Open of `/home/user/gdal_natural_earth'
        using driver `ESRI Shapefile' successful.
    1: ne_10m_populated_places (3D Point)
    2: ne_10m_geography_regions_polys (3D Polygon)
    3: ne_10m_admin_1_states_provinces_shp (3D Polygon)
    4: ne_10m_urban_areas (3D Polygon)
    5: ne_10m_geography_marine_polys (3D Polygon)
    6: ne_10m_land (3D Polygon)
    7: ne_10m_geography_regions_elevation_points (3D Point)
    8: ne_10m_admin_0_countries (3D Polygon)
    9: ne_10m_rivers_lake_centerlines (3D Line String)
    10: ne_10m_lakes (3D Polygon)
    11: ne_10m_geography_regions_points (3D Point)
    12: ne_10m_ocean (3D Polygon)


`-so` をつけて ogrinfo を実行すると、データの概要を見ることができます。

::

	ogrinfo -ro -so ne_10m_admin_0_countries.shp ne_10m_admin_0_countries
	INFO: Open of `ne_10m_admin_0_countries.shp'
	      using driver `ESRI Shapefile' successful.

	Layer name: ne_10m_admin_0_countries
	Geometry: 3D Polygon
	Feature Count: 254
	Extent: (-180.000000, -90.000000) - (180.000000, 83.634101)
	Layer SRS WKT:
	GEOGCS["GCS_WGS_1984",
	    DATUM["WGS_1984",
		SPHEROID["WGS_84",6378137.0,298.257223563]],
	    PRIMEM["Greenwich",0.0],
	    UNIT["Degree",0.0174532925199433]]
	scalerank: Integer (4.0)
	featurecla: String (30.0)
	labelrank: Real (16.6)
	sovereignt: String (254.0)
	sov_a3: String (254.0)
	adm0_dif: Real (16.6)
	level: Real (16.6)
	type: String (254.0)
	admin: String (254.0)
	adm0_a3: String (254.0)
	geou_dif: Real (16.6)
	geounit: String (254.0)
	gu_a3: String (254.0)
	su_dif: Real (16.6)
	subunit: String (254.0)
	su_a3: String (254.0)
	brk_diff: Real (16.6)
	name: String (254.0)
	name_long: String (254.0)
	brk_a3: String (254.0)
	brk_name: String (254.0)
	brk_group: String (254.0)
	abbrev: String (254.0)
	postal: String (254.0)
	formal_en: String (254.0)
	formal_fr: String (254.0)
	note_adm0: String (254.0)
	note_brk: String (254.0)
	name_sort: String (254.0)
	name_alt: String (254.0)
	mapcolor7: Real (16.6)
	mapcolor8: Real (16.6)
	mapcolor9: Real (16.6)
	mapcolor13: Real (16.6)
	pop_est: Real (16.6)
	gdp_md_est: Real (16.6)
	pop_year: Real (16.6)
	lastcensus: Real (16.6)
	gdp_year: Real (16.6)
	economy: String (254.0)
	income_grp: String (254.0)
	wikipedia: Real (16.6)
	fips_10: String (254.0)
	iso_a2: String (254.0)
	iso_a3: String (254.0)
	iso_n3: String (254.0)
	un_a3: String (254.0)
	wb_a2: String (254.0)
	wb_a3: String (254.0)
	woe_id: Real (16.6)
	adm0_a3_is: String (254.0)
	adm0_a3_us: String (254.0)
	adm0_a3_un: Real (16.6)
	adm0_a3_wb: Real (16.6)
	continent: String (254.0)
	region_un: String (254.0)
	subregion: String (254.0)
	region_wb: String (254.0)
	name_len: Real (16.6)
	long_len: Real (16.6)
	abbrev_len: Real (16.6)
	tiny: Real (16.6)
	homepart: Real (16.6)


パラメータなしで ogrinfo を起動した場合、それぞれのデータセット直後のセクションの概要を表示します。

::

	ogrinfo -ro ne_10m_admin_0_countries.shp ne_10m_admin_0_countries


出力結果を grep にパイプで渡して、必要な箇所のみフィルタできます。ここでは COUNTRY を含む行のみ抜き出してみます。

::

	ogrinfo ne_10m_admin_0_countries.shp ne_10m_admin_0_countries | grep 'admin '
	
	  admin (String) = Aruba
	  admin (String) = Afghanistan
	  admin (String) = Angola
	  admin (String) = Anguilla
	  admin (String) = Albania
	  admin (String) = Aland
	  admin (String) = Andorra
	etc.


別の形式でも出力できます。
サポートするフォーマットは `--formats` をつけて起動すると表示されます。

ogr2ogr でのファイルフォーマット変換
================================================================================

ogr2ogr を使用して、地物のファイルフォーマット変換が行えます。
`--formats` でサポートしているフォーマットを読み書きの情報込みで見ることができます。

国境の shp ファイルから GML を作成してみます。

::

  ogr2ogr --formats
  ogr2ogr -f GML countries.xml ne_10m_admin_0_countries.shp	  


やってみましょう
================================================================================

次のステップとして以下のようなことをやってみるとよいでしょう。

#. gdalwarp か gdal_merge.py で持っているデータをタイリングしてみましょう

#. gdaladdo でオーバービュー（サムネイル）を作成してみましょう

#. QGIS では多くのフォーマットのサポートに GDAL/OGR を使用しています。ラスタデータの処理のために GdalTools プラグインを備えています。このプラグインは gdal-tools を QGIS に統合します。

#. ogr2ogr でお手持ちのベクタデータを PostGIS など別のフォーマットに変換してみましょう。ogr2ogr のオプションを確認してみましょう。

#. QGIS プラグインの OGR-Layer-Converter を試してみましょう。


更新情報
================================================================================

これは GDAL と OGR の最初のステップにすぎません。ほかにもたくさんの機能があります。

GDAL プロジェクトホーム

  http://www.gdal.org

OGR のすべて

  http://gdal.org/ogr/index.html

GDAL チュートリアル

  http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial
