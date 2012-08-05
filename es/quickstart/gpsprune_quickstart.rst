:Author: activityworkshop
:Translator: Jorge Sanz
:Version: osgeo-live4.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-prune.png
  :alt: project logo
  :align: right
  :target: http://gpsprune.activityworkshop.net/

********************************************************************************
Guía de inicio rápido de GpsPrune
********************************************************************************

Ejecución
================================================================================

Para ejecutar GpsPrune en este Live DVD selecciona el icono GpsPrune en el menú *Navigation and Maps*.
Para trabajar con datos, puedes o bien cargar una ruta (*track*) desde un fichero, descargar datos desde un receptor GPS usando *Gpsbabel*, obtener coordenadas de Wikipedia o finalmente introducir las coordenadas a mano.  La forma más sencilla de empezar es cargar cualquier fichero gpx, kml o kmz usando el comando de menú :menuselection:`File --> Open file` y seleccionando el fichero a cargar.

Ahora puedes ver el *track* marcado en azul, así como los puntos de interés (*waypoints*) si es que los hay, marcados con sus respectivos nombres.
Si dispones de conexión a Internet, se recomienda activar los mapas haciendo clic en el icono del globo en la parte superior de la ventana del mapa, o bien con la opción de menú :menuselection:`View --> Show Map`.

Puedes arrastrar el mapa con el ratón, y hacer *zoom* arriba o abajo para ver mejor los detalles.
Haciendo clic en un punto obtendrás detalles incluyendo la altitud y la marca de tiempo si es que están disponibles.
Debajo del mapa se puede ver la gráfica de altitudes, que mostrará el perfil longitudinal del *track* si éste contiene altitudes.  Haciendo clic en esta ventana se puede seleccionar el punto correspondiente.

Personalizando la visualización
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Puedes cambiar el aspecto del mapa con la opción :menuselection:`Settings --> Set map background`.
Puedes seleccionar uno de los mapas predefinidos o bien añadir un servidor propio si conoces la dirección web del mismo.  Puedes añadir un mapa Cloudmade si sabes el código del estilo.

Los colores por defecto pueden cambiarse con la opción de menú :menuselection:`Settings --> Set colours`.

Las preferencias se recordarán la próxima vez que ejecutes GpsPrune si las grabas con la opción de menú :menuselection:`Settings --> Save settings`.  Por otro lado, cabe destacar que usando este LiveDVD, todos los ficheros que se guarden en el sistema de ficheros del mismo se pierden una vez apagado el sistema.

Descargando mapas
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Para guardar las teselas descargadas del mapa en el disco debes seleccionar la opción de menú
:menuselection:`Settings --> Save maps to disk` y seleccionar la carpeta en la que deseas que se almacenen las imágenes.
Esto acelera la visualización al no ser necesario volver a descargar estas imágenes de nuevo.  De nuevo, esto tiene más sentido en un sistema operativo instalado que en un LiveDVD.

Usando GpsPrune en otros sistemas
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Tal vez desees usar GpsPrune en otro sistema después de probarlo en este LiveDVD, tanto si es también un sistema Linux como si es Mac OSX o Windows.  Algunas distribuciones de Linux incluyen GpsPrune en sus repositorios de software (simplemente deberás buscar "Prune" o "GpsPrune") o simplemente puedes descargar una copia desde la página web.

No es necesario instalarlo, pero necesita de una máquina virtual java instalada en el sistema, versión 1.5 o superior.  Puedes  extender las funcionalidades de GpsPrune instalando otros componentes de software libre, tales como *Gpsbabel*, *Gnuplot*, *Exiftool* o *Java3d*.

Más información
================================================================================

* Página web de GpsPrune: http://gpsprune.activityworkshop.net/
* Capturas de pantalla: http://gpsprune.activityworkshop.net/screenshots.html
* *Cómos* y otras instrucciones: http://gpsprune.activityworkshop.net/how-tos.html

