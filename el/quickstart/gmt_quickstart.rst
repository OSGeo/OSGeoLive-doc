:Author: Hamish Bowman
:Version: osgeo-live4.0
:License: Creative Commons

.. _gmt-quickstart:
 
.. image:: ../../images/project_logos/logo-GMT.gif
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://gmt.soest.hawaii.edu

*********************************
Εγχειρίδιο Γρήγορης Εκκίνησης GMT
*********************************

Εκτέλεση
========

Σε αυτό το LiveDVD περιέχονται: η τεκμηρίωση GMT (HTML και PDF),
παραδείγματα (περιλαμβανομένης της παγκόσμιας ακτογραμμής σε χαμηλή ανάλυση),
εγχειρίδιο εκμάθησης (HTML και PDF) και δεδομένα για να το εκτελέσετε.

Η τεκμηρίωση και το εγχειρίδιο είναι στην θέση
 `/usr/share/doc/gmt/html/ <../../gmt/html/index.html>`_,
τα παραδείγματα στην θέση
 `/usr/share/doc/gmt-examples/examples/ <file:///usr/share/doc/gmt-examples/examples/>`_,
και τα δεδομένα του εγχειριδίου στην θέση
 `/usr/share/doc/gmt-tutorial/tutorial/ <file:///usr/share/doc/gmt-tutorial/tutorial/>`_.

Η χαμηλής ανάλυσης ακτογραμμή είναι στην θέση /usr/share/gmt/coast/.

.. packages:
  gmt-doc (και -pdf)
  gmt-coast-low
  gmt-examples 
  gmt-tutorial (και -pdf)


Παραδείγματα
~~~~~~~~~~~~

Υπάρχουν 29 παραδείγματα ενσωματωμένα, και με αυτό το script μπορείτε να τα εκτελέσετε όλα: 

σε ένα τερματικό εκτελέστε:

::

  cp -r /usr/share/doc/gmt-examples/examples/ gmt-examples
  cd gmt-examples/
  ./do_examples.sh

`[whiz .. bang .. whirl]`

Δείτε τα αποτελέσματα με: (πατήστε  'q' για έξοδο από το gv)

::

  for PLOT in `find . -name *.ps` ; do
     echo "$PLOT"
     gv "$PLOT"
  done


