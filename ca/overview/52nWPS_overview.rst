:Author: Bastian Schaeffer, Kristof Lange
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Anna Muñoz
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: logotip del projecte
  :align: right
  :target: http://52north.org/wps


52°North WPS
================================================================================

Servei Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

El `Servei Web de Processament <../standards/wps_overview.html>`_ (Web Processing Service, WPS) del projecte 52°North  
permet l'accés web als algorismes de processament geoespacial de Sextante i ArcGIS Server, 
així com a funcions pròpies. Els algorismes poden ser tan simples com determinar la diferència 
entre els casos de grip en dues estacions de l'any diferents, o tan complexos com un model global de canvi climàtic.

.. image:: ../../images/screenshots/1024x768/52n_test_client.png
  :scale: 50 %
  :alt: captura de pantalla
  :align: right

Característiques principals
--------------------------------------------------------------------------------

Funcions del nucli GIS:

* SimpleBufferAlgorithm
* DouglasPeuckerAlgorithm
* IntersectionAlgorithm
	
Algorismes en background disponibles mitjançant:

* Sextante
* ArcGIS Server

Formats d'entrada/sortida que es suporten:

* Vector: GML2, GML3, SHP files, KML, WKT (Well-known Text)
* Raster: Geotiff, AsciiGrid

El client es basa en un navegador (browser).

Estàndards Implementats
--------------------------------------------------------------------------------

* OGC Web Processing Service (WPS)
* OGC GML2 SimpleFeatures
* OGC GML3 SimpleFeatures

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://52north.org/wps

**Llcència:** GPL

**Versió del programari:** WPS 2.0 RC6

**Plataformes suportades:** Windows, Linux, Mac

**Suport comercial:** http://www.52north.org


Guia d'inici ràpid
--------------------------------------------------------------------------------

* :doc:`Documentació de la guia d'inici ràpid <../quickstart/52nWPS_quickstart>`


