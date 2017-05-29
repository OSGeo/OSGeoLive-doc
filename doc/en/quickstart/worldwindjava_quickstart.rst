:Author: Gabriele Prestifilippo
:Version: WorldWind Java SDK 2.0
:License: `NASA OPEN SOURCE AGREEMENT VERSION 1.3 <http://worldwind.arc.nasa.gov/worldwind-nosa-1.3.html/>`_ 



.. image:: /images/project_logos/logoNasaJWW.png
  :alt: project logo
  :align: right
  :target: http://goworldwind.org/


********************************************************************************
WorldWind Java SDK Quickstart 
********************************************************************************
___________
Get Started
___________

WorldWind is an SDK (software development kit) that software engineers can use to build their own applications. To run a WorldWind demo application, visit the Demos page. Follow these instructions to download, run, and deploy an application using WorldWind.


| Key files and folders in the WorldWind Java SDK:

* build.xml: Apache ANT build file for the WorldWind Java SDK.
* src: Contains all Java source files for the WorldWind Java SDK.
* lib-external/gdal: Contains the GDAL native binaries libraries that may optionally be distributed with WorldWind.

| Links to important WorldWind sites that will help you get started using the WorldWind Java SDK in your application:

* WorldWind Developer's Guide: http://goworldwind.org/
* WorldWind Main Website:  http://worldwind.arc.nasa.gov/java/
* WorldWind Forum:  http://forum.worldwindcentral.com/forumdisplay.php?f=37
* WorldWind API Documentation: http://builds.worldwind.arc.nasa.gov/worldwind-releases/2.0/docs/api/index.html
* WorldWind Bug Base: http://issues.worldwind.arc.nasa.gov/jira/browse/WWJ


Running a Basic Demo Application
------------------------------------------------------------

To run the basic demo:
    1) Open a terminal.
    2) cd to the WorldWind release folder.
    3) chmod +x run-demo.bash
    4) ./run-demo.bash gov.nasa.worldwindx.examples.ApplicationTemplate
 

Create and Run Your Application Using WorldWind
------------------------------------------------------------

Create an app by reviewing the programming examples in WorldWind/src/gov/nasa/worldwindx/examples. 

| Start with SimplestPossibleExample and ApplicationTemplate, then refer to the Examples page for more advanced topics.  
| Here are examples of running your app from the command-line, assuming your app's JAR file is MyApp.jar, and your main class is worldwinddemo.MyBasicDemo.


Run: ::

   java -Xmx1024m -cp MyApp.jar:worldwind.jar:worldwindx.jar:jogl-all.jar:gluegen-rt.jar:gdal.jar worldwinddemo.MyBasicDemo


*Note: All *.dll, *.jnilib, and *.so files in the WorldWind folder must be in the same folder as MyApp.jar.*


--------------------------------------------
Deploy an Application Using Java Web Start
--------------------------------------------

**1. Create a Java Web Start Application JNLP File** 

Modify the template JNLP file WorldWind/webstart/JavaWebStartTemplate.jnlp to fit your app.


| **2. Add WorldWind Libraries to Your Application JNLP.**
| Insert the following XML extension elements in the resources block of your app's JNLP file, depending on your app's needs:

WorldWind Core Library (required)::

<extension name="worldwind" href="http://worldwind.arc.nasa.gov/java/2.0.0/webstart/worldwind.jnlp"/>


WorldWind Extensions Library (required if your app uses the gov.nasa.worldwindx package)::

<extension name="worldwindx" href="http://worldwind.arc.nasa.gov/java/2.0.0/webstart/worldwindx.jnlp"/>


GDAL Library (optional, include if your app uses WorldWind's data import feature)::

<extension name="gdal" href="http://worldwind.arc.nasa.gov/java/2.0.0/webstart/gdal.jnlp"/>



| **3.  Prepare Your Application's JAR Files**
| JAR files used by a Java Web Start application must be signed by a recognized authority, and must specify the Permissions manifest attribute. WorldWind's JAR files have already been signed and contain the necessary manifest attributes. See Oracle's documentation on Signing JAR Files and JAR File Manfiest Attributes for Security.


| **4. Deploy Your Application**
| Determine a URL to host your app at, such as http://myworldwinddemo.org/. Set your JNLP file's codebase attribute to this URL, then host your JNLP file and any JAR files referenced by your JNLP at this URL. See Oracle's documentation on Rich Internet Application Deployment for more information.



--------------------------------------------
Deploy an Applet Using Java Web Start
--------------------------------------------

**1. Create a Java Web Start Applet JNLP File**
Modify the template JNLP file WorldWind/webstart/JavaWebStartAppletTemplate.jnlp to fit your applet.

| **2. Add WorldWind Libraries to Your Applet JNLP**
| Complete your applet's JNLP file by following step #2 in the above section Deploy an Application Using Java Web Start.

| **3. Prepare Your Applet's JAR Files**
| JAR files used by a Java Applet must be signed by a recognized authority, must specify the Permissions manifest attribute, and must specify the Caller-Allowable-Codebase manifest attribute in order to enable Java-to-Javascript communication. WorldWind's JAR files have already been signed and contain the necessary manifest attributes. See Oracle's documentation on Signing JAR Files and JAR File Manfiest Attributes for Security.

| **4. Publish your Applet**
| Add the Java Applet to an HTML document hosted at the same URL as your JNLP file using the syntax below. The HTML document defines the Applet attributes that affect its dimensions and enable Java-to-Javascript communication. The JNLP file defines the Applet's code and its dependencies. See Oracle's documentation on Rich Internet Application Deployment for more information..

::

 <script src="http://www.java.com/js/deployJava.js"></script>
 <script>
     var attributes = {id:'myApplet', mayscript:'true', width:'800px', height:'600px'};
     var parameters = {jnlp_href:'MyApp.jnlp'};
     deployJava.runApplet(attributes, parameters, '1.6'); // runApplet automatically looks for JRE 1.6+
 </script>
