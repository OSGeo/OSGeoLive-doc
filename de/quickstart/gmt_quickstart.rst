:Author: Hamish Bowman
:Author: Frank Gasdorf
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
Copyright: (c) 2011 by The OSGeo Foundation

.. image:: ../../images/project_logos/logo-GMT.gif
  :scale: 100 %
  :alt: Projektlogo
  :align: right
  :target: http://gmt.soest.hawaii.edu

********************************************************************************
GMT Quickstart
********************************************************************************

Im Einsatz
================================================================================

Auf dieser LiveDVD ist die GMT Dokumentation (HTML und PDF), 
Beispielskripte (inklusive weltweiter Küstenlinien in niedriger Auflösung) 
sowie ein Tutorial mit zugerhörigen Datensätzen enthalten.

Die Dokumentation als HTML und PDF ist unter 

  `/usr/share/doc/gmt/html/ <../../gmt/html/index.html>`_,

die Beispiele sind im Verzeichnis 

  `/usr/share/doc/gmt-examples/examples/ <../../gmt-examples/examples/>`_ und

die Daten für das Tutorial sind unter 

  `/usr/share/doc/gmt-tutorial/tutorial/ <../../gmt-tutorial/tutorial/>`_

abgelegt.

Die Daten der Küstenlinien mit geringer Genauigkeit finden sie unter :file:`/usr/share/gmt/coast/`.

.. packages:
  gmt-doc (und -pdf)
  gmt-coast-low
  gmt-examples 
  gmt-tutorial (und -pdf)


Beispiele
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Es sind 29 Beispiel-Jobs vorhanden, die alle über ein Skript ausgeführt werden können:

Öffnen Sie ein Terminal und geben Sie folgendes ein:

::

  cp -r /usr/share/doc/gmt-examples/examples/ gmt-examples
  cd gmt-examples/
  ./do_examples.sh

Einen kleinen Augenblick wird es dauern ..

Ergebnisse anzeigen: (geben Sie :kbd:`q` ein, um :command:`gv` [#gv]_ zu verlassen)

::

  for PLOT in `find . -name *.ps` ; do
     echo "$PLOT"
     gv "$PLOT"
  done

.. Rubric:: Fußnoten
.. [#gv] Ghostview  http://www.gnu.org/software/gv/
