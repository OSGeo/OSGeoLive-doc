:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Author: Simon Jirka (s.jirka@52north.org)
:Author: Ann Hitchcock (a.hitchcock@52north.org)
:Reviewer:
:Version: osgeolive12.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_52nSOS@
@OSGEO_KIND_52nSOS@

*******************************************************************************
@NAME_52nSOS@ Quickstart
*******************************************************************************

The 52°North SOS is a Web service, that enables interoperable access
to (spatial) observation data and associated metadata.

This Quick Start describes how to:

  * Query the 52°North SOS Capabilities to determine what queries it supports and which data it offers.
  * Query details about an observation from the SOS.
  * Use the lightweight visualisation tool "Helgoland" delivered with the SOS to explore the available data.
  * Explore the REST API endpoint for client developers.

.. contents:: Contents


Getting Started
================================================================================

1. Select :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North SOS` to start the 52°North SOS.

2. This will open the 52°North SOS client welcome page in firefox at
   http://localhost:8080/52nSOS/ (see Fig. 1).

   .. image:: /images/projects/52nSOS/52n_sos_start.png
     :scale: 70 %
     :alt: 52°North SOS client welcome page
     :align: center

   **Fig. 1**: 52°North SOS client - welcome page.

3. Once you know `the capabilities of an SOS Server <http://localhost:8080/52nSOS/sos?REQUEST=GetCapabilities&SERVICE=SOS&ACCEPTVERSIONS=2.0.0>`_,
   (see Fiq. 2) you can craft appropriate queries. Again, this is made easier
   by selecting sample queries from the test client pull down list. Using the
   information from the capabilities document, you can adjust the available example
   queries.

   .. image:: /images/projects/52nSOS/52n_sos_get_capabilities.png
     :scale: 70 %
     :alt: 52°North SOS client - test client with GetCapabilities request
     :align: center

   **Fig. 2**: 52°North SOS client - test client with GetCapabilities request.

4. To get the available observation data within the time
   interval from 2018-07-02T23:45:00.000+00:00 to 2018-07-04T23:45:00.000+00:00
   for each time series, insert the following request after selecting
   :menuselection:`**service** SOS --> **version** 2.0.0 --> **binding** SOAP --> **operation** GetObservation`
   in the `test client's <http://localhost:8080/52nSOS/client>`_ request field:

.. code-block:: xml

  <?xml version="1.0" encoding="UTF-8"?>
  <env:Envelope
      xmlns:env="http://www.w3.org/2003/05/soap-envelope"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.w3.org/2003/05/soap-envelope http://www.w3.org/2003/05/soap-envelope/soap-envelope.xsd">
      <env:Body>
          <sos:GetObservation service="SOS" version="2.0.0"
              xmlns:sos="http://www.opengis.net/sos/2.0"
              xmlns:fes="http://www.opengis.net/fes/2.0"
              xmlns:gml="http://www.opengis.net/gml/3.2"
              xmlns:swe="http://www.opengis.net/swe/2.0"
              xmlns:xlink="http://www.w3.org/1999/xlink"
              xmlns:swes="http://www.opengis.net/swes/2.0"
              xsi:schemaLocation="http://www.opengis.net/sos/2.0 http://schemas.opengis.net/sos/2.0/sos.xsd">
              <sos:temporalFilter>
                  <fes:During>
                      <fes:ValueReference>phenomenonTime</fes:ValueReference>
                      <gml:TimePeriod gml:id="tp_1">
                          <gml:beginPosition>2018-07-02T23:45:00.000+00:00</gml:beginPosition>
                          <gml:endPosition>2018-07-04T23:45:00.000+00:00</gml:endPosition>
                      </gml:TimePeriod>
                  </fes:During>
              </sos:temporalFilter>
          </sos:GetObservation>
      </env:Body>
  </env:Envelope>

**Listing 1:** Request of observations.


Things to Try
===============================================================================

