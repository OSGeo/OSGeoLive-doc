:Author: OSGeo-Live
:Author: Micha Silver
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _spatialite-quickstart:
 
.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right

********************************************************************************
SpatiaLite クイックスタート
********************************************************************************

SpatiaLite は地理空間関数を追加した SQLite データベースエンジンです。

このクイックスタートではコマンドラインと GUI アプリケーションからデータベースの開き方を記載します。

**spatialite** を起動する
================================================================================

* コンソールを開き、spatialite でサンプルデータベースを開きます。

   spatialite /home/user/data/spatialite/trento.sqlite

* CLI インターフェースで役立つ以下のようなコマンドがあります::

   .help
   .tables
   .quit   

* サンプル空間クエリをいくつか紹介します

   SELECT lc.NOME, lc.NOME_PROV, lc.COM, mh.Perimeter 
        FROM LocalCouncils AS lc, MunicipalHalls AS mh 
        WHERE CONTAINS(lc.Geometry,mh.Geometry) AND lc.NOME LIKE 'VILLA%' 
        ORDER BY lc.NOME;
   .headers ON
   SELECT COMUNE, LOCALITA, Area(Geometry)/1000000 AS "Area Sq.km." 
        FROM PopulatedPlaces ORDER BY "Area Sq.km." DESC LIMIT 10 ; 
   SELECT lc.NOME AS "Provence Name", X(mh.Geometry) AS X_COORD, Y(mh.Geometry) AS Y_COORD 
        FROM LocalCouncils AS lc, MunicipalHalls AS mh 
        WHERE mh.COMU=lc.COM ORDER BY "Provence Name" LIMIT 10;
      

**spatialite-gui** から新しいデータベースを作成する
================================================================================

* デスクトップのデータベースフォルダから spatialite_gui を起動してください
* メニューから :menuselection:`File --> Creating a new SQLite DB` を選択してください。
* Browse をクリックして /home/user/data/spatialite/ ディレクトリに移動してください。作成するデータベースの名前を "Test.sqlite" など入力して保存 (Save) をクリックしてください。

既存のデータベースを **spatialite-gui** で開く
================================================================================

* 接続しているデータベースがあるときには "Disconnecting current SQLite DB" ボタンをクリックしてください。
* "Connect existing SQLite DB" ボタンをクリックしてください。
* /home/user/data/spatialite を開き、trento.sqlite を選択してください。
* MunicpalHallsView テーブルで右クリックし、"Show Columns" を選択してください。
* PopulatedPlaces で右クリックし、"Edit table rows" を選択してください。
* 上部の SQL 枠で以下をタイプします::

   SELECT NOME, X(Geometry) AS Longitude, Y(Geometry) AS Latitude
        FROM "MunicipalHallsView"
        WHERE NOME_PROV LIKE "BRESCIA";

  右側の "Execute SQL" ボタンをクリックして実行してください。

spatialite-gis の実行
================================================================================

* デスクトップの Desktop GIS フォルダから spatialite-gis を実行してください。
* "Connecting existing SQLite DB" ボタンをクリックして /home/user/data/spatialite/trento.sqlite に接続してください。

イタリアのトレント自治県の地図を見ることができるでしょう。

   - Highways レイヤで右クリックして :menuselection:`Hide` を選択してください。
   - LocalCouncilsTrento レイヤで右クリックして :menuselection:`Layer Configuration->Classify` を選択してください。 "Shape Area" を選択してください。4 つのクラスを選択して最小と最大に割り当てる色を選択してください。県の範囲の階級区分図が表示されます。
   - LocalCouncils で右クリックして境界線の色を選択し、メニューから :menuselection:`Layer configuration->Graphics` を選択して、境界線と異なる色を選択してください。
   - 表示をすこし拡大し、PopulatedPlaces レイヤを右クリックし、 :menuselection:`Indentify on` を選択してください。人口の多い地域をクリックして、地物の属性を確認してください。


やってみましょう
================================================================================

次のステップとして以下のようなことをやってみるとよいでしょう。

* spatialite-gui でのジオメトリについて調べてみましょう
* QGIS で SpatiaLite レイヤを表示、編集してみましょう

参考資料
================================================================================

SpatiaLite についてより詳しく学ぶには `SpatiaLite project page`_ を参照してください。

.. _`SpatiaLite project page`: https://www.gaia-gis.it/fossil/libspatialite/index

また、チュートリアル `Spatialite cookbook`_ が公開されています。

.. _`Spatialite cookbook`: http://www.gaia-gis.it/gaia-sins/spatialite-cookbook/index.html
