:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-QGIS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.qgis.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
QGIS Quickstart 
********************************************************************************

Quantum GIS (QGIS)는 이용이 쉬운 데스크탑 GIS 클라이언트로서 데이터의 시각화, 관리, 편집, 분석을 가능하게 하고 지도화할 수 있게 해줍니다.

이 Quick Start는 다음을 설명해줍니다 :

  * 기존 QGIS 프로젝트 업데이트
  * 단순 벡터 레이어로 새로운 QGIS 프로젝트 만들기


QGIS 프로젝트 편집
================================================================================

#. :menuselection:`Desktop --> Desktop GIS --> Quantum GIS`.

#. menu에서 :menuselection:`File --> Open Project...` 선택.

#. :file:`QGIS-NaturalEarth-Example.qgs` 선택 후 :guilabel:`Open` 클릭.

   * 세계 지도를 볼 수 있습니다.

#. Layers에서 **10m_populated_places_simple** 체크

   * 사람이 거주하는 지역을 볼 수 있습니다:

     .. image:: /images/screenshots/1024x768/qgis.png
        :scale: 50 %

#. Layers에서 **10m_rivers_lake_centerlines** 더블 클릭.

#. Outline Options에서 다른 푸른 계열의 색으로 변환.

#. :guilabel:`OK` 클릭.

   * 강이 다른 색으로 표현됩니다.


새로운 QGIS 프로젝트 만들기
================================================================================

#. :menuselection:`File --> New Project` 선택.

#. :menuselection:`Layer --> Add Vector Layer...` 클릭.

#. :file:`/home/user/data/natural_earth/10m_admin_0_countries.shp` 검색.

#. :guilabel:`Open` 클릭.

   * 세계 지도를 볼 수 있습니다.


PostGIS 공간 데이터 베이스로 연결
================================================================================

#. :menuselection:`File --> New Project` 선택.

#. :menuselection:`Layer --> Add PostGIS Layers...` 선택.

   * Natural Earth와 OpenStreetMap 데이터 베이스 모두 열람가능합니다.

#. OpenStreetMap 커넥션이 선택된 상태에서 :guilabel:`Connect` 클릭.

   * 데이터 베이스 리스트가 출력됩니다.

#. ``planet_osm_roads`` 선택 후, :guilabel:`Add` 클릭.

   * 더 자세한 내용은 :doc:`PostGIS Quickstart <postgis_quickstart>` 를 참고하십시오.

GRASS 툴박스 이용하기
================================================================================

#. :menuselection:`File --> New Project` 선택.

#. :menuselection:`Plugins --> Manage Plugins` 선택.

#. Filter box에 ``grass`` 입력 후, `GRASS` plugin 선택. :guilabel:`Ok` 클릭.

   * `Plugin` 메뉴에 새로운 `GRASS` 메뉴가 생성되고 새로운 툴바가 나타날 것입니다.

#. :menuselection:`Plugins --> GRASS --> Open mapset` 선택.

   * GRASS GIS 데이터 베이스는 자동적으로 디스크의 `~/grassdata` 로 설정됩니다.

#. `nc_basic_smp` Location과 `user1` working mapset을 선택한 후, click :guilabel:`Ok` 를 클릭하세요.

#. :menuselection:`Plugins --> GRASS --> Add GRASS raster layer` 선택.

   * PERMANENT mapset에서 `elevation_shade` 지도를 선택한 후 :guilabel:`Ok` 클릭.

#. :menuselection:`Plugins --> GRASS --> Add GRASS raster layer` 선택.

   * PERMANENT mapset에서 `elevation` 지도 선택 후 :guilabel:`Ok` 클릭.

   * QGIS layer list에서 `elevation` 지도를 더블 클릭 후 transparency를 65%로 지정.

#. :menuselection:`Plugins --> GRASS --> Add GRASS vector layer` 선택.

   * PERMANENT mapset에서 `roadsmajor` 지도 선택 후, :guilabel:`Ok` 클릭.

이 외 다양한 GRASS 분석 모듈의 이용이 가능합니다.

.. maybe describe a raster processing task instead of a NVIZ one?

#. :menuselection:`Plugins --> GRASS --> Open GRASS tools` 선택.

   * analysis 툴의 리스트가 출력됩니다.

#. Modules List의 Filter box에 ``nviz`` 를 입력한 후 `NVIZ` 를 선택하십시오. 툴박스 창을 더 크게 보이려면 창의 모퉁이쪽을 드래그해 보십시오.

#. 나타나는 새로운 모듈 탭에서 map for elevation으로 `elevation` 지도를 선택하십시오.

#. 벡터 오버레이에 `roadsmajor` 를 선택한 후, :guilabel:`Run` 클릭.

#. NVIZ 3D view가 나타나면 창을 최대화하고 왼쪽의 compass 박스에서 positioning puck을 드래그하십시오.

#. :menuselection:`Visualize --> Raster surfaces` 를 선택한 후, `fine` 해상도를 1로 설정하고, 상단 왼쪽의 초록색 DRAW 버튼을 클릭하고 잠시 기다리십시오.


Sextante 툴박스 이용하기
================================================================================

#. :menuselection:`Plugins --> Manage Plugins` 선택.

#. Filter box에 ``sextante`` 입력 후, `SEXTANTE` 플러그인 선택. :guilabel:`Ok` 클릭.

   * 새로운 `Analysis` 메뉴와 툴바가 나타날 것입니다.

#. :menuselection:`Analysis --> Sextante Toolbox` 선택.

   * 다양한 프로세싱 툴을 가진 새로운 툴바가 화면의 오른쪽에 나타날 것입니다.


OpenStreetMap 플러그인 이용
================================================================================

#. Xubutu :menuselection:`Applications --> Accessories` 메뉴에서 Terminal Emulator 열기.

   * 홈 디렉터리에서 OSM 데이터의 복사 :

::

  cp data/osm/feature_city_CBD.osm.bz2 .
  bzip2 -d feature_city_CBD.osm.bz2

#. QGIS에서 :menuselection:`File --> New Project` 선택.

#. :menuselection:`Plugins --> Manage Plugins` 선택.

#. Filter box에 ``open`` 입력 후 `OpenStreetMap` 플러그인 선택. :guilabel:`Ok` 클릭.

   * 새로운 `Web` 메뉴와 툴바가 나타날 것입니다.

#. :menuselection:`Web --> OpenStreetMap --> Load OSM from file` 선택.

#. 홈 디렉터리로 복사한 `feature_city_CBD.osm` 선택.

#. 체크 박스에서 `name`, `highway`, `amenity` 선택.

#. :guilabel:`Medium scale` rendering 선택 후, :guilabel:`Ok` 클릭.


다음은?
================================================================================

QGIS의 고급 기능은 다음에서 설명서를 확인하십시오 `OSGeo-Live QGIS tutorials`_.

QGIS에 대한 사항은 QGIS 홈페이지의 `Documentation page`_ 를 참조하십시오.

OSGeo-Live는 `A Gentle Introduction to GIS`_  와 `QGIS User Guide`_ 를 포함하고 있습니다.

.. _`OSGeo-Live QGIS tutorials`: ../../qgis/tutorials/en/
.. _`Documentation page`: http://www.qgis.org/en/documentation.html
.. _`A Gentle Introduction to GIS`: ../../qgis/qgis-1.0.0_a-gentle-gis-introduction_en.pdf
.. _`QGIS User Guide`: ../../qgis/QGIS-1.8-UserGuide-en.pdf
