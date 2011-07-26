:Author: Johan Van de Wauw
:Version: osgeo-live4.0
:License: Creative Commons:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Version: osgeo-live4.0
:License: Creative Commons

.. _52nSOS-overview:

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/sos


52°North SOS
============

Διαδικτυακή υπηρεσία
~~~~~~~~~~~~~~~~~~~~

Η 52°North `Sensor Observation Service (SOS) <../standards/sos_overview.html>`_ 
συγκεντρώνει εγγραφές από ενεργούς, επίγειους και τηλεπισκοπικούς δέκτες. Η υπηρεσία προσφέρει μια διεπαφή ώστε να κάνει τους δέκτες και τα δεδομένα αυτών διαθέσιμα μέσω ενός διαλειτουργικού διαδικτυακού περιβάλλοντος. Τέσσερα προφίλ ορίζονται μέσα από τα πρότυπα του SOS: core, transactional, enhanced, and entire. Η τρέχουσα έκδοση (52N-SOS-3.1.1) υλοποιεί τα προφίλ core, transactional, και τμήματα του enhanced προφίλ που αποτελούν τις απαιτούμενες διεργασίες. Η τρέχουσα έκδοση υλοποιεί την τελευταία έκδοση του σχήματος (1.0.0).


.. image:: ../../images/screenshots/1024x768/52n_sos_test_client.png
  :scale: 50 %
  :alt: εικόνα του δοκιμαστικού εξυπηρετητή sos
  :align: right

Δυνατότητες Core 
----------------
* GetCapabilities, για ερώτηση μιας περιγραφής της υπηρεσίας.
* GetObservation, για αίτημα των αυθεντικών δεδομένων του δέκτη, κωδικοποιημένα σε Observations & Measurements (O&M)
* DescribeSensor, για πληροφορίες για τον δέκτη τον ίδιο, κωδικοποιημένα σε αρχείο Sensor Model Language (SensorML).

Η συναλλακτική προφίλ που περιλαμβάνει τις ακόλουθες πράξεις εφαρμόζεται, επίσης: * RegisterSensor, για την εγγραφή νέων αισθητήρων.
* InsertObservation, για εισαγωγή νέων παρατηρήσεων για εγγεγραμμένους δέκτες.

Επιπροσθέτως, είναι υλοποιημένες και οι ακόλουθες:
* GetResult, για περιοδική συγκέντρωση δεδομένων ενός δέκτη
* GetObservationById
* GetFeatureOfInterest, για ζήτηση της  κωδικοποιημένης αναπαράστασης της ιδιότητας σε GML που είναι ο στόχος της παρατήρησης
* GetFeatureOfInterestTime

*Ένα λογισμικό-πελάτης βασισμένο πάνω σε περιηγητή

Υλοποιημένα πρότυπα
-------------------

* OGC Sensor Observation Service (SOS)

Λεπτομέρειες
------------

* **Κεντρική Ιστοσελίδα:** http://52north.org/communities/sensorweb/sos

* **Άδεια:** GPL

* **Έκδοση λογισμικού:** SOS 3.2.0

* **Υποστηριζόμενες πλατφόρμες:** Windows, Linux, Mac

* **Προγραμματιστικές Διεπαφές:** Java

* **Εμπορική υποστήριξη:** http://www.52north.org/


Γρήγορη Εκκίνηση
----------------

* `Εγχειρίδιο Γρήγορης Εκκίνησης <../quickstart/52nSOS_quickstart.html>`_


