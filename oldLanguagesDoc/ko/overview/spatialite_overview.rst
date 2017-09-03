:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-spatialite.png
  :alt: project logo
  :align: right
  :target: http://www.gaia-gis.it/spatialite/


SpatiaLite
================================================================================

공간적 데이터베이스
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SpatiaLite는 공간적 기능이 추가된 SQLite_ 데이터 베이스 엔진입니다. 

SQLite는 대중적인 DBMS로서, 간단하고 사용하기 쉬우며 저용량입니다. 각 SQLite 데이터 베이스는 파일입니다. 즉, 자유롭게 복사, 압축이 가능하고 문제없이 LAN이나 WEB으로 전송이 가능합니다.

또한 파일들은 이동이 가능하며, 같은 데이터 베이스 파일은 Windows, Linux, MacOs 등에서 작동 가능합니다.

.. _SQLite: http://www.sqlite.org/

.. image:: /images/projects/spatialite/spatialite.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

주요 사항
--------------------------------------------------------------------------------

SpatiaLite 익스텐션은 SQLite가 OGC에 적합한 공간적 데이터를 지원할 수 있도록 합니다.

* 표준 WKT와 WKB 형식 지원
* AsText(), GeomFromText(), Area(), PointN() 등의 SQL 공간적 기능 실행
* GEOS를 통해 완전한 OpenGis 기능을 지원하고, Overlaps(), Touches(), Union(), Buffer()와 같은 정교한 공간적 분석 기능을 가능하게 함
* OpenGis 사양에 따른 완전한 공간적 메타데이터 지원
* 대체적인 기하적 표기 지원 - EWKT, GML, KML, GeoJSON 등
* 셰이프 파일의 불러오기와 내보내기 지원
* PROJ.4와 EPSG 측지 변수 데이터셋을 통한 좌표 재투영 지원
* GNU libiconv를 통한 지역 charsets 지원
* SQLite의 RTree 익스텐션에 기반하여 실제 공간 지표 시행
* VirtualShape 익스텐션은 SQLite가 VIRTUAL TABLEs로서 셰이프 파일에 접근할 수 있도록 함
* 외부 셰이프 파일을 불러오거나 변환할 필요 없이 표준 SQL 질의를 할 수 있음
* VirtualText 익스텐션은 SQLite가 VIRTUAL TABLEs로서 CSV/TxtTab 파일에 접근할 수 있도록 함  
* VirtualText 익스텐션은 SQLite가 VIRTUAL TABLEs로서 xls 스프레드시트 테이블에 접근할 수 있도록 함 
* 외부 CSV/TxtTab 파일이나 Excel 테이블을 불러오거나 변환할 필요 없이 표준 SQL 질의를 할 수 있음
* GUI 툴은 쉬운 방식으로 위 모든 것을 지원함


자세한 사항
--------------------------------------------------------------------------------

**Website:** http://www.gaia-gis.it/gaia-sins/

**Licence:** MPL v1.1 and GPL v3

**Software Version:** spatialite 3.1.0a / librasterlite 1.1 / spatialite-gui 1.5.0 / spatialite-gis 1.0.0

**Supported Platforms:** Linux, Mac, Windows

**API Interfaces:** C


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/spatialite_quickstart>`

