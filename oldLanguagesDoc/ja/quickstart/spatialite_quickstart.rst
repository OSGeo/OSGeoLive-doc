:Author: OSGeo-Live
:Author: Micha Silver
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live 9.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)


.. TBD: Cameron Review
  We need to explain in words what we aim to achieve by each 
  step. Eg: "Let's find all Villas which include have a geometry and ..."
  This will require an extra sentence for most steps.


.. image:: /images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right

********************************************************************************
SpatiaLite クイックスタート
********************************************************************************

SpatiaLite は地理空間関数を追加した SQLite データベースエンジンです。

SQLite is a Database Management System (DBMS) which is simple, robust, easy to use and very lightweight. Each SQLite database is simply a file. You can freely copy it, compress it, and port it between Windows, Linux, MacOs etc.

このクイックスタートではコマンドラインと GUI アプリケーションからのデータベースの開き方を記載します。Some sample SQL queries are shown.

.. contents:: Contents
  
spatialite-gui の実行
================================================================================

Spatialite-gui provides a visual interface for viewing and maintaining a
spatialite database. You can easily see the structure of the tables and data
contents using point and click functions, many of which construct
common SQL queries, or craft your own SQL queries.

Let's start by viewing a spatialite database, and looking at columns within a
table:

* Open the Spatialite GUI by selecting :menuselection:`Geospatial->Databases->Spatialite GUI`

.. TBD: Cameron Review Comment:
  We should have continuity in our examples. Ie, Use the same scenario for
  all spaital-gui steps. Use the same table, where each step builds upon the
  previous step. I'd suggest our examples should aim to have a GIS focus to
  them too.

* :menuselection:`File->Connecting an existing SQLite DB` メニューを選択してください。
* :file:`/home/user/data/spatialite` を開き、 :file:`trento.sqlite` を選択してください。

  .. image:: /images/screenshots/800x600/spatialite-gui-trento.png
    :scale: 70 %

.. TBD: Cameron Review Comment:
  As above, lets keep the table consistant, to maybe MunicipalHalls

* MunicipalHallsView テーブルで右クリックし、"Show Columns" を選択してください。

  .. image:: /images/screenshots/800x600/spatialite-gui-columns.png
      :scale: 70 %

* You will notice the display broken into 3 areas:

  #. The left panel displays the database hierachy, such as a list of tables, and columns within the table. Right click on elements of the left panel to select from a list of common database actions.

  #. The top right panel shows SQL for the action selected. You can enter your own customised SQL into this panel.

  #. The bottom right panel shows the results of the SQL query.

* MunicipalHalls で右クリックし、"Edit table rows" を選択してください。Notice
  the SQL query which has been created for you in the top right pane, and
  results in the bottom right.::

    SELECT ROWID, "PK_UID", "AREA", "PERIMETER", "COMU", "Geometry"
        FROM "MunicipalHalls"
        ORDER BY ROWID

.. TBD: Cameron Review Comment:
  As above, lets try to keep consistancy. I suggest continue using the
  MunicipalHalls table, but how about constrain by a GIS query, such as
  a Bounding Box query instead.

* Now lets try tweaking this SQL statement to get NOME and (Lat,Long) for only
  the NOME_PROV fields include "BRESCIA", this time using the
  MunicipalHallsView.  In the upper right SQL pane type::

   SELECT NOME, X(Geometry) AS Longitude, Y(Geometry) AS Latitude
        FROM "MunicipalHallsView"
        WHERE NOME_PROV LIKE "BRESCIA";

  右側の "Execute SQL" ボタンをクリックし、and see the results in
  the bottom right pane.

  .. image:: /images/screenshots/800x600/spatialite-gui-select.png
      :scale: 70 %


