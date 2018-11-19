:Author: Massimiliano Cannata, Milan Antonovic - SUPSI
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeolive9.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_istsos@
@OSGEO_KIND_istsos@

********************************************************************************
@NAME_istsos@ Quickstart
********************************************************************************

istSOS is an OGC `SOS <http://www.opengeospatial.org/standards/sos>`__ server implementation written in `Python <https://www.python.org/>`__.
istSOS allows for managing and dispatch observations from monitoring sensors according to the Sensor Observation Service standard.

The project provides also a Graphical user Interface that allows for easing the daily operations and a RESTFull Web api for automatizing administration procedures.

istSOS is released under the GPLv2 licence, and runs on all major platforms 
(Windows, Linux, Mac OS X), even though it has been used in production in linux environment only.


Create postgis database
================================================================================

Open a terminal and execute the following commands:

::

    sudo -u postgres createdb -E UTF8 istsos
    sudo -u postgres psql -d istsos -c 'CREATE EXTENSION postgis'


Setting up an istSOS service instance
================================================================================

With istSOS you can organize your sensor data in different instances. Every instance has its own database schema independent from other instances. You can even deploy other databases over your network according to your needs.



The first steps into istSOS setup is to configure the default configuration options. These options will then be automatically used for your convenience by every new istSOS instance created.

**1) Open the Web Admin interface**

Open a browser and go to `<http://localhost/istsos/admin>`_

**2) Configure your database connection**

From the toolbar buttons menu press the "Database" button and fill in the database configuration options:

::

    user: postgres
    password: postgres
    host: localhost
    port: 5432
    DB name: istsos

**3) Configure the default Service provider information**


Press the "Service provider" button and fill it using your institutional information.


**4) Configure the default Service identification information**


Press the "Service identification" button and fill up with custom metadata that describe the service usage.

**5) Configure your service coordinates system**

Press the "Coordinates system" button to manage the Coordinate Reference System (CRS).

*Default EPSG code*: this will be the native Coordinate Reference System of your geometries in the database.

*Permitted EPSG*: here you can configure which other Coordinate Reference Systems your system will support and reproject if requested.

**6) Configure your getobservation request options**

From the toolbar buttons menu press the "GetObservation Configuration" button to
set maximum time interval per getObservation request (zero for no limits) and aggregation no-data value.

**7) Configure your service proxy address**


The Proxy URL field is the base URL seen beyond a reverse proxy.


Create a new service
================================================================================


Now that you have configured istSOS, it's time to create a new service instance.

**1) Create a new service**


From the toolbar buttons menu press the "new service" button:


Choose the name of your instance. In this workshop use the name **demo**.


In the EPSG field you can set the database native projection. Leaving it empty,
the default one will be used.

Clicking on the "Customize database" box, you are able
to change the default database configuration for
this new istSOS instance.

**2) Press “next”**

As you pressed the “next” button, the server status panel is displayed.
If something's gone wrong during the creation you will see here an alert.


.. note::
    The istSOS “demo” instance has inherited all the configuration options from the default configuration. If, for any reason you decide to modify them, the changes will affect only this instance.


Add a new procedure
================================================================================

