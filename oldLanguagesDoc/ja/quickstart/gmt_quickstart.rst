:Author: Hamish Bowman
:Translator: Takayuki Nuimura
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: /images/project_logos/logo-GMT.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://gmt.soest.hawaii.edu

********************************************************************************
GMT クイックスタート
********************************************************************************

実行
================================================================================


ローカルのドキュメントは以下の場所にあります
  `/usr/share/doc/gmt/html/ <../../gmt/html/index.html>`_,
サンプルスクリプトは以下の場所にあります
  `/usr/share/doc/gmt-examples/examples/ <../../gmt-examples/examples/>`_,


.. packages:
  gmt-doc (and -pdf)
  gmt-coast-low
  gmt-examples 
  gmt-tutorial (and -pdf)


サンプルスクリプト
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

30のサンプルスクリプトがあります:

ターミナルを開いてから

::

  cp -R /usr/share/doc/gmt/examples gmt-examples
  cd gmt-examples/ex20
  ./example_20.sh

`[.. 処理が終わるのを待って ..]`

出力結果を見てみます: (:command:`gv` [#gv]_ コマンドを終了する時は :kbd:`q` と入力してください)

::

  gv example_20.ps

.. Rubric:: 参照情報
.. [#gv] Ghostview  http://www.gnu.org/software/gv/
