.. Βοήθημα:
  Writing tips describe what content should be in the following section.

.. Βοήθημα:
  Metadata about this document

:Author: OGC
:License: Creative Commons

.. Βοήθημα:
  The following becomes a HTML anchor for hyperlinking to this page

.. _fe-overview:

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

Filter Encoding (FE)
====================

.. Βοήθημα:
  1 paragraph or 2 defining what the standard is.

Το πρότυπο Filter Encoding (FE) του OGC® ορίζει την κωδικοποίηση XML για την έκφραση φίλτρων για χωρικά ερωτήματα με στόχο την επιλογή μέρους από γεωγραφικά χαρακτηριστικά με βάση συγκεκριμένες τους ιδιότητες.
(http://www.opengeospatial.org/standards/filter)

.. image:: ../../images/standards/fe.jpg
  :scale: 55%
  :alt: FE in Context

Ένα υποσύνολο χαρακτηριστικών μπορεί να αναγνωριστεί και να οπτικοποιηθεί με συγκεκριμένο χρώμα ή να μετατραπεί σε συγκεκριμένο ψηφιακό πρότυπο που επιλέγει ο χρήστης. Μια γενικευμένη κωδικοποίηση φίλτρων XML επιτρέπει την εύκολη ανάγνωση και επικαιροποίηση από έναν εξυπηρετητή που υλοποιεί το πρότυπο WFS πρωτού η έκφραση του φίλτρου μετατραπεί στην εγγενή γλώσσα της βάσης δεδομένων στην οποία είναι αποθηκευμένα τα δεδομένα και η οποία καλείται να απαντήσει στο ερώτημα. Αυτό το πρότυπο χρησιμοποιείται από ένα πλήθος διαδικτυακών υπηρεσιών του OGC, περιλαμβανομένου του WFS, της υπηρεσίας καταλόγου (CS-W) και του προτύπου SLD.

Οι εκφράσεις περιορισμού μπορούν να οριστούν σαν τιμές σε χωρικές, χρονικές και περιγραφικές ιδιότητες. Ένα παράδειγμα χωρικού φίλτρου είναι: “Βρές όλες τα χαρακτηριστικά στην περιοχή Omstead County που ιδιοκτήτης είναι ο Peter Vretanos.” Ένα παράδειγμα χρονικού φίλτρου είναι: “Βρές όλα τα φράγματα στην Μασαχουσέτη που χτίστηκαν πριν το 1900.” Ένα παράδειγμα περιγραφικού φίλτρου είναι: “Βρές όλους τους αισθητήρες θερμοκρασίας στο Παρίσι που αναφέρουν μέτρηση θερμοκρασίας μεταξύ 20 και 40 βαθμών C.” 

Δείτε επίσης
------------

.. Βοήθημα:
  Describe Similar standard

* :doc:`sld_overview`
* :doc:`csw_overview`
* :doc:`wfs_overview`
* :doc:`wms_overview`

