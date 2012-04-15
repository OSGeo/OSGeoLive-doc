:Author: OSGeo-Live
:Version: osgeo-live5.0
:License: Creative Commons

.. _pycsw-overview-es:

.. image:: ../../images/project_logos/logo-pycsw.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://pycsw.org/


pycsw
=====

Catálogo de Metadatos
~~~~~~~~~~~~~~~~~~~~~

pycsw es una implementación de servidor OGC CSW escrito en Python.

pycsw implementa la clausula 10 (protocolo de conexión HTTP (Servicios de catálogos para la Web, CSW)) de  la Especificación de Implementación OpenGIS de Servicio de Catálogo, versión 2.0.2. Desarrollo iniciado en 2010 (formalmente anunciado en 2011).

pycsw permite la publicación y descubrimiento de metadatos geoespaciales.  Los repositorios existentes de metadatos geoespaciales pueden estar expuestos en OGC:CSW 2.0.2.

pycsw es software de código abierto, liberado bajo la licencia MIT, y soporta la mayor parte de las plataformas (Windows, Linux, Mac OS X).


Características principales
---------------------------

* pasa completamente las herramientas de prueba OGC CITE CSW (103/103)
* implementa los Servicios de Descubrimiento INSPIRE 3.0
* implementa el Perfil de Aplicación de Metadatos ISO 1.0.0
* implementa el Perfil de Aplicación FGDC CSDGM para CSW 2.0
* soporta modelos de metadatos ISO, Dublin Core, DIF, FGDC
* configuración simple
* capacidades transaccionales (CSW-T)
* configuración flexible de repositorios
* búsqueda distribuida de catálogos institucionales
* validación de esquemas XML en tiempo real
* arquitectura de extensiones (`plugis`) para para perfiles extensibles
* muy ligero (Python + CGI)

Estándares implementados
------------------------

* OGC CSW 	2.0.2
* OGC Filter 	1.1.0
* OGC OWS Common 	1.0.0
* OGC GML 	3.1.1
* Dublin Core 	1.1
* SOAP 	1.2
* ISO 19115 	2003
* ISO 19139 	2007
* ISO 19119 	2005
* NASA DIF 	9.7
* FGDC CSDGM 	1998


Detalles 
--------

**Sitio Web:** http://pycsw.org

**Licencia:** `MIT`_

**Versión de Software:** 1.0.0

**Plataformas soportadas:** Windows, Linux, Mac

**Interfaces API:** Python

**Soporte:** http://pycsw.org/support.html


.. _`MIT`: http://pycsw.org/docs/license.html#license

