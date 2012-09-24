:Автор: Jinsongdi Yu (j.yu@jacobs-university.de)
:Автор: Michael Owonibi (o.michael@jacobs-university.de)
:Автор: Peter Baumann (p.baumann@jacobs-university.de)
:Автор: Dimitar Misev (d.misev@jacobs-university.de)
:Версия: osgeo-live6.0
:Лицензия: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-rasdaman.png
  :scale: 100 %
  :alt: Логотип проекта
  :align: right
  :target: http://www.rasdaman.org


********************************************************************************
Начало работы с rasdaman
********************************************************************************

rasdaman — это растровый сервер, позволяющий выполнять запросы к многомерным растровым данным, хранящимся в стандартной реляционной базе данных.

Данное "введение" показывает пример запросов в песочнице из растровых объектов. Перед началом работы сервер должен быть запущен (:menuselection:`Geospatial --> Databases --> Rasdaman --> Start Rasdaman Server`).

Примеры от 1D до 4D
================================================================================

    * Для исследования различных демонстрационных наборов данных, откройте демонстрацию `Earthlook <http://localhost:8080/earthlook/index.php>`_. На OSGeo-Live представлена лишь небольшая часть примеров. Для просмотра более крупных наборов перейдите на `сайт <http://kahlua.eecs.jacobs-university.de/~earthlook/demos/index.php>`_ Earthlook.

Выполнение запросов
================================================================================

    * Откройте консоль и в ней откройте демонстрационную базу данных;
    * используйте утилиту :command:`rasql` для выполнения запросов и получения результатов, например::

      $ rasql -q "select png((char)(c.red / (c.red + c.green) - c.green / (c.red + c.green)) > 0.6 * 255) from rgb AS c" --out file

    * воспользуйтесь любой программой для просмотра изображений, чтобы открыть сгенерированный файл.


Создайте собственную базу данных
================================================================================

    * Откройте консоль;
    * загрузите и установите  `rasdaman <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/Download>`_ и необходимые `зависимости <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/RequiredPackages>`_;
    * запустите демонстрационный скрипт загрузки данных::

      $ install_demo.sh

    * используйте утилиту :command:`rasql` для выполнения запросов и получения результатов, например::

      $ rasql -q "select png( NIR ) from NIR" --out file


Что дальше?
================================================================================

    * Исследуйте демонстрационные наборы данных с помощью `руководства <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/browser/manuals_and_examples/manuals/pdf/ql-guide.pdf>`_ по языку запросов *rasql*.
    * Rasdaman основан на стандарте языков OGC `WCPS <http://www.opengeospatial.org/standards/wcps>`_ (Web Coverage Processing Service, сервис обработки геопространственных данных). Для дополнительного изучения данного стандарта начните со страницы `документации и руководств <http://kahlua.eecs.jacobs-university.de/~earthlook/tech/interface-wcps.php>`_.
