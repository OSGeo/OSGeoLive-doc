:Author: Hamish Bowman
:Translator: Takayuki Nuimura
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: ../../images/project_logos/logo-GMT.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://gmt.soest.hawaii.edu

********************************************************************************
GMT クイックスタート
********************************************************************************

実行
================================================================================

この Live DVD に含まれているものはGMTのドキュメント (HTMLとPDF)、
サンプルスクリプト (低解像度の海岸線データ含む)、
チュートリアル (HTMLとPDF)、そしてチュートリアル用のデータです。

HTMLとPDFのドキュメントは以下の場所にあります
  `/usr/share/doc/gmt/html/ <../../gmt/html/index.html>`_,
サンプルスクリプトは
  `/usr/share/doc/gmt-examples/examples/ <../../gmt-examples/examples/>`_,
そしてチュートリアルデータは
  `/usr/share/doc/gmt-tutorial/tutorial/ <../../gmt-tutorial/tutorial/>`_.

低解像度の海岸線データは :file:`/usr/share/gmt/coast/`.

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

  cp -r /usr/share/doc/gmt-examples/examples/ gmt-examples
  cd gmt-examples/
  ./do_examples.csh

`[.. 処理が終わるのを待って ..]`

出力結果を見てみます: (:command:`gv` [#gv]_ コマンドを終了する時は :kbd:`q` と入力してください)

::

  for PLOT in *.ps ; do
     echo "$PLOT"
     gv "$PLOT"
  done

.. Rubric:: 参照情報
.. [#gv] Ghostview  http://www.gnu.org/software/gv/
