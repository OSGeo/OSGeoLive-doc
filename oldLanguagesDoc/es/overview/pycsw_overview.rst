:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Reviewer: Cameron Shorter, Jirotech
:Translator: Samuel Mesa
:Translator: Roberto Antolín
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
===============================================================================

Catálogo de metadatos
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pycsw permite al usuario publicar catálogos de metadatos en la web, usando
interfaces y formatos basado en estándares, el modo que pueden ser consultados y
actualizados por clientes de catálogos. pycsw es fácil de configurar en un
servidor web Apache y puede acceder a metadatos almacenados como archivos XML en
una base de datos.

Metadatos son 'datos sobre los datos', recogiendo información como fecha de
creación, autor, título, área de interés, etc., y está normalmente codificado
como ficheros XML, siguiendo estándares internacionales como ISO 19115, ISO
19139 y FGDC CSDGM.

pycsw una implementación en `python`_ del :doc:`Estándar de servicio de
catálogos web (CSW) de OGC <../standards/csw_overview>`. El proyecto está
certificado como que `cumple con los estándares OGC`_, y es una `referencia de
implementación OGC`_. El estándar CSW define interfaces comunes para encontrar,
explorar y consultar metadatos sobre datos espaciales, servicios web y recursos
relacionados.

pycsw es software de código abierto, liberado bajo la licencia MIT, y es ejecutable
en las mayores plataformas (Windows, Linux, Mac OS X).

.. image:: /images/screenshots/1024x768/pycsw_overview.jpg
  :scale: 50 %
  :alt: project logo
  :align: right

Características principales
--------------------------------------------------------------------------------

* cumple enteramente con OGC CSW 2.0.2
* pasa completamente las herramientas de prueba OGC CITE CSW (103/103)
* implementa los Servicios de Descubrimiento INSPIRE 3.0
* implementa el Perfil de Aplicación de Metadatos ISO 1.0.0
* implementa el Perfil de Aplicación FGDC CSDGM para CSW 2.0
* implementa el protocolo de búsqueda via URL (SRU) Búsqueda/Recuperación 
* implementa OpenSearch
* soporta modelos de metadatos ISO, Dublin Core, DIF, FGDC
* utilización de CGI o WSGI
* configuración simple
* capacidades transaccionales (CSW-T)
* configuración flexible de repositorios
* conectividad con GeoNode
* concectividad con `Open Data Catalog`
* búsqueda distribuida de catálogos institucionales
* validación de esquemas XML en tiempo real
* arquitectura de extensiones (`plugis`) para para perfiles extensibles
* muy ligero (Python + CGI)

Estándares implementados
------------------------

Estándares OGC:

* CSW 	2.0.2
* Filter 	1.1.0
* OWS Common 	1.0.0
* GML 	3.1.1

Estándares de metadatos:

* Dublin Core 	1.1
* SOAP 	1.2
* ISO 19115 	2003
* ISO 19139 	2007
* ISO 19119 	2005
* NASA DIF 	9.7
* FGDC CSDGM 	1998
* SRU   1.1
* A9 OpenSearch 1.1

Detalles 
--------

**Sitio web:** http://pycsw.org

**Licencia:** `MIT`_

**Versión del software:** 1.6.1

**Plataformas soportadas:** Windows, Linux, Mac

**Interfaces API:** Python

**Soporte:** http://pycsw.org/docs/support.html

.. _`Python`: http://www.python.org/
.. _`MIT`: http://pycsw.org/docs/license.html#license
.. _`cumple con los estándares OGC`: http://www.opengeospatial.org/resource/products/details/?pid=1104
.. _`referencia de implementación OGC`: http://demo.pycsw.org/


Guía rápida
------------------------------------------------------------------------------

* :doc:`Guía de inicio rápido <../quickstart/pycsw_quickstart>`