..
  spatialite-gis の実行
  ================================================================================

  Spatialite-gis is a simple viewer for spatialite based layers.

  * デスクトップの Desktop GIS フォルダから spatialite-gis を実行してください。
  * "Connecting existing SQLite DB" ボタンをクリックして /home/user/data/spatialite/trento.sqlite に接続してください。

  イタリアのトレント自治県の地図を見ることができるでしょう。

     - Highways レイヤで右クリックして :menuselection:`Hide` を選択してください。
     - LocalCouncilsTrento レイヤで右クリックして :menuselection:`Layer Configuration->Classify` を選択してください。 "Shape Area" を選択してください。4 つのクラスを選択して最小と最大に割り当てる色を選択してください。県の範囲の階級区分図が表示されます。
     - LocalCouncils で右クリックして境界線の色を選択し、メニューから :menuselection:`Layer configuration->Graphics` を選択して、境界線と異なる色を選択してください。
     - 表示をすこし拡大し、PopulatedPlaces レイヤを右クリックし、 :menuselection:`Indentify on` を選択してください。人口の多い地域をクリックして、地物の属性を確認してください。


spatialite をコマンドラインから起動する
================================================================================

Users needing to script or automate queries will learn the advantages of working with a spatialite database from the command line interface. In this example, we will load a shapefile, and search for schools which are near highway 42. 

* Before working from the command line, we need to open a terminal window: :menuselection:`LXDE Menu -> Accessories -> LXTerminal`.

* コンソールを開き、spatialite でサンプルデータベースを開きます。

   spatialite /home/user/data/spatialite/trento.sqlite

* CLI インターフェースで役立つ以下のようなコマンドがあります::

   .help
   .tables
   .quit   

* Creating a new spatialite database and loading a shapefile
  
   - Let's create a new, empty spatialite database, and load two shapefiles from the north_carolina dataset::

      user@osgeo-6:~$ spatialite test.sqlite
      SpatiaLite version ..: 3.1.0-RC2      Supported Extensions:
           - 'VirtualShape'        [direct Shapefile access]
           - 'VirtualDbf'          [direct DBF access]
           - 'VirtualXL'           [direct XLS access]
           - 'VirtualText'         [direct CSV/TXT access]
           - 'VirtualNetwork'      [Dijkstra shortest path]
           - 'RTree'               [Spatial Index - R*Tree]
           - 'MbrCache'            [Spatial Index - MBR cache]
           - 'VirtualSpatialIndex' [R*Tree metahandler]
           - 'VirtualFDO'          [FDO-OGR interoperability]
           - 'SpatiaLite'          [Spatial SQL - OGC]
      PROJ.4 version ......: Rel. 4.8.0, 6 March 2012
      GEOS version ........: 3.3.3-CAPI-1.7.4
      SQLite version ......: 3.7.9
      Enter ".help" for instructions
      spatialite>
      spatialite> .loadshp data/north_carolina/shape/schools_wake schools utf-8 3358
      spatialite> .loadshp data/north_carolina/shape/roadsmajor roads utf-8 3358


   - Note the format of the .loadshp command: first the shapefile without the .shp extension, then the name of the new spatialite table, next the character encoding, and finally the EPSG code of the shapefile's CRS.

   - Now we'll query for schools near to highway 42.::
 
      spatialite> SELECT s.NAMESHORT, s.ADDRNUMBER, s.ADDRROOT
           ...> FROM schools AS s, roads AS r
           ...> WHERE r.ROAD_NAME = "NC-42" AND
           ...> ST_Distance(s.Geometry, r.Geometry) < 1000;
      FUQUAY-VARINA|6600|Johnson Pond Rd
      WILLOW SPRINGS|6800|Dwight Rowland Rd
      FUQUAY-VARINA|109|N Ennis St
      LINCOLN HEIGHTS|307|Bridge St

   - Finally, we output the query to a "comma separated values" text file "schools_rt42.txt" with the following commands::

      spatialite> .mode csv
      spatialite> .output "schools_rt42.txt"
      spatialite> SELECT s.NAMESHORT, s.ADDRNUMBER, s.ADDRROOT
          ...> FROM schools AS s, roads AS r
          ...> WHERE r.ROAD_NAME = "NC-42" AND
          ...> ST_Distance(s.Geometry, r.Geometry) < 1000;
      spatialite>.q
 

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
