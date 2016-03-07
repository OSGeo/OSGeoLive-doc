:Author: Peter Baumann
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _rasdaman-overview:

.. image:: ../../images/project_logos/logo-rasdaman.png
 :alt: project logo
  :align: right
  :target: http://www.rasdaman.org

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

Rasdaman
========

Multi-dimensionale Big Data Analytics Engine
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rasdaman ist ein Array-Datenbanksystem für flexible, performante, skalierbare Geo-Dienste auf multi-dimensionalen raum-zeitlichen Sensor-, Bild-, Simulations- und Statistikdaten unbegrenzter Größe.  Ad-hoc Zugriff, Extraktion, Aggregation sowie Remix und Analyse erfolgt durch eine NewSQL Raster-Anfragesprache mit hocheffektiver server-seitiger Optimierung.  Cloud/Cluster-Parallelisierung erfolgt in gesicherter, vom Administrator steuerbarer Weise.  Die Daten werden in einer PostgreSQL-Datenbank abgelegt, sodass sich eine enge Informationsintegration ergibt.

Neben der Raster-Anfragesprache unterstützt rasdaman OGC WMS, WCS, WCPS und WPS sowie C++ und Java APIs.  Unter http://standards.rasdaman.org steht eine Sammlung interaktiver Demos bereit.  Ein rasdaman-Treiber ist Bestandteil von GDAL und MapServer.

Rasdaman hat eine Reihe internationaler Innovationspreise erhalten, darunter den renommierten European IT Prize und Geospatial Innovation Award.  Die Technologie ist stabil und ausgereift und seit mehr als 10 Jahren im operativen Einsatz. Zu den Betreibern von rasdaman-Diensten zählen Vermessungsämter und Klima-Datencenter.

.. image:: ../../images/screenshots/1024x768/rasdaman-collage.png
  :scale: 50 %
  :alt: rasdaman screenshot collage
  :align: right

Wichtigste Merkmale
-------------------

    * echte Multi-Dimensionalität - 1D, 2D, 3D, 4D und mehr
    * mächtige, flexible Raster-Anfragesprache für Visualisierung, Klassifikation, Konvolutionen/Kernel, Aggregation und viele weitere Geo-Funktionen
    * räumliche Indexierung und adaptive Kachelung für schnellen Datenzugriff
    * Parallelisierung und "tile streaming" für unbeschränkte Skalierbarkeit von Laptop bis Cluster und Cloud
    * volle Informationsintegration der Rasterdaten mit allen anderen Geodaten in ein- und derselben PostgreSQL-Datenbank
    * Unterstützung der raster-relevanten OGC-Standards, Referenz-Implementierung für WCS Core und WCPS

Implementierte Standards
------------------------

    * OGC WMS 1.3, WCS 2.0, WCS-T 1.4, WCPS 1.0, WPS 1.0

Details
-------

**Website:** http://www.rasdaman.org

**Lizenz:**

* Clients und APIs: GNU Lesser General Public License (LGPL) version 3
* Server-Engine: GNU General Public License (GPL) version 3

**Software Version:** 9.2.0

**Unterstützte Plattformen:** Linux, MacOS, Solaris

**APIs:** rasql, C++, Java

**Support:**  http://www.rasdaman.com

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/rasdaman_quickstart>`

