:Author: Astrid Emde, material from Frank Warmedam's RasterTutorial
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Translator: Luca Delucchi

.. image:: /images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


********************************************************************************
Guida rapida su GDAL/OGR
********************************************************************************

Non sarà necessario nient'altro che un terminale per questo tutorial. Se volete
visualizzare i risultati, potete usare uno dei Software Desktop GIS
presenti in OSGeo-Live come :doc:`../overview/qgis_overview`. 

Questa guida rapida è divisa in due parti GDAL (dati raster) e OGR (dati vettoriali).
Si incomincerà con GDAL.

Questo tutorial descrive come:

GDAL
  * Esplorare i vostri dati di immagini con gdalinfo
  * Effettuare operazioni con gdal_translate
  * Riproiettare i dati con gdalwarp
  * Mosaicare i dati con gdal_warp o gdal_merge.py
  * Creare uno shapefile come un tileindex di raster con gdaltindex

OGR
  * Ottenere informazioni sui dati con ogrinfo 
  * Usare ogr2ogr per convertire i dati in altri formati
 

Get to know GDAL
================================================================================

Si troveranno i dati di demo in :file:`/usr/local/share/data`. Si potrebbe volere vedere
il documento :doc:`dati Natural Earth <../overview/naturalearth_overview>` per questo
tutorial. Si lavorerà su una copia dei dati. Perciò la prima cosa è copiare i dati
nella directory home.

::

  cd /home/user
  cp -R /usr/local/share/data/natural_earth2/ ./gdal_natural_earth 


Quindi troverete un NaturalEarth Raster file e un .tfw World-file:
::

 ls /home/user/gdal_natural_earth/HYP_50M_SR_W.*


.. tip:: Oprire il file con un Desktop GIS tipo QGIS. E date un'occhiata al file.

Ottenere informazione sui dati raster con gdalinfo
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

Note: 
  * Driver e "GTiff/GeoTIFF"
  * Dimensione è 10800x5400
  * 3 Bande di tipologia Byte. 
  * Coordinate
  * nessun sistema di coordinate



Semplice conversione di formato
================================================================================

Per prima cosa si può ottenere i formati riconosciuti. L'opzione `--formats`
di gdal_translate può essere usate per vedere una lista di formati disponibili.

Ogni formato informa se è:
  * sola lettura (ro), 
  * lettura/scrittura (rw) o 
  * lettura/scrittura/aggiornamento (rw+).

::

 gdal_translate --formats

L'opzione `--format` può essere usate per interrogare maggiori informazioni riguardo
un particolare formato, incluso le opzioni per la creazione di nuovo dati, e le
tipologie di dati permesse.

::

 gdalinfo --format jpeg
 gdal_translate --format png 

Conversione
================================================================================

Conversioni sono effettuare con il comando gdal_translate. Il formato di output
di default è il GeoTIFF. L'opzione `-of` è usata per selezionare un formato
di output format e l'opzione -co è usate per specificare un'opzione di creazione:

::

  gdal_translate -of JPEG -co QUALITY=40 HYP_50M_SR_W.tif HYP_50M_SR_W.jpg

L'opzione `-ot` può essere usata per modificare la tipologia del dato di output.  

::
 
   gdal_translate -ot Int16 HYP_50M_SR_W.tif HYP_50M_SR_W_Int16.tif

Usare gdalinfo per verificare la tipologia del dato


Riscalare
================================================================================

L'opzione `-outsize` può essere usata per impostare la dimensione del file di output.

::

    gdal_translate -outsize 50% 50% HYP_50M_SR_W.tif  HYP_50M_SR_W_small.tif

Usare gdalinfo per verificare la dimensione.

L'opzione `-scale` può essere usata per riscalare i dati. È disponibile controllo
esplicito dei range di input e output. L'opzione `-mm` di gdalinfo può essere
usata per vedere i valori minimo e massimo dei pixel. 

Si divida l'immagine in due con `-srcwin` che crea una copia basata sulla
posizione pixel/linea (xoff yoff xsize ysize). È possibile anche usare `-projwin`
e definire gli angoli in coordinate georiferite (ulx uly lrx lry).

::

    gdalinfo -mm HYP_50M_SR_W.tif 
    gdal_translate -srcwin 0 0 5400 5400 HYP_50M_SR_W.tif  west.tif
    gdal_translate -srcwin 5400 0 5400 5400 HYP_50M_SR_W.tif  east.tif


Tileindex di raster con gdaltindex
================================================================================

