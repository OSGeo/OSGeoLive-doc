.. Βοήθημα:
  Writing tips describe what content should be in the following section.

.. Βοήθημα:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Βοήθημα:
  The following becomes a HTML anchor for hyperlinking to this page

.. _sensorml-overview:

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

Sensor Model Language (SensorML)
================================

.. Βοήθημα:
  1 paragraph or 2 defining what the standard is.

Το πρότυπο κωδικοποίησης Sensor Model Language (SensorML) του OGC περιγράφει ένα πληροφοριακό μοντέλο και κωδικοποιήσεις XML που επιτρέπουν την αναζήτηση και χρήση αισθητήρων που συνδέονται με το διαδίκτυο καθώς επίσης και την περαιτέρω χρήση των παρατηρήσεων αυτών των δεκτών. Σε αυτή την κατέυθυνση, η SensorML επιτρέπει στους προγραμματιστές να ορίσουν μοντέλα και σχήματα XML για να εκφράσουν κάθε διαδικασία, περιλαμβανομένων και μετρήσεων από ένα σύστημα δεκτών,  καθώς και διαδικασίες επεξεργασίας μετά τις μετρήσεις. (http://www.opengeospatial.org/standards/sensorml)

.. image:: ../../images/standards/sensorml.jpg
  :scale: 55%
  :alt: sensorML in Context

Πιο συγκεκριμένα, η SensorML μπορεί: 

* Να παρέχει περιγραφές αισθητήρων και συστημάτων δεκτών για διαχείρηση καταλόγου. Να παρέχει πληροφορίες για δέκτες και διαδικασίες με στόχο την υποστήριξη αναζήτησης πόρων και παρατηρήσεων.
* Να παρέχει υποστήριξη για την επεξεργασία και ανάλυση των παρατηρήσεων δεκτών,
* Να παρέχει υποστήριξη για συμπερίληψη γεωγραφικής τοποθεσίας των παρατηρούμενων μετρήσεων,
* Να παρέχει χαρακτηριστικά σχετικά με επιδόσεις (π.χ. ακρίβειες, όρια κλπ),
* Να παρέχει περιγραφή της διαδικασίας με την οποία μια παρατήρηση/μέτρηση έχει ληφθεί (π.χ. την ιστορικότητά της),
* ΝΑ παρέχει μια εκτελέσιμη διαδικασία για αλυσίδες επεξεργασιών και παραγωγή νέων δεδομένων κατά απαίτηση,
* Καταγραφή βασικών ιδιοτήτων και υποθέσεων σχετικα'με συστήματα αισθητήρων και δεκτών.

Μεμονομένα σχήματα SensorML περιγράφουν ένα συγκεκριμένο αισθητήρα ή μια συστοιχία από αισθητήρες και μπορούν να αποθηκευτούν σε ένα κατάλογο. 

Υπάρχουν πολλά παραδείγματα υλοποίησης SensorML, όπως το πρόγραμμα MSFC SMART της NASA (http://smartdev.itsc.uah.edu/casestudy/documents/paper_nstc_2007_A1P1.pdf). Σε αυτό το πρόγραμμα, η ομάδα ανάπτυξης υλοποίησε μια ροή εργασίας επεξεργασιών ασθητήρων μέσω διαδικτύου με στόχο την ενσωμάτωση των μετρήσεων θερμοκρασίας και υγρασίας του δορυφόρου Atmospheric Infrared Sounder (AIRS) σε μια τοπική έκδοση του μοντέλου Weather Research and Forecast  στις νοτιοανατολικές ΗΠΑ.

Δείτε επίσης
------------

.. Βοήθημα:
  Describe Similar standard

* :doc:`sos_overview`
* Sensor Planning Service
* Observations and Measurements
* Transducer Markup Language
