:Author: OSGeo-Live
:Author: Mike Adair
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)


.. _metacrs-overview-el:

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://trac.osgeo.org/metacrs/wiki

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

MetaCRS
================================================================================

Μετασχηματισμός Συστυμάτων Αναφοράς
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/project_logos/logo-metacrs.png
  :scale: 100 %
  :alt: map projection example
  :align: right
  :target: http://trac.osgeo.org/metacrs/wiki


Η ομάδα την πακέτων MetaCRS παρέχει βιβλιοθήκες λογισμικού για την μετατροπή μεταξύ διαφόρων γεωγραφικών συστημάτων συντεταγμένων.
Ένα γεωγραφικό σύστημα συντεταγμένων επιτρέπει σε όλα τα σημεία στην γη να αναπαριστώνται ως συντεταγμένες (όπως το γεωγραφικό μήκος, το γεωγραφικό πλάτος και το υψόμετρο). Διάφορα συστήματα χρησιμοποιούνται επίσης στην αναπαράσταση της τρισδιάστατης γήινης επιφάνειας σε δύο διαστάσεις.

Οι βιβλιοθήκες MetaCRS περιλαμβάνονται/χρησιμοποιούνται επίσης και σε άλλα πακέτα λογισμικού ενώ πολλές είναι διαθέσιμες για εκτέλεση και από την γραμμή εντολών.

Στα πακέτα του MetaCRS περιλαμβάνονται:


* PROJ.4 (C++) - χρησιμοποιείται από τα: MapServer, GRASS GIS, PostGIS, Mapnik και πολλά άλλα.
* Proj4js (JavaScript) - χρησιμοποιείται από το OpenLayers.
* CS-Map (C++) - χρησιμοποιείται από το MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <http://spatialreference.org/>`_  - ιστοσελίδα για την αναζήτηση ορισμών συστημάτων αναφοράς.

Βασικά Χαρακτηριστικά
--------------------------------------------------------------------------------

* Παρέχει μετασχηματισμούς μεταξύ γεωγραφικών συστημάτων συντεταγμένων.
* Περιλαμβάνει μετατροπές μεταξύ των διαφόρων συστημάτων αναφοράς.
* Υποστηρίζει μεγάλο αριθμό κλάσεων μετατροπών/προβολών.


Υλοποιημένα Πρότυπα
--------------------------------------------------------------------------------

Τα προγράμματα αυτά χρησιμοποιούν τυπικούς ορισμούς συστημάτων γεωγραφικών συντεταγμένων από το
`European Petroleum Survey Group (EPSG) <http://www.epsg.org/>`_ τα οποία έχουν καταγραφεί σε πρότυπο Well Known Text (WKT).


PROJ.4
--------------------------------------------------------------------------------

  **Αρχική Ιστοσελίδα:**  http://trac.osgeo.org/proj/
  
  **Άδεια:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Έκδοση Λογισμικού:** 4.7.0
  
  **Υποστηριζόμενες πλατφόρμες:** Windows, Linux, Mac
  
  **Προγραμματιστικές διεπαφές:** C, C++, Python, Java, Ruby
  
  **Υποστήριξη:** http://lists.maptools.org/mailman/listinfo/proj

Proj4js
--------------------------------------------------------------------------------

  **Αρχική Ιστοσελίδα:**  http://proj4js.org
  
  **Άδεια:** `LPGL <http://www.gnu.org/copyleft/lesser.html>`_
  
  **Έκδοση Λογισμικού:** 1.0.1
  
  **Υποστηριζόμενες πλατφόρμες:** Windows, Linux, Mac
  
  **Προγραμματιστικές διεπαφές:** JavaScript
  
  **Υποστήριξη:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

CS-Map
--------------------------------------------------------------------------------

  **Αρχική Ιστοσελίδα:**  http://proj4js.org
  
  **Άδεια:** `custom <http://svn.osgeo.org/metacrs/csmap/trunk/CsMapDev/license.txt>`_
  
  **Έκδοση Λογισμικού:** 13.0
  
  **Υποστηριζόμενες πλατφόρμες:** Windows, Linux, Mac
  
  **Προγραμματιστικές διεπαφές:** C, C++

  **Υποστήριξη:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

GeoTIFF/libgeotiff
--------------------------------------------------------------------------------

  **Αρχική Ιστοσελίδα:**  http://trac.osgeo.org/geotiff/
  
  **Άδεια:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Έκδοση Λογισμικού:** 1.3.0
  
  **Υποστήριξη:** http://lists.maptools.org/mailman/listinfo/geotiff
  
Proj4J
--------------------------------------------------------------------------------

  **Αρχική Ιστοσελίδα:**  http://trac.osgeo.org/proj4j/
  
  **Άδεια:** `Apache License, Version 2.0 <http://www.apache.org/licenses/LICENSE-2.0>`_
  
  **Έκδοση Λογισμικού:** 
  
  **Υποστηριζόμενες πλατφόρμες:** Windows, Linux, Mac
  
  **Προγραμματιστικές διεπαφές:** Java
  
  **Υποστήριξη:** http://lists.osgeo.org/mailman/listinfo/proj4j
  
