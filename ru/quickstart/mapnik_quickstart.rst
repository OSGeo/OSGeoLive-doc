:Author: OSGeo-Live
:Author: Dane Springmeyer
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-mapnik.png
  :scale: 80 %
  :alt: project logo
  :align: right

Начало работы с Mapnik
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Mapnik** представляет собой библиотеку картографического рендеринга, главной
задачей которой является создание красивых карт. Эта легко расширяемая
и удобная в использовании библиотека может быть использована при
разработке как настольных, так и веб-приложений.


Mapnik и Python
--------------------------------------------------------------------------------

Mapnik и его питоновские биндинги установлены и готовы к использованию на
данном диске.

Для создания тестовой карты с использованием Mapnik наберите в командной
строке `python` и введите следующую последовательность команд::

    >>> import mapnik, os
    >>> m = mapnik.Map(600,400)
    >>> style = '/usr/local/share/mapnik/demo/population.xml'
    >>> mapnik.load_map(m,style)
    >>> m.zoom_all()
    >>> mapnik.render_to_file(m,'map.png')
    >>> os.system('xdg-open map.png')


.. note::
    
      Вышеприведённый код задействует XML-файл, содержащий описание
      слоёв и используемых стилей карты. Вы можете создать такой файл в QGIS,
      воспользовавшись плагином Quantumnik: http://bitbucket.org/springmeyer/quantumnik/.


Mapnik и OpenLayers
--------------------------------------------------------------------------------

На данном диске также доступен пример, иллюстрирующий использование
**Mapnik** для создания тайлов согласно схеме, применяемой в OSM/Google, в связке
с приложением на базе OpenLayers.

Данный пример использует тайловый сервер **TileLite**, разработанный специально для
Mapnik.

  * Дополнительную информацию о TileLite можно найти по адресу: http://bitbucket.org/springmeyer/tilelite/

Для запуска примера выполните следующие шаги:

  #. Выберите :menuselection:`Desktop --> Spatial Tools --> Start Mapnik & TileLite`

    * Сервер должен запуститься в терминальном окне (которое, оставаясь открытым,
      выводит различную отладочную информацию).
        
    * Если терминальное окно не открывается, попробуйте переустановить
      TileLite и запустить его из командной строки::
      
        $ sudo easy_install tilelite
        $ liteserv.py /usr/local/share/mapnik/demo/population.xml


  #. Чтобы убедиться в том, что сервер запущен, перейдите на страницу приветствия
     TileLite, расположенную по адресу http://localhost:8012

  #. Затем перейдите на страницу примера TileLite OpenLayers "World Population":
    
    * Эта страница расположена по адресу `http://localhost/mapnik/local.html <../../mapnik/local.html>`_


Что дальше?
--------------------------------------------------------------------------------

* Руководства Mapnik

  Изучите руководства_, чтобы узнать подробнее о Mapnik.

.. _руководства: http://trac.mapnik.org/wiki/MapnikTutorials

* Изучите файлы на DVD

  Файлы доступны здесь_.

.. _здесь: file:///usr/local/share/mapnik/
