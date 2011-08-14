:Author: OSGeo-Live
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _spatialite-quickstart:
 
.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right

********************************************************************************
Εγχειρίδιο Γρήγορης Εκκίνησης SpatiaLite 
********************************************************************************

Η SpatiaLite είναι μια SQLite βάση δεδομένων με πρόσθετες χωρικές λειτουργίες. 

Αυτό το κείμενο περιγράφει πως να ανοίξετε μια βάση δεδομένων από την γραμμή εντολών (τερματικό) και από το γραφικό περιβάλλον.


Εκτελώντας την spatialite
================================================================================

* Ανοίξτε ένα τερματικό και μια βάση με την εντολή spatialite::

   spatialite /home/user/data/spatialite/regions.sqlite
   select r.NOME_REG, a.Nome from Aeroporti a, reg2008_s r where CONTAINS( r.Geometry, a.Geometry ) order by r.NOME_REG;


Δημιουργήστε μια νέα βάση με το γραφικό περιβάλλον spatialite-gui
================================================================================

* Εκκινήστε spatialite-gui
* Επιλέξτε  :menuselection:`File --> Creating a new SQLite DB`


Εκτελώντας την spatialite-gis
================================================================================

* Εκτελέστε spatialite-gis 
* Συνδεθείτε με /home/user/data/spatialite/regions.sqlite

Θα δείτε μια ομάδα αεροδρομίων της Ιταλίας


Δοκιμάστε
================================================================================

Ορίστε μερικές πρόσθετες προκλήσεις να τις δοκιμάσετε:

* Παρατηρήστε την γεωμετρία με spatialite-gui
* Ανοίξτε και διορθώστε επίπεδα SpatiaLite στο QGIS

Τεκμηρίωση
================================================================================

Για να μάθετε περισσότερα για το SpatiaLite, μπορείτε να ξεκινήσετε απο την σελίδα: `Documentation and tutorials`_ .

.. _`Documentation and tutorials`: http://www.gaia-gis.it/spatialite/docs.html
