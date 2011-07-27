:Author: Johan Van de Wauw
:Version: osgeo-live4.0
:License: Creative Commons

.. _mapserver-quickstart:

.. image:: ../../images/project_logos/logo-mapserver-new.png
  :scale: 65 %
  :alt: Project logo
  :align: right
  :target: http://mapserver.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


***************************************
Εγχειρίδιο Γρήγορης Εκκίνησης MapServer
***************************************

Ο MapServer είναι ένα 'λογισμικό ανοικτού κώδικα <http://www.opensource.org>`_ απόδοσης γεωγραφικών δεδομένων. Σας επιτρέπει να δημιουργήσετε "εικόνες γεωγραφικών χαρτών".

Αυτό το εγχειρίδιο περιγράφει πώς να:
     
  *Δημιουργήσετε ένα αρχείο χάρτη (mapfile)
  *Οπτικοποιήσετε ένα χάρτη χρησιμοποιώντας μια Διαδικτυακή Υπηρεσία Διαμοιρασμού Χαρτών(Web Map Service-WMS)
  *Προσθέσετε ένα νέο θεματικό επίπεδο (layer) από ένα shapefile
  *Βελτιώσετε την εμφάνιση ενός θεματικού επιπέδου

Δημιουργώντας ένα mapfile
=========================

Αρχικά, πρόκειται να δημιουργήσουμε ένα mapfile. 

#. Ανοιξτε οποιοδήποτε επεξεργαστή κειμένου (Ο Mousepad είναι ο προεπιλεγμένος επεξεργαστής κειμένου σε αυτό το live dvd: :menuselection:`Applications --> Accessories --> Mousepad`).
#. Δημιουργήστε το αρχείο"mapserver_quickstart.map" στον προσωπικό σας φάκελο: :file:`/home/user/mapserver_quickstart.map`

Το αρχείο θα πρέπει να περιέχει το ακόλουθο περιεχόμενο::

  MAP
    NAME "MAPSERVER QUICKSTART"
    STATUS ON
    EXTENT -137 29 -53 88
    UNITS DEGREE
    SHAPEPATH "/home/user/data/natural_earth/"
    SIZE 800 600
  
    PROJECTION
      "init=epsg:900913" 
    END

    OUTPUTFORMAT
      NAME 'AGG/PNG'
      DRIVER AGG/PNG
    END

    LAYER
      NAME "Admin Countries"
      STATUS DEFAULT
      TYPE POLYGON
      DATA "10m_admin_0_countries"
      CLASS 
        STYLE
          COLOR 246 241 223
          OUTLINECOLOR 0 0 0
        END
      END 
    END

  END

.. note::
   Αυτό οτο παράδειγμα χρησιμοποιεί ένα σύνολο δεδομένων που περιέχει στοιχεία για το φυσικό περιβάλλον της γης, το οποίο είναι προεγκατεστημένο στο live dvd: :file:`~/data/natural_earth` (a short cut to :file:`/usr/local/share/data/natural_earth`)


*Οπτικοποιώντας ένα χάρτη χρησιμοποιώντας μια Διαδικτυακή Υπηρεσία Διαμοιρασμού Χαρτών(Web Map Service-WMS)

Ανοίξτε ένα περιηγητή του παγκόσμιου δικτύου (πχ firefox) και εισάγετε τον ακόλουθο σύνδεσμο::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=AGG/PNG&WIDTH=800&HEIGHT=600

Θα πρέπει να δείτε ένα χάρτη της βόρειας αμερικής.

  .. image:: ../../images/screenshots/800x600/mapserver_map.png
    :scale: 70 %

*Προσθέτωντας ένα νέο θεματικό επίπεδο (layer) από ένα shapefile

Τώρα πρόκειται να προσθέσουμε ένα νέο θεματικό επίπεδο στο mapfile που ήδη έχουμε. Πριν τη τελευταία δήλωση *END* στο mapfile, προσθέτε τις ακόλουθες ρυθμίσεις για το θεματικό επίπεδο::

 LAYER
   NAME "Lakes"
   STATUS DEFAULT
   TYPE POLYGON
   DATA "10m_lakes"
   CLASS 
     STYLE
       COLOR 153 179 204
     END
   END 
  END
 

Στον περιηγητή σας, προβάλετε το χάρτη χρησιμοποιώντας τον ακόλουθο σύνδεσμο::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries,Lakes&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=AGG/PNG&WIDTH=800&HEIGHT=600

Θα πρέπει τώρα να βλέπετε τον αρχικό χάρτη σε συνδυασμό με τις λίμνες από το νέο θεματικό μας επίπεδο.

  .. image:: ../../images/screenshots/800x600/mapserver_lakes.png
    :scale: 70 %

*Βελτιώνοντας την εμφάνιση ενός θεματικού επιπέδου

Για παράδειγμα πρόκειται να βελτιώσουμε την εμφάνιση του  θεματικού επιπέδου με τις λίμνες. Αυτό το σύνολο δεδομένων περιέχει ένα χαρακτηριστικό που λέγεται *ScaleRank*, το οποίο πιθανότατα σχετίζεται με το μέγεθος της λίμνης. Μεταβάλετε τις ρυθμίσεις του θεματικού επιπέδου ώστε να είναι οι ακόλουθες::

  LAYER
   NAME "Lakes"
   STATUS DEFAULT
   TYPE POLYGON
   DATA "10m_lakes"
   CLASSITEM "ScaleRank" 
   CLASS 
     EXPRESSION /0|1/  
     STYLE
       COLOR 153 179 204
       OUTLINECOLOR 0 0 0
     END
   END 
   CLASS 
     STYLE
       COLOR 153 179 204
     END
   END 

  END

Οι ανωτέρω ρυθμίσεις σχεδιάζουν τις μεγάλες λίμνες με ένα ελαφρύ μπλε με μαύρο περίγραμμα, ενώ όλες οι υπόλοιπες λίμνες σχεδιάζονται με σκούρο μπλε.

  .. image:: ../../images/screenshots/800x600/mapserver_lakes_scalerank.png
    :scale: 70 %

Τι επίκειται;
=============

Αυτό είναι μόλις το πρώτο βήμα στο δρόμο να χρησιμοποιήσετε το MapServer. Υπάρχουν πολλά περισσότερα υλικά (και τεχνογνωσία) αφημένα να τα ανακαλύψετε στη σελίδα μας.

*Δείτε την τεκμηρίωση του MapServer, οδηγούς και παραδείγματα τα οποία είναι διαθέσιμα στο: http://mapserver.org/en/documentation.html
