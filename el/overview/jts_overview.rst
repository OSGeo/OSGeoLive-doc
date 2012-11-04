:Author: Jody Garnett
:Reviewer:
:Version: osgeo-live 6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/jts_project.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://tsusiatsoftware.net/jts/main.html

Σουίτα Τοπολογίας JTS
================================================================================

Η σουίτα τοπολογίας JTS (Java Topology Suite) είναι μια ελεύθερη πλατφόρμα (API) σε γλώσσα προγραμματισμού Java υπό την άδεια LGPL που υλοποιεί ρουτίνες και συναρτήσεις για την επεξεργασία γεωμετρίας. Η JTS προσφέρει μια ολοκληρωμένη, σταθερή και ευέλικτη υλοποίηση βασικών αλγορίθμων για επεξεργασία γραμμικών γεωμετριών στο Καρτεσιανό σύστημα συντεταγμένων.

Η JTS είναι γραμμένη 100% σε Java και είναι αρκετά γρήγορη για παραγωγή.

.. image:: ../../images/screenshots/800x600/jts-overview.jpg
  :scale: 60 %
  :alt: JTS Topology Suite implementation of Simple Features for SQL Geometry
  :align: right

Η υπολογιστική σταθερότητα της JTS εξασφαλίζεται από ένα μεγάλο σύνολό δοκιμαστικών εφαρμογών. Μια μικρή εφαρμογή παρέχεται για την διεξαγωγή των δοκιμών και τον πειραματισμό με γεωμετρίες. Ελπίζουμε να περιλάβουμε αυτή την εφαρμογή σε μελοντικές εκδόσεις του OSGeo-Live.

Οι εφαρμογές του OSGeo-Live που χρησιμοποιούν την JTS:
:doc:`52nSOS_overview`,
:doc:`52nWPS_overview`,
:doc:`kosmo_overview`,
:doc:`52nWSS_overview`,
:doc:`atlasstyler_overview`,
:doc:`geomajas_overview`,
:doc:`saga_overview`,
:doc:`geonetwork_overview`,
:doc:`geopublisher_overview`,
:doc:`geoserver_overview`,
:doc:`udig_overview`,
:doc:`geotools_overview`,
:doc:`openjump_overview`,
:doc:`zoo-project_overview`,
:doc:`gvsig_overview`

Οι εφαρμογές του OSGeo-Live που παρέχουν την δική του υλοποίηση σχετικά με τη γεωμετρία, με εσωτερική χρήση της  JTS:
:doc:`deegree_overview` (GML3 geometry),
:doc:`geotools_overview` (ISO 19107 Geometry)

Το λογισμικό :doc:`geos_overview` είναι μια μεταφορά της JTS στο περιβάλλον της C++, με την υλοποίηση των ποιοτικών συναρτήσεων σε επιπλέον λογισμικά. Επιπλέον υπάρχουν μεταφορές για τις γλώσσες C# και JavaScript.

Βασικά Χαρακτηριστικά
--------------------------------------------------------------------------------

* Μοντέλο Γεωμετρίας
* Τελεστές Γεωμετρίας
* Χειρισμός ακρίβειας
* Αρχικοποίηση γεωμετρίας (Constructions)
* Μετρικές συναρτήσεις
* Χωρικοί αλγόριθμοι
* Μαθηματικές συναρτήσεις
* Χωρικές δομές
* Είσοδος/Έξοδος
* Αριθμητική υψηλής ακρίβειας

Υποστηριζόμενα Πρότυπα
----------------------

* Καθιερομένα πρότυπα κειμένου και διαδικών αρχείων (well-known text WKT και well-known-binary WKB)
* GML 2
* Java Swing/AWT (εγγραφή)

Υλοποιημένα Πρότυπα
--------------------------------------------------------------------------------

Υποστήριξη προτύπων του Open Geospatial Consortium (OGC):

* OGC Simple Features for SQL (SFSQL)

Λεπτομέρειες
--------------------------------------------------------------------------------

**Κεντρική ιστοσελίδα:** http://tsusiatsoftware.net/jts/main.html

**Άδεια:** LGPL

**Υποστηριζόμενες πλατφόρμες:** Όλες οι πλατφόρμες που υποστηρίζει η Java 

**Προγραμματιστικές διεπαφές:** Java

**Υποστήριξη:** `Λίστα ηλεκτρονικού ταχυδρομίου JTS <https://lists.sourceforge.net/lists/listinfo/jts-topo-suite-user>`_
