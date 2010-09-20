.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadatos de este documento

:Author: OGC
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _sensorml-overview:

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    images/project_logos/<filename>
  A symbolic link to the images directory is created during the build process.

.. image:: images/project_logos/logo-OGC-left.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. image:: images/project_logos/logo-OGC-right.png
  :scale: 100 %
  :alt: OGC logo
  :align: right

.. Writing Tip: Name of application

Sensor Model Language (SensorML)
================================

.. Writing Tip:
  1 parrafo o 2 definen lo que es el estandar.

El estandar de codificación OGC Sensor Model Language (SensorML) describe un modelo de información y codificaciones XML que permiten el descubrimiento y la programación de sensores integrados en la Web ( en inglés *Web-resident sensors*), así como la explotación de observaciones de sensores. Dentro de este contexto, SensorML permite al desarrollador definir modelos y esquemas XML para describir cualquier proceso, incluyendo mediciones por un sistema sensor, así como procesamiento post-medición. (http://www.opengeospatial.org/standards/sensorml)

.. image:: images/standards/sensorml.jpg
  :scale: 25%
  :alt: sensorML in Context

Más especificamente, SensorML puede: 

* Proporcionar descripciones de sensores y sistemas sensor para gestión de inventario;
* Proporcionar información de proceso y sensor en apoyo al descubrimiento de recurso y observación;
* Soporta procesado y análisis de observaciones del sensor;
* Soporta la geolocalización de valores observados (datos medidos);
* Proporciona características de rendimiento (p.e., precisión, umbral, etc.);
* Proporciona una descripción explícita del proceso a través del cual se obtuvo la observación;
* Proporciona una cadena de proceso ejecutable para generar nuevos resultados de datos bajo demanda (p.e., observación derivable);
* Archiva propiedades fundamentales y asunciones relacionadas con el sistema sensor.

El esquema individual SensorML describe un sensor específico o un conjunto de sensores y se puede almacenar en un registro. 

Existen multitud ejemplos de implementaciones SensorML , como por ejemplo la NASA MSFC SMART program (http://smartdev.itsc.uah.edu/casestudy/documents/paper_nstc_2007_A1P1.pdf). En este proyecto el equipo desarrolló un flujo (*workflow*) de proceso de sensores Web para asimilar inteligentemente los datos de temperatura satélite y humedad de la sonda infraroja atmosférica (*Atmospheric Infrared Sounder, AIRS*), en una configuración regional del modelo de investigación y observación climatológica sobre el sureste de Estados Unidos.

Ver también
--------

.. Writing Tip:
  Describe estandar similar

* :doc:`sos_overview`
* Sensor Planning Service
* Observations and Measurements
* Transducer Markup Language
