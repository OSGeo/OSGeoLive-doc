:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)


.. image:: /images/project_logos/logo-TinyOWS.png
  :alt: project logo
  :align: right
  :target: http://mapserver.org/tinyows/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


TinyOWS
================================================================================

Web Feature Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ο TinyOWS είναι ένας εξυπηρετητής υψηλών επιδόσεων του προτύπου Transactional Web Feature Service (WFS-T), ο οποίος είναι εύκολο να εγκατασταθεί και να χρησιμοποιηθεί, με τη χρήση διεπαφών CGI ή FastCGI και τη χρήση της :doc:`PostGIS <postgis_overview>` για αποθήκευση δεδομένων.

.. image:: /images/screenshots/800x600/tinyows_digitizing.jpg
  :scale: 55 %
  :alt: digitizing
  :align: right

Ο TinyOWS χρησιμοποιείται ευρέως με τον :doc:`MapServer <mapserver_overview>` για την υλοποίηση υπηρεσιών WFS-T και γρήγορων WFS για το :doc:`QGIS <qgis_overview>` και/ή για το :doc:`OpenLayers <openlayers_overview>`. Χρησιμοποιείται στην παραγωγή σε οργανισμούς ανα τον κόσμο, περιλαμβανομένων κυβερνητικών υπηρεσιών με υψηλό ρίσκο.
Ο TinyOWS υλοποιεί αυστηρά τα πρότυπα WFS 1.0 και 1.1, και έχει περάσει με επιτυχία όλα τα δοκιμαστικά τέστ OGC CITE (~ 1000 τεστ).

Βασικά Χαρακτηριστικά
--------------------------------------------------------------------------------

* Transactional Web Feature Service (WFS-T)
* Διεπαφή CGI και FastCGI
* Σύνδεση με δεδομένα PostGIS
* Δημιουργία εξόδου σε GML 2.1.2, 3.1.1 και GeoJson 1.0
* Ρυθμίζεται με τη χρήση του αρχείου ρυθμίσεων του MapServer, επιτρέποντας ένα μόνο αρχείο ρυθμίσεων για τις δυο εφαρμογές.

Υλοποιημένα Πρότυπα
--------------------------------------------------------------------------------
* WFS 1.0 και WFS 1.1: Βασικό και Συνθετο προφίλ
* FE 1.0.0 και FE 1.1.0
* GML 2.1.2 και 3.1.1 Simple Profile (SF-0)

Λεπτομέρειες
--------------------------------------------------------------------------------

**Αρχική Ιστοσελίδα:** http://mapserver.org/tinyows/

**Άδεια:** MIT

**Έκδοση Λογισμικού:** 1.1.0

**Υποστηριζόμενες πλατφόρμες:** Linux, Unix, Mac, Windows

**Προγραμματιστικές διεπαφές:** CGI/FastCGI

**Υποστήριξη:** http://lists.osgeo.org/mailman/listinfo/mapserver-users


Γρήγορη εκκίνηση
--------------------------------------------------------------------------------
    
* :doc:`Εγχειρίδιο γρήγορης εκκίνησης <../quickstart/tinyows_quickstart>`

