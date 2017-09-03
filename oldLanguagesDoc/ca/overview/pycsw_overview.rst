:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Anna Muñoz Bollas
:Version: osgeo-live6.5
:License: Creative Commons

.. image:: /images/project_logos/logo-pycsw.png
  :alt: project logo
  :align: right
  :target: http://pycsw.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

pycsw
================================================================================

Catàleg de metadades
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pycsw permet als usuaris publicar a la web un catàleg de descripcions de conjunts de dades (metadades), emprant interfícies i formats basats en estàndards, de manera que es pugui consultar i actualitzar per part d'els clients del catàleg. pycsw és fàcil de configurar en un servidor web Apache i pot accedir als registres de metadades emmagatzemats com arxius XML en una base de dades.

Les metadades són "dades sobre les dades", i emmagatzemen coses com ara la data de creació, autor, títol, àrea d'interès, etc, i normalment es codifiquen com a fitxers XML, seguint els estàndards internacionals com ISO 19115, ISO 19139 i FGDC CSDGM.

pycsw és una implementació en `Python`_  de :doc:`OGC Catalogue Services for the Web (CSW) standard<../standards/csw_overview>`. 
El projecte està certificat com a `OGC Compliant`_, i és una `OGC Reference Implementation`_. L'estàndard CSW defineix interfícies comunes per descobrir, navegar i interrogar metadades de dades espacials, serveis web i recursos relacionats.

pycsw és codi obert, amb una llicència MIT, i es pot executar a la majoria de sistemes operatius (Windows, Linux, Mac OS X).

.. image:: /images/projects/pycsw/pycsw_overview.jpg
  :scale: 50 %
  :alt: project logo
  :align: right

Característiques principals
--------------------------------------------------------------------------------

* segueix totalment l'estàndard OGC CSW 2.0.2
* supera completament el conjunt de proves OGC CITE CSW (103/103)
* implementa INSPIRE Discovery Services 3.0
* implementa ISO Metadata Application Profile 1.0.0
* implementa FGDC CSDGM Application Profile for CSW 2.0
* Implementa Search/Retrieval via protocol de recerca URL (SRU)
* implemnenta OpenSearch
* suporta models de metadades ISO, Dublin Core, DIF, FGDC i Atom
* desplegament CGI o WSGI
* configuració senzilla
* capacitat transaccional (CSW-T)
* configuració del repositori flexible
* Conectivitat a GeoNode
* Conectivitat a Open Data Catalog
* cerca distribuïda a catàlegs federats
* validació d'esquemes XML en temps real
* arquitectura de perfils extensible amb plugin
* molt lleuger (Python + CGI)


Estàndards implementats
--------------------------------------------------------------------------------

Estàndards OGC:

* CSW 	2.0.2
* Filter 	1.1.0
* OWS Common 	1.0.0
* GML 	3.1.1
* OGC SFSQL		1.2.1

Estàndards de metadades

* Dublin Core 	1.1
* SOAP 	1.2
* ISO 19115 	2003
* ISO 19139 	2007
* ISO 19119 	2005
* NASA DIF 	9.7
* FGDC CSDGM 	1998
* SRU	1.1
* A9 OpenSearch		1.1

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://pycsw.org

**Llicència:** `MIT`_

**Versió de programari:** 1.6.1

**Sistemes operatius:** Windows, Linux, Mac

**Interfícies API:** Python

**Suport:** http://pycsw.org/docs/support.html

.. _`Python`: http://www.python.org/
.. _`MIT`: http://pycsw.org/docs/license.html#license
.. _`OGC Compliant`: http://www.opengeospatial.org/resource/products/details/?pid=1104 
.. _`OGC Reference Implementation`: http://demo.pycsw.org/ 

Guia ràpida
--------------------------------------------------------------------------------

* :doc:`Documentació de la guia ràpida <../quickstart/pycsw_quickstart>`

