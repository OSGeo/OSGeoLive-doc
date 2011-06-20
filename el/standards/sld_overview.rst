.. Βοήθημα:
  Writing tips describe what content should be in the following section.

.. Βοήθημα:
  Metadata about this document

:Συγγραφέας: OGC
:Άδεια: Creative Commons

.. Βοήθημα:
  The following becomes a HTML anchor for hyperlinking to this page

.. _sld-overview:

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

Style Layer Descriptor (SLD)
============================

.. Βοήθημα:
  1 paragraph or 2 defining what the standard is.

Το πρότυπο Styled Layer Descriptor (SLD) του OGC® 
παρέχει δομές για συμβολισμούς και χρώματα γεωγραφικών χαρακτηριστικών και εικόνων. Χρησιμοποιείται ευρύτατα για την εφαρμογή στυλ σε διαδικτυακές υπηρεσίες WMS, ή σε αρχεία GML που προέρχονται από υπηρεσίες WFS.  (http://www.opengeospatial.org/standards/sld) 

.. image:: ../../images/standards/sld.jpg
  :scale: 55%
  :alt: SLD in Context

Ο λεπτομερής έλεγχος των γραφικών αναπαραστάσεων των χωρικών δεδομένων είναι μια θεμελιώδης απαίτηση για πολλές εφαρμογές χαρτογραφίας. Για τη δυνατότητα ορισμού κανόνων στυλ απαιτείται μια γλώσσα αναπαράστασης που τόσο ο εξυπηρετητής όσο και η εφαρμογή πελάτης μπορούν να καταλαβαίνουν. 

Το παρόν πρότυπο Web Map Service (WMS) του OGC επιτρέπει σε έναν πάροχο πληροφορίας να προσδιορίζει το στύλ των χαρτών του, μέσω προκαθορισμένων ρυθμίσεων αναπαράστασης για καθένα από τα διαθέσιμα δεδομένα. Όμως, ενώ μια υλοποιημένη υπηρεσία WMS μπορεί να παρέχει στον χρήστη ένα σύνολο επιλογών για στυλ, το πρότυπο WMS μπορεί να παρέχει στο χρήστη μόνο το όνομα για κάθε τέτοια ρύθμιση. Δεν μπορεί να δώσει την πληροφορία στον χρήστη για το πως αυτό το στυλ θα φαίνεται στο χάρτη. Και επιπλέον, ο χρήστης δεν έχει τρόπο να προσδιορίσει τους δικούς του στυλιστικούς κανόνες. 

Η δυνατότητα για έναν άνθρωπο ή μια μηχανή να προσδιορίσει αυτούς τους κανόνες απαιτεί μια στυλιστική γλώσσα που μπορεί να καταλάβει τόσο ο εξυπηρετητής όσο και η εφαρμογή πελάτης. Το πρότυπο Symbology  Encoding (SE) του OGC (http://www.opengeospatial.org/standards/symbol) προσδιορίζει το πρότυπο μιας τέτοιας γλώσσας για την οπτικοποίηση στύλ χαρτών. Το προφίλ SLD μιας υπηρεσίας WMS επιτρέπει την εφαρμογή του προτύπου SE σε επίπεδα του WMS με τη χρήση προσθέτων στις λειτουργίες της υπηρεσίας WMS. Επιπρόσθετα, το SLD ορίζει τρόπους πρόσβασης σε σύμβολα υπομνημάτων τα οποία μπορούν να αποθηκεύονται απομακρυσμένα σε κάποιον εξυπηρετητή για χρήση σε πολλές εφαρμογές. 

Σημειώνεται πως εκτός τη χρήση του προτύπου αυτού για την βελτίωση των υλοποιήσεων του προτύπου WMS, το SE μπορεί να χρησιμοποιηθεί για να προσδιορίσει το στύλ σε δεδομένα που προέρχονται από μια υπηρεσία WFS ή ακόμα και σε δεδομένα που προέρχονται από μια υπηρεσία WCS του OGC.

Δείτε επίσης
--------

.. Βοήθημα:
  Describe Similar standard

* :doc:`fe_overview`
* :doc:`kml_overview`
* Symbology Encoding
* :doc:`gml_overview`
* :doc:`wms_overview`
* :doc:`wfs_overview`

