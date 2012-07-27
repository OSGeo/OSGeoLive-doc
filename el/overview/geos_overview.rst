:Author: OSGeo-Live
:Author: Frank Warmerdam
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GEOS.png
  :scale: 100
  :alt: project logo
  :align: right
  :target: http://geos.osgeo.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GEOS
================================================================================

Χωρική βιβλιοθήκη
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Η GEOS (Geometry Engine - Open Source) είναι μια υλοποίηση σε C++ της `JTS Topology Suite (JTS) <http://tsusiatsoftware.net/jts/main.html>`_. Περιλαμβάνει τις λειτουργίες της OpenGIS Simple Features και χωρικούς τελεστές SQL καθώς και επαυξημένες τοπολογικές λειτουργίες της JTS.

Η GEOS είναι η πιο διαδεδομένη γεωμετρική γεωχωρική βιβλιοθήκη σε C++  και χρησιμοποιείται από πολλά ανοιχτά πακέτα όπως :doc:`PostGIS <postgis_overview>`, :doc:`QGIS <qgis_overview>`, :doc:`GDAL/OGR <gdal_overview>` και :doc:`MapServer <mapserver_overview>` καθώς και πολλά ιδιωτικά λογισμικά όπως το `FME <http://www.safe.com/fme/fme-technology/>`_.

Υλοποιημένες τυποποιήσεις
--------------------------------------------------------------------------------

* OpenGIS Simple Features της SQL, χωρικές συναρτήσεις και τελεστές.

Κύρια χαρακτηριστικά
--------------------------------------------------------------------------------
    
* Γεωμετρίες: Point (Σημείο), LineString (Γραμμή), Polygon (Πολύγωνο), MultiPoint, MultiLineString, MultiPolygon, GeometryCollection
* Σχέσεις: Intersects (Τομές), Touches (Επαφές), Disjoint, Crosses (Διασταυρώσεις), Within (Μέσα σε), Contains (Περιέχει), Overlaps (Επικαλύπτει, Equals (Ισούται), Covers (Καλύπτει)
* Τελεστές: Union (Ένωση), Distance (Απόσταση), Intersection (Τομή), Symmetric Difference (Συμμετρική διαφορά), Convex Hull, Envelope, Buffer, Simplify, Polygon Assembly, Valid (Έγκυρο), Area (Εμβαδόν), Length (Μήκος)
* Προκαθορισμένες γεωμετρίες (ήδη καταχωρημένες μη χωρικές γεωμετρίες)
* Χωρικός δείκτης STR
* OGC κωδικοποιητές και αποκωδικοποιητές Well Known Text (WKT) και Well Known Binary (WKB).
* C και C++ API (Ειδικά το C API μας εξασφαλίζει μακρόχρονη σταθερότητα ΑΒΙ)
* Ασφαλής για χρήση σε πολυνηματική επεξεργασία (μέσω της χρήσης του αντίστοιχου API)

Περισσότερες λεπτομέρειες
--------------------------------------------------------------------------------

**Κεντρική ιστοσελίδα:**  http://geos.osgeo.org/

**Άδεια:** LGPL

**Έκδοση Λογισμικού:** 3.3.2

**Υποστηριζόμενες πλατφόρμες:** Windows, Linux, Mac

**Προγραμματιστικές διεπαφές:** C, C++

**Υποστήριξη:** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile

