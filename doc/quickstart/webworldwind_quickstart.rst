:Author: Gabriele Prestifilippo
:Version: Pre-release
:License: `NASA OPEN SOURCE AGREEMENT VERSION 1.3 <https://ti.arc.nasa.gov/opensource/nosa/>`_ 



@LOGO_webworldwind@
@OSGEO_KIND_webworldwind@


********************************************************************************
@NAME_webworldwind@ Quickstart
********************************************************************************
___________
Get Started
___________

Web World Wind is a 3D virtual globe API for HTML5 and JavaScript. Web pages include Web World Wind to provide one or more virtual globes on that page.

It's very easy to get started using Web World Wind. There's nothing to download. You simply include a short script in an HTML page, as in this example: ::

 <!DOCTYPE html>
 <!-- This is a very simple example of using Web World Wind. -->
 <html>
 <head lang="en">
     <meta charset="UTF-8">
     <title>World Wind Example</title>
     <!-- Include the Web World Wind library. -->
     <script src="http://worldwindserver.net/webworldwind/worldwindlib.js" type="text/javascript"></script>
 </head>
 <body>
 <div style="position: absolute; top: 50px; left: 50px;">
     <!-- Create a canvas for Web World Wind. -->
     <canvas id="canvasOne" width="1024" height="768">
         Your browser does not support HTML5 Canvas.
     </canvas>
 </div>
 <script>
     // Register an event listener to be called when the page is loaded.
     window.addEventListener("load", eventWindowLoaded, false);
 
     // Define the event listener to initialize Web World Wind.
     function eventWindowLoaded() {
         // Create a World Window for the canvas.
         var wwd = new WorldWind.WorldWindow("canvasOne");

         // Add some image layers to the World Window's globe.
         wwd.addLayer(new WorldWind.BMNGOneImageLayer());
         wwd.addLayer(new WorldWind.BingAerialWithLabelsLayer());
 
         // Add a compass, a coordinates display and some view controls to the World Window.
         wwd.addLayer(new WorldWind.CompassLayer());
         wwd.addLayer(new WorldWind.CoordinatesDisplayLayer(wwd));
         wwd.addLayer(new WorldWind.ViewControlsLayer(wwd));
     }
 </script> 
 </body>
 </html>

This example first includes the Web World Wind library, worldwindlib.js, then creates an HTML5 canvas, then defines a script that creates the World Window and populates it with two image layers and three control layers. Click this link to see the web page it creates in a new window. The page contains an interactive 3D virtual globe. Try zooming in with your mouse wheel or on a mobile device with a pinch gesture. Drag the mouse or your finger to pan around the globe. Drag the right mouse button or your two fingers upward to tilt the globe.

_______________________________
Running Locally inside a server
_______________________________

Tu run locally a Web World Wind Application, just browse to:

 http://localhost/WebWorlWindexamples/BasicExample.html

and you should see that Web World Wind example in your web browser.

_______________________________
Source Files
_______________________________
Opening: ::

 /var/www/html/WebWorldWind

you will find more Examples along all the source files

| Web World Wind provides much more functionality than is available in this simple example. The Examples page illustrates much of that functionality in simple examples. The Developer's Guide describes Web World Wind's functionality in detail. The Deployments page explains how to deploy Web World Wind at  your own web site.
