:Author: Astrid Emde, material from Frank Warmedams RasterTutorial
:Version: osgeo-live4.5p
:License: Creative Commons

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/


***************************************
 Εγχειρίδιο Γρήγορης Εκκίνησης GDAL/OGR 
***************************************

Δεν θα χρειαστείτε τίποτα άλλο από ένα τερματικό για αυτή την γρήγορη εκκίνηση. Εαν θέλετε να οπτικοποιήσετε το αποτέλεσμα μπορείτε να χρησιμοποιήσετε ένα από τα λογισμικά GIS που περιέχει το OSGeo-Live π.χ. QuantumGIS.

Αυτό το Εγχειρίδιο γρήγορης εκκίνησης χωρίζεται σε δύο μέρη το GDAL (εικονιστικά δεδομένα) και το OGR (διανυσματικά δεδομένα). Θα αρχίσουμε με την GDAL.

Αυτό το Εγχειρίδιο γρήγορης εκκίνησης περιγράφει πως:

GDAL
  * Να εξερευνήσετε τα δεδομένα των εικόνων σας με την gdalinfo 
  * Να τυποποιήσετε μεταφράσεις με την gdal_translate
  * Να προβάλετε τα δεδομένα σας με την gdalwarp
  * Να ενώσετε τα δεδομένα σας με την gdal_warp ή την gdal_merge.py
  * Να δημιουργήσετε ένα αρχείο shapefile που θα είναι κατάλογος τετραγωνιδίων, μέσω της εφαρμογης gdalindex

  
OGR
  * Να αποκτήσετε πληροφορίες για τα δεδομένα σας με την orginfo
  * Να χρησιμοποιήσετε την org2org για να μεταφέρετε τα δεδομένα σας σε άλλα πρότυπα

 

Γνωρίζοντας την GDAL
====================

Μπορείτε να βρείτε δοκιμαστικά δεδομένα στο /usr/local/share/data. Θέλουμε να περιηγηθούμε στα δεδομένα NaturalEarth σε αυτό το εγχειρίδιο. Θέλουμε να δουλέψουμε με ένα αντίγραφο των δεδομένων. Έτσι το πρώτο βήμα είναι να δημιουργήσουμε ένα αντίγραφο των δεδομένων στον αντίστοιχο φάκελό μας.
:: 
  
  cd /home/user
  cp /usr/local/share/data/natural_earth/ /gdal_natural_earth 

 
Μπορείτε να βρείτε ένα NaturalEarth εικονιστικό αρχείο και ένα αρχείο tfw στο: 
:: 
  
  cd /home/usr/gdal_natural_earth/HYP_50M_SR_W


.. tip:: Ανοίξτε το αρχείο με ένα πρόγραμμα εφαρμογών όπως το Quantum GIS και ρίξτε μια ματιά.


Βρείτε πληροφορίες για τα εικονιστικά δεδομένα με την gdalinfo
==============================================================
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

Σημείωση: 
  * Ο οδηγός είναι "GTiff/GeoTIFF"
  * Το μέγεθος είναι 10800x5400
  * 3 κανάλια του τύπου Byte
  * Συντεταγμένες
  * Κανένα σύστημα συντεταγμένων
 



Απλή Μετάφραση των προτύπων
===========================

Αρχικά αναγνωρίστε τους οδηγούς σας. Η παράμετρος --formats της γραμμής εντολών αλλάζουν από την gdal_translate ώστε να μπορούν να εντοπίσουν μια λίστα από παρεχόμενα πρότυπα οδηγών. 

Κάθε πρότυπο αναφέρει εάν είναι: 
  * μόνο για ανάγνωση (ro), 
  * για ανάγνωση/εγγραφη (rw) ή 
  * για ανάγνωση/εγγραφή/ενημέρωση (rw+).

::
 
 gdal_translate --format

Τα --format της γραμμής εντολών μπορεί να αλλάζουν για να μπορούν να αναζητήσουν λεπτομέρειες για ένα συγκεκριμένο οδηγό, συμπεριλαμβανομένων των επιλογών δημιουργίας και τα επιτρεπτά είδη δεδομένων 
::

 gdalinfo --format jpeg
 gdal_translate --format png 


Μετατροπές
==========

Οι μετατροπές γίνονται με την εντολή gdal_translate. Το προεπιλεγμένο πρότυπο του αποτελέσματος είναι GeoTIFF: 
::

 gdal_translate HYP_50M_SR_W.tif HYP_50M_SR_W.png 

