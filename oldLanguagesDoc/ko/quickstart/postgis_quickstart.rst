:Author: Barry Rowlingson
:Author: Astrid Emde
:Author: Cameron Shorter
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://postgis.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


********************************************************************************
PostGIS Quickstart
********************************************************************************

PostGIS는 PostgreSQL 관계형 데이터 베이스에 공간적인 능력을 추가하였습니다. 따라서 PostgreSQL를 통해 공간 데이터를 저장, 분석 및 가공할 수 있게 되었습니다. 
이 페이지에서는 일반적인 데이터 베이스 기능에 'PostgreSQL'을 이용하고 PostGIS가 제공하는 추가적인 공간적 기능에 'PostGIS'를 이용할 것입니다.

클라이언트-서버 구조
================================================================================

다른 데이터베이스와 같이 PostgreSQL은 클라이언트-서버 체계에 따른 서버로 작동합니다.
클라이언트가 서버에 요청하면 답을 받는 구조입니다. 이것은 인터넷이 작동하는 원리와 같으며 즉, 브라우저가 클라이언트이며 웹 서버가 웹 페이지에 답을 보내줍니다.
PostgreSQL에서 요청은 SQL 언어로 이루어지며 답은 보통 데이터 테이블로 보여집니다.

클라이언트로서 같은 컴퓨터에서 서버의 작동을 멈추게 하지 못하며, 이는 PostgreSQL을 하나의 기계에서 이용할 수 있게 합니다. 당신의 클라이언트는 내부 'loopback' 네트워크 연결을 통해 
서버에 연결되며, 당신이 허용하지 않으면 다른 컴퓨터를 통해서는 이를 볼 수 없습니다.

여기서는 세 가지의 클라이언트를 설명하겠습니다 : the command-line client,
:doc:`Quantum GIS <../overview/qgis_overview>`, and the ``pgAdmin`` graphical database client.

공간적 데이터 베이스 
================================================================================

.. review comment: Suggest providing a screen grab (or 2) which shows how to select
   and open an xterm. Cameron

커맨드-라인 클라이언트는 터미널 에뮬레이터 창의 명령어를 통해 작동합니다. Command-line clients run from within a Terminal Emulator window. 
Accessories의 Applications 메뉴에서 Terminal Emulator를 실행하십시오. Unix shell command prompt가 생성되면 다음을 입력하십시오::

   psql -V

PostgreSQL 버전 숫자를 보기 위해서 엔터를 누르십시오.

하나의 PostgreSQL 서버가 각각의 데이터 베이스로 일을 할 수 있도록 하며, 각각의 데이터 베이스는 독립적인 체계로서 고유의 테이블, 보기(views), 사용자를 갖고 있습니다.
PostgreSQL 서버에 연결할 때에는 데이터 베이스를 명시하여야 합니다.

다음의 명령어로 서버의 데이터 베이스 리스트를 알 수 있습니다 ::

   psql -l

시스템의 프로젝트가 사용하는 데이터 베이스들을 확인하여야 합니다. 새로운 데이터 베이스를 만들어 보겠습니다.

.. tip:: 
   리스트는 표준 unix pager를 이용합니다 - 다음 페이지를 보기 위해서는 space를 누르십시오. for next page, :kbd:`b` 는 뒤로, :kbd:`q` 는 중지, 
   h는 도움말.

PostgreSQL은 데이터 베이스를 만들기 위한 유틸리티 프로그램을 제공합니다 ``createdb``.
PostGIS 익스텐션을 통해 데이터 베이스를 만들어야 하며, 어떤 템플릿으로 시작할 지를 지정해야 합니다. 
데이터 베이스 ``demo`` 를 실행시키겠습니다. 명령어는 다음과 같습니다:

.. review comment: createdb is a utility programm not a unix command

::

   createdb -T template_postgis demo

.. tip:: 
   ``--help`` 옵션을 이용하여 커맨드 라인 툴에 대한 도움말을 읽을 수 있습니다.


``psql -l``을 작동시켰다면, 리스트에서 ``demo`` 데이터 베이스를 볼 수 있습니다.

또한 SQL 언어를 이용하여 PostGIS 데이터 베이스를 만들 수 있습니다. 우선 ``dropdb`` 명령어를 이용하여 지금 만든 데이터 베이스를 삭제할 것입니다. 그 후에 ``psql`` 명령어를 이용하여
SQL 커맨드 인터프리터에 연결합니다:

