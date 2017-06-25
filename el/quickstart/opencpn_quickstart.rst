:Author: Hamish Bowman
:Version: osgeo-live4.0
:License: Creative Commons

.. image:: /images/project_logos/logo-opencpn.png
  :scale: 75 %
  :alt: project logo
  :align: right
  :target: http://www.opencpn.org

*************************************
Εγχειρίδιο Γρήγορης Εκκίνησης OpenCPN 
*************************************

Εκτέλεση
========

Ρυθμίστε τους χάρτες σας
~~~~~~~~~~~~~~~~~~~~~~~~
Πριν εκτελέσετε το OpenCPN από το LiveDVD πρέπει να ενεργοποιήσετε τα παραδείγματα.
Για να το κάνετε ανοίξτε ένα τερματικό και εκτελέστε
"`opencpn_noaa_agreement.sh`". Το συνθηματικό του χρήστη δίνεται στο αρχείο στην επιφάνεια εργασίας.

Μπορείτε να κατεβάσετε πρόσθετους αμερικανικούς ναυτικούς χάρτες NOAA
από την διεύθυνση http://www.charts.noaa.gov


Ρυθμίστε το GPS σας
~~~~~~~~~~~~~~~~~~~
Εάν έχετε ένα GPS συνδεδεμένο και θέλετε να εκινήσετε το gpsd
εκτελέστε:

::

  sudo dpkg-reconfigure gpsd

και

::

  sudo /etc/init.d/gpsd start

οι χρήστες GPS μέσω BlueTooth θα πρέπει επιπλεόν να διαβάσουν
σχετικά με την επιλογή no-probe. (Αυτός είναι ο λόγος που η gpsd
δεν ενεργοποιείται αυτόματα)

* Το '`xgps`' είναι ένα καλό πρόγραμμα για τον έλεγχο της λειτουργίας GPS.


Τεκμηρίωση
==========

* Η τεκμηρίωση είναι διαθέσιμη
  από `Help menu <../../opencpn/doc/help_en_US.html>`_, ή
  online στην διεύθυνση http://www.opencpn.org/docwiki

* Επιπλέον `Getting started tips <../../opencpn/doc/tips.html>`_
