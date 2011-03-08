:Author: OSGeo Live
:Version: osgeo-live4.5
:License: Creative Commons

.. _gdal-overview:

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GDAL/OGR
========

Εργαλεία διαχείρισης γεωχωρικών δεδομένων
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Η βιβλιοθήκη Geospatial Data Abstraction Library (GDAL/OGR) παρέχει εργαλεία για την μετατροπή και επεξεργασία μεγάλης ποικιλίας διανυσματικών και πινακοποιημένων (raster) τυποποιήσεων αρχείων γεωχωρικών δεδομένων (format).

Τα εργαλεία αυτά στηρίζονται σε μια μεταφέρσιμη (cross platform) βιβλιοθήκη C++ προσβάσιμη από σχεδόν όλες τις λοιπές γλώσσες προγραμματισμού. Ως βιβλιοθήκη αναπαριστά μέσω ενός αφαιρετικού μοντέλου όλες τις υποστηριζόμενες τυποποιήσεις.

Σήμερα είναι η πλέον διαδεδομένη βιβλιοθήκη διαχείρισης γεωχωρικών δεδομένων. Λειτουργεί στην μηχανή πρόσβασης στα δεδομένα σε πολλά γνωστά λογισμικά όπως: MapServer, GRASS, QGIS, and OpenEV. Επίσης υποστηρίζεται από πακέτα όπως: OSSIM, Cadcorp SIS, FME, Google Earth, VTP, Thuban, ILWIS, MapGuide and ArcGIS.

.. image:: ../../images/screenshots/1024x768/gdal_ogr_proj_overview.png
  :scale: 60 %
  :alt: Η GDAL υποστηρίζει πολλά format 
  :align: right

Κύρια Χαρακτηριστικά
--------------------

* Εργαλεία γραμμής εντολών για την μετατροπή, γεωμετρικό μετασχηματισμό, τεμαχιοποίηση και πολλές άλλες εργασίες 
* Εξαιρετικά βελτιστοποιημένη πρόσβαση στα δεδομένα με χρήση ενδιάμεσης αποθήκευσης τύπου τετραγωνιδίου (tile) καθώς και εικόνες επίβλεψης (overviews)
* Υποστήριξη για μεγάλα αρχεία - μεγαλύτερα από 4Gb
* Πρόσβαση μέσω των γλωσσών Python, Java, C#, Ruby, VB6 και Perl
* Περιέχει την μηχανή γεωγραφικού γεωδαιτικού συστήματος PROJ.4 και OGC με υποστήριξη σε πολλά συστήματα

Διαδεδομένες υποστηριζόμενες τυποποιήσεις
-----------------------------------------

Η GDAL υποστηρίζει περισσότερες από 50 πινακοποιημένες τυποποιήσεις και η OGR περισσότερες από 20 διανυσματικές.

Σε αυτές περιλαμβάνονται:

* **Raster:** GeoTIFF, Erdas Imagine, SDTS, ESRI Grids, ECW, MrSID, JPEG2000, DTED, και πολλές άλλες ...
* **Vector:** MapInfo (tab και mid/mif), ESRI Shapefile, ESRI Coverages, ESRI Personal Geodatabase, DGN, GML, PostGIS, Oracle Spatial, και πολλές άλλες ...

Υποστηριχθέντα πρότυπα
----------------------
Η διανυσματική βιβλιοθήκη OGR είναι σύμφωνη με την προδιαγραφή OGC Simple Features.

Περισσότερα
-----------

**Κεντρική Ιστοσελίδα:**  http://www.gdal.org

**Άδεια:** `X/MIT style Open Source license <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**Έκδοση Λογισμικού:** 1.7.3

**Υποστηριζόμενες Πλατφόρμες:** Windows, Linux, Mac

**Προγραμματιστικές Διεπαφές:** C, C++, Python, Java, C#, Ruby, VB6 και Perl

**Υποστήριξη:** http://gdal.osgeo.org/#index_maillist, http://www.osgeo.org/search_profile