:: 

  dropdb demo
  psql -d postgres
 
이 명령어는 ``postgres`` 데이터 베이스로 연결시키며, 이는 모든 서버가 갖고 있어야 하는 시스템 데이터 베이스입니다.
이제 새로운 데이터 베이스를 만들기 위해서 SQL을 입력하세요:

:: 

 postgres=# CREATE DATABASE demo TEMPLATE=template_postgis;

이제 ``postgres`` 데이터 베이스에서 새로운 ``demo`` 데이터 베이스로 연결을 바꿉니다. 이제부터는 ``psql -d demo`` 명령어를 통해 바로 연결이 가능합니다. 또한 ``psql`` 커맨드 라인 내에서도 연결을 바꿀 수 있습니다:

::

 postgres=# \c demo

.. tip:: 
   리턴 버튼을 누른 후 psql 프롬프트가 계속 나타나면 :kbd:`CTRL` + :kbd:`C` 를 입력하십시오. 이로써 입력어가 삭제되고 새로운 시작을 합니다. 덧붙여 끝마침표나 세미콜론 등을 입력해야 하기도 합니다.  

인포메이션 메시지를 보게 될 것이고, 프롬프트가 ``demo`` 데이터 베이스로 연결되었음을 알릴 것입니다. 이를 확인하기 위해서, 데이터 베이스의 테이블을 나열하기 위해 ``\dt`` 를 입력하십시오. 그러면 다음과 같은 사항을 볼 수 있습니다 :

::

  demo=# \dt
               List of relations
   Schema |       Name       | Type  | Owner 
  --------+------------------+-------+-------
   public | geometry_columns | table | user
   public | spatial_ref_sys  | table | user
  (2 rows)

이 두 개의 테이블이 PostGIS에 이용되었습니다. ``spatial_ref_sys`` 테이블은 적합한 공간적 기준 체계 정보를 포함하고 있으며, SQL을 이용하여 간략한 사항을 볼 수 있습니다 :

::

  demo=# SELECT srid,auth_name,proj4text FROM spatial_ref_sys LIMIT 10;

   srid | auth_name |          proj4text                                            
  ------+-----------+--------------------------------------
   3819 | EPSG      | +proj=longlat +ellps=bessel +towgs...
   3821 | EPSG      | +proj=longlat +ellps=aust_SA +no_d...
   3824 | EPSG      | +proj=longlat +ellps=GRS80 +towgs8...
   3889 | EPSG      | +proj=longlat +ellps=GRS80 +towgs8...
   3906 | EPSG      | +proj=longlat +ellps=bessel +no_de...
   4001 | EPSG      | +proj=longlat +ellps=airy +no_defs...
   4002 | EPSG      | +proj=longlat +a=6377340.189 +b=63...
   4003 | EPSG      | +proj=longlat +ellps=aust_SA +no_d...
   4004 | EPSG      | +proj=longlat +ellps=bessel +no_de...
   4005 | EPSG      | +proj=longlat +a=6377492.018 +b=63...
  (10 rows)

이는 우리가 공간적으로 이용가능한 데이터 베이스를 갖고 있음을 확인시켜 줍니다. ``geometry_columns`` 테이블은 PostGIS에 어떤 테이블이 공간적으로 이용가능한 지를 명시합니다. 다음 단계를 참조하십시오.


공간적 테이블 만들기 (어려운 방법)
================================================================================

이제 우리는 공간적 테이블을 만들 수 있는 공간적 데이터 베이스를 갖고 있습니다.

첫번째로 우리는 도시 데이터를 저장하기 위한 일반 데이터 베이스 테이블을 만들 것입니다. 이 테이블은 두 개의 필드를 갖고 있습니다 (숫자형 ID와 도시 이름):

::

  demo=# CREATE TABLE cities ( id int4, name varchar(50) );

다음으로 도시의 위치를 저장하기 위해 기하 정보를 갖는 테이블 열을 추가합니다. 일반적으로 이를 ``the_geom`` 이라 부릅니다. 이는 PostGIS에 각 요소(점, 선, 면 등)가 갖는 기하 정보와 차원 정보, 좌표 체계 정보 등을 말해줍니다. 
여기에서는 EPSG:4326 좌표를 이용할 것입니다.

