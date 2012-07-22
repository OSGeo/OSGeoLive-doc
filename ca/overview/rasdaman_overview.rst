:Author: Peter Baumann
:Author: Jinsongdi Yu
:Author: Dimitar Misev
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-rasdaman.png
 :scale: 100 %
 :alt: project logo
  :align: right
  :target: http://rasdaman.org

Rasdaman
================================================================================

Base de dades multidimensional
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rasdaman millora les bases de dades relacionals estàndards per proporcionar emmagatzematge i recuperació de dades de mapes de bits multi-dimensionals (per exemple, matrius) sense límit de mides emprant un llenguatge d'interrogació de ràster similar a SQL amb optimització d'alt redniment a la banda del servidor. Les dades s'emmegatzemen en una base de dade PostgreSQL, aconseguint així una integració ajustada de la informació.  Un connector rasdaman forma part de la biblioteca GDAL (Geospatial Data Abstraction Library) de formats de dades ràster, i la integració amb MapServer és en fase beta.
Les interfícies d'accés inclouen OGC WCS, WCPS, i WPS, així com API en C++ i Java a més a més d'el llenguatge d'interrogació de rasdaman.

La tecnologia de rasdaman és estable i madura, i s'ha desplegat en entorns de producció des de fa 10 anys; l'IGN francès utilitza rasdaman en mapes d'imatges aèries de dotzenes de TB. A la conferència ACM sobre Principis de Sistemes de Bases de Dades de 2007, l'expert en bases de dades ràster Rona Machlin va descriure rasdaman com "la implementació més entenedora d'un sistema d'aquesta tipus".

.. image:: ../../images/screenshots/1024x768/rasdaman-collage.png
  :scale: 50 %
  :align: right

Característiques principals
--------------------------------------------------------------------------------

    * veritable multi-dimensionalitat - d'1-D sobre 2-D a 3-D, 4-D, i més enllà
    * llenguatge de consulta potent i flexible per a tasques com visualització, classificació, convolució, agregació i moltes altres funcions geoespacials
    * indexat espacial i tessel·lat adaptatiu per accés ràpid a dades
    * transmissió de tessel·les per alt rendiment i escalabilitat en sistemes de maquinari modest
    * suport multiusuari per multiplexat de servidors
    * integració completa de dades ràster amb altres tipus de dades geogràfiques a la base de dades PostgreSQL

Estàndards implementats
--------------------------------------------------------------------------------

    * OGC WCS 2.0, WCPS 1.0, WPS 1.0

Detalls
--------------------------------------------------------------------------------

**Lloc web:** www.rasdaman.org

**Llicència:**

* clients i petascope: GNU Lesser General Public License (LGPL) version 3
* motor de servidor: GNU General Public License (GPL) version 3

**versió de programari:** 8.3

**Sistemes operatius:** Linux, Mac, Solaris

**Interfícies API:** rasql, C++, Java; interfícies WCS, WCPS, WCS-T, i WPS basades en OGC

**Suport:**  www.rasdaman.com

Guia ràpida
--------------------------------------------------------------------------------

* :doc:`Documentació de la guia ràpida <../quickstart/rasdaman_quickstart>`


