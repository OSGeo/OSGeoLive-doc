:Author: Howard Butler
:Contact: hobu.inc at gmail dot com
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-libLAS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://liblas.org/

********************************************************************************
Εγχειρίδιο Γρήγορης Εκκίνησης libLAS
********************************************************************************

.. contents::
    :depth: 3
    :backlinks: none

Εκτέλεση
--------------------------------------------------------------------------------

Το εργαλείο τερματικού libLAS προμηθεύει μια πληθώρα από εύχρηστα λειτουργικά λογισμικά για το libLAS, αν και η θεμελιώδης libLAS βιβλιοθήκη δίνει πολλές δυνατότητες για αυτά. Παρακάτω παρουσιάζεται μια λίστα με τις βασικές λειτουργίες, που μπορεί να χρειαστείτε για εφαρμογή σε LAS δεδομένα, τις χρήσεις και τις προσεγγίσεις για την ολοκλήρωση των συγκεκριμένων θεμάτων.


Πραγματοποιώντας ορθή προβολή ενός αρχείου LAS
..............................................................................

Όλα τα LAS δεδομένα είναι σε ένα σύστημα συντεταγμένων, ακόμα και αν το σύστημα αυτό δεν αναφέρεται στο αρχείο LAS. Για τα LAS δεδομένα που αφορούν την γή, οι περιγραφές του συστήματος συνταταγμένων συχνά αποτυπώνονται σε ένα σύστημα που περιγράφεται από το `EPSG`_ database. Άλλη πηγή πληροφοριών σχετικά με τα συστήματα συντεταγμένων μπορεί να βρεθεί στο http://spatialreference.org. 


::
    
    lasinfo --no-check srs.las

.. σημείωση::

    Η επιλογή --no-check ορίζει στο lasinfο να εκτυπώσει μόνο τις επικεφαλίδες των πληροφοριών του αρχείου και να μην σαρώσει όλα τα σημεία. Για ένα αρχείο που περιέχει μόνο 10 σημεία δεν έχει μεγάλη σημασία, αλλά για ένα αρχείο με 50 και 500 χιλιάδες σημεία δεν αξίζει η αναμονή για την πλήρη σάρωση όλων των σημείων εάν αρκούν οι πληροφορίες από την επικεφαλίδα του αρχείου.
 
To 'lasinfo' ορίζει ότι το αρχείο ``srs.las`` είναι στο σύστημα συντεταγμένων UTM North Zone 17:

::

    PROJCS["WGS 84 / UTM zone 17N",
        GEOGCS["WGS 84",
            DATUM["WGS_1984",
                SPHEROID["WGS 84",6378137,298.257223563,
                    AUTHORITY["EPSG","7030"]],
                AUTHORITY["EPSG","6326"]],
            PRIMEM["Greenwich",0],
            UNIT["degree",0.0174532925199433],
            AUTHORITY["EPSG","4326"]],
        PROJECTION["Transverse_Mercator"],
        PARAMETER["latitude_of_origin",0],
        PARAMETER["central_meridian",-81],
        PARAMETER["scale_factor",0.9996],
        PARAMETER["false_easting",500000],
        PARAMETER["false_northing",0],
        UNIT["metre",1,
            AUTHORITY["EPSG","9001"]],
        AUTHORITY["EPSG","32617"]]

Τώρα που είναι γνωστό το σύστημα συντεταγμένων που εισάγεται, μπορεί να παρθεί η απόφαση σε τι θα προβληθούν τα δεδομένα. Στο πρώτο παράδειγμα, θα χρησιμοποιηθεί το σύστημα Plate Carrée μη-συντεταγμένων `EPSG:4326`_.

::

    las2las srs.las --t_srs EPSG:4326

Η όλη διαδικασία ολοκληρώθηκε, αλλά μετά από μια γρήγορη επιθεώρηση των δεδομένων με το ``lasinfo output.las`` παρατηρήθηκε το πρόβλημα:

::

    ...
    Scale Factor X Y Z:          0.01 0.01 0.01
    Offset X Y Z:                -0.00 -0.00 -0.00
    ...
    Min X, Y, Z: 		-83.43, 39.01, 170.58, 
    Max X, Y, Z: 		-83.43, 39.01, 170.76,

Το αρχείο ``srs.las`` είχε κλίμακα 0.01, ή δύο δεκαδικά ψηφία ακρίβεια για τις συντεταγμένες X, Y και Z. Για τα UTM δεδομένα, αυτό αρκεί, καθώς υποδηλώνει μια υπονοούμενη ακρίβεια του 1 cm. Για τα δεκαδικά δεδομένα του Plate Carrée συστήματος συντεταγμένων, το γεγονός αυτό μας κάνει να χάσουμε ακρίβεια. Πρέπει λοιπόν να οριστεί η τιμή της κλίμακας σε κάτι που έχει μεγαλύτερη ακρίβεια, στην περίπτωσή μας:

::

    las2las --t_srs EPSG:4326 srs.las --scale 0.000001 0.000001 0.01

Μια άλλη γρήγορη επισκόπηση στο 'lasinfo' μας δίνει κάτι με το οποίο είμαστε πιο εξοικειωμένοι:

::

    ...
    Scale Factor X Y Z:          0.000001 0.000001 0.01
    Offset X Y Z:                -0.000000 -0.000000 -0.00
    ...
    Min X, Y, Z: 		-83.427598, 39.012599, 170.58
    Max X, Y, Z: 		-83.427548, 39.012618, 170.76    


Αποτέλεσμα του LAS αρχείο στο κείμενο
..............................................................................


::

    las2txt input.las --parse xyzti

.. _`LASzip`: http://laszip.org
.. _`CMake`: http://www.cmake.org/
.. _`CTest`: http://cmake.org/cmake/help/ctest-2-8-docs.html
.. _`CMake 2.8.0+`: http://www.cmake.org/cmake/help/cmake-2-8-docs.html
.. _`CDash`: http://www.cdash.org/
.. _`continuous integration`: http://en.wikipedia.org/wiki/Continuous_integration
.. _`libLAS CDash`: http://my.cdash.org/index.php?project=libLAS
.. _`Curses`: http://en.wikipedia.org/wiki/Curses_%28programming_library%29
.. _`Autoconf`: http://www.gnu.org/software/autoconf/
.. _`LLVM`: http://llvm.org/
.. _`OSGeo4W`: http://trac.osgeo.org/osgeo4w/
.. _`Boost`: http://www.boost.org/
.. _`DebianGIS`: http://wiki.debian.org/DebianGis
.. _`gdal_translate`: http://www.gdal.org/gdal_translate.html
.. _`EPSG`: http://www.epsg-registry.org/
.. _`EPSG:4326`: http://spatialreference.org/ref/epsg/4326/
.. _`Proj.4`: http://trac.osgeo.org/proj/
.. _`WKT`: http://en.wikipedia.org/wiki/Well-known_text#Spatial_reference_systems
.. _`GDAL`: http://gdal.org
.. _`Autzen_Stadium`: http://liblas.org/samples/Autzen_Stadium.zip
