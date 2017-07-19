:Author: Gabriele Prestifilippo
:Translator: David Mateos
:Version: Pre-release
:License: `NASA OPEN SOURCE AGREEMENT VERSION 1.3 <https://ti.arc.nasa.gov/opensource/nosa/>`_ 



.. image:: /images/project_logos/logoNasaWWW.png
  :alt: project logo
  :align: right
  :target: http://webworldwind.org/


********************************************************************************
Guía de inicio rápido de Web World Wind
********************************************************************************
__________________
Para empezar
__________________

Web World Wind es una API de globo virtual 3D para HTML5 y Javascript. Las páginas web incluyen Web World Wind para crear uno o más globos vituales en dichas páginas. 

Es muy fácil empezar a usar Web World Wind. No hay que descargar nada, simplemente incluir un pequeño script en una página HTML, como en este ejemplo: ::

 <!DOCTYPE html>
 <!-- Este es un ejemplo muy simple de uso de Web World Wind. -->
 <html>
 <head lang="en">
     <meta charset="UTF-8">
     <title>Ejemplo de World Wind</title>
     <!-- incluir la bibliotecta deWeb World Wind. -->
     <script src="http://worldwindserver.net/webworldwind/worldwindlib.js" type="text/javascript"></script>
 </head>
 <body>
 <div style="position: absolute; top: 50px; left: 50px;">
     <!-- Crea un lienzo (*canvas*) para  Web World Wind. -->
     <canvas id="canvasOne" width="1024" height="768">
         Su navegador no soporta Canvas HTML5.
     </canvas>
 </div>
 <script>
     // Registra un "escuchador" de eventos (*event listener*) y lo llama cuando se carga la página
     window.addEventListener("load", eventWindowLoaded, false);
 
     // Define el event listener para inicializar Web World Wind.
     function eventWindowLoaded() {
         // Crea un World Window para el lienzo.
         var wwd = new WorldWind.WorldWindow("canvasOne");

         // Añade algunas capas de imagen al globo World Window.
         wwd.addLayer(new WorldWind.BMNGOneImageLayer());
         wwd.addLayer(new WorldWind.BingAerialWithLabelsLayer());
 
         // Añade una brújula, un visor de coordenadas y algunos controles de visualizaciión al World Window.
         wwd.addLayer(new WorldWind.CompassLayer());
         wwd.addLayer(new WorldWind.CoordinatesDisplayLayer(wwd));
         wwd.addLayer(new WorldWind.ViewControlsLayer(wwd));
     }
 </script> 
 </body>
 </html>

Este ejemplo primero incluye la librería  Web World Wind library, worldwindlib.js, después crea un lienzo HTML5s, finalmente define un script que crea elWorld Window y lo rellena con dos capas de imágen y tres capas de controles. Clic este enlace para ver la página web que se ha creado n una ventana nueva. La página contiene un globo virtual 3D. Intenta Intentar hacer zoom con la rueda del ratón o en un dispositvo móvil con el gesto de pellizcar. Arrastrar el ratón o el dedo para desplazarse alrededor del globo. Arrastrar el botón derecho del ratón o dos dedos hacia arriba para inclinar el globo.  

____________________________________________________
Ejecutar de forma local dentro de un servidor
____________________________________________________

Para ejecutar localmente una aplicación Web World Wind, navegar a:

 http://localhost/WebWorlWindexamples/BasicExample.html

y se debería ver este mismo ejemplo Web World Wind example en el navegador web.

_______________________________
Ficheros fuente
_______________________________
Abriendo: ::

 /var/www/html/WebWorldWind

se pueden encontrar más ejemplos junto con los archivos fuente.

| Web World Wind proporciona muchas más funcionalidades que las disponibles en este sencillo ejemplo. La página de Ejemplos ilustra muchas de ests funcionalidades a través de ejemplos simples. La Guía de Desarrollo describe la funcionalidad de Web World Wind en detalle. La página de Despliegue, explica como desplegar Web World Wind en una página web.
