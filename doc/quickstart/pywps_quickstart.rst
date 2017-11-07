:Author: OSGeoLive
:Author: Jachym Cepicky, Tom Kralidis
:Reviewer: Cameron Shorter
:Version: osgeo-live10.0
:License: Creative Commons Attribution

@LOGO_pywps@
@OSGEO_KIND_pywps@

******************************** 
@NAME_pywps@ Quickstart
********************************

PyWPS is an OGC WPS (Web Processing Service 1.0.0) server implementation written
in `Python <http://python.org>`_.

PyWPS is installed by default on OSGeoLive.  This Quickstart describes how to:

* test the PyWPS installation
* configure the PyWPS instance
* create and deploy processes in PyWPS
* perform ``GetCapabilities``, ``DescribeProcess`` and ``Execute`` operations

.. contents:: Contents

Tester Application
==================

To run the PyWPS tester, use the PyWPS launcher from the Web Services group.  This opens
Firefox displaying ``http://localhost/pywps/wps.py?service=WPS&version=1.0.0&request=GetCapabilities``. The
XML response provides an overview of the Service (title, abstract, keywords), the Service
point of contact as well as a list of processes supported by the PyWPS installation.

Lets select the ``ultamitequestionprocess`` process from the list and
display its description by calling the `DescribeProcess` operation. In Firefox,
enter the following URL: ``http://localhost/pywps/wps.py?service=WPS&version=1.0.0&request=DescribeProcess&identifier=ultimatequestionprocess``

You should see WPS DescribeProcess response document. The XML response provides a description
of what the process does as well as specifics (name, type) on the inputs and outputs. We can
see in the above response that the ``ultimatequestionprocess`` process (according to its description) is able
to provide the *Answer to Life, the Universe and Everything*, takes no inputs and provides
a single integer output.

Now let's run the ``ultimatequestionprocess`` process on the server. In Firefox,
enter the following URL: ``http://localhost/pywps/wps.py?service=WPS&version=1.0.0&request=Execute&identifier=ultimatequestionprocess``

Here we can see the answer to life, universe and everyting is 42.

Configuration
=============

You can configure the PyWPS instance in the `/etc/pywps/pywps-wsgi.cfg`
configuration file. More information on the configuration option can be
found in the `standard documentation <http://geopython.github.io/pywps/doc/build/html/configuration/index.html#configuration-of-pywps-instance>`_

Processes
---------

You can find some more example processes in the `/etc/pywps/processes`
directory. Every process is usually stored in separate file and is represented
by a Python class, with constructor and `execute()` methods::


    # Example of PyWPS process (shorten)
    from pywps.Process import WPSProcess                               
    class Process(WPSProcess):
     def __init__(self):
         WPSProcess.__init__(self,
                             identifier="ultimatequestionprocess",  # the same as the file name
                             ....

     def execute(self):
         import time
         self.status.set("Preparing....", 0)
         for i in xrange(1, 11):
             time.sleep(2)
             self.status.set("Thinking.....", i*10) 
         # final answer    
         self.Answer.setValue("42")

Directory of your process deployment is configured within the
`PYWPS_PROCESSES` environment variable.

Things to Try
=============

Here are some additional challenges for you to try:

#. Try updating some of the configuration values to see how they are updated in the ``GetCapabilities`` requess
#. Try running the ``DescribeProcess`` and ``Execute`` requests against other processes

What's Next
===========

PyWPS gives you the freedom and flexibility to write your own Python processes and expose them
accordingly.

* Official documentation

  For further information on PyWPS configuration and the API, consult the `documentation`_ on the PyWPS website.

* Tutorial

  Try out the `course`_, which includes setting up an OpenLayers based web client.

.. _`course`: http://jachym.github.io/pywps-tutorial/build/html/index.html
.. _`documentation`: http://pywps.org/docs
