.. Βοήθημα:
  Writing tips describe what content should be in the following section.

.. Βοήθημα:
  Metadata about this document

:Συγγραφέας: OGC
:Άδεια: Creative Commons

.. Βοήθημα:
  The following becomes a HTML anchor for hyperlinking to this page

.. _wcs-overview:

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

Web Coverage Service (WCS)
==========================

.. Βοήθημα:
  1 paragraph or 2 defining what the standard is.

Το πρότυπο Web Coverage Service (WCS) του OGC® ορίζει μια πρότυπη διεπαφή και λειτουργίες που επιτρέπουν διαλειτουργική πρόσβαση σε χωρικά δεδομένα κανάβου (grid coverages). Ο όρος αυτός τυπικά περιγράφει δεδομένα όπως τηλεπισκοπικές απεικονίσεις, δορυφορικές εικόνες, ψηφιακές αεροφωτογραφίες, ψηφιακά μοντέλα εδάφους και άλλα φαινόμενα που μπορούν να αναπαρασταθούν από τιμές σε κάθε σημείο μέτρησης. (http://www.opengeospatial.org/standards/wcs)

.. image:: ../../images/standards/wcs.jpg
  :scale: 25%
  :alt: WCS in Context

Το πρότυπο WCS του OGC αφορά σε μια διαδικτυακή υπηρεσία δεδομένων. Το πρότυπο WCS ορίζει μια υπηρεσία πρόσβασης δεδομένων που επιτρέπει σε δεδομένα κανάβου, όπως τα ψηφιακά μοντέλα εδάφους, να μπορούν να ανακτηθούν μέσω προτοκόλου HTTP. Η απάντηση ενός εξυπηρετητή σε ένα αίτημα WCS περιλαμβάνει μεταδεδομένα δεδομένων κανάβου και τα δεδομένα εξόδου, των οποίων τα εικονοστοιχεία είναι κωδικοποιημένα σε συγκεκριμένο πρότυπο ψηφιακής εικόνας όπως τα GeoTIFF ή NetCDF. 

Όπως και με τά υπόλοιπα πρότυπα του OGC, υπάρχουν πολλά εξαιρετικά παραδείγματα υπηρεσιών WCS σε χρήση. Ένα τέτοιο παράδειγμα είναι η υπηρεσία WCS του NDBC High Frequency (HF) Radar η οποία έχει αναπτυχθεί και δημοσιευτεί από την υπηρεσία NOAA των ΗΠΑ (http://hfradar.ndbc.noaa.gov/). Το ραντάρ HF χρησιμοποιείται για την τηλεπισκοπική παρατήρηση και μέτρηση των ρευμάτων των ωκεανών. Ένα άλλο παράδειγμα είναι η υπηρεσία WCS της NASA για πρόσβαση σε δεδομένα του συστήματος AIRS (Atmospheric Infrared Sounder) (http://idn.ceos.org/KeywordSearch/Metadata.do?Portal=webservices&KeywordPath=[Project%3A+Short_Name%3D%27EOS%27]&EntryId=NASA_GES_DISC_AIRS_Atmosphere_Data_Web_Coverage_Service&MetadataView=Full&MetadataType=1&lbnode=mdlb1). Αυτή είναι μια υπηρεσία WCS από τις διαθέσιμες υπηρεσίες του κέντρου δεδομένων και πληροφοριών Goddard που παρέχουν ατμοσφαιρικά δεδομένα επιπέδου 3 που προκύπτουν από το δορυφόρο Aqua της NASA.

Δείτε επίσης
--------

.. Βοήθημα:
  Describe Similar standard

* :doc:`wms_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
* :doc:`fe_overview`
