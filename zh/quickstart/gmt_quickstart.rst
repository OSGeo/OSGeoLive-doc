:Author: Hamish Bowman
:Translator(Zh): Zhengfan Lin (OSGeo ID: Tanner)
:Version: OSGeo-Live 6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2012 by The OSGeo Foundation

.. image:: /images/project_logos/logo-GMT.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://gmt.soest.hawaii.edu

********************************************************************************
GMT 快速入门文档
********************************************************************************

运行 GMT
================================================================================

　　在 OSGeo Live 中包含了 GMT 文档及（HTML 和 PDF）、示例脚本（包含了一套低精度的世界范围海岸线数据）和教程（HTML 和 PDF）以及示例数据。

　　HTML 和 PDF 的文档位于 `/usr/share/doc/gmt/html/ <../../gmt/html/index.html>`_
　　示例脚本位于 `/usr/share/doc/gmt-examples/examples/ <../../gmt-examples/examples/>`_
　　示例数据位于 `/usr/share/doc/gmt-tutorial/tutorial/ <../../gmt-tutorial/tutorial/>`_

　　海岸线数据位于 :file:`/usr/share/gmt/coast/`

.. packages:
  gmt-doc (and -pdf)
  gmt-coast-low
  gmt-examples 
  gmt-tutorial (and -pdf)


示例
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

　　示例脚本总共包含了 29 个项目，可以一次执行。

　　在命令行中：

::

  cp -r /usr/share/doc/gmt-examples/examples/ gmt-examples
  cd gmt-examples/
  ./do_examples.csh

`[whiz .. bang .. whirl]`

　　查看结果：（输入 :kbd:`q` 退出 :command:`gv` [#gv]_ ）

::

  for PLOT in *.ps ; do
     echo "$PLOT"
     gv "$PLOT"
  done

.. Rubric:: 备注
.. [#gv] GhostView 查看器 http://www.gnu.org/software/gv/