Το πρόθεμα -of χρησιμοποιείται για την επιλογή ενός προτύπου αποτελέσματος και το πρόθεμα -co χρησιμοποιείται για να ορίσει την επιλογή δημιουργίας:
::

  gdal_translate -of JPEG -co QUALITY=40 HYP_50M_SR_W.tif HYP_50M_SR_W.jpg

Το -ot μπορεί να χρησιμοποιηθεί για να αλλάξει τον τύπο δεδομένου εξόδου.
::
 
   gdal_translate -ot Int16 HYP_50M_SR_W.tif HYP_50M_SR_W_Int16.tif

Χρησιμοποιείστε την gdalinfo για να επιβεβαιώσετε τον τύπο των δεδομένων.


Αλλαγή κλίμακας
===============

Η επιλογή -outsize μπορεί να χρησιμοποιηθεί για να ορίσει το μέγεθος του αρχείου εξόδου.
::

    gdal_translate -outsize 50% 50% HYP_50M_SR_W.tif  HYP_50M_SR_W_small.tif

Χρησιμοποιήστε την gdalinfo για να επιβεβαιώσετε το μέγεθος.

Η επιλογή -scale μπορεί να χρησιμοποιηθεί για αλλαγή της κλίμακας των δεδομένων. Σαφής έλεγχος των ορίων εισόδου και εξόδου είναι επίσης διαθέσιμος. Η επιλογή της gdalinfo -mm μπορεί να χρησιμοποιηθεί για να εμφανιστούν οι τιμές του ελάχιστου και μέγιστου εικονοστοιχείου.

Ας χωρίσουμε την εικόνα μας στα δύο με την επιλογή -srcwin η οποία δημιουργεί ένα αντίγραφο με βάση την θέση του εικονοστοιχείου/γραμμής (xoff yoff xsize ysize). Μπορείτε επίσης να χρησιμοποιήσετε το -projwin και να ορίσετε τα όρια στις γεωδαιτικές εικονοσυντεταγμένες (ulx uly lrx lry).

::

    gdalinfo -mm HYP_50M_SR_W.tif 
    gdal_translate -srcwin 0 0 5400 5400 HYP_50M_SR_W.tif  west.tif
    gdal_translate -srcwin 5400 0 5400 5400 HYP_50M_SR_W.tif  east.tif



Τετραγωνίδια εικονιδίων με το gdaltindex
========================================
Μπορείτε να δημιουργήσετε ένα αρχείο shapefile σαν τετραγωνίδια εικονιδίων. Για κάθε εικόνα δημιουργείται ένα πολύγωνο που περιέχει τα όρια της έκτασης του πολυγώνου και τη διεύθυνση του αρχείου στο δίσκο.


::

 gdaltindex index_natural_earth.shp *st.tif

Ρίξτε μια ματιά στο αρχείο εξόδου shapefile με το Quantum GIS και το ogrinfo (θα μάθετε μερισσότερα για το ogrinfo αργότερα σε αυτόν τον οδηγό)

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
  

Προβολή
============

Για αυτή την διαδικασία υποθέτουμε πως το HYP_50M_SR_W.tif έχει δημιουργηθεί σωστά με 
όρια. Όπως είδαμε νωρίτερα με την gdainfo δεν έχει οριστεί κανένα σύστημα συντεταγμένων. Έτσι ορίζουμε σε αρχικό στάδιο το WGS84 ως σύστημα συντεταγμένων για την εικόνα.

::

     gdal_translate -a_srs WGS84 HYP_50M_SR_W.tif HYP_50M_SR_W_4326.tif

Η εντολή gdalwarp μπορεί να χρησιμοποιηθεί για να προβάλει εικόνες. Εδώ προβάλαμε
την εικόνα με γεωαναφορά στο WGS84, στο σύστημα προβολής Mercator:     

::

   gdalwarp -t_srs '+proj=merc +datum=WGS84' HYP_50M_SR_W_4326.tif mercator.tif

Χρησιμοποιείστε την gdalinfo για να επιβεβαιώσετε τις αλλαγές και να ρίξετε μια ματιά στην εικόνα.


  .. image:: ../../images/screenshots/800x600/gdal_mercator.png
     :scale: 80

Εδώ προβάλαμε στην Ορθή προβολή. 

::

   gdalwarp -t_srs '+proj=ortho +datum=WGS84' HYP_50M_SR_W_4326.tif ortho.tif


.. image:: ../../images/screenshots/800x600/gdal_ortho.png
     :scale: 80

