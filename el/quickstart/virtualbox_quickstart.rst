:Συγγραφέας: OSGeo-Live
:Συγγραφέας: Cameron Shorter
:Έκδοση: osgeo-live4.0
:Άδεια: Creative Commons

.. _virtualbox-quickstart:
 
*************************************
Εγχειρίδιο Γρήγορης Εκκίνησης OSGeo-Live για το Virtual Box
*************************************

Σε αυτό το κείμενο περιγράφουμε μια μέθοδο να τρέξετε το DVD ή ένα ISO αρχείο του OSGeo-Live DVD σε μια εικονική μηχανή `VirtualBox <http://www.virtualbox.org/>`_.

Το VirtualBox είναι ένα Ελεύθερο Λογισμικό εικονικών μηχανών (virtual machines) το οποίο χρησιμοποιείται από πολλούς προγραμματιστές και δοκιμαστές του OSGeo-Live.

Απαιτήσεις συστήματος
-------------------

* Μνήμη RAM: 1 Gig, με προτίμηση τα 2Gig εφόσον θέλετε να εκτελέσετε και άλλες εφαρμογές μέσα στη μηχανή
* Διαθέσιμο χώρο σκηρού δίσκου:
 * 5 Gig εαν εκτελείτε από αρχείο ISO
 * 17 Gig εαν εγκαταστήσετε τοπικά από αρχείο ISO

Δημιουργία Εικονικής Μηχανής
------------------------
Κατεβάστε και εγκαταστήστε το `Virtual Box <http://www.virtualbox.org/>`_. Σε λειτουργικό linux (Ubuntu) κάντε το παρακάτω:

  ``apt-get install virtualbox-ose``

Ανοίξτε το Virtual Box 

  .. image:: ../../images/screenshots/800x600/virtualbox.png
    :scale: 70 %

Επιλέξτε "New" για να δημιουργήσετε μια νέα εικονική μηχανή.

  .. image:: ../../images/screenshots/800x600/virtualbox_create_vm.png
    :scale: 70 %

Επιλέξτε "Next"

  .. image:: ../../images/screenshots/800x600/virtualbox_select_name.png
    :scale: 70 %

Δώστε ένα όνομα στη μηχανή σας, και επιλέξτε "Linux", "Ubuntu".

  .. image:: ../../images/screenshots/800x600/virtualbox_memory.png
    :scale: 70 %

Δώστε σαν ποσό μνήμης τουλάχιστο 512 MB.

  .. image:: ../../images/screenshots/800x600/virtualbox_no_hard_disk.png
    :scale: 70 %

Απλή εγκατάσταση: Απενεργοποιήστε την επιλογή "Boot Hard Disk", και η εικονική μηχανή θα ξεκινά συνέχεια από το DVD.

Εαν θέλετε να δημιουργήσετε μόνιμη εικονική μηχανή. η οποία αποθηκεύει τις αλλαγές σε αυτή
και στην οποία μπορείτε να βελτιώσετε τις ρυθμίσεις ανάλυσης της οθόνης
τότε αφήστε ενεργοποιημένο την παραπάνω επιλογή σκληρού δίσκου και εγκαταστήστε αργότερα.

  .. image:: ../../images/screenshots/800x600/virtualbox_warning_no_hard_disk.png
    :scale: 70 %

Επιλέξτε "Continue"

  .. image:: ../../images/screenshots/800x600/virtualbox_final_check.png
    :scale: 70 %

Επιλέξτε "Finish"

  .. image:: ../../images/screenshots/800x600/virtualbox_select_settings.png
    :scale: 70 %

Η εικονική μηχανή έχει δημιουργηθεί, αλλά τώρα χρειαζόμαστε την εξομοίωση ενός DVD OSGeo-Live στο CD-ROM της εικονικής μηχανής.

Κάντε δεξί κλίκ στην εικόνα "osgeo-live", και επιλέξτε "Settings".

  .. image:: ../../images/screenshots/800x600/virtualbox_set_cd.png
    :scale: 70 %

Επιλέξτε "Storage", CD/DVD Device, ...

  .. image:: ../../images/screenshots/800x600/virtualbox_add_dvd.png
    :scale: 70 %

Επιλέξτε το αρχείο του OSGeo-Live.

  .. image:: ../../images/screenshots/800x600/virtualbox_start_vm.png
    :scale: 70 %

Τώρα μπορείτε να ξεκινήσετε την μηχανή όπως περιγράφεται στο :doc:`osgeolive_quickstart`

Δημιουργία μόνιμης εικονικής μηχανής
--------------------------------
Εαν έχετε σκοπό να χρησιμοποιήσετε το OSGeo-Live πολύ, πιθανόν να χρειαστείτε να δημιουργήσετε μια μόνιμη εικονική μηχανή, όπως στο: :doc:`osgeolive_install_quickstart`.

Αύξηση μεγέθους οθόνης
---------------------
Μπορείτε στη συνέχεια να προσθέσετε τα εργαλεία του Virtual Box που υποστηρίζουν την αύξηση της ανάλυσης της οθόνης, 
την αντιγραφή και επικόληση μεταξύ του φυσικού σας μηχανήματος και της εικονικής μηχανής, την επιτάχυνση γραφικών και πολλά άλλα.

Σιγουρευτείτε ότι ο υπολογιστής σας είναι συνδεδεμένος με το διαδίκτυο.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_menu.png
    :scale: 70 %

Επιλέξτε την εφαρμογή synaptic package manager.

Εισάγετε κωδικό "user"

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_select_tools.png
    :scale: 70 %

Επιλέξτε το "virtualbox-ose-guest-utils" για εγκατάσταση.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_apply.png
    :scale: 70 %

Εφαρμοστε τις αλλαγές.

Επανεκκινήστε την εικονική μηχανή και οι ρυθμίσεις της οθόνης σας θα πρέπει να έχουν γίνει αυτόματα. Αυτές μπορούν να γίνουν από:

Επιλογή: Applications -> Settings -> Xfce 4 Settings Manager -> Display

Δείτε ακόμα:
---------

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

