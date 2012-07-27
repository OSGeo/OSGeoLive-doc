:Author: OSGeo-Live
:Author: Dane Springmeyer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-mapnik.png
  :scale: 80 %
  :alt: project logo
  :align: right

Εγχειρίδιο Γρήγορης Εκκίνησης Mapnik
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Το Mapnik είναι ένα πακέτο για την ανάπτυξη χαρτογραφικών εφαρμογών. Πάνω απ'όλα με το Mapnik φτιάχνουμε όμορφους χάρτες. Είναι εύκολα επεκτάσιμο και κυρίως βολικό τόσο για απλή όσο και δικτυακή χρήση.


Το Mapnik και η Python
----------------------

Το Mapnik και τα εργαλεία python είναι εγκατεστημένα και έτοιμα να χρησιμοποιηθούν για προγραμματισμό.

Η δημιουργία χαρτών στην python με το Mapnik είναι πανεύκολη. Ενεργοποιείστε έναν μεταγλωτιστή της python και εκτελέστε τα ακόλουθα::

    >>> import mapnik, os
    >>> m = mapnik.Map(600,400)
    >>> style = '/usr/local/share/mapnik/demo/population.xml'
    >>> mapnik.load_map(m,style)
    >>> m.zoom_all()
    >>> mapnik.render_to_file(m,'map.png')
    >>> os.system('xdg-open map.png')


.. note::
    
      Στον παραπάνω κώδικα προϋποθέτεθ ένα XML stylesheet το οποίο να είναι αναγνώσιμο από το Mapnik,
      να ορίζει τα επίπεδα, να διαβάζει τα δεδομένα και επιπλέον να τα εφαρμόζει σε αυτά. Μπορείτε να
      φτιάξετε ένα από το περιβάλλον QGIS με το πρόσθετο Quantumnik: http://bitbucket.org/springmeyer/quantumnik/


Το Mapnik και τα OpenLayers
---------------------------

Είναι επιπρόσθετα διαθέσιμη μία εφαρμογή επίδειξης, η οποία παρουσιάζει την χρήση του Mapnik στην ανάρτηση υποχαρτών(tiles) σε έναν διαδυκτιακό χάρτη OpenLayers στην μορφή OSM/Google.

Η εφαρμοφή αυτή χρησιμοποιεί την μηχανή "TileLite" η οποία είναι σχεδιασμένη για το Mapnik

  * Περισσότερα για το TileLite στην διεύθυνση: http://bitbucket.org/springmeyer/tilelite/

Για να εκτελέσετε την επίδειξη ακολουθείστε τα ακόλουθα βήματα:

  #. Click :menuselection:`Desktop --> Spatial Tools --> Start Mapnik & TileLite`

    * Ο server θα ξεκινήσει σε ένα τερματικό το οποίο παραμένει ανοιχτό και εμφανίζει τυχόν μηνύματα εκσφαλμάτωσης.
        
    * Αν δεν εμφανιστεί το τερματικό θα πρέπει να επαναεγκατασταθεί το TileLite και να εκκινηθεί ο sever από την γραμμή εντολών::
      
        $ sudo easy_install tilelite
        $ liteserv.py /usr/local/share/mapnik/demo/population.xml


  #. Βεβαιωθείτε οτι ο server λειτουργεί επισκοπτόμενοι την σελίδα του TileLite στην διεύθυνση http://localhost:8000

  #. Στην συνέχεια επικσεφτείτε το παράδειγμα του TileLite OpenLayers "World Population":
    
    * στο αρχείο:///usr/local/share/mapnik/local.html


Τεκμηρίωση
----------

* Εγχειρίδια Mapnik 

  Ακολουθείστε τον σύνδεσμο tutorials_ για να μάθετε περισσότερα για το Mapnik.

.. _tutorials: http://trac.mapnik.org/wiki/MapnikTutorials

* Εξερευνήστε τα αρχεία στο DVD

  Δείτε τα ακόλουθα αρχεία files_ σε αυτό το DVD.

.. _files: file:///usr/local/share/mapnik/