Παρατηρείτε πως οι πόλοι είναι κομμένοι; Αυτό συμβαίενι επειδή οι ακμές στους πόλους
δεν μπορούν να προβληθούν και η gdalwarp δεν μπορεί να διαβάσει όλα τα δεδομένα. Μπορούμε να αναγκάσουμε
την gdalwarp να διαβάσει ένα πλήθος δεδομένων σε μεγάλα κομμάτια, ως ένας τρόπος να
λύσουμε το πρόβλημα. Διαβάστε περισσότερα για αυτό στο RasterTutorial http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial. 



Συνένωση
=========

gdal_merge.py είναι ένα αρχείο script python το οποίο μπορεί να χρησιμοποιηθεί ως ένα απλό εργαλείο συνένωσης. Συνένωση της east.tif και της west.tif σε ένα απλό αρχείο.  
::

   gdal_merge.py  east.tif west.tif -o merged.tif

Η ίδια εφαρμογή μπορεί να γίνει με την gdalwarp. Η gdalwarp έχει μια ποικιλία πλεονεκτημάτων σε σχέση με την gdal_merge, αλλά μπορεί να είναι πολύ αργή στην ένωση πολλών αρχείων:
::

   gdalwarp east.tif west.tif warpmerged.tif



Γνωρίζοντας την OGR
===================
:: 
  
  cd /home/usr/gdal_natural_earth/


..tip:: Ανοίξτε ένα αρχείο shape file με μια εφαρμογή GIS όπως το Quantum GIS και ρίξτε μια ματιά.


Πληροφορηθείτε για τα διανυσματικά δεδομένα με την ogrinfo
==========================================================

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

Μπορείτε να πάρετε μια σύνοψη για τα δεδομένα σας με την ogrinfo με χρήση του -so.

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

Εάν χρησιμοποιήσετε την orginfo χωρίς παράμετρο, θα πάρετε μια σύνοψη που αφορά τα δεδομένα σας και στην συνέχεια ένα τμήμα από κάθε σύνολο δεδομένων.
::

	ogrinfo ../natural_earth/ 10m-admin-0-countries



Μπορείτε να προωθήσετε το αποτέλεσμα από την ogrinfo για να χρησιμοποιήσετε το φίλτρο για να πάρετε την απόδοση για την χώρα σας.
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
	....

Μπορείτε να μετατρέψετε τα δεδομένα σας σε άλλα πρότυπα. Μπορείτε να δείτε την λίστα με τα πρότυπα που υποστηρίζονται με την εντολή --formats.


Χρήση της ogr2ogr για μετατροπή δεδομένων μεταξύ αρχείων προτύπων
=================================================================
Μπορείτε να χρησιμοποιήσετε το ugr2ogr για να μετατρέψετε τα απλά αντικείμενα των δεδομένων σε διάφορα αρχεία προτύπων. Μπορείτε να χρησιμοποιήσετε την εντολή --format για να δείτε την λίστα με τα πρότυπα που υποστηρίζονται με την ανάγνωση/εγγραφή πληροφοριών.


Μετατροπή των χωρών σε GML.
::

  ogr2ogr --formats
  ogr2ogr -f GML countries.xml 10m-admin-0-countries.shp	  


Πράγματα να προσπαθήσετε
========================

Εδώ υπάρχουν κάποιες πρόσθετες προκλήσεις για να προσπαθήσετε:

#. Χρησιμοποιήστε την gdalwarp ή την gdal_merge.py για να ενώσετε τα δεδομένα σας

#. Χρησιμοποιήστε την gdaladdo για να δημιουργήσετε διάφορες επισκοπήσεις

#. Το QGIS χρησιμοποιεί τις GDAL/OGR προκειμένου να υποστηρίξει διάφορους τύπους. Παρέχει επίσης και το GdalTools Plugin για πρόσβαση σε εικονιστικά δεδομένα. Αυτή η εφαρμογή ενσωματώνει τα εργαλεία της gdal στο QGIS. 

#. Χρησιμοποιήστε την ogr2ogr για να εισάγετε/εξάγετε τα διανυσματικά σας δεδομένα σε άλλους τύπους δεδομένων όπως την PostGIS. Ρίξτε μια ματια τις επιλογές που παρέχει το ogr2ogr.

#. Χρησιμοποιήστε το QGIS plugin OGR-Layer-Konverter.


Τι ακολουθεί;
=============

Αυτό είναι μόνο το πρώτο βήμα για την χρήση της GDAL και του OGR. Υπάρχουν πολλές ακόμα λειτουργίες που μπορούμε να χρησιμοποιήσουμε. 


Κεντρική ιστοσελίδα GDAL

  http://www.gdal.org

Όλα για το OGR

  http://gdal.org/ogr/index.html

Εκμάθηση GDAL

  http://trac.osgeo.org/gdal/wiki/UserDocs/RasterProcTutorial
