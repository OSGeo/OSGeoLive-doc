:Author: Hamish Bowman
:Version: osgeo-live4.0
:License: Creative Commons

.. image:: ../../images/project_logos/logo-osm.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.osm.org


*******************************************
Εγχειρίδιο Γρήγορης Εκκίνησης OpenStreetMap 
*******************************************

Προγράμματα
===========

JOSM
~~~~

Το **JOSM** (Java OpenStreetMap Editor) είναι ένας επεξεργαστής για το OpenStreetMap (OSM)
γραμμένος σε Java. Η τρέχουσα έκδοση υποστηρίζει αυτόνομα πορείες GPX,
πορείες GPX με δεδομένα από τη βάση δεδομένων OSM και υπάρχοντες κόμβους, γραμμικά στοιχεία και καρτέλες μεταδεδομένων από την βάση δεδομένων OSM.

* Αρχική σελίδα: http://josm.openstreetmap.de

Η συλλογή JOSM περιλαμβάνει τα ακόλουθα πρόσθετα στοιχεία:

* agpifoj	     - Δημιουργεί ένα νέο επίπεδο με γεοαναφερμένες εικόνες.
* colorscheme	     - Επιτρέπει τη δημιουργία διαφορετικών χρωματικών συνδυασμών.
* livegps	     - Υποστήρίζει δεδομένα εισόδου από live GPS παράλληλα με δεδομένα gpsd.
* measurement	     - Προσθέτει παράθυρο διαλόγου και επίπεδο για τη μέτρηση μήκους και γωνίας τμημάτων και δημιουργεί διαδρομές μέτρησης.
* openvisible	     - Επιτρέπει το άνοιγμα αρχείων gpx και osm τα οποία τέμνουν την τρέχουσα ορατή περιοχή οθόνης.
* slippymap	     - Παρουσιάζουν ένα ολισθαίνοντα κάνναβο χάρτη στο JOSM.
* surveyor	     - Επιτρέπει την προσθήκη σημαδιών/κόμβων σε τρέχουσες θέσεις gps.
* utilsplugin	     - Διάφορες βοηθητικές λειτουργίες.
* validator	     - Επαληθευτής δεδομένων.
* wmsplugin	     - Παρουσιάζει εικόνες φόντου απο οποίαδήποτε πηγή WMS.


Περαιτέρω μελέτη
----------------

* Διαδικτυακό εγχειρίδιο χρήσης: http://www.use-it.be/europe/docs/OSMmanual/
* Οδηγός χρήστη: http://wiki.openstreetmap.org/wiki/JOSM/Guide
* `Eκπαιδευτικό βίντεο <http://showmedo.com/videotutorials/video?name=1800050&amp;fromSeriesID=180>`_
* Ανοίξτε κάποια δείγματα δεδομένων ως εξής Μενού :menuselection:`File --> Open... --> /usr/local/share/data/osm/feature_city.osm.bz2`
* Περαιτέρω οδηγίες δίνονται όταν τρέξετε την εφαρμογή.


Merkaartor
~~~~~~~~~~

Το **Merkaartor** είναι ένα εργαλείο σύνταξης χάρτη για το OpenStreetMap το οποίο χρησιμοποιεί το περιβάλλον προγραμματισμού Qt.
Είναι λίγο πιο φιλικό στο χρήστη από το JOSM, αλλά έχει λιγότερα χαρακτηριστικά.

* Αρχική σελίδα: http://merkaartor.be
* Διαδικτυακή βοήθεια: http://www.merkaartor.org/Documentation/


Gosmore
~~~~~~~

Το **Gosmore** είναι ένα πρόγραμμα επισκόπησης του OpenStreetMap, εργαλείο εύρεσης διαδρομής, και αναζήτησης
με υποστήριξη για σύνθεση φωνής και ανάγνωσης της θέσης GPS του χρήστη με τη χρήση του
λογισμικού `gpsd <http://gpsd.berlios.de>`_.

* Αρχική σελίδα: http://wiki.openstreetmap.org/index.php/Gosmore
* Διαδικτυακή βοήθεια wiki : http://wiki.openstreetmap.org/wiki/Gosmore#User_Interface
* Πριν τρέξετε το Gosmore θα πρέπει να μετατρέψετε ένα αρχείο δεδομένων `planet-*.osm`. Κάποια δεδομένα παρέχονται στον κατάλογο `/usr/local/share/osm/` .

Μπορείτε να τα εισάγετε με:

::

  bzip2 -dc /usr/local/share/data/osm/Denver_CBD.osm.bz2 | gosmore rebuild

Αυτό θα δημιουργήσει το gosmore.pak.


Osmarender
~~~~~~~~~~

Το **Osmarender** είναι ένα εργαλείο φωτορεαλισμού βασισμένο σε κανόνες για τη δημιουργία SVG εικόνων από δεδομένα OSM. Χρειάζεται σαν στοιχεία εισόδου ένα αρχείο δεδομένων OpenStreetMap και ένα αρχείο κανόνων.
Εισάγει μια SVG εικόνα η οποία είναι κωδικοποιημένη σε συμφωνία με τα στυλ που καθορίζονται στο αρχείο κανόνων.

* Αρχική σελίδα: http://wiki.openstreetmap.org/wiki/Osmarender

Παράδειγμα:

.. Σημείωση: Αυτό απαιτεί περίπου 1 GB ελεύθερη μνήμη RAM και παίρνει μερικές ημέρες για να επεξεργασθεί ολόκληρη πόλη.
   Ένα μόνο χωριό ή προάστιο θα ήταν περισσότερο διαχειρίσιμο.
   Δείτε το `Xapi <http://wiki.openstreetmap.org/wiki/Xapi>`_ στο OSM Wiki για
   λεπτομέρειες σχετικά με το πώς θα κατεβάσετε μικρότερα κομμάτια σε ένα αρχείο ``.osm``, ή πώς θα χρησιμοποιήσετε το 
   *JOSM* ή το *Merkaartor* για να κατεβάσετε μικρότερα κομμάτια.

::

  cp /usr/local/data/share/osm/feature_city.osm.bz2 .
  bzip2 -d feature_city.osm.bz2
  osmarender feature_city.osm

Μπορείτε να δείτε τα αποτελέσματα σε ένα λογισμικό οπτικοποίησης SVG όπως το `Inkscape` η το `Firefox`:

::

  firefox feature_city.svg


osm2pgsql
~~~~~~~~~

Το **osm2pgsql** είναι ένα βοηθητικό πρόγραμμα το οποίο μετατρέπει δεδομένα OpenStreetMap (.OSM) σε κατάλληλο τύπο ώστε να μπορούν να "¨φορτωθούν" στην βάση δεδομένων (PostGIS). Χρησιμοποιείται συχνά για την οπτικοποίηση των OSM δεδομένων με χρήση του Mapnik, καθώς το Mapnik υποστηρίζει ερωτήματα προς PostgreSQL για χαρτογραφικά δεδομένα, αλλά δεν δουλεύει απ'ευθείας με αρχεία OSM.

* Αρχική σελίδα: http://wiki.openstreetmap.org/wiki/Osm2pgsql

