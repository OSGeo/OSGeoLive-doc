:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _qgis_mapserver-quickstart:
 
.. image:: ../../images/project_logos/logo-qgis_mapserver.png
  :scale: 100 %
  :alt: project logo
  :align: right

***************************************************************************************************
Εγχειρίδιο Γρήγορης Εκκίνησης QGIS Server 
***************************************************************************************************

Ο εξυπηρετητής QGIS Server παρέχει την υλοποίηση μιας διαδικτυακής υπηρεσίας WMS βασισμένη σε βιβλιοθήκες από το λογισμικό Quantum GIS (QGIS).

Αυτό το εγχειρίδιο περιγράφει πως:

  * να γίνει ενημέρωση ενός υπάρχοντος χώρου εργασίας QGIS (project) και δημοσίευσή του σε έναν εξυπηρετητή QGIS Server
  * να γίνει δημιουργία ενός νέου χώρου εργασίας QGIS και να δημιουργηθεί μια υπηρεσία WMS απευθείας σε έναν περιηγητή

Εκκίνηση εφαρμογής GeoExt
===================================================================================================

Το OSGeo-Live περιλαμβάνει ένα παράδειγμα εφαρμογής οπτικοποίησης δεδομένων μέσω διαδικυου, βασισμένη στο περιβάλλον GeoExt που είναι υλοποιημένο σε γλώσσα Javascript και χρησιμοποιεί τον εξυπηρετητή QGIS Server για παρουσίαση του χάρτη.

* Κάντε κλίκ :menuselection:`Desktop --> Spatial Tools --> QGIS Mapserver`

Θα πρέπει να μπορείτε να δείτε έναν παγκόσμιο χάρτη σε ένα παράθυρο του περιηγητή σας.
   
.. image:: ../../images/screenshots/800x600/qgis_mapserver_browser.jpg

Στη συνέχεια θα αλλάξουμε το στύλ του χάρτη μέσω του λογισμικού QGIS.


Επεξεργασία χώρου εργασίας QGIS
===================================================================================================

#. Κάντε κλίκ :menuselection:`Geospatial --> Desktop GIS --> Quantum GIS`.

#. Επιλέξτε :menuselection:`File --> Open Project...` από το μενού.

#. Επιλέξτε :file:`QGIS-NaturalEarth-Example.qgs` και πιέστε :guilabel:`Open`.

   * Θα πρέπει να δείτε τον ίδιο παγκόσμιο χάρτη μέσα στο QGIS.
     Θα αλλάξουμε το στύλ του ποταμού και θα δούμε το αποτέλεσμα στον περιηγητή. 

#. Κάντε διπλό κλίκ **10m_rivers_lake_centerlines** στο δέντρο των επιπέδων.

#. Αλλάξτε το χρώμα στις επιλογές χρώματος ορίου σε έναν άλλο τόνο του μπλέ.

#. Πιέστε :guilabel:`OK`.

   * Οι ποταμοί είναι πλέον χρωματισμένοι σε νέο χρώμα.

#. Αποθηκεύστε την εργασία με :menuselection:`File --> Save Project`.

#. Κλείστε και ανοίξτε πάλι τον περιηγητή

#. Κάντε μεγέθυνση

   * Θα πρέπει να βλέπετε τώρα τους ποταμούς με διαφορετικό χρώμα.


Δημιουργία νέου χώρου εργασίας QGIS
===================================================================================================

#. Ανοίξτε το QGIS

#. Επιλέξτε :menuselection:`File --> New Project`.

#. Κάντε κλίκ :menuselection:`Layer --> Add Vector Layer...`.

#. Βρείτε το αρχείο :file:`/home/user/data/natural_earth/10m_admin_0_countries.shp`.

#. Πιέστε :guilabel:`Open`.

   * Θα πρέπει να δείτε όλες τις χώρες του κόσμου.

#. Αποθηκεύστε την εργασία με την επιλογή :menuselection:`File --> Save Project`.

#. Χρησιμοποιήστε το όνομα αρχείου  :file:`/home/user/world.qgs` και πιέστε :guilabel:`Save`.

#. Ανοίξτε στον περιηγητή την διεύθυνση `WMS <http://localhost/cgi-bin/qgis_mapserv?map=/home/user/world.qgs&SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&BBOX=-91.901820,-180.000000,83.633800,180.000000&CRS=EPSG:4326&WIDTH=722&HEIGHT=352&LAYERS=10m_admin_0_countries&STYLES=default&FORMAT=image/png&DPI=96&TRANSPARENT=true>`_.

   * Θα πρέπει να δείτε όλες τις χώρες του κόσμου αυτή τη φορά από τον εξυπηρετητή QGIS Server.


Τι ακολουθεί;
===================================================================================================

Για να μάθετε περισσότερα για το λογισμικό QGIS Server, μπορείτε να παρακολουθήσετε τα άρθρα στους ιστοχώρους `Linfiniti <http://linfiniti.com/2010/08/qgis-mapserver-a-wms-server-for-the-masses/>`_ ή `3LIZ <http://www.3liz.com/blog/rldhont/index.php/2010/12/03/355-qgis-mapserver-an-wysiwyg-open-source-wms-server>`_.
