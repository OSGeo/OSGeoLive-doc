:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Version: osgeo-live4.0
:License: Creative Commons

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/sos

******************************************
Εγχειρίδιο Γρήγορης Εκκίνησης 52°North SOS
******************************************

Ξεκινώντας
==========

Το λογισμικό 52°North SOS υλοποιεί μια υπηρεσία δικτύου, η οποία σας επιτρέπει να παρέχετε και να συλλέγετε χωρικά δεδομένα από αισθητήρες (συμπεριλαμβανομένων των μεταδεδομένων και των μετρήσεων/παρατηρήσεων).


1) Πηγαίνετε στο :menuselection:`Geospatial --> Web Services --> Start 52North SOS` για να ξεκινήσετε το 52°North SOS ή χρησιμοποιήστε το από το `συνδεσμο <http://localhost:8080/52nSOSv3.1.1/>`_. (Εάν η υπηρεσία δεν είναι διαθέσιμη, δοκιμάστε να ξεκινήσετε την υπηρεσία Tomcat servlet ακολουθώντας τα βήματα στο κάτω μέρος της σελίδας.) 


2) Ο περιηγητής Firefox θα ανοίξει στην δοκιμαστική εφαρμογή 52°North SOS (δείτε Εικόνα 1):

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_start.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS test client
  :align: center
  
**Εικόνα 1**: Δοκιμαστική εφαρμογή 52°North SOS  
  
3) Προκειμένου να ξεκινήσετε με το SOS, επιλέξτε το αίτημα **GetCapabilities_allSections.xml** [1] από την πτυσσόμενη λίστα δίπλα στο "Request Examples".


4) Πατήστε το κουμπί **Send** [2] και το αίτημά σας θα μεταδοθεί στο 52°North SOS. Ως αποτέλεσμα επιστρέφει ένα XML αρχείο (δείτε Εικόνα 2), το οποίο εμφανίζει τις δυνατότητες (Capabilities) του SOS (διαθέσιμα δεδομένα, μεταδεδομένα υπηρεσίας...).

.. image:: ../../images/screenshots/1024x768/52n_sos_response.png
  :scale: 70 %
  :alt: screenshot of 52°North SOS output - GetCapabilities response encoded in XML
  :align: center
  
**Εικόνα 2**: 52°North SOS - απάντηση αιτήματος GetCapabilities (σε μορφή XML)
  
5) Προκειμένου να χτίσετε τα δικά σας αιτήματα, θα χρειαστείτε τις `δυνατότητες του 52°North SOS <http://localhost:8080/52nSOSv3.1.1/sos?REQUEST=GetCapabilities&SERVICE=SOS&ACCEPTVERSIONS=1.0.0>`_. Χρησιμοποιώντας αυτή την είσοδο, μπορείτε να επεξεργαστείτε τα παρεχόμενα αιτήματα από μια δοκιμαστική εφαρμογή. Απλά επιλέξτε τα από το πτυσσόμενο μενού.


Πρόσθετες πληροφορίες
===================================================================================================

Προκειμένου να μάθετε περισσότερα σχετικά με το 52°North SOS ή την 52°North, τα σημεία ενημέρωσης είναι:

* :doc:`η περίληψη 52°North SOS <../overview/52nSOS_overview>`,
* η λίστα ηλεκτρικού ταχυδρομίου 52°North Sensor: swe@52north.org, 
* το forum `Sensor Web <http://sensorweb.forum.52north.org/>`_, 
* η κεντρική ιστοσελίδα `52°North SOS <http://52north.org/communities/sensorweb/sos/>`_, ή 
* η διαδικτυακή διεύθυνση `κοινότητας 52°North Sensor Web <http://52north.org/communities/sensorweb/>`_.
* Όταν το SOS δεν είναι διαθέσιμο, παρακαλείσθε να ελέγξετε εάν η υπηρεσία tomcat servlet τρέχει χρησιμοποιώντας την ακόλουθη εντολή:

::

  user@osgeolive:~$ sudo /etc/init.d/tomcat6 status
  * Tomcat servlet engine is running with pid 1234          <-- Tomcat is running
  [...]
  * Tomcat servlet engine is not running.                   <-- Tomcat not runing, so please start:
  user@osgeolive:~$ sudo /etc/init.d/tomcat6 start
  * Starting Tomcat servlet engine tomcat6           [ OK ] <-- Tomcat is running, now
  
**Listing 1:** Tomcat Status and Start (password for sudo: user)

* Η ανάπτυξη αυτής της έκδοσης του 52°North SOS χρηματοδοτήθηκε από το Ευρωπαικό Πρόγραμμα FP7 `EO2HEAVEN <http://www.eo2heaven.org/>`_ 
  (συγχρηματοδότηση από την Ευρωπαική Κοινότητα με αριθμό έγκρισης 244100):

.. image:: ../../images/project_logos/logo_52North_other_200px.png
  :scale: 100 %
  :alt: EO2HEAVEN - Earth Observation and ENVironmental Modeling for the Mitigation of HEAlth Risks
  :align: center
  :target: http://www.eo2heaven.org/

