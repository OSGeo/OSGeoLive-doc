:Author: OSGeo-Live
:Author: Micha Silver
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right

********************************************************************************
SpatiaLite Quickstart 
********************************************************************************

SpatiaLite는 공간적 기능이 추가된 SQLite 데이터 베이스 엔진입니다. 

이 Quick Start 페이지는 커맨드 라인과 GUI 어플리케이션으로 데이터 베이스에 접근하는 방법을 설명합니다.


spatialite 실행
================================================================================

* 콘솔을 열어 **spatialite** 로 견본 데이터 베이스를 엽니다::

   spatialite /home/user/data/spatialite/trento.sqlite

* CLI 인터페이스에서 도움이 되는 커맨드입니다::

   .help
   .tables
   .quit   

* 공간적 질의문의 예시입니다::

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
      

**spatialite-gui** 로 새로운 데이터 베이스 만들기
================================================================================

* 데스크탑의 Databases 폴더에서 **spatialite_gui** 를 실행합니다.
* :menuselection:`File --> Creating a new SQLite DB`
* Browse를 클릭하고 /home/user/data/spatialite/ directory 로 갑니다. "Test.sqlite"와 같은 이름을 입력하고 Save를 클릭하십시오.

**spatialite-gui** 로 기존 데이터 베이스 열기
================================================================================

* "Disconnecting current SQLite DB" 버튼을 클릭합니다.
* "Connect existing SQLite DB" 버튼을 클릭합니다.
* /home/user/data/spatialite 를 열어 trento.sqlite를 선택합니다.
* MunicipalHallsView 테이블 위에서 마우스 오른쪽 버튼을 클릭하고 "Show Columns" 를 선택합니다.
* PopulatedPlaces 테이블 위에서 마우스 오른쪽 버튼을 클릭하고 "Edit table rows" 를 선택합니다.
* 윗쪽 SQL pane에 다음을 입력하십시오::

   SELECT NOME, X(Geometry) AS Longitude, Y(Geometry) AS Latitude
        FROM "MunicipalHallsView"
        WHERE NOME_PROV LIKE "BRESCIA";

  그 후에 오른쪽의 "Execute SQL" 버튼을 클릭하십시오.


spatialite-gis 실행
================================================================================

* 데스크탑 GIS 폴더에서 spatialite-gis를 실행합니다.
* "Connecting existing SQLite DB" 버튼을 클릭해서 /home/user/data/spatialite/trento.sqlite로 연결합니다.

그러면 이탈리아의 Trento 지역 지도를 볼 수 있습니다.

   - Highways 레이어 위에서 마우스 오른쪽 버튼을 클릭하고 :menuselection:`Hide` 를 선택하십시오.
   - LocalCouncilsTrento 레이어 위에서 마우스 오른쪽 버튼을 클릭하고 :menuselection:`Layer Configuration --> Classify` 를 선택한 후에 "Shape Area"를 선택하십시오. 4 Classes를 선택하고 dark and light color를 선택하기 위해서 Min and Max color patches를 선택하십시오. 이 지역의 Choropleth display를 볼 수 있습니다.
   - LocalCouncils 위에서 마우스 오른쪽 버튼을 누르고 :menuselection:`Layer configuration --> Graphics` 로 가서 경계의 색을 바꿀 수 있습니다. Border Graphics 아래에서 다른 색을 선택하십시오.
   - 약간 지도를 확대해 보십시오. PopulatedPlaces 레이어 위에서 마우스 오른쪽 버튼을 클릭하고 :menuselection:`Indentify on` 을 선택하십시오. Populated Places의 한 곳을 선택해서 속성을 볼 수 있습니다.


시도해 보기
================================================================================

추가적으로 다음도 실행해 보십시오:

* spatialite-gui로 기하 정보 점검
* QGIS에서 SpatiaLite 레이어를 열어 편집하기

다음은?
================================================================================

SpatiaLite에 대해 더 알기 위해서 다음 페이지에 가보십시오 : `SpatiaLite project page`_.

.. _`SpatiaLite project page`: https://www.gaia-gis.it/fossil/libspatialite/index

사용 지침서도 확인해 보십시오 : `Spatialite cookbook`_

.. _`Spatialite cookbook`: http://www.gaia-gis.it/gaia-sins/spatialite-cookbook/index.html
