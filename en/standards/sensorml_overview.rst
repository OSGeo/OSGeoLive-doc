.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OGC
:License: Creative Commons

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

Sensor Model Language (SensorML)
================================================================================

.. Writing Tip:
  1 paragraph or 2 defining what the standard is.

The OGC Sensor Model Language (SensorML) Encoding Standard describes an information model and XML encodings that enable discovery and tasking of Web-resident sensors as well as exploitation of sensor observations. Within this context, SensorML allows the developer to define models and XML Schema for describing any process, including measurement by a sensor system, as well as post-measurement processing. (http://www.opengeospatial.org/standards/sensorml)

.. image:: ../../images/standards/sensorml.jpg
  :scale: 55%
  :alt: sensorML in Context

More specifically, SensorML can: 

* Provide descriptions of sensors and sensor systems for inventory management Provide sensor and process information in support of resource and observation discovery;
* Support the processing and analysis of the sensor observations;
* Support the geolocation of observed values (measured data);
* Provide performance characteristics (e.g., accuracy, threshold, etc.);
* Provide an explicit description of the process by which an observation was obtained (i.e., it's lineage);
* Provide an executable process chain for deriving new data products on demand (i.e., derivable observation);
* Archive fundamental properties and assumptions regarding sensor systems.

Individual SensorML schema describe a specific sensor or an array of sensors and can be stored in a registry. 

There are numerous examples of SensorML implementations, such as the NASA MSFC SMART program (http://smartdev.itsc.uah.edu/casestudy/documents/paper_nstc_2007_A1P1.pdf). In this project the team developed a sensor web-enabled processing workflow to intelligently assimilate Atmospheric Infrared Sounder (AIRS) satellite temperature and moisture retrievals into a regional configuration of the Weather Research and Forecast model over the southeastern United States.

See Also
--------------------------------------------------------------------------------

.. Writing Tip:
  Describe Similar standard

* :doc:`sos_overview`
* Sensor Planning Service
* Observations and Measurements
* Transducer Markup Language
