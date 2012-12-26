:Author: Hamish Bowman
:Translator: Milena Nowotarska, OSGeo
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: ../../images/project_logos/logo-GMT.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://gmt.soest.hawaii.edu

********************************************************************************
Wprowadzenie do GMT
********************************************************************************

Jak zacząć
================================================================================

Na tym LiveDVD jest dokumentacja GMT (HTML i PDF),
przykładowe skrypty (oraz linia brzegowa świata w niskiej rozdzielczości),
ćwiczenia (HTML i PDF) oraz zestaw danych do ćwiczeń.

Dokumentacja i ćwiczenia HTML i PDF znajdują się tu
  `/usr/share/doc/gmt/html/ <../../gmt/html/index.html>`_,
przykłady są tu
  `/usr/share/doc/gmt-examples/examples/ <../../gmt-examples/examples/>`_,
dane do ćwiczeń znajdziesz tu
  `/usr/share/doc/gmt-tutorial/tutorial/ <../../gmt-tutorial/tutorial/>`_.

Linię brzegową niskiej rozdzielczości znajdziesz tu :file:`/usr/share/gmt/coast/`.

.. packages:
  gmt-doc (and -pdf)
  gmt-coast-low
  gmt-examples 
  gmt-tutorial (and -pdf)


Przykłady
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Znajdziesz 29 gotowych przykładów i skrypt do ich uruchomienia:

Otwórz terminal, potem

::

  cp -r /usr/share/doc/gmt-examples/examples/ gmt-examples
  cd gmt-examples/
  ./do_examples.csh

`[whiz .. bang .. whirl]`

Zobacz rezultaty: (within :command:`gv` [#gv]_, type :kbd:`q` to quit)

::

  for PLOT in *.ps ; do
     echo "$PLOT"
     gv "$PLOT"
  done

.. Rubric:: Footnotes
.. [#gv] Ghostview  http://www.gnu.org/software/gv/
