:Author: Hamish Bowman
:Version: osgeo-live4.0
:License: Creative Commons

.. _gmt-quickstart-es:
 
.. image:: ../../images/project_logos/logo-GMT.gif
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://gmt.soest.hawaii.edu

********************************************************************************
Guía de inicio rápido para GMT 
********************************************************************************

Ejecución de GMT
================================================================================

Incluido en este LiveDVD esta la documentación de GMT en formatos (HTML y PDF),
algunos scripts de ejemplo (incluida la línea costera de todo el mundo en baja resolución),
un tutorial en formato (HTML y PDF), y los datos correspondientes del tutorial.

Documentación en HTML y PDF y un tutorial se puede encontrar en
  `/usr/share/doc/gmt/html/ <../../gmt/html/index.html>`_,
Ejemplos se pueden encontrar en
  `/usr/share/doc/gmt-examples/examples/ <../../gmt-examples/examples/>`_,
Los datos del tutorial se puede encontrar en
  `/usr/share/doc/gmt-tutorial/tutorial/ <../../gmt-tutorial/tutorial/>`_.

La línea costera de todo el mundo a baja resolución se puede encontrar en :file:`/usr/share/gmt/coast/`.

.. paquetes:
  gmt-doc (and -pdf)
  gmt-coast-low
  gmt-examples 
  gmt-tutorial (and -pdf)


Ejemplos
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Hay 29 rutinas de ejemplo construidas y un script para ejecutarlas todas:

Abrir una ventana de terminal, y después escribir:

::

  cp -r /usr/share/doc/gmt-examples/examples/ gmt-examples
  cd gmt-examples/
  ./do_examples.sh

`[Abracadabra .. Magia ..]`

Vea los resultados: ( Escriba :kbd:`q` para salir de :command:`gv` [#gv]_ )

::

  for PLOT in `find . -name *.ps` ; do
     echo "$PLOT"
     gv "$PLOT"
  done
  
  
Vea también:
--------------------------------------------------------------------------------

.. [#gv] **Sitio web de GNU GV** - Ghostview  http://www.gnu.org/software/gv/
