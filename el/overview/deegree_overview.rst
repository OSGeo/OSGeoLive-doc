:Συγγραφέας: Johannes Wilden
:Έκδοση: osgeo-live4.0
:Άδεια: Creative Commons

.. _deegree-overview:

.. image:: ../../images/project_logos/logo-deegree.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://deegree.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: Λογισμικό ενσωματωμένο στο OSGeo
  :align: right
  :target: http://www.osgeo.org


deegree
=======

Διαδικτυακές Υπηρεσίες
~~~~~~~~~~~~

Το deegree είναι ελεύθερο, σταθερό, ισχυρό και εύκολο στη χρήση του. Το deegree είναι το πιο
εκτενές σύνολο από υλοποιήσεις προτύπων του 
OGC στον κόσμο του Ελεύθερου λογισμικού. Περιλαμβάνει από διαδικτυακές υπηρεσίες ενημέρωσης δεδομένων (transactional Web Feature Service) ως και επισκόπηση δεδομένων 3D 
μέσω της υπηρεσίαε Web Terrain Service, αλλά και πολλά περισσότερα!

Το deegree είναι μια λύση για Γεωγραφικά Συστήματα Πληροφοριών (βασισμένα στο διαδίκτυο ή σε επίπεδο προσωπικού υπολογιστή) και για Υποδομές Χωρικών Πληροφοριών
(SDI). Αποτελείται από περιεκτικές και ισχυρές προγραμματιστικε διεπαφές σε γλώσσα Java και από ένα ισχυρό σχεσιακό-αντικειμενοστρεφες μοντέλο χαρτογράφησης 
απλών και σύνθετων χωρικών σχημάτων. Το deegree επιπλεόν παρέχει ένα σύνολο από διαδικτυακές υπηρεσίες, συμβατές με τα πρότυπα για διαδικτυακή απεικόνιση, υπηρεσίες μεταφόρτωσης και αναζήτησης (καταλόγου)
καθώς και υπηρεσίες αισθητήρων και επεξεργασίας.

Το deegree μπορεί γρήγορα να υλοποιήσει το δικό σας SDI, χρησιμοποιώντας τα δικά σας δεδομένα και ικανοποιώντας τις δικές σας απαιτήσεις.



.. image:: ../../images/screenshots/1024x768/deegree_mainpage.gif
  :scale: 50%
  :alt: project logo
  :align: right

Μερικά χαρακτηριστικά
---------------------

* Web Map Service

  * πολύ ευέλικτο σχετικά με τα περιεχόμενα των θεματικών επιπέδων
  * Υποστηρίζει και χρησιμοποιεί ορισμούς στύλ (SLD 1.0)
  * Έχει δυνατότητες θεματικής χαρτογράφησης μέσω γραφιμάτων (πίτες, μπάρες και γραμμές) αντί συμβόλων σημείων
  * Πηγές δεδομένων: Όλες οι κοινές υπηρεσίες OGC (WMS, WFS, WCS), PostgreSQL/PostGIS, Oracle Spatial, οποιαδήποτε ερωτήματα SQL μπορούν να χρησιμοποιηθούν για τη δημιουργία νέου επιπέδου WMS
  * Πολύ σταθερό, ακόμα και σε μεγάλες κλίμακες
  * Υποστηρίζει HTTP GET, HTTP POST και αιτήματα για πληροφορίες χαρακτηριστικού (feature info)
  * Πιστοποιημένα συμβατό με το OGC

* Web Feature Service

  * Υποστηρίζει απλούς και σύνθετους τύπους δεδομένων
  * Άμεση μετατροπή συντεταγμένων σε περισσότερα από  3000 συστήματα αναφοράς
  * Υποστηρίζει ευέλικτα πρότυπα εξόδου
  * Εύκολα επεκτάσιμο για να υποστηρίζει την οδηγία INSPIRE

* Web Coverage Service

  * Υποστηρίζει αιτήματα HTTP GET και HTTP POST
  * Πηγές δεδομένων: εικόνες (tif, png, jpeg, gif, bmp); GeoTIFF; αρχεία ECW; Oracle GeoRaster
  * Προσπέλαση υψηλής ταχύτητας σε μεγάλα αρχεία

* Catalogue Service-Web

  * Πηγές δεδομένων: βάσεις δεδομένων PostgreSQL και Oracle
  * Υποστηρίζει αιτήματα: GetCapabilities; DescribeRecord; GetRecordById; GetRecords; Transaction - Insert, Update, Delete; Harvesting

* Web Map Print Service

  * Υποστηρίζει πολλαπλά πρότυπα εκτύπωσης (HTML, PDF, PNG)
  * Υποστηρίζει χρονοβόρες εργασίες
  * Υποστηρίζει ασύγχρονα αιτήματα ώστε να πραγματοποιεί εκτυπώσεις μεγάλης κλίμακας
  * Τα αιτήματα αποθηκεύονται σε βάση δεδομένων και θα είναι διαθέσιμα ακόμα και αν η υπηρεσία διακοπεί από έναν διαχειριστή ή αν το μηχάνημα αστοχήσει

* Web Perspective View Service

   * Πηγές δεδομένων: απομακρυσμένο ή τοπικό WMS, απομακρυσμένο ή τοπικό WFS, τοπικό WCS, Postgres/PostGIS, Oracle Spatial
   * Τα υψομετρικά μοντέλα μπορεί να είναι διανυσματικά ή εικονιστικά δεδομένα
   * Αιτήματα: Get3DFeatureInfo, GetView


Υλοποιημένα Πρότυπα
---------------------

* OGC Web Map Service (WMS) 1.1.0*, 1.1.1, 1.3.0*
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0 (2.0 σε εξέλιξη)
* OGC Web Coverage Service (WCS) 1.0.0* (1.1.0 σε εξέλιξη)
* OGC Catalogue Service-Web (CSW) 2.0.0, 2.0.1, 2.0.2; συμπεριλαμβανομένου OGC ISOAP 1.0 και προφίλ INSPIRE
* OGC Web Perspective View Service (WPVS) Draft 6
* OGC Web Coordinate Transformation Service (WCTS) 0.4.0
* OGC Web Processing Service (WPS) 0.4.0, 1.0.0
* OGC Sensor Observation Service (SOS) 1.0.0

Λεπτομέρειες
-------

**Κεντρική ιστοσελίδα:** http://deegree.org

**Άδεια:** LGPL

**Έκδοση Λογισμικού:** 2.3

**Υποστηριζόμενες πλατφόρμες:** Windows, Linux

**Διεπαφές προγραμματισμού (API):** Java

**Υποστήριξη:** http://wiki.deegree.org/deegreeWiki/GettingSupport


Γρήγορη εκκίνηση
----------

* `Εγχειρίδιο γρήγορης εκκίνησης <../quickstart/deegree_quickstart.html>`_


