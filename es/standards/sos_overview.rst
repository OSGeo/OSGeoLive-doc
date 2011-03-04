.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadatos de este documento

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _sos-overview:

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: ../../images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: ../../images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Sensor Observation Service (SOS)
================================

.. Writing Tip:
  1 parrafo o 2 definen lo que es el estandar.

El estandar OGC Sensor Observation Service (SOS) es un servicio de datos. El estandar OGC SOS define un interface estandarizado y operaciones para el acceso a observaciones desde sensores y sistemas de sensores que es consistente con todos los sistemas, incluyendo remoto, in-situ, fijos y sensores móviles. SOS proporciona resultados de consultas en el formato estandar de observación y medida ( en inglés Observation and Mesurements, O&M)  para modelizar observaciones de sensores y la especificación SensorML para modelizar sensores y sistemas sensor. (http://www.opengeospatial.org/standards/sos)

.. image:: ../../images/standards/sos.jpg
  :scale: 55%
  :alt: SOS in Context

El estandar SOS define un modelo común para sensores y sistemas sensor que no son de un dominio específico y que se pueden utilizar sin un conocimiento a-priori de esquemas de aplicación de dominio específico.

Una observación es un evento cuyo resultado es una estimación del valor de alguna propiedad de la característica de interés, obtenida usando un procedimiento específico. Las observaciones se definen por

eventTime – Cuando se tomó la medida
featureOfInterest – La entidad que se mide
observedProperty - La característica que se midió
procedure  - cómo se midió

Operaciones SOS requeridas incluyen:
GetObservation - acceso a datos de observación y medida del sensor a través de una consulta espacio-temporal que se puede filtrar por un fenómeno 
GetCapabilities - Metadatos del servicio SOS
DescribeSensor - información sobre los sensores, sus procesos y plataformas en SensorML

Operaciones opcionales incluyen: GetResult, GetFeatureOfInterest, GetFeatureOfInterestTime, DescribeFeatureofInterest, DescribeObservationType, DescribeResultModel, Register Sensor, y InsertObservation.

Hay numerosas y excelentes implementaciones de SOS. El OpenIOOS.org tiene trece organizaciones que proveen instancias de servicios SOS que proporcionan acceso a más de 1400 sensores de oceanos (http://www.openioos.org/real_time_data/gm_sos.html). Esta demostración operacional “representa una iniciativa para el desarrollo de una arquitectura de Servicios Web para la observación de los oceanos”.

Ver también
--------

.. Writing Tip:
  Describe estandar similar

* :doc:`wcs_overview`
* :doc:`wfs_overview`
* Grid Coverage Service
* Sensor Planning Service
* Coordinate Transformation Service