::

  demo=# SELECT AddGeometryColumn ( 'cities', 'the_geom', 4326, 'POINT', 2);

도시들의 테이블을 확인했다면 새로운 열을 볼 수 있고, 현재 테이블에 어떠한 행 정보도 있지 않은 것을 확인할 수 있습니다.

::

  demo=# SELECT * from cities;
   id | name | the_geom 
  ----+------+----------
  (0 rows)

테이블에 행을 추가하기 위해서 SQL 명령어를 이용하겠습니다. 기하열에 기하정보를 얻기 위해서, 글 형식을 변환하여 좌표와 좌표체계 id 정보를 주는 PostGIS의 ``ST_GeomFromText`` 기능을 이용하겠습니다:

::

  demo=# INSERT INTO cities (id, the_geom, name) VALUES (1,ST_GeomFromText('POINT(-0.1257 51.508)',4326),'London, England');
  demo=# INSERT INTO cities (id, the_geom, name) VALUES (2,ST_GeomFromText('POINT(-81.233 42.983)',4326),'London, Ontario');
  demo=# INSERT INTO cities (id, the_geom, name) VALUES (3,ST_GeomFromText('POINT(27.91162491 -33.01529)',4326),'East London,SA');

.. tip:: 
   커맨드 라인을 불러 편집하기 위해서 화살표 키를 이용하십시오.

보시다시피 이 과정은 매우 지루하지만 PostGIS 테이블에 데이터를 얻을 수 있는 쉬운 방법들이 있습니다. 우리의 데이터 베이스에 세 도시의 정보를 갖고 있으므로, 이를 이용하도록 하겠습니다.


간단한 질의
================================================================================

PostGIS 테이블의 데이터를 선택하기 위해서 모든 SQL 운용을 이용할 수 있습니다:

::

 demo=# SELECT * FROM cities;
  id |      name       |                      the_geom                      
 ----+-----------------+----------------------------------------------------
   1 | London, England | 0101000020E6100000BBB88D06F016C0BF1B2FDD2406C14940
   2 | London, Ontario | 0101000020E6100000F4FDD478E94E54C0E7FBA9F1D27D4540
   3 | East London,SA  | 0101000020E610000040AB064060E93B4059FAD005F58140C0
 (3 rows)

이는 우리에게 의미가 없는 16진법으로 표현된 좌표체계를 말해줍니다.

기하정보를 WKT 형식으로 다시 보고싶으면, ST_AsText(the_geom) 또는 ST_AsEwkt(the_geom) 기능을 이용할 수 있습니다. 또한 숫자형 좌표 정보를 얻기 위해서 ST_X(the_geom)와 ST_Y(the_geom)를 이용할 수 있습니다:

::

 demo=# SELECT id, ST_AsText(the_geom), ST_AsEwkt(the_geom), ST_X(the_geom), ST_Y(the_geom) FROM cities;
  id |          st_astext           |               st_asewkt                |    st_x     |   st_y    
 ----+------------------------------+----------------------------------------+-------------+-----------
   1 | POINT(-0.1257 51.508)        | SRID=4326;POINT(-0.1257 51.508)        |     -0.1257 |    51.508
   2 | POINT(-81.233 42.983)        | SRID=4326;POINT(-81.233 42.983)        |     -81.233 |    42.983
   3 | POINT(27.91162491 -33.01529) | SRID=4326;POINT(27.91162491 -33.01529) | 27.91162491 | -33.01529
 (3 rows)



공간적 질의
================================================================================

PostGIS는 PostgreSQL에 많은 공간적 기능을 추가하였습니다. 우리는 이미 WKT 형식을 기하 정보로 변환하는 ST_GeomFromText를 확인하였습니다. 대부분이 ST (spatial type)로 시작하고 PostGIS documentation에 나열되어 있습니다. 우리는 다음의 질문에 답하기 위해 하나의 질의를 하겠습니다
- 구형의 지구를 가정할 때 런던의 이 세 장소는 미터로 각각 얼마나 떨어져 있을까? 

