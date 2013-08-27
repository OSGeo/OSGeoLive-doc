:Author: Dane Springmeyer
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-mapnik.png
  :scale: 80 %
  :alt: project logo
  :align: right

Mapnik 快速入门文档
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　Mapnik 是一套地图服务开发工具，用于产生美观的地图显示。它易于扩展，适用于从桌面到网络的不同应用环境。


Mapnik 与 Python
--------------------------------------------------------------------------------

　　Mapnik 及其 Python 脚本模块都已在 OSGeo Live 预装，可以直接使用。

　　使用 Mapnik 中使用 Python 创建地图服务是非常简单的。在命令行输入 `python` 即可启动 Python 解释器。尝试以下命令：
::

    >>> import mapnik, os
    >>> m = mapnik.Map(600,400)
    >>> style = '/usr/local/share/mapnik/demo/population.xml'
    >>> mapnik.load_map(m,style)
    >>> m.zoom_all()
    >>> mapnik.render_to_file(m,'map.png')
    >>> os.system('xdg-open map.png')


.. note::
    
      　　以上命令要求一个用于定义数据源和渲染样式的 XML 文件。通过 QGIS 的 Quantumnik 插件可以创建该文件： http://bitbucket.org/springmeyer/quantumnik/ 。


Mapnik 与 OpenLayers
--------------------------------------------------------------------------------

　　Live 中包含一个演示服务，采用 OSM/Google 方式将地图切片输出到 OpenLayers 。它使用了一个为 Mapnik 设计的名为 "TileLite" 的切片服务。

  * 有关 TileLite 的信息： http://bitbucket.org/springmeyer/tilelite/

　　要运行演示，请执行以下步骤：

  #. 选择 :menuselection:`Desktop --> Spatial Tools --> Start Mapnik & TileLite` ；

    * 服务器会以一个命令行界面输出运行状态；

    * 如果没有命令行界面显示，通过以下命令执行安装：

::
      
        $ sudo easy_install tilelite
        $ liteserv.py /usr/local/share/mapnik/demo/population.xml


  #. 访问 TileLite 欢迎页面（http://localhost:8012）确认服务正常运行。

  #. 访问 TileLite 的 OpenLayers 示例页面 "World Population" ：
    
    * `http://localhost/mapnik/local.html <../../mapnik/local.html>`_


其它信息
--------------------------------------------------------------------------------

* Mapnik 教程

  跟随 教程_ 学习 Mapnik 的具体应用。

.. _教程: https://github.com/mapnik/mapnik/wiki/MapnikTutorials

* 尝试 Live 上的其它数据

  其它 数据_ 也包含在 Live 中

.. _数据: file:///usr/local/share/mapnik/

