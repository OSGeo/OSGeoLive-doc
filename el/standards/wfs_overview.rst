.. Βοήθημα:
  Writing tips describe what content should be in the following section.

.. Βοήθημα:
  Metadata about this document

:Συγγραφέας: OGC
:Άδεια: Creative Commons

.. Βοήθημα:
  The following becomes a HTML anchor for hyperlinking to this page

.. _wfs-overview:

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

Web Feature Service (WFS)
=========================

.. Βοήθημα:
  1 paragraph or 2 defining what the standard is.

Το πρότυπο Web Feature Service του OGC® ορίζει διαδικτυακές λειτουργίες για ανάκτηση και επεξεργασία διανυσματικών γεωγραφικών χαρακτηριστικών, όπως δρόμοι ή όρια λιμνών.  (http://www.opengeospatial.org/standards/wfs)

.. image:: ../../images/standards/wfs.jpg
  :scale: 25%
  :alt: WFS in Context

Το πρότυπο WFS ορίζει διαδικασίες που επιτρέπουν τους χρήστες του να:

* Ανακαλύψουν ποιά σύνολα χαρακτηριστικών είναι διαθέσιμα (GetCapabilities)
* Περιγράψουν τα περιγραφικά πεδία για τα χαρακτηριστικά (DescribeFeatureType)
* Ανακτήσουν μια συλλογή ή κομμάτι των δεδομένων μέσω κάποιου φίλτρου (GetFeature)
* Να προσθέσουν, διορθώσουν ή διαγράψουν χαρακτηριστικά (Transaction)

Όλες οι υπηρεσίες WFS υποστηρίζουν είσοδο και έξοδο δεδομένων με τη χρήση του προτύπου Geography Markup Language (GML). Κάποιες υπηρεσίες WFS επιπλέον υποστηρίζουν άλλες κωδικοποιήσεις, όπως το GeoRSS ή τα αρχεία shapefiles.

Οι χρήστες τυπικά αλληλεπιδρούν με τις υπηρεσίες WFS μέσω περιηγητών ή μέσω λογισμικών GIS, τα οποία τους επιτρέπουν να έχουν πρόσβαση σε επίπεδα δεδομένων από εξωτερικές πηγές μέσω διαδικτύου. Ένα εξαιρετικό παράδειγμα χρήσης μιας υπηρεσίας WFS για την παροχή ανοιχτής και διαλειτουργικής πρόσβασης σε τεράστια ποσά χωρικής πληροφορίας μέσω ενός κυβερνητικού ιστοχώρου είναι η υπηρεσία WFS της USGS που παρέχεται στα πλαίσια της ανάπτυξης της Εθνικής Υποδομής Χωρικών Δεδομένων των ΗΠΑ (NSDI) (http://frameworkwfs.usgs.gov/). Επιλεγμένα επίπεδα χωρικής πληροφορίας προσφέρονται σαν επίπεδα πληροφορίας της υπηρεσίας WFS και μέσω διεπαφής με περιηγητή που προσφέρει η USGS.

Δείτε επίσης
--------

.. Βοήθημα:
  Describe Similar standard

* :doc:`wms_overview`
* :doc:`wcs_overview`
* Grid Coverage Service
* :doc:`sos_overview`
* :doc:`gml_overview`
* :doc:`kml_overview`
* :doc:`sld_overview`
* Symbology Encoding
* :doc:`fe_overview`