::

 demo=# SELECT p1.name,p2.name,ST_Distance_Sphere(p1.the_geom,p2.the_geom) FROM cities AS p1, cities AS p2 WHERE p1.id > p2.id;
       name       |      name       | st_distance_sphere 
 -----------------+-----------------+--------------------
  London, Ontario | London, England |   5875766.85191657
  East London,SA  | London, England |   9789646.96784908
  East London,SA  | London, Ontario |   13892160.9525778
  (3 rows)

이는 각 도시 쌍의 거리 정보를 미터로 말해줍니다. 'WHERE' 부분에서 각 자체 도시로의 거리(모두 0) 또는 역거리(reverse distance; 영국 런던에서 온타리오 런던까지의 거리는 온타리오 런던에서 영국 런던까지 거리와 같음)가 어떻게 표현되었는지 확인해 보십시오. 
'WHERE' 부분없이 시도해보고 결과를 확인해 보십시오.

우리는 다른 기능을 이용하여 회전 타원체의 이름, 반장축, inverse flattening parameter를 정의한 후에 회전 타원체의 거리를 구할 수도 있습니다:

::

  demo=# SELECT p1.name,p2.name,ST_Distance_Spheroid(
          p1.the_geom,p2.the_geom, 'SPHEROID["GRS_1980",6378137,298.257222]'
          ) 
         FROM cities AS p1, cities AS p2 WHERE p1.id > p2.id;
        name       |      name       | st_distance_spheroid 
  -----------------+-----------------+----------------------
   London, Ontario | London, England |     5892413.63776489
   East London,SA  | London, England |     9756842.65711931
   East London,SA  | London, Ontario |     13884149.4140698
  (3 rows)



지도화
================================================================================

PostGIS 데이터를 이용하여 지도화하기 위해서는 정보를 얻을 수 있는 클라이언트가 필요합니다. 대부분의 오픈 소스 데스크탑 GIS 프로그램들은 예를 들어 다음과 같은 프로그램을 실행할 수 있습니다 - Quantum GIS, gvSIG, uDig.
Quantum GIS를 이용하여 지도화하는 방법을 보여드리겠습니다.

데스크탑 메뉴에서 Quantum GIS를 실행한 후 layer 메뉴에서 ``Add PostGIS layers`` 를 선택하십시오. PostGIS에서 Natural Earth 데이터로 연결하는 변수들은 Connections drop-down 메뉴에서 이미 정의되었습니다. 새로운 서버 연결을 지정할 수 있고, 설정 내용을 저장하여 쉽게 불러올 수도 있습니다. 
어떤 변수들이 Natural Earth에 이용되는지를 확인하고 싶으면 ``Edit`` 을 클릭하고, 계속하기를 원하면  ``Connect`` 를 클릭하십시오 :

.. image:: /images/projects/postgis/postgis_addlayers.png
  :scale: 50 %
  :alt: Connect to Natural Earth
  :align: center

데이터 베이스의 공간적 테이블 리스트를 확인할 수 있습니다 :

.. image:: /images/projects/postgis/postgis_listtables.png
  :scale: 50 %
  :alt: Natural Earth Layers
  :align: center

아랫 부분의 lakes를 선택하고 ``Add`` 를 클릭하면 (윗 부분의 ``Load`` 는 데이터 베이스 연결 변수입니다), QGIS로 로딩됩니다:

.. image:: /images/projects/postgis/postgis_lakesmap.png
  :scale: 50 %
  :alt: My First PostGIS layer
  :align: center

이제 lakes 지도를 볼 수 있습니다. 그러나 QGIS는 이것들이 호수(lakes)인지 모르기 때문에, 파랑색으로 표현하지 않을 것입니다 - 색 변환을 위해서는 QGIS documentation을 참조하십시오.


공간적 테이블 만들기 (쉬운 방법)
================================================================================

대부분의 OSGeo 데스크탑 툴은 PostGIS 데이터 베이스에 셰이프 파일과 같은 공간적 데이터를 불러오는 기능을 갖고 있습니다.
이를 위해 다시 QGIS를 이용할 것입니다.

간편한 PostGIS Manager plugin을 통해서 QGIS에 셰이프 파일을 불러올 수 있습니다. 이를 위해서 Plugins 메뉴에서 ``Fetch Plugins`` 를 선택합니다. QGIS는 repository에서 최근의 plugins 리스트를 불러옵니다 (이를 위해서는 인터넷이 연결되어 있어야 합니다).
``PostGIS Manager`` 를 찾아 ``Install plugin`` 버튼을 클릭합니다.

