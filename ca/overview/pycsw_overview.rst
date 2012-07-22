:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons

.. image:: ../../images/project_logos/logo-pycsw.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://pycsw.org/

pycsw
================================================================================

Catàleg de metadades
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ycsw permet als usuaris publicar a la web un catàleg de descripcions de conjunts de dades (metadades), emprant interfícies i formats basats en estàndards, de manera que es pugui consultar i actualitzar per part d'els clients del catàleg. pycsw és fàcil de configurar en un servidor web Apache i pot accedir als registres de metadades emmagatzemats com arxius XML en una base de dades.

Les metadades són "dades sobre les dades", i emmagatzemen coses com ara la data de creació, autor, títol, àrea d'interès, etc, i normalment es codifiquen com a fitxers XML, seguint els estàndards internacionals com ISO 19115, ISO 19139 i FGDC CSDGM.

pycsw és una implementació en `Python`_  de :doc:`OGC Catalogue Services for the Web (CSW) standard<../standards/csw_overview>`. L'estàndard CSW defineix interfícies comunes per descobrir, navegar i interrogar metadades de dades espacials, serveis web i recursos relacionats.

pycsw és codi obert, amb una llicència MIT, i es pot executar a la majoria de sistemes operatius (Windows, Linux, Mac OS X).

.. image:: ../../images/screenshots/1024x768/pycsw_overview.jpg
  :scale: 50 %
  :alt: project logo
  :align: right

Característiques principals
--------------------------------------------------------------------------------

* supera completament el conjunt de proves OGC CITE CSW (103/103)
* implementa INSPIRE Discovery Services 3.0
* implementa ISO Metadata Application Profile 1.0.0
* implementa FGDC CSDGM Application Profile for CSW 2.0
* suporta models de metadades ISO, Dublin Core, DIF, i FGDC
* configuració senzilla
* capacitat transaccional (CSW-T)
* configuració del repositori flexible
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

Estàndards de metadades

* Dublin Core 	1.1
* SOAP 	1.2
* ISO 19115 	2003
* ISO 19139 	2007
* ISO 19119 	2005
* NASA DIF 	9.7
* FGDC CSDGM 	1998

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://pycsw.org

**Llicència:** `MIT`_

**Versió de programari:** 1.2.0

**Sistemes operatius:** Windows, Linux, Mac

**Interfícies API:** Python

**Suport:** http://pycsw.org/docs/support.html

.. _`Python`: http://www.python.org/
.. _`MIT`: http://pycsw.org/docs/license.html#license

Guia ràpida
--------------------------------------------------------------------------------

* :doc:`Documentació de la guia ràpida <../quickstart/pycsw_quickstart>`