From the “services” drop down button of the admin interface (http://localhost/istsos/admin ) choose the desired instance.

From the toolbar buttons menu press the "New procedure" button.


Fill in the form using appropriate information.

.. warning::
    Once a procedure is created the outputs (observed properties) cannot be changed.

.. note::
    *Optional parameters:* Fill at your own need and willing



.. rubric:: *Example* (minimal configuration)

+-----------------------------------------------------------------------------------+
| Name: T_LUGANO                                                                    |
+-----------------------------------------------------------------------------------+
| Description: temperature weather station in Lugano                                |
+-----------------------------------------------------------------------------------+
| Keywords: weather, meteorological, IST                                            |
+-----------------------------------------------------------------------------------+
| System type: insitu-fixed-point                                                   |
+-----------------------------------------------------------------------------------+
| Sensor type: PTC thermistors of the "switching" type                              |
+-----------------------------------------------------------------------------------+
| FOI name: LUGANO                                                                  |
+-----------------------------------------------------------------------------------+
| EPSG: 4326                                                                        |
+-----------------------------------------------------------------------------------+
| Coordinates: x: 8.96127 y: 46.02723 z: 344.1                                      |
+-----------------------------------------------------------------------------------+

*Outputs (confirm the outputs pressing the "add" button):*

+----------------------------------------------------------------------------------------------+
|   Observed property: urn:ogc:def:parameter:x-istsos:1.0:meteo:air:temperature                |
+----------------------------------------------------------------------------------------------+
|   Unit of measure: °C                                                                        |
+----------------------------------------------------------------------------------------------+
|   Description (optional): conversion from resistance to temperature                          |
+----------------------------------------------------------------------------------------------+
|   quality index check (optional): Between / from -40 to +60                                  |
+----------------------------------------------------------------------------------------------+

.. note::
    Register the new sensor (procedure) pressing the "submit" button.


Add new observations
================================================================================

#. First we will create a text file with sensor data, formatted according to "text/csv, subtype=istSOS". The file uses a Comma Separated Values (CSV) format. The first line contains header information, including URI names of the observed properties. The following lines contain the data.

    #. Open a text editor by selecting :menuselection:`Accessories --> Leafpad`.

    #. Copy and paste the follwing text into the text editor window:

    .. code-block:: rest

        urn:ogc:def:parameter:x-istsos:1.0:time:iso8601,urn:ogc:def:parameter:x-istsos:1.0:meteo:air:temperature
        2014-06-03T14:30:00.00Z,22.20
        2014-06-03T14:40:00.00Z,22.00
        2014-06-03T14:50:00.00Z,21.70
        2014-06-03T15:00:00.00Z,21.20
        2014-06-03T15:10:00.00Z,20.70
        2014-06-03T15:20:00.00Z,20.20
        2014-06-03T15:30:00.00Z,19.60
        2014-06-03T15:40:00.00Z,19.20
        2014-06-03T15:50:00.00Z,18.20
        2014-06-03T16:00:00.00Z,18.00
        2014-06-03T16:10:00.00Z,17.20

    #. Save the file as "T_LUGANO_20140603161000000.dat" on the Desktop. The filename convention being used is: PROCEDURENAME_YYYYMMDDhhmmssfff.dat

    #. Open a terminal by selecting :menuselection:`Accessories --> LXTerminal`.

    #. In the terminal, enter: "cd /usr/share/istsos/" and press ENTER

    #. Write "python scripts/csv2istsos.py -p T_LUGANO -u http://localhost/istsos -s demo -w ~/Desktop" and press ENTER

    #. You should see a message "Insert observation success: True"

    #. Click :menuselection:`Geospatial --> Webservices --> istSOS`.

    #. Click the ENTER button in the administration page

    #. Click :menuselection:`Data Management --> Data Viewer`.

    #. Select the following:
        - Service = demo
        - Offering = temporary
        - Procedure T_LUGANO

    #. Click the "Add" button

    #. Click the "Plot" button and check that the data have been added (watch out at your time zone!)


.. image:: /images/projects/istsos/istsos_viewer.png
  :scale: 50 %

.. Edit data with the CALCULATOR
.. ================================================================================

.. #. Click :menuselection:`Geospatial --> Webservices --> istSOS`.

.. #. Click :menuselection:`Data Management --> Data Viewer`.

.. #. Select the following: Service = demo, Offering = temporary

.. #. Select and add the following procedures: BELLINZONA​, LOCARNO​ and ​T_LUGANO

.. #. On the right panel choose the Property: ​air­temperature

.. #. Press “​Plot​”, the last week of measurements is loaded and displayed

.. #. On the left panel select the “​Editor​” tab

.. #. Select ​T_LUGANO​ from the combo list

.. #. press “​Start editing​”, the grid is now displayed

.. #. At the bottom­right corner of the chart there are 3 buttons “Day”, “Week” and “All”:

..     * Click on “​Day​”, the chart is zoomed to contain only one day of data
..     * Drag the timeline bar on the right where you will see that T_LUGANO has no data

.. #. Click on the chart to select the last observation before the “​nodata​” hole, a green line is displayed and in the ​Editing Grid​ the corresponding row is selected.

.. #. Now go to the ​"Editing Grid​" panel

..     * Click the first row where data are ​NaN​,
..     * Scroll to the last ​NaN​ record and holding the ​SHIFT​ Key click on it
..     * Then press the “​Calculator​” button

.. With the ​Calculator​ we are able to correct an interval of data in a single action. It is possible to set a numeric value or also use a function using data from the other loaded procedures.
.. Let’s build a function that makes the average of the data from BELLINZONA and LOCARNO and then removes two degrees:

..     .. code-block:: rest

..        ((BELLINZONA+LOCARNO)/2)-2

.. #. Copy the formula in the calculator and select the quality index as QI 500 (manually adjusted).

.. #. Press the enter button and check your new data with gap filled (Press Save if you want to permanently save the updates in the database!)



What Next?
================================================================================

To learn more about istSOS, a starting point is the `istSOS Documentation`_
 and the `istSOS Tutorial`_.

.. _`istSOS Documentation`: http://istsos.org/en/trunk/doc/index.html
.. _`istSOS Tutorial`: http://istsos.org/tutorial/