.. image:: /images/projects/postgis/postgis_getmanager.png
  :scale: 50 %
  :alt: Fetch PostGIS Manager Plugin
  :align: center

Plugin 메뉴에 manager를 시작하는 옵션을 주는 PostGIS Manager entry를 볼 수 있을 것입니다.
또는 툴바의 PostGIS 로고 버튼 (지구와 코끼리)을 클릭할 수도 있습니다.

그러면 Natural Earth 데이터 베이스로 연결이 될 것이며, 암호를 물을 경우 빈 칸으로 두십시오. 주 manager 창을 볼 것이며, 왼쪽에 데이터 베이스에서 테이블을 선택할 수 있고 오른쪽에 테이블을 찾기 위한 탭을 이용할 수 있습니다. 
Preview 탭은 작은 지도를 보여줍니다. 여기에서 저는 제가 아는 섬의 populated places 레이어를 선택해서 확대해 보았습니다 :

.. image:: /images/projects/postgis/postgis_managerpreview.png
  :scale: 50 %
  :alt: PostGIS Manager Preview
  :align: center

우리는 이제 데이터 베이스에 셰이프 파일을 불러오기 위해서 PostGIS 매니져를 이용할 것입니다.
우리는 R 통계 패키지 add-ons의 North Carolina sudden infant death syndrome (SIDS) 데이터를 이용할 것입니다.

``Data`` 메뉴에서 ``Load data from shapefile`` 을 선택하십시오. ``...`` 버튼을 클릭하고 R ``maptools`` 패키지의 ``sids.shp`` 셰이프 파일을 찾으십시오 : 

.. image:: /images/projects/postgis/postgis_browsedata.png
  :scale: 50 %
  :alt: Find the shapefile
  :align: center

디폴트 값을 그대로 쓰고 ``Load`` 를 클릭하십시오.

.. image:: /images/projects/postgis/postgis_importsids.png
  :scale: 50 %
  :alt: Import a shapefile
  :align: center

PostGIS에 에러없이 셰이프 파일이 불러와져야 합니다. PostGIS 매니져를 종료하고 QGIS 창으로 다시 가십시오.

'Add PostGIS Layer'를 이용하여 지도에 SIDS 데이터를 부르십시오. 레이어를 정렬하고 색을 변화시켜서, 북캐롤라이나의 급유아사망 신드롬 수의 등치 지역도를 만들 수 있습니다 :

.. image:: /images/projects/postgis/postgis_sidsmap.png
  :scale: 50 %
  :alt: SIDS data mapped
  :align: center




pgAdmin III 알기
================================================================================

데이터 베이스를 비공간적으로 질의하고 수정하기 위해서 Databases 메뉴의 graphical database client ``pgAdmin III`` 를 이용할 수 있습니다. 이는 PostgreSQL의 공식적인 클라이언트이며, 데이터 테이블을 가공하기 위해 SQL을 이용할 수 있도록 합니다. 

.. image:: /images/projects/postgis/postgis_adminscreen1.png
  :scale: 50 %
  :alt: pgAdmin III
  :align: center

.. image:: /images/projects/postgis/postgis_adminscreen2.png
  :scale: 50 %
  :alt: pgAdmin III
  :align: center

시도해 보기
================================================================================

추가적으로 다음도 실행해 보십시오 :

#. ``st_buffer(the_geom)``, ``st_transform(the_geom,25831)``, ``x(the_geom)`` 와 같은 공간적 기능들을 더 시도해 보십시오 - http://postgis.org/documentation/ 에서 자세한 내용을 알 수 있습니다.

#. 커맨드 라인에서 ``pgsql2shp`` 를 이용하여 테이블을 셰이프 파일로 보내 보십시오. 

#. 데이터 베이스의 데이터를 불러오고 내보내기 위해서 커맨트 라인에 ``ogr2ogr`` 을 실행해 보십시오. 


다음은?
================================================================================

여기까지 PostGIS를 이용하기 위한 시작단계에 불과합니다. 더 많은 기능들을 다음에서 확인해 보십시오.

PostGIS Project home

 http://postgis.org

PostGIS Documentation

 http://postgis.org/documentation/