Si può creare uno shapefile come un tileindex di raster. Per ogni  immagine un
poligono è generato con il perimetro dell'estensione del raster e il percorso
al file.

::

 gdaltindex index_natural_earth.shp *st.tif

Controllate lo shapefile di output con QGIS e ogrinfo (imparerete di più su
ogrinfo dopo in questo tutorial)

  .. image:: /images/projects/gdal/gdal_gdaltindex.png
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
  

Riproiettare
================================================================================

Per questo processo si assume che HYP_50M_SR_W.tif è stato correttamente
creato con i confini. Come si è visto precedentemente con gdainfo nessun sistema
di coordinate è stato impostato. Si assegna all'immagine WGS84 come sistema di
coordinate nel primo passaggio.

::

     gdal_translate -a_srs WGS84 HYP_50M_SR_W.tif HYP_50M_SR_W_4326.tif

Il comando gdalwarp può essere usato per riproiettare le immagini. Qui si riproietta
l'immagine WGS84 in una proiezione di Mercatore:

::

   gdalwarp -t_srs '+proj=merc +datum=WGS84' HYP_50M_SR_W_4326.tif mercator.tif

Usare gdalinfo per verificare il cambio e visualizzate l'immagine.

  .. image:: /images/projects/gdal/gdal_mercator.png
     :scale: 80

Qui si riproietta in una proiezione Ortho.

::

   gdalwarp -t_srs '+proj=ortho +datum=WGS84' HYP_50M_SR_W_4326.tif ortho.tif


.. image:: /images/projects/gdal/gdal_ortho.png
     :scale: 80

Notare come i poli sono tagliati?  Questo perchè gli angoli al polo non possono
essere riproiettati gdalwarp non legge tutti i dati. Come soluzione si può forzare gdalwarp a
leggere un mucchio di dati eccedenti. Approfondire questo argomento nel RasterTutorial http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial.



Mosaicare
================================================================================

gdal_merge.py è un script Python che può essere utile per semplici mosaicature.
Mosaicare east.tif e west.tif in un singolo file:

::

   gdal_merge.py  east.tif west.tif -o merged.tif


La stessa operazione può essere fatta con gdalwarp. gdalwarp ha una varietà di
vantaggi rispetto gdal_merge, ma può essere lento per unire molti file:

::

   gdalwarp east.tif west.tif warpmerged.tif



Imparare OGR
================================================================================

:: 
  
  cd /home/usr/gdal_natural_earth/


.. tip:: Aprire lo shapefile con un Desktop GIS tipo QGIS. E date un'occhiata al file.


Ottenere informazioni su dati vettoriali con ogrinfo
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


Ottenere un riepilogo dei dati con ogrinfo insieme a `-so`.

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


Se si lancia ogrinfo senza un parametro otterrete un riepilogo dei dati e successivamente una sezione per ogni dataset.

::

	ogrinfo -ro ne_10m_admin_0_countries.shp ne_10m_admin_0_countries


È possibile inoltrare il risultato di ogrinfo a grep per filtrare e ottenere solo l'attributo COUNTRY.

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


È possibile convertire i dati in altri formati. Si può avere la lista dei formati
supportati con `--formats`.

Usare ogr2ogr per convertire i dati tra formati di file.
================================================================================

Si può usare ogr2ogr per convertire dati con elementi semplici tra diversi formati.
Si può avere la lista dei formati supportati con `--formats`. con i permessi di lettura/scrittura

Convertire gli stati in GML.

::

  ogr2ogr --formats
  ogr2ogr -f GML countries.xml ne_10m_admin_0_countries.shp	  


Cose da provare
================================================================================

Qui alcune ulteriori prove da provare:

#. gdalwarp o gdal_merge.py per mosaicare i dati

#. gdaladdo per creare piramidi interne

#. QGIS usa anche GDAL/OGR per il supporto di molti formati. Inoltre fornisce il GdalTools Plugin
   per processare dati raster. Questo plugin integra gli strumenti di GDAL in QGIS.

#. ogr2ogr per importare/esportare i dati vettoriali in altri formati tipo PostGIS. Controllate le opzioni
   fornite da ogr2ogr.

#. Il plugin di QGIS OGR-Layer-Konverter.


Ed ora?
================================================================================

Questo è solo il primo passaggio sulla strada per usare GDAL e OGR. Ci sono un sacco
di ulteriori funzionalità che potete provare.

GDAL Project

  http://www.gdal.org

Tutto su OGR

  http://gdal.org/ogr/index.html

GDAL Tutorial

  http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial
