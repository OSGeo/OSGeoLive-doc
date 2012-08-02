.. Geospatial Standards documentation master file, created by
   sphinx-quickstart on Mon Jul 19 08:52:52 2010.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Open Geospatial Consortium Standards
================================================================================

소개
--------------------------------------------------------------------------------
Open Geospatial Consortium (OGC)은 지리정보를 세계 정보 인프라의 핵심적인 부분으로 만들기 위해서 1994년에 설립되었습니다. OGC 회원 즉, 기술의 제공자와 사용자는 개발자가 다른 정보 체계와 쉽게 지리공간 정보 등을 교환할 수 있도록 오픈 인터페이스 기준, 관련 인코딩 기준, 모범 사례 등을 협력적으로 개발합니다. 따라서 geo-tagging과 messaging을 위해서는 지구 관측 위성 자료의 획득 및 웹과 인코딩 위치에서의 지도 이미지 표현 등이 요구됩니다. OGC 도메인 워킹 그룹 (http://www.opengeospatial.org/projects/groups/wg)에서 OGC의 광범위한 활동 사항을 보실 수 있습니다.

OGC Baseline과 OGC Reference Model
--------------------------------------------------------------------------------

OGC Standards Baseline은 인터페이스, 인코딩, 프로필, 어플리케이션 스키마, 모범 사례 문서화 등을 위한 OGC 기준 (http://www.opengeospatial.org/standards)으로 구성되어 있습니다. OGC Reference Model (ORM) (http://www.opengeospatial.org/standards/orm) 은 이러한 기준과 이들과 관련 ISO 기준의 관계를 설명하고 있습니다. ORM은 OGC 기준의 개요를 제공하고 특정 사례의 설계를 정의하는 유용한 정보들을 제공합니다.  

OGC 기준을 이용하여 웹 서비스 어플리케이션을 개발하는 것은 (또한 OGC 기준들의 관계의 파악 역시) 웹 서비스 환경에서 핵심 기능으로서의 publish, find, bind에 대한 고려를 도와줍니다. 

* Publish: 정보 제공자는 그들의 정보를 광고한다.
* Find: 최종 이용자는 실시 시간으로 그들이 필요한 정보를 검색할 수 있다.
* Bind: 최종 이용자는 실시 시간으로 정보에 접근하고 이용할 수 있다.

최근에 개발된 대부분의 OGC 기준들은 웹 서비스 환경을 위한 기준이며, 이러한 기준들을 통틀어 OGC Web Services (OWS)라고 칭합니다. 아래 그림은 OGC 웹 서비스의 일반적인 설계 스키마를 보여줍니다. 이 스키마는 다양한 지오프로세싱과 위치활동에 참여하는 서비스의 일반적인 그룹들을 명시하고 있습니다.


.. figure:: ../../images/standards/publish_find_bind.jpg
  :scale: 55%
  :alt: Web services framework of OGC geoprocessing standards

그림의 축약어는 아래에 정의되어 있습니다. 일부는 “OGC 기준” 이며, 일부는 “Discussion Papers”, “Requests”, “Recommendation Papers”에서 공개되고 있습니다. (work candidate 기준의 일부는 아직 공개되지 않고 있지만, OGC 회원들은 열람할 수 있습니다.) 

.. add all standard overview documents to the toc and add all others right behind

.. toctree::
   :maxdepth: 1
   :glob:
   
   *_overview

* Sensor Planning Service (SPS)
* Web Terrain Service (WTS)
* Grid Coverage Service
* Coordinate Transformation Service
* Web Coverage Processing Service (WCPS)
* Web Map Tile Service (WMTS)
* Simple Features (SF)
* Sensor Web Enablement (SWE)
* XML for Image and Map Annotation (XIMA)
* CityGML
* GeosciML
* GML in JPEG 2000
* Observations and Measurements (O&M)
* Symbology Encoding
* Transducer Markup Language (TML)


.. links to standards
  * :doc:`wms_overview` (http://www.opengeospatial.org/standards/wms)
  * :doc:`wfs_overview` (http://www.opengeospatial.org/standards/wfs)
  * :doc:`wcs_overview` (http://www.opengeospatial.org/standards/wcs)
  * :doc:`wps_overview` (http://www.opengeospatial.org/standards/wps)
  * :doc:`csw_overview` (http://www.opengeospatial.org/standards/specifications/catalog)
  * :doc:`sos_overview` (http://www.opengeospatial.org/standards/sos)
  * Sensor Model Language (SensorML) (http://www.opengeospatial.org/standards/sensorml) 
  * Sensor Planning Service (SPS) (http://www.opengeospatial.org/standards/sps)
  * Web Terrain Service (WTS) (http://portal.opengeospatial.org/files/?artifact_id=1072)
  * Grid Coverage Service (http://www.opengeospatial.org/standards/gc)
  * Coordinate Transformation Service (http://www.opengeospatial.org/standards/ct)
  * Web Coverage Processing Service (WCPS) (http://www.opengeospatial.org/standards/wcps)
  * Web Map Tile Service (WMTS) (http://www.opengeospatial.org/standards/wmts)
  * :doc:`gml_overview` (http://www.opengeospatial.org/standards/gml) 
  * :doc:`kml_overview` (http://www.opengeospatial.org/standards/kml)
  * :doc:`sensorml_overview` (http://www.opengeospatial.org/standards/sensorml)
  * Styled Layer Descriptor (SLD) (http://www.opengeospatial.org/standards/sfc) 
  * Filter Encoding (http://www.opengeospatial.org/standards/filter)
  * Simple Features (SF) (http://www.opengeospatial.org/standards/sfa) 
  * Sensor Web Enablement (SWE) (http://www.opengeospatial.org/ogc/markets-technologies/swe)
  * XML for Image and Map Annotation (XIMA) (http://portal.opengeospatial.org/files/?artifact_id=1020) 
  * CityGML (http://www.opengeospatial.org/standards/citygml)
  * GeosciML (http://www.geosciml.org/)
  * GML in JPEG 2000 (http://www.opengeospatial.org/standards/gmljp2)
  * Observations and Measurements (O&M) (http://www.opengeospatial.org/standards/om)
  * Symbology Encoding (http://www.opengeospatial.org/standards/symbol)
  * Transducer Markup Language (TML) (http://www.opengeospatial.org/standards/tml)

다음도 참고하십시오:
--------------------------------------------------------------------------------

* OGC 기준의 종합적 목록 : http://www.opengeospatial.org/standards/
* IGARSS 2010에 제공되는 OGC 지침서 : http://www.ogcnetwork.net/node/1481 
* OGC 네트워크 (http://www.ogcnetwork.net/learn).
