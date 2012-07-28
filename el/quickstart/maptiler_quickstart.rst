:Author: OSGeo-Live
:Author: Petr Pridal
:Author: Christopher Fleet
:Version: osgeo-live4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-maptiler.png
  :scale: 100 %
  :alt: project logo
  :align: right

Εγχειρίδιο Γρήγορης Εκκίνησης MapTiler
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Το `MapTiler <http://www.maptiler.org/>`_ προσφέρει έναν απλό τρόπο για δημιουργία συνόλου τετράγωνων από γεωαναφερμένες εικόνες χαρτών. Τα τετράγωνα μπορεί να παρουσιαστούν σαν γεωαναφερμένα στρώματα χαρτών σε ένα διαδικτυακό εξυπηρετητή. Ακολουθεί τις προδιαγραφές του `Open Source Geospatial Foundation's (OSGeo's) <http://www.osgeo.org/>`_ `Tile Map Service (TMS) <http://wiki.osgeo.org/wiki/Tile_Map_Service_Specification>`.

* **Input options**: Οποιοδήποτε γεωαναφερμένο αρχείο εικόνας π.χ. από TIFF, JPEG μέχρι ArcGIS, QGIS.
* **Output options**: Ένα σύνολο από φακέλους αρχείων με τις τετράγωνες εικόνες που μπορεί να αντιγραφούν σε ένα διαδικτυακό εξυπηρετητή για παρουσίαση σαν γεωαναφερμένα στρώματα.`View examples <http://examples.maptiler.org/>`_. 
* **Strengths**: Το MapTiler είναι ένα ελεύθερο, ανοιχτού κώδικα λογισμικό με εύκολο οδηγό, που παρουσιάζεται παρακάτω, για καθοδήγηση στις επιμέρους επιλογές. 


Το MapTiler εκμεταλλεύεται το γεγονός ότι τα `Google Maps <http://maps.google.com/>`_ , `Microsoft Bing <http://maps.bing.com>`_ , `Yahoo Maps <http://maps.yahoo.com/>`_ , και άλλα εργαλεία για χάρτες στο διαδίκτυο συμπεριλαμβάνοντας το `OpenStreetMap <http://www.openstreetmap.org/>`_ χρησιμοποιούν την ίδια προβολή, τα ίδια προφίλ τετραγώνων και έτσι τα τετράγωνα είναι συμβατά. Η σελίδα `Tiles à la Google Maps <http://www.maptiler.org/google-maps-coordinates-tile-bounds-projection/>`_ το περιγράφει και το εξηγεί. Το MapTiler φτιάχνει τα τετράγωνα χρησιμοποιώντας αυτές τις προδιαγραφές σαν έναν εύκολο και γρήγορο τρόπο για δημιουργία γεωαναφερμένων χαρτών σε διαδικτυακές σελίδες.


Αρχίζοντας με το MapTiler
--------------------------------------------------------------------------------

1. `Κατεβάστε το MapTiler <http://help.maptiler.org/beta/>`_ στον υπολογιστή σας ή αρχίστε το κατευθείαν από αυτό το LiveDVD.

2. Επιλέξτε το **Tile Profile**. Επιλέξτε το *Google Maps Compatible (Spherical Mercator)* για την βασική διαδικτυακή έκδοση. Επιλέξτε *Google Earth (KML SuperOverlay)* εάν θέλετε επίσης να δημιουργήσετε ένα KML αρχείο για χρήση το Google Earth. Κλικάρετε το *Continue*.

.. image:: ../../images/screenshots/1024x768/maptiler1.jpg
    :width: 90 %
    :align: center

3. Επιλέξτε το **Source Data Files**. Αναζητήστε να επιλέξετε την εικόνα πλέγμα που θέλετε να κάνετε να δημιουργήσετε τετράγωνα. Μπορείτε επίσης να επιλέξετε το NODATA στοιχείο που εμφανίζεται σαν διαφάνεια στην τελική εικόνα. Κλικάρετε το *Continue*.

.. image:: ../../images/screenshots/1024x768/maptiler2.jpg
    :width: 90 %
    :align: center

4. Ορίστε το **Spatial Reference System / Coordinate System** της εικόνας. Ορίστε το νούμερο από την EPSG/ESRI βάση δεδομένων. Εάν έχετε χάρτες από την Αγγλία για παράδειγμα, ο μετασχηματισμός πρέπει να περιέχει την παράμετρο `EPSG:27700 με TOWGS84 <http://help.maptiler.org/coordinates/europe/uk>`_ . Κλικάρετε *Continue*.

.. image:: ../../images/screenshots/1024x768/maptiler3.jpg
    :width: 90 %
    :align: center

5. Ορίστε τις λεπτομέρειες για το= **Tile Pyramid**. Οι επιλογές που υπάρχουν για το επίπεδο ζουμαρίσματος και τοπρότυπο του αρχείου είναι συνήθως οι καλύτερες. Κλικάρετε *Continue*.

.. image:: ../../images/screenshots/1024x768/maptiler4.jpg
    :width: 90 %
    :align: center

6. Ορίστε τις λεπτομέρειες για το **Destination folder and Addresses / URLs** του συνόλου τετραγώνων. Εάν αυτό δεν το γνωρίζετε, τότε μπορείτε να προσθέσετε τα επιλεγμένα *googlemaps.html* και *openlayers.html* αρχεία για μετά την δημιουργία τετραγώνων. Κλικαρετε *Continue*.

.. image:: ../../images/screenshots/1024x768/maptiler5.jpg
    :width: 90 %
    :align: center

7. Μαρκάρετε το **Viewers that should be generated**. Από μόνο του, το *googlemaps.html* και το *openlayers.html* αρχεία δημειουργούνται. Μπορείτε επίσης να επιλέξετε να δημιουργήσετε ένα KML SuperOverlay αρχείο από το Google Earth. Κλικάρετε *Continue*.

.. image:: ../../images/screenshots/1024x768/maptiler6.jpg
    :width: 90 %
    :align: center

8. Ορίστε το **Details for generating the Viewers**, όπως τον τίτλο, την σημείωση για τα δικαιώματα, και τα API κλειδιά. Εάν δεν το γνωρίζετε αυτό, αυτά μπορούν να πρσθεθούν στα επιλεγμένα *googlemaps.html / openlayers.html* αρχεία μετά από την δημιουργία των τετραγώνων. Κλικάρετε *Continue*.

.. image:: ../../images/screenshots/1024x768/maptiler7.jpg
    :width: 90 %
    :align: center

9. Κλικάρετε το **Render** για να αρχίσετε να οπτικοποιήσετε την εικόνα. Όποτε ολοκληρωθεί, το MapTiler δίνει έναν σύνδεσμο για να τελειώσει το σύνολο των τετραγώνων. Ανοοίξτε το *googlemaps.html* ή το *openlayers.html* αρχεία σε ένα διαδικτυακό εξυπηρετητή για να δείτε το στρώμα του συνόλου των τετραγώνων σε ένα διαδικτυακό χάρτη. Για να το παρουσιάσετε στο διαδίκτυο, απλά αντιγράψτε ολόκληρο το σύνολο των τετραγώνων και όλο το σύνολο των φακέλων και υποφακέλων των αρχείων σε ένα σιαδικτυακό εξυπηρετητή, και επεξεργαστείτε το googlemaps.html ή το openlayers.html αρχεία όπως απαιτείται.
