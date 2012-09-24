:Author: Hamish Bowman
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: ../../images/project_logos/logo-GMT.gif
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://gmt.soest.hawaii.edu

********************************************************************************
Начало работы с GMT
********************************************************************************

Запуск
================================================================================

OSGeo-Live включает документацию GMT (в форматах HTML и PDF),
скрипты-образцы, пособие по созданию карт в GMT (в форматах 
HTML и PDF), а также наборы данных (мировые береговые линии
и т.д.).

Документация в HTML / PDF и пособие могут быть найдены здесь:
  `/usr/share/doc/gmt/html/ <../../gmt/html/index.html>`_,
примеры могут быть найдены здесь:
  `/usr/share/doc/gmt-examples/examples/ <../../gmt-examples/examples/>`_,
данные для пособия могут быть найдены здесь:
  `/usr/share/doc/gmt-tutorial/tutorial/ <../../gmt-tutorial/tutorial/>`_.

Набор данных по береговым линиям (в низком разрешении) может
быть найден здесь: :file:`/usr/share/gmt/coast/`.

.. пакеты:
  gmt-doc (and -pdf)
  gmt-coast-low
  gmt-examples 
  gmt-tutorial (and -pdf)


Примеры
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

В составе GMT есть 29 скриптов-образцов для выполнения разных задач,
а также скрипт для их запуска. 

Запустите Терминал (командную строку), затем

::

  cp -r /usr/share/doc/gmt-examples/examples/ gmt-examples
  cd gmt-examples/
  ./do_examples.sh

Посмотрим результаты (с помощью команды :command:`gv` [#gv]_, нажмите :kbd:`q` для выхода).

::

  for PLOT in *.ps ; do
     echo "$PLOT"
     gv "$PLOT"
  done

.. Rubric:: Footnotes
.. [#gv] Ghostview  http://www.gnu.org/software/gv/
