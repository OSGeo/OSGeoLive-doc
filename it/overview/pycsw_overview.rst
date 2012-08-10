:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Translator: Margherita Di Leo
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

Catalogo per i metadati
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pycsw consente agli utenti di pubblicare un catalogo delle descrizioni dei set di dati (metadati) per il web, utilizzando interfacce e formati basati su standard, tali da poter essere interrogati e aggiornati dai clients del catalogo. pycsw è semplice da configurare all'interno di un server web Apache e può accedere ai record dei metadati memorizzati come file XML all'interno di un database.

Il metadato e` un 'dato sul dato', memorizzando cose quali la data di creazione, l'autore, il titolo, l'area d'interesse, ecc, e di solito è codificato come file XML, secondo gli standard internazionali quali ISO 19115, ISO 19139 e FGDC CSDGM.

pycsw è un'implementazione in `Python`_ del: doc: :doc:`OGC Catalogue Services for the Web (CSW) standard<../standards/csw_overview>`. Lo standard CSW definisce interfacce comuni per scoprire, esplorare e interrogare i metadati sui dati territoriali, servizi web e le relative risorse.

pycsw e` Open Source, rilasciato con una licenza MIT, e funziona su tutte le principali piattaforme (Windows, Linux, Mac OS X).

.. image:: ../../images/screenshots/1024x768/pycsw_overview.jpg
  :scale: 50 %
  :alt: project logo
  :align: right

Caratteristiche di base
--------------------------------------------------------------------------------

* supera completamente la test suite OGC CITE CSW (103/103)
* implementa INSPIRE Discovery Services 3.0
* implementa ISO Metadata Application Profile 1.0.0
* implementa FGDC CSDGM Application Profile per CSW 2.0
* supporta i modelli di metadati ISO, Dublin Core, DIF, FGDC 
* configurazione semplice 
* capacità transazionali (CSW-T)
* Configurazione repository flessibile
* Catalogo federato di ricerca distribuita
* validazione dello schema XML in tempo reale
* architettura dei plugin a profilo estendibile 
* Molto leggero (Python + CGI)

Standard implementati
--------------------------------------------------------------------------------

Standard OGC:

* CSW 	2.0.2
* Filter 	1.1.0
* OWS Common 	1.0.0
* GML 	3.1.1

Standard di metadati:

* Dublin Core 	1.1
* SOAP 	1.2
* ISO 19115 	2003
* ISO 19139 	2007
* ISO 19119 	2005
* NASA DIF 	9.7
* FGDC CSDGM 	1998

Dettagli
--------------------------------------------------------------------------------

**Website:** http://pycsw.org

**Licence:** `MIT`_

**Software Version:** 1.2.0

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** Python

**Support:** http://pycsw.org/docs/support.html

.. _`Python`: http://www.python.org/
.. _`MIT`: http://pycsw.org/docs/license.html#license

Guida rapida
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/pycsw_quickstart>`

