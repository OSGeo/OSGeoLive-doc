:Author: Johannes Wilden
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Anna Muñoz
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-deegree.png
  :scale: 80 %
  :alt: logo del projecte
  :align: right
  :target: http://deegree.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: Projecte OSGeo
  :align: right
  :target: http://www.osgeo.org


deegree
================================================================================

Serveis Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

deegree és lliure, estable, molt potent i fàcil d'usar. deegree és el conjunt més 
complet d'implementacions d'estàndards de l'Open Geospatial Consortium (OGC)
en programari lliure i de codi obert, des de Serveis Transaccionals *Web Feature Service* 
fins a la visualització de dades tridimensionals mitjançant Serveis *Web Terrain* i molt més!

degree és una solució per a Sistemes d'Informació Geogràfica i per a Infraestructures de Dades Espacials (IDE's) 
tant per plataformes Web com per Desktop. Es composa d'un complet conjunt d'APIs Java així com d'un potent mapeig 
objecte-relacional per esquemes espacials simples i complexos. A més a més, degree proporciona un conjunt de Serveis Web estàndards
per servir mapes, entitats (*features*) i serveis de catàleg, així com sensors i serveis de processament.

degree proporciona una IDE preparada per usar-la amb dades pròpies i que acompleix els requeriments d'usuari.


.. image:: ../../images/screenshots/1024x768/deegree_mainpage.jpg
  :scale: 50%
  :alt: logo del projecte
  :align: right

Exemple d'algunes de les seves característiques
--------------------------------------------------------------------------------

* Web Map Service

  * molt flexible respecte al contingut de les capes de dades
  * suporta i utilitza les definicions d'estil (SDL 1.0)
  * capacitat de generar mapes temàtics mitjançant gràfics (sectorial, barres o histograma, lineal)
  * fonts de dades: tots els Serveis Web OGC usuals (WMS, WFS, WCS), PostgreSQL/PostGIS, Oracle Spatial, i qualssevol sentencia SQL que generi contingut per un servei WMS.
  * molt estable, fins i tot a gran escala
  * suporta HTTP GET, HTTP POST així com petició d'informació sobre les geometries (*features*)
  * certificat d'acompliment de l'estàndard OGC

* Web Feature Service

  * suport de geometries simples i complexes
  * transformació de coordenades 'al vol', *OTF - On The Fly*, per més de 3000 Sistemes de Referència.
  * suporta formats de sortida flexibles
  * fàcilment millorable per donar suport a la directiva INSPIRE
  
* Web Coverage Service

  * suporta peticions HTTP GET y HTTP POST
  * fonts de dades: imatges (tif, png, jpeg, gif, bmp); GeoTIFF; arxius ECW; Oracle GeoRaster 
  * gran velocitat d'accés per cobertures molt grans.
  
* Catalogue Service

  * fonts de dades: PostgreSQL-Database; Oracle-Database
  * peticions que suporta: GetCapabilities; DescribeRecord; GetRecordById; GetRecords; Transaction - Insert, Update, Delete; Harvesting
  
* Web Map Print Service

  * suporta diferents formats d'impressió (HTML, PDF, PNG)
  * execució de processos de llarga durada
  * suport de peticions asíncrones per impressions a gran escala
  * emmagatzemament de les peticions en base de dades per tal de que estiguin disponible inclús si el servei WPS no està actiu o hi ha problemes amb la màquina.
  
* Web Perspective View Service

   * fonts de dades: remote/local-WMS, remote/local-WFS, local-WCS, Postgres/PostGIS, Oracle Spatial
   * models d'elevació tant ràster com vectorial
   * peticions: Get3DFeatureInfo, GetView
   
Estàndards implementats
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.1.0*, 1.1.1, 1.3.0*
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0 (2.0 en procés)
* OGC Web Coverage Service (WCS) 1.0.0* (1.1.0 en procés)
* OGC Catalogue Service-Web (CSW) 2.0.0, 2.0.1, 2.0.2; incloent OGC ISOAP 1.0 i el perfil INSPIRE
* OGC Web Perspective View Service (WPVS) Draft 6
* OGC Web Coordinate Transformation Service (WCTS) 0.4.0
* OGC Web Processing Service (WPS) 0.4.0, 1.0.0
* OGC Sensor Observation Service (SOS) 1.0.0

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://deegree.org

**Llicències:** LGPL

**Versió del programari:** 3.2-pre3

**Plataformes suportades:** Windows, Linux

**Interfícies de desenvolupament:** Java

**Suport:** http://wiki.deegree.org/deegreeWiki/GettingSupport


Guia d'inici ràpid
--------------------------------------------------------------------------------

* :doc:`Documentació de la guia d'inici ràpid <../quickstart/deegree_quickstart>`
