:Author: Friedjoff Trautwein (http://www.geops.de)
:Author: Augustus Kling (http://www.geops.de)
:Author: Patric Hafner (http://www.geops.de)
:Version: osgeo-live6.5draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-cartaro.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://cartaro.org

********************************************************************************
Εγχειρίδιο Γρήγορης Εκκίνησης Cartaro
********************************************************************************

Το λογισμικό Cartaro  είναι ένα CMS με ενεργοποιημένες γεωχωρικές λειτουργίες διαχείρισης και έκδοσης/διάθεσης γεωχωρικού και μη γεωχωρικού περιεχομένου. 

Αυτό το εγχειρίδιο θα σας οδηγήσει στα ακόλουθα βήματα:

  * Να δημιουργήσετε νέο γεωχωρικό περιεχόμενο
  * Να διαμορφώσετε το Cartaro να παρουσιάζει το νέο γεωχωρικό περιεχόμενο
  * Να προσθέσετε νέο

.. contents:: Περιεχόμενα
  
Εκκίνηση Cartaro
================================================================================

#. Επέλεξε :menuselection:`Geospatial --> Browser Clients --> Start Cartaro` από το μενού
#. Η εφαρμογή θα χρειαστεί χρόνο για να ξεκινήσει
#. Πλοηγηθείτε στον ιστοχώρο του Cartaro http://localhost/cartaro (αυτό θα πρέπει να συμβεί αυτόματα)


Κύρια σελίδα
================================================================================

Όταν ανοίγετε το Cartaro βλέπετε την παραπάνω σελίδα η οποία περιέχει έναν χάρτη παράδειγμα με πρωτεύουσες.

.. image:: /images/projects/cartaro/cartaro_frontpage.png
    :scale: 60 %
    :align: center


* Επιλέξτε **Log in** στο άνω δεξί άκρο για να αποκτήσετε πρόσβαση στο διαχειριστικό περιβάλλον. Χρησιμοποιείστε*admin* ως όνομα χρήστη και *geoserver* ως συνθηματικό. Τώρα θα δείτε στην κορυφή την μπάρα επιλογών διαχείρισης.

.. image:: /images/projects/cartaro/cartaro_userpage.png
    :scale: 60 %
    :align: center
  
.. tip::  Μπορείτε να επιστρέψετε στην αρχική σελίδα επιλέγοντας τον εικονίδιο home στην άνω αριστερή γωνία.


Δημιουργία νέου τύπου περιεχόμενου
================================================================================

Οι τύποι περιεχνομένου περιγράφουν τα πεδία και την δομή ενός ειδικού τύπου περιεχομένου (π.χ. ο τύπος *Capital* περιέχει τα ονόματα και την θέση).
Για να δημιουργήσετε έναν νέο τύπο απλά ακολουθείστε τα ακόλουθα βήματα.

* Επιλέξτε :menuselection:`Structure --> Content types` από την μπάρα επιλογών και στην συνέχεια κλικ **Add content type** 


.. image:: /images/projects/cartaro/cartaro_contenttypes.png
    :scale: 80 %
    :align: center

* Γράψτε ένα όνομα για τον νέο τύπο και αν θέλετε μια περιγραφή
* Τελειώστε με κλικ στην επιλογή **Save and add fields**


.. image:: /images/projects/cartaro/cartaro_new_contenttype.png
    :scale: 80 %
    :align: center

* Προσθέστε ένα νέο πεδίο επιλέγοντας ένα σχετικό όνομα, στην συνέχεια επιλέξτε *Geospatial data* ως τύπο του νέου πεδίου και *OpenLayers Map*  σαν πρόσθετο εργαλείο απεικόνισης
* Ολοκληρώστε με **Save**


.. image:: /images/projects/cartaro/cartaro_new_field.png
    :scale: 70 %
    :align: center

* Επιλέξτε την γεωμετρία η οποία περιγράφει τον τύπο της γεωχωρικής πληροφορίας την οποία θέλετε να αποθηκεύσετε. Επιλέξτε *Polygon* για να συνεχίσετε σε αυτό το παράδειγμα.
* Ολοκληρώστε με **Save field settings**

.. tip::  Είναι διαθέσιμοι κι άλλοι τύποι δεδομένων. Επιλέξτε τον τύπο ο οποίος είναι καλύτερος για τις ανάγκες σας. Διαβάστε τις πληροφορίες στο ανασυόμενο παράθυρο του *Geometry type* για πρόσθετη βοήθεια.


.. image:: /images/projects/cartaro/cartaro_field_settings.png
    :scale: 70 % 
    :align: center

* Πατήστε *Save settings* για να ολοκληρώβσετε την δημιουργία πεδίων

.. image:: /images/projects/cartaro/cartaro_manage_field.png
    :scale: 70 % 
    :align: center

Διαμόρφωση του GeoServer
================================================================================

Ο :doc:`GeoServer <../overview/geoserver_overview>` χρησιμοποιείται για να παρέχει τα γεωχωρικά πεδία από τον νέο τύπο περιεχομένου ως νέο επίπεδο μέσω :doc:`Web Feature Service (WFS) <../standards/wfs_overview>` και :doc:`Web Map Service (WMS) <../standards/wms_overview>`.

* Επιλέξτε :menuselection:`Structure --> GeoServer` από την μπάρα επιλογών για να επισκεφτείτε την σελίδα διαμόρφωσης του GeoServer

.. image:: /images/projects/cartaro/cartaro_geoserver_entry.png
    :scale: 70 %
    :align: center

Συμβολισμός
``````````````````````````````````
.. tip:: Αυτή η παράγραφος είναι προαιρετική. Αν βιάζεστε απλά συνεχίστε στην επόμενη.

Για να αλλάξετε τον συμβολισμό στα γεωχωρικά πεδία μέσα σε ένα χαρτογραφικό επίθεμα θα πρέπει να ορίσετε το δικό σας. Αυτό γίνεται με :doc:`Styled Layer Descriptors (SLD) <../standards/sld_overview>` ως αρχεία τύπου XML. 
Υπάρχουν πολλοί τρόποι πως να δημιουργήσετε κάτι το οποίο δεν περιλαμβάνεται. Η τεκμηρίωση :doc:`GeoServer <../quickstart/geoserver_quickstart>` περιγράφει ένα τρόπο να το κάνετε.
Για το παράδειγμα δημιουργούμε ένα νέο σύμβολο το οποίο θα χρησιμοποιήσουμε εδώ.

* Επιλέξτε :menuselection:`Styles` στην δεξιά πλευρά

.. image:: /images/projects/cartaro/cartaro_geoserver_style.png
    :scale: 70 %
    :align: center

* Επιλέξτε ένα όνομα για το νέο σύμβολο
* Αντιγράψτε το ακόλουθο παράδειγμα SLD μέσα στο κουτί κειμένου *SLD* και πατήστε *Save*
* Θυμηθείτε να μεταβάλετε το περιεχόμενο των κελιών *Name* και *Title* στο SLD ώστε να αντιστοιχίζονται στα *Style Title* και *Style Description*

::

  <?xml version="1.0" encoding="ISO-8859-1"?><StyledLayerDescriptor version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>wildlife</Name>
     <UserStyle>
        <Title>Wildlife</Title>
            <FeatureTypeStyle>
                <Rule>
                    <PolygonSymbolizer>
                        <Fill>
                            <CssParameter name="fill">#00aa00</CssParameter>
                            <CssParameter name="fill-opacity">0.5</CssParameter>
                        </Fill>
                    </PolygonSymbolizer>
                </Rule>
            </FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>
  </StyledLayerDescriptor>

.. image:: /images/projects/cartaro/cartaro_new_style.png
    :scale: 70 %
    :align: center

Επιθέματα
``````````````````````````````````
* Επιλέξτε :menuselection:`Structure --> GeoServer` από την μπάρα επιλογών για να επισκεφτείτε την σελίδα διαμόρφωσης του GeoServer
* Επιλέξτε :menuselection:`Layers` και κλικ **Add** για να προσθέσετε το δικό σας επίθεμα

.. image:: /images/projects/cartaro/cartaro_geoserver_layer.png
    :scale: 70 %
    :align: center

#. Γράψτε έναν τίτλο για το επίθεμα
#. Επιλέξτε *PostGIS Field* ως τύπο επιπέδου
#. Εαν έχετε φτιάξει δικό σας συμβολισμό επιλέξτε τον ως *Style*
#. Επιλέξτε το νέο περιεχόμενο ως Source
#. Επιλέξτε *Provide an OpenLayers WFS layer*  από τον τομέα του OpenLayers
#. Κλείστε την διαμόρφωση επιλέγοντας **Save**


.. image:: /images/projects/cartaro/cartaro_new_layer.png
    :scale: 90 %
    :align: center

.. tip:: Μπορείτε επίσης να αποκτήσετε πρόσβαση στα γεωχωρικά πεδία μέσω WFS ή WMS και με άλλες εφαρμογές (πχ με το :doc:`QGis <../overview/qgis_overview>`)  


Ρυθμίσεις OpenLayers
================================================================================

Το :doc:`OpenLayers <../overview/openlayers_overview>` χρησιμοποιείται για να παρουσιάσει το νέο επίπεδο.

* Επιλέξτε :menuselection:`Structure --> OpenLayers` από την μπάρα επιλογών για να επισκεφτείτε την σελίδα διαμόρφωσης OpenLayers
* Επιλέξτε :menuselection:`Maps` και δείτε το *frontmap* το οποίο είναι ο αρχικός χάρτης

.. image:: /images/projects/cartaro/cartaro_openlayers_entry.png
    :scale: 70 %
    :align: center


* Δείτε τον *frontmap* και επιλέξτε **Edit** στην δεξιά πλευρά

.. image:: /images/projects/cartaro/cartaro_openlayers_maps.png
    :scale: 70 %
    :align: center

* Θα εμφανιστεί η οθόνη διαμόρφωσης όπως φαίνεται εδώ. 
* Επιλέξτε :menuselection:`Layers & Styles` στην αριστερή πλευρά και προσθέστε το επίθεμα το οποίο δημιουργήσατε.

.. image:: /images/projects/cartaro/cartaro_edit_map.png
    :scale: 70 %
    :align: center

* Παρατηρείστε το νέο επίθεμα (Wildlife habitats στο παράδειγμά μας)
* Επιλέξτε τα κουτάκια *Enabled*, *Activated* και *In Switcher* για να εμφανίζεται το νέο επίθεμα αυτόματα
* Κλείστε την διαμόρφωση με επιλογή **Save** στο κάτω μέρος της σελίδας

.. image:: /images/projects/cartaro/cartaro_edit_map2.png
    :scale: 70 %
    :align: center

Προσθέστε νέο περιεχόμενο
================================================================================

Μετά την δημιουργία του νέου τύπου περιεχομένου μπορείτε να προσθέσετε όσα νέα στοιχεία αυτού του τύπου θέλετε.

* Επιλέξτε :menuselection:`Content` από την μπάρα επιλογών και δείτε όλα τα υπάρχοντα αντικείμενα στην εγκατάσταση του Cartaro
* Επιλέξτε **Add content** για να προσθέσετε νέο περιεχόμενο
* Επιλέξτε τον νέο τύπο περιεχομένου 

.. image:: /images/projects/cartaro/cartaro_content_overview.png
    :scale: 70 %
    :align: center

#. Γράψτε ένα όνομα για το νέο αντικείμενο
#. Τώρα μπορείτε να ορίσετε την γεωμετρία του αντικειμένου σας. Επιλέξτε το σύμβολο σχεδιασμού στην άνω δεξιά γωνία του χάρτη. Παρατηρείστε ότι σύντομη βοήθεια εμφανίζεται όταν το ποντίκι σταματά για λίγο σε κάθε εικονίδιο.
#. Με κλικ στον χάρτη δημιουργείτε γεωμετρία στο νέο αντικείμενο. Κάθε κλικ θα παράξει μια νέα ακμή. Ολοκληρώστε το σχήμα σας με διπλό κλικ. 
#. Όταν είστε έτοιμοι επιλέξτε **Save**.

.. note:: Στο παράδειγμά μας επιτρέπεται μόνο μία γεωμετρία ανά αντικείμενο. Για περισσότερα πολύγωνα προσθέστε περισσότερα αντικείμενα.  

.. image:: /images/projects/cartaro/cartaro_create_content2.png
    :scale: 70 %
    :align: center

* Τώρα θα πρέπει να βλέπετε το νέο αντικείμενο
* Για να δείτε το νέο αντικείμενο στον κύριο χάρτη κάντε κλικ στο εικονίδιο σπιτιού στην άνω αριστερή γωνία.

.. tip:: Εάν δεν είστε ικανοποιημένοι με το αποτέλεσμα μπορείτε εύκολα να διορθώσετε το νέο αντικείμενο και να μεταβάλετε την γεωμετρία του

.. image:: /images/projects/cartaro/cartaro_content_preview2.png
    :scale: 50 %
    :align: center

Συγχαρητήρια, έχετε τελειώσει το σύντομο εγχειρίδιο εκμάθησης. Το πρώτο σας στοιχείο είναι έτοιμο. Για να προσθέσετε περισσότερα απλά εκτελέστε ξανά τα βήματα σε αυτή την παράγραφο.

.. image:: /images/projects/cartaro/cartaro_frontmap_new.png
    :scale: 50 %
    :align: center


Δομικάστε
================================================================================

* Χρησιμοποιείστε το **Layer Assistant** για να συμπεριλάβετε εξωτερικά επιθέματα :menuselection:`Structure --> Open Layers --> Layers --> Add using assistant`  
* Μεταβάλετε την διαμόρφωση των χαρτών και φτιάξτε δικούς σας χάρτες
* Δοκιμάστε διαφορετικούς γεωμετρικούς τύπους και χτίστε περισσότερο σύνθετους νέους τύπους περιεχομένου


Τι ακολουθεί ?
================================================================================

Αυτό το εγχειρίδιο σας έδωσε μια πρώτη εντύπωση για τις δυνατότητες του Cartaro. Αλλά μένουν πολλά και σε εσάς να εξερευνήσετε. 

Εγκαταστείστε το Cartaro σε δικούς σας εξυπηρετητές. Επισκεφτείτε τον ιστοχώρο http://cartaro.org/documentation/getting-started για να διαβάσετε πως.


Πρόσθετα σε αυτό το εγχειρίδιο θα βρείτε σχετικά `Layer Assistant <http://cartaro.org/blog/21-layer-creation-assistant/>`_ ή `Styling <http://cartaro.org/blog/14-how-use-qgis-great-looking-symbols-cartaro/>`_


Η τεκμηρίωσή μας είναι διαθέσιμη στην διεύθυνση http://cartaro.org/documentation


    Κεντρικός ιστοχώρος http://cartaro.org
                                                                   
