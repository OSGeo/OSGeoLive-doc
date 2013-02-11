:Author: Hamish Bowman
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation
:Translator: Luca Delucchi

.. image:: ../../images/project_logos/logo-GMT.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://gmt.soest.hawaii.edu

********************************************************************************
Guida rapida su GMT
********************************************************************************

Eseguirlo
================================================================================

Incluso sul Live DVD c'è la documentazione GMT (HTML e PDF),
script di esempio (incluso una linea di costa mondiale a bassa risoluzione),
tutorial (HTML e PDF), e i set di dati per i tutorial.

La documentazione HTML e PDF e i tutorial possono essere trovati in
  `/usr/share/doc/gmt/html/ <../../gmt/html/index.html>`_,
esempi possono essere trovati in
  `/usr/share/doc/gmt-examples/examples/ <../../gmt-examples/examples/>`_,
e i dati dei tutorial possono essere trovati in
  `/usr/share/doc/gmt-tutorial/tutorial/ <../../gmt-tutorial/tutorial/>`_.

linea di costa mondiale a bassa risoluzione può essere trovate in :file:`/usr/share/gmt/coast/`.

.. packages:
  gmt-doc (and -pdf)
  gmt-coast-low
  gmt-examples 
  gmt-tutorial (and -pdf)


Esempi
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ci sono 30 esempi funzionanti, e uno script per eseguirli tutti:

Aprite un terminale, quindi

::

  cp -r /usr/share/doc/gmt-examples/examples/ gmt-examples
  cd gmt-examples/
  ./do_examples.csh

`[whiz .. bang .. whirl]`

Visualizzare i risultati: (con :command:`gv` [#gv]_, digitate :kbd:`q` per uscire)

::

  for PLOT in *.ps ; do
     echo "$PLOT"
     gv "$PLOT"
  done

.. Rubric:: Footnotes
.. [#gv] Ghostview  http://www.gnu.org/software/gv/
