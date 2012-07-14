:Author: Howard Butler
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Anna Muñoz Bollas
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-libLAS.png
  :alt: project logo
  :align: right
  :target: http://liblas.org/

libLAS
================================================================================

Accés a Dades LiDAR
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

libLAS és una llibreria C/C++ per a la lectura i escriptura de dades `LiDAR`_ en format `LAS`. 
El `format ASPRS LAS`_ és un format binari seqüencial que s'utilitza per emmagatzemar tant dades 
provinents directament de sensors LiDAR com les que s'han obtingut per processament de dades LiDAR 
amb programari d'intercanvi de dades.

.. image:: ../../images/screenshots/800x600/liblas.jpg
  :alt: LiDAR Acquisition
  :align: right
  :scale: 80 %

LiDAR (en anglès, Light Detection and Ranging) és un sensor actiu que mesura amb molt alta precisió el temps de retorn del feix de llum làser que genera.
Es basa en el mateix principi que els sistemes RADAR però en lloc d'usar ones de ràdio emet feixos de llum làser.
Un dels productes dels sistemes LiDAR és el "núvol de punts" on cada punt representa la distància obtinguda a partir de la mesura del temps de retorn del feix de llum emès des del sensor.
El format més comú per emmagatzemar aquest núvol de punts és el format LAS de l'ASPRS (American Society of Photogrammetry and Remote Sensing).

Característiques Principals
--------------------------------------------------------------------------------

* APIs C/C++/Python APIs per la lectura, escriptura i manipulació de dades en format LAS
* `Utilitats en línia de comandes`_ per manipulació de dades en format LAS fent ús de les utilitats `LAStools`_
* Reprojecció de coordenades via `GDAL <http://gdal.org>`_

Detalls
--------------------------------------------------------------------------------
 
**Lloc Web:** http://liblas.org

**Llicència:** BSD

**Versió de Programari:** 1.7.0

**Plataformes suportades:** Cross Platform C++ -- Mac OS X, Windows (via `OSGeo4W`_), and Linux

**APIs per desenvolupament:** C, C++, Python

**Suport Comercial:** `Comunicació i Suport <http://liblas.org/community.html>`_


Guia ràpida d'inici
--------------------------------------------------------------------------------

* :doc:`Documentació de la guia ràpida d'inici <../quickstart/liblas_quickstart>`

.. _`LIDAR`: http://en.wikipedia.org/wiki/LIDAR
.. _`LAStools`: http://www.cs.unc.edu/~isenburg/lastools/
.. _`LAS Format`: http://www.lasformat.org/
.. _`ASPRS Standards Committee`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`format ASPRS LAS`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`Utilitats en línia de comandes`: http://liblas.org/utilities/index.html
.. _`OSGeo4W`: http://trac.osgeo.org/osgeo4w/
.. _`Wikipedia`: http://en.wikipedia.org/wiki/LIDAR
