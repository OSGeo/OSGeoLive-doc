:Author: OSGeo-Live
:Author: Massimo Di Stefano
:Author: Pirmin Kalberer
:Version: osgeo-live4.0
:License: Creative Commons

.. _ossim-quickstart:
 
.. image:: ../../images/project_logos/logo-ossim.gif
  :scale: 80 %
  :alt: project logo
  :align: right

***********************************
Εγχειρίδιο Γρήγορης Εκκίνησης Ossim 
***********************************

Το λογισμικό Open Source Software Image Map (OOSIM) είναι μια ισχυρή μηχανή επεξεργασίας για τηλεπισκόπηση,
επεξεργασία εικόνας, γεωγραφικό σύστημα πληροφοριών και φωτογραμμετρίας.

Ο οδηγός αυτός περιγράφει πως:

  * να δείτε αρχεία raster με τον imagelinker
  * να εκτελέστε το ossimPlanet

Imagelinker
===========

* Εκκινείστε τον Imagelinker από το εικονξίδιό του στον φάκελο "Spatial Tools" της επιφάνειας εργασίας 
* Επιλέξτε το αρχείο εργασίας, με χρήση :menuselection:`File --> Open Project --> /home/user/ossim/landsatrgb.prj`
* Επιλέξτε :menuselection:`menu bar --> window --> tile`
* Επιλέξτε :menuselection:`image window --> select the pan icon --> click on the image --> press the button "propagate"`
* Βεβαιωθείτε ότι βλέπετε τρεις μονόχρωμες δορυφορικές εικόνες. 

  .. image:: ../../images/screenshots/800x600/ossim_imagelinker2.jpg
     :scale: 100 %

Για το πλήρες εγχειρίδιο δείτε το ακόλουθο `blog article`_.

.. _`blog article`: http://www.geofemengineering.it/GeofemEngineering/Blog/Voci/2010/3/15_OSGEO_-_Live_-_DVD_-_%22running_imagelinker%22.html


OssimPlanet
===========

* Εκκινείστε το OssimPlanet από το εικονίδιό του στον φάκελο "Desktop-GIS" στην επιφάνεια εργασίας 

* Επιλέξτε :menuselection:`File --> Open Image --> /home/user/data/raster/band1.tiff`

* Επιλέξτε :menuselection:`menu --> Open kml --> /home/user/data/raster/*.kml`

* Επιλέξτε :menuselection:`legend tree --> Image Layers --> open the trees --> double-click on the band1 image`,
και θα δείτε την σκηνή στην περιοχή της εικόνας

* Πλοηγηθείτε στην σκηνή αυτή.


`Note`: Για να κλείσετε την λειτουργία daylight auto-shading, αποεπιλέξτε :menuselection:`Preferences --> Environment --> Enable Ephemeris`


Τεκμηρίωση
==========

* Εγχειρίδια Ossim

  Ακολουθείστε το σύνδεσμο tutorials_ για να μέθετε περισσότερα σχετικά με το Ossim.

.. _tutorials: http://download.osgeo.org/ossim/tutorials/pdfs/

* Τεκμηρίωση στο DVD

  Δείτε επίσης την ενσωματωμένη τεκμηρίωση documentation_ σε αυτό το DVD.

.. _documentation: file:///usr/local/share/ossim/

