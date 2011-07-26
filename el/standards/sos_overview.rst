.. Βοήθημα:
  Writing tips describe what content should be in the following section.

.. Βοήθημα:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Βοήθημα:
  The following becomes a HTML anchor for hyperlinking to this page

.. _sos-overview:

.. Βοήθημα: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: ../../images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: ../../images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Sensor Observation Service (SOS)
================================

.. Βοήθημα:
  1 paragraph or 2 defining what the standard is.

Το πρότυπο Sensor Observation Service (SOS) του OGC αφορά μια διαδικτυακή υπηρεσία δεδομένων. Το πρότυπο SOS του OGC ορίζει μια τυποποιημένη διεπαφή και λειτουργίες για πρόσβαση σε παρατηρήσεις από αισθητήρες και συστήματα αισθητήρων που ομοιογενείς για όλα τα συστήματα αισθητήρων (περιλαμβανομένων τηλεπισκοπικών, επίγειων, ακίνητων και κινητών αισθητήρων). Το πρότυπο SOS παρέχει αποτελέσματα ερωτημάτων στο πρότυπο Observation and Measurements (O&M) για τη μοντελοποίηση παρατηρήσεων από δέκτες αλλά και με τη χρήση της γλώσσας SensorML για τη μοντελοποίηση των συστημάτων αισθητήρων και δεκτών. (http://www.opengeospatial.org/standards/sos)

.. image:: ../../images/standards/sos.jpg
  :scale: 55%
  :alt: SOS in Context

Το πρότυπο SOS ορίζει ένα κοινό μοντέλο για αισθητήρες αλλά και συστήματα αισθητήρων το οποίο δεν είναι συγκεκριμένο σχετικά με ένα πεδίο εφαρμογών αλλά μπορεί να χρησιμοποιηθεί χωρίς την εκ των προτέρων γνώση του πεδίου εφαρμογής.

Μια παρατήρηση είναι ένα γεγονός του οποίου το αποτέλεσμα είναι μια εκτίμηση της τιμής μιας ιδιότητας στο πεδίο ενδιαφέροντος, και λαμβάνεται με συγκεκριμένη διαδικασία. Οι παρατηρήσεις ορίζονται από 

eventTime – τον χρόνο του γεγονότος, πότε δηλαδή η παρατήρηση συνέβει
featureOfInterest – το χαρακτηριστικό ενδιαφέροντος, ποιά οντότητα μετρήθηκε
observedProperty - την παρατηρούμενη ιδιότητα, δηλαδή το ποιά ιδιότητα μετρήθηκε
procedure  - τη διαδικασία, πως δηλαδή αυτή η ιδιότητα μετρήθηκε

Οι υποχρεωτικές διαδικασίες μιας υπηρεσίας SOS περιλαμβάνουν:
GetObservation - πρόσβαση στις παρατηρήσεις και στα δεδομένα μετρήσεων μέσω χωρο-χρονικών ερωτημάτων που μπορούν να φιλτραριστούν με βάση γεγονότα 
GetCapabilities - Τα μεταδεδομένα της υπηρεσίας SOS
DescribeSensor - Πληροφορίες σχετικές με τους αισθητήρες και τους δέκτες, τις λειτουργίες τους και τις πλατφόρμες τους μοντελοποιημένες σε γλώσσα SensorML

Προαιρετικές λειτουργίες μιας τέτοιας υπηρεσίας περιλαμβάνουν τις: GetResult, GetFeatureOfInterest, GetFeatureOfInterestTime, DescribeFeatureofInterest, DescribeObservationType, DescribeResultModel, Register Sensor, και InsertObservation.

Υπάρχουν πολλές εξαιρετικές υλοποιήσεις υπηρεσιών SOS. Το OpenIOOS.org περιλαμβάνει δεκατρείς οργανισμούς που παρέχουν υπηρεσίες SOS με πρόσβαση σε πάνω από 1400 αισθητήρες ωκεανών (http://www.openioos.org/real_time_data/gm_sos.html). Αυτή η επιχειρισιακή επίδειξη αποτελεί μια προσπάθεια να δημιουργηθεί μια αρχιτεκτονική διαδικτυακών υπηρεσιών για την παρακολούθηση των ωκεανών.

Δείτε επίσης
------------

.. Βοήθημα:
  Describe Similar standard

* :doc:`wcs_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* Sensor Planning Service
* Coordinate Transformation Service

