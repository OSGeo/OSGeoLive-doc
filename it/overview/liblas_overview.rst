:Author: Howard Butler
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Luca Delucchi
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-libLAS.png
  :alt: Logo del progetto
  :align: right
  :target: http://liblas.org/

libLAS
================================================================================

LiDAR Data Access
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

libLAS è una libreria C/C++ per leggere e scrivere il formato comune `LAS`
`LiDAR`_ . Il `formato ASPRS LAS`_ è un formato binario sequenziale usato per
archiviare dati da sensori LiDAR e da software di processamento LiDAR per 
archiviazione e interscambio dei dati.

.. image:: ../../images/screenshots/800x600/liblas.jpg
  :alt: LiDAR Acquisition
  :align: right
  :scale: 80 %

LiDAR (Light Detection and Ranging) is a form of high precision range detection much like a radar system that 
uses laser light as the electromagnetic emission. Uno dei prodotti del sistema LIDAR
è una "nuvola di punti" che può essere concettualizzata come un
serie di misurazioni puntuali che rappresentano la distanza dal sensore ad un ritorno
emissione. Un formato comune di archiviazione di quasta nuvola di dati puntuale è il ASPRS LAS.

Caratteristiche Principali
--------------------------------------------------------------------------------

* API C/C++/Python per leggere, scrivere, e gestire dati LAS
* `Strumenti da linea di comando`_ per gestire dati LAS basati su `LAStools`_
* Riproiezione di coordinate attraverso `GDAL <http://gdal.org>`__

Dettagli
--------------------------------------------------------------------------------
 
**Sito Web:** http://liblas.org

**Licenza:** BSD

**Versione Software:** 1.7.0

**Piattaforme Supportate:** Cross Platform C++ -- Mac OS X, Windows (via `OSGeo4W`_), and Linux

**Interfacce API:** C, C++, Python

**Supporto:** `Comunicazione and Supporto <http://liblas.org/community.html>`_

Presentazione veloce
--------------------------------------------------------------------------------

* :doc:`Documentazione introduttiva <../quickstart/liblas_quickstart>`

.. _`LIDAR`: http://en.wikipedia.org/wiki/LIDAR
.. _`LAStools`: http://www.cs.unc.edu/~isenburg/lastools/
.. _`LAS Format`: http://www.lasformat.org/
.. _`ASPRS Standards Committee`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`formato ASPRS LAS`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`Strumenti da linea di comando`: http://liblas.org/utilities/index.html
.. _`OSGeo4W`: http://trac.osgeo.org/osgeo4w/
.. _`Wikipedia`: http://en.wikipedia.org/wiki/LIDAR
