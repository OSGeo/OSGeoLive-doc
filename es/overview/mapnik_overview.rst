:Author: Dane Springmeyer
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Javier Sánchez
:Translator: David Mateos
:Version: osgeo-live10.0draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapnik.png
  :alt: project logo
  :align: right
  :target: http://mapnik.org/


Mapnik
================================================================================

Motor de renderizado cartográfico
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mapnik es una herramienta para el renderizado de bonitos mapas, con bordes de geometrías limpios y suaves, provisto de un sistema gráfico con anti-aliasing de calidad, posicionamiento inteligente de etiqueas, y simbolización SVG escalable. La fama de mapnik viene sobre todo por su uso como render de la capa principal de Open Street Map.

Mapnik se suele embeber típicamente en aplicaciones Python que publican mapas en Internet, aunque las últimas mejoras incorporadas han permitido que Mapnik también se utilice para crear mapas de alta resolución en papel.

.. image:: ../../images/screenshots/1024x768/mapnik-screenshot-barcelona.png
  :scale: 40 %
  :alt: screenshot
  :align: right

Esencialmente una colección de objetos geográficos (mapa, capa, fuente de datos, entidad, geometría), la biblioteca no necesita una interfaz de ventanas y se puede desplegar en cualquier entorno servidor.  Esta diseñado para entornos multi-hilo e inicialmente pensado, aunque no exclusivamente, para desarrollo basado en web.

Los bindings de alto nivel de Python (boost.python) facilitan el desarrollo rápido,  para zope3, django etc.

Mapnik es multiplataforma. Los paquetes están disponibles para la mayoría de las distribuciones Linux y los instaladores más comunes en Mac OS X y Windows.


Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://www.mapnik.org/

**Licencia:** LGPL (GNU Lesser General Public Licence)

**Versión Software:**  |version-mapnik|

**Plataformas soportadas:** Windows, Linux, Mac

**Interfaces API:** C++, Python



Guía de inicio rápido
--------------------------------------------------------------------------------

* :doc:`Guía de inicio rápido <../quickstart/mapnik_quickstart>`


