.. Βοήθημα:
  Writing tips describe what content should be in the following section.

.. Βοήθημα:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Βοήθημα:
  The following becomes a HTML anchor for hyperlinking to this page

.. _wps-overview:

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

Web Processing Service (WPS)
================================================================================

.. Βοήθημα:
  1 paragraph or 2 defining what the standard is.

Το πρότυπο WPS παρέχει κανόνες για την προτυποποίηση δεδομένων εισόδου και εξόδου (αιτήματα και απαντήσεις) για υπηρεσίες χωρικής επεξεργασίας, όπως την επίθεση πολυγώνων και τα δεδομένα εισόδου και εξόδου της.

.. image:: ../../images/standards/wps.jpg
  :scale: 55%
  :alt: WPS in Context

Το πρότυπο Web Processing Service (WPS) του OGC® περιγράφει την πρόσβαση σε χωρικές λειτουργίες επεξεργασίας μέσω διαδικτύου.
Οι επεξεργασίες αυτές περιλαμβάνουν κάθε αλγόριθμο, υπολογισμό ή μοντέλο που λειτουργεί πάνω σε χωρικά δεδομένα (διανυσματικά ή εικονιστικά). Μια υπηρεσία WPS μπορεί να προσφέρει υπολογισμούς απλούς όσο η αφαίρεση ενός συνόλου χωρικά κατανεμημένων αριθμών από άλλους (π.χ., ο προσδιορισμός της διαφοράς των κρουσμάτων γρίπης μεταξύ δύο χρονικών στιγμών), ή τόσο πολύπλοκους όσο ένα μοντέλο παγκόσμιας αλλαγής κλίματος.  (http://www.opengeospatial.org/standards/wps) 

Μια υπηρεσία WPS είναι ιδιαιτέρως χρήσιμη για:

* Μείωση πολυπλοκότητας στην επεξεργασία δεδομένων παρέχοντας αλγορίθμους σε αρθρώματα (plug & play).
* Επιτρέπει την δημιουργία αλυσίδων από επεξεργασίες.
* Επιτρέπει μια επεξεργασία να υλοποιηθεί μια φορά και να μπορεί να χρησιμοποιηθεί στη συνέχεια παντού.
* Κεντρική διαχείριση. Επεξεργασίες/μοντέλα συντηρούνται σε κεντρικό σημείο από αυτούς που τις δημιούργησαν.
* Την αξιοποίηση ισχυρών υπολογιστικών συστημάτων σε κεντρικούς εξυπηρετητές.
* Εύκολη και διαλειτουργική πρόσβαση σε επεξεργασίες μεγάλης πολυπλοκότητας, όπως μοντέλα παγκόσμιας κλιματικής αλλαγής.

Δείτε επίσης
--------------------------------------------------------------------------------

.. Βοήθημα:
  Describe Similar standard

Άλλα πρότυπα υπηρεσιών δεδομένων OGC: 

* Web Coverage Processing Service
* Sensor Planning Service
* :doc:`wcs_overview`
* :doc:`wms_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
