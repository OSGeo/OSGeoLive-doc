:Author: Hamish Bowman
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: ../../images/project_logos/logo-GMT.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://gmt.soest.hawaii.edu

********************************************************************************
GMT Quickstart
********************************************************************************

Running
================================================================================


Local documentation can be found in
  `/usr/share/doc/gmt/html/ <../../gmt/html/index.html>`_,
examples can be found in
  `/usr/share/doc/gmt/examples <../../gmt/examples/>`_,


.. packages:
  gmt-doc (and -pdf)
  gmt-coast-low
  gmt-examples 
  gmt-tutorial (and -pdf)


Examples
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are 30 example jobs built in:

Open a terminal, then

::

  cp -R /usr/share/doc/gmt/examples gmt-examples
  cd gmt-examples/ex20
  ./example_20.sh

`[whiz .. bang .. whirl]`

View results: (within :command:`gv` [#gv]_, type :kbd:`q` to quit)

::

  gv example_20.ps

.. Rubric:: Footnotes
.. [#gv] Ghostview  http://www.gnu.org/software/gv/