* Try some of the other example queries from the pull down list.
* Try tweaking some of these queries to get different information.
* Try the `SOS administrator <http://localhost:8080/52nSOS/admin/index>`_ using
  username :code:`user` and password :code:`user`.
* Try Helgoland - the `Viewer Client <http://localhost:8080/52nSOS/static/client/helgoland/#/map>`_ (see Fig. 3).
* Try other sample data by performing the following steps:

  1. Open the SOS administrator `database maintenance page <http://localhost:8080/52nSOS/admin/datasource>`_.
  2. Empty the database using the "Clear Datasource" button (this will delete
     the example data. You can restart OSGeoLive to get the data back.).
  3. Insert dynamically generated sample data by clicking the "Insert
     sample data" button. Please be informed that this operation might take
     some minutes.
  4. Open `Helgoland <http://localhost:8080/52nSOS/static/client/helgoland/#/map>`_
     again and explore the generated sample data.

.. image:: /images/projects/52nSOS/52n_sos_viewclient.png
  :scale: 70 %
  :alt: 52°North SOS client - JavaScript client with time series data
  :align: center

**Fig. 3**: 52°North SOS client - JavaScript client with time series data.

* Try the `Sensor Web REST API <http://localhost:8080/52nSOS/api/>`_ (see Listing 2):

.. code-block:: js

    [
        {
            id: "services",
            label: "Service Provider",
            description: "A service provider offers timeseries data."
        },
        {
            id: "stations",
            label: "Station",
            description: "A station is the place where measurement takes place."
        },
        {
            id: "timeseries",
            label: "Timeseries",
            description: "Represents a sequence of data values measured over time."
        },
        {
            id: "categories",
            label: "Category",
            description: "A category group available timeseries."
        },
        {
            id: "offerings",
            label: "Offering",
            description: "An organizing unit to filter resources."
        },
        {
            id: "features",
            label: "Feature",
            description: "An organizing unit to filter resources."
        },
        {
            id: "procedures",
            label: "Procedure",
            description: "An organizing unit to filter resources."
        },
        {
            id: "phenomena",
            label: "Phenomenon",
            description: "An organizing unit to filter resources."
        },
        {
            id: "platforms",
            label: "Platforms",
            description: "A sensor platform where observations are made."
        },
        {
            id: "geometries",
            label: "Geometries",
            description: "A geometry where observations are made or that was observed."
        }
    ]

**Listing 2:** Output of Sensor Web REST API endpoint.


What Next?
================================================================================

To learn more about the 52°North SOS and/or the 52°North Sensor Web Community,
potential starting points are:

* 52°North :doc:`SOS overview <../overview/52nSOS_overview>`
* 52°North Sensor Web mailing list: sensorweb@52north.org
* 52°North `Sensor Web community <https://52north.org/research/research-labs/sensor-web/>`_
* 52°North `SOS Client <http://sensorweb.demo.52north.org/SOSclient/>`_
* 52°North `SOS Web site <https://52north.org/sos>`_

The development of this version of the 52°North SOS was supported by different
projects, organizations, and persons. More details can be found in the
`52°North SOS client <http://localhost:8080/52nSOS/index>`_.

We would like to thank the Belgian Interregional Environment Agency
(`IRCEL - CELINE <http://www.irceline.be/en/>`_)
for providing the demonstration data used in this SOS installation.
The demo data are published under a
`CC-BY licence <http://creativecommons.org/licenses/by/3.0/>`_.

When the SOS is not available, please check if the tomcat servlet engine is
running. Use the following commands:

::

  user@osgeolive:~$ sudo systemctl status tomcat8.service | grep Active
  Active: active (running) since Wed 2017-06-21 12:00:42 UTC; 42min ago  <-- Tomcat is running
  [...]
  Active: inactive (dead)                                                <-- Tomcat not runing, so please start:
  user@osgeolive:~$ sudo systemctl start tomcat8.service
  Active: active (running) since Wed 2017-06-21 12:52:42 UTC; 3s ago     <-- Tomcat is running, now

**Listing 3:** Tomcat Status and Start (password for sudo: :code:`user`).
