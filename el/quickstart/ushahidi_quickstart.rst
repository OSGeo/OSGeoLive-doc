:Author: Henry Addo
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _ushahidi-quickstart:

.. image:: ../../images/project_logos/logo-ushahidi.png
  :scale: 100 %
  :alt: project logo
  :align: right 

Εγχειρίδιο Γρήγορης Εκκίνησης Ushahidi 
======================================

Ο οδηγός αυτός περιγράφει:

* Την εκτέλεση και ανάπτυξη Ushahidi 

Εκτέλεση/Ανάπτυξη Ushahidi
--------------------------

1. Εκτελέστε το Ushahidi από το εικονίδιο στην επιφάνεια εργασίας ή από την επιλογή στο μενού που ανοίγει τον διαδικτυακό περιηγητή
   και σας παρουσιάζει την σελίδα εγκατάστασης. Είναι σχετικά εύκολο να αναπτύξετε έναν ιστοχώρο Ushahidite

.. image:: ../../images/screenshots/1024x768/ushahidi-drc-screenshot.png
  :scale: 50 %
  :alt: ushahidi desktop icons
  :align: center 

2. Επιλέξτε **"Basic Installation"**, **"Let's get started"**, και θα σας ρωτήσει
   κάποιες λεπτομέρειες. Το όνομα της βάσης είναι **"ushahidi"**, το όνομα
   χρήστη είναι **"user"** και το συνθηματικό **"user"**. Η βάση φιλοξενείται στον
   **"localhost"**. Συνεχίστε. Στην σελίδα ρυθμίσεων *General* επιλέξτε ένα
   όνομα για τον ιστοχώρο σας κάτι σαν **OSGeo demo** και αν θέλετε
   επιπρόσθετα ταμπέλα επικεφαλίδας. Το email απαιτείται για την λήψη
   αυτόματων καταχωρήσεων οι οποίες θα υποστούν επεξεργασία και αφού μπουν
   στο χάρτη και την βάση θα αποστείλουν αυτόματα αναφορές. Προς το παρόν επιλέξτε
   κάτι σαν το **"ushahidi@localhost.localdomain"** ή **"ushahidi@example.org"** και
   στην συνέχεια **"Continue"**. 

.. image:: ../../images/screenshots/1024x768/ushahidi_installer_mode_screenshot.png
  :scale: 50 %
  :alt: mapguide desktop icons
  :align: center

3. Αφού γίνουν τα παραπάνω θα σας απαντήσει το σύστημα οτι η εγκατάσταση έγινε με
   επιτυχία και θα σας δώσει έναν σύνδεσμο να δείτε τον ιστοχώρο σας 'View your website'.

.. image:: ../../images/screenshots/1024x768/ushahidi_installer_finished_screenshot.png
  :scale: 50%
  :alt: ushahidi installer finishes
  :align: center
 
4. Για να κάνετε αλλαγές στην `administration area <http://localhost/ushahidi/admin>`_, 
   επιλέξτε ως χρήστη **"admin"** και συνθηματικό επίσης **"admin"**. 
   Για παράδειγμα στην σελίδα ρυθμίσεων επιλέξτε **"Settings"**
   (πάνω δεξιά) και μετά την καρτέλα **"Map"** και αλλάξτε τον πάροχο 
   **"Map provider"** σε OpenStreetMaps (προφανώς δεν απαιτείται κανένα κλειδί αφού είναι
   Ανοιχτά δεδομένα :-) ).

.. image:: ../../images/screenshots/1024x768/ushahidi_admin_login_screenshot.png
   :scale: 50%
   :alt: ushahidi admin login
   :align: center

Η σελίδα ρυθμίσεων README είναι διαθέσιμη τοπικά στο αρχείο `/var/www/ushahidi/readme.html <../../ushahidi/readme.html>`_ .
