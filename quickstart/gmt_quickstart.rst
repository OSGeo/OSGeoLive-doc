:Author: Hamish Bowman
:Version: osgeo-live4.0
:License: Creative Commons

.. _gmt-quickstart:
 
.. image:: images/project_logos/logo-GMT.gif
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://gmt.soest.hawaii.edu

**************
GMT Quickstart
**************

Running
=======

Included on this LiveDVD are the GMT documentation (HTML and PDF),
example scripts (including a low resolution worldwide coastline),
tutorial (HTML and PDF), and data sets for the tutorial.

HTML and PDF documentation and tutorial can be found in
 `/usr/share/doc/gmt/html/ <file:///usr/share/doc/gmt/html/index.html>`_,
examples can be found in
 `/usr/share/doc/gmt-examples/examples/ <file:///usr/share/doc/gmt-examples/examples/>`_,
and tutorial data can be found in
 `/usr/share/doc/gmt-tutorial/tutorial/ <file:///usr/share/doc/gmt-tutorial/tutorial/>`_.

The low resolution coastline can be found in /usr/share/gmt/coast/.

.. packages:
  gmt-doc (and -pdf)
  gmt-coast-low
  gmt-examples 
  gmt-tutorial (and -pdf)


Examples
~~~~~~~~

There are 29 example jobs built in, and a script to run them all:

Open a terminal, then
::
  cp -r /usr/share/doc/gmt-examples/examples/ gmt-examples
  cd gmt-examples/
  ./do_examples.sh

[whiz .. bang .. whirl]

View results: (type 'q' to quit gv)
::
  for PLOT in `find . -name *.ps` ; do
     echo "$PLOT"
     gv "$PLOT"
  done
