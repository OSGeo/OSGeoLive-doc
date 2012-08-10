:Author: Trevor Wekel
:Translator: Mauricio Miranda
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-MapGuideOS.png
  :scale: 100 %
  :alt: project logo
  :align: right 

Guía de inicio rápido de MapGuide
================================================================================

Esta guía describe cómo:

* Arrancar MapGuide
* Darle estilo a datos espaciales usando Maestro 

.. comment: ? * Extra note on 64-bit Ubuntu  

Arrancar MapGuide
--------------------------------------------------------------------------------

.. comment: 1. Ve a Desktop->Server, haz click en el ícono Start MapGuide. Esto arrancará el servidor MapGuide server y el servidor web MapGuide

.. comment: .. image:: ../../images/screenshots/1024x768/mapguide_desktopIcons.png
.. comment:   :scale: 50 %
.. comment:   :alt: mapguide desktop icons
.. comment:   :align: center 

1. Instala MapGuide manualmente

.. note:: Debido a restricciones de espacio en el DVD, MapGuide no está actualmente instalado.

.. commented out como la instalación manual no funciona actualmente: para instalarlo abre un terminal y corre ``cd gisvm/bin; sudo ./install_mapguide.sh``

2. Abre un navegador y coloca la siguiente dirección: http://localhost:8008/mapguide/phpviewersample/ajaxtiledviewersample.php para ver una aplicación de ejemplo.

.. image:: ../../images/screenshots/1024x768/mapguide_viewer.png
  :scale: 50 %
  :alt: mapguide desktop icons
  :align: center

MapGuide Maestro
--------------------------------------------------------------------------------

1. Para arrancar Maestro, ve a Desktop->Server, haz click en el ícono MapGuide Maestro. Esto abrirá la interfaz para iniciar sesión como se muestra en la siguiente captura de pantalla. Inicia la sesión en http://localhost:8008/mapguide/mapagent/mapagent.fcgi con nombre de usuario "Administrator" y contraseña "admin" 

.. image:: ../../images/screenshots/1024x768/mapguide_maestroLogin.png
  :scale: 50%
  :alt: screenshot
  :align: center
 
2. Haz click en Ok para ir a la interfaz principal de Maestro como se muestra en la siguiente captura de pantalla:

.. image:: ../../images/screenshots/1024x768/mapguide_maestroMain.png
   :scale: 50%
   :alt: mapguide maestro main GUI
   :align: center

3. Expande el árbol que se encuentra en el panel izquierdo, ve a Samples->Sheboygan->Layers, haz doble click en Buildings y se abrirá el editor de capa para Buildings en el panel derecho, como se muestra en la siguiente captura de pantalla:

.. image:: ../../images/screenshots/1024x768/mapguide_maestroLayerFeatures.png
   :scale: 50%
   :alt: mapguide maestro layer features
   :align: center

4. Desplázate hacia abajo en el panel derecho para ver el estilo de la capa (Layer Style). En la columna Featurestyle, haz click en ... para hacer aparece el editor de estilo (Style Editor), como se muestra en la siguiente captura de pantalla:

.. image:: ../../images/screenshots/1024x768/mapguide_maestroLayerStyle.png
   :scale: 50%
   :alt: mapguide maestro layer stype panel
   :align: center

.. image:: ../../images/screenshots/1024x768/mapguide_maestroStyleEditor.png
   :scale: 50%
   :alt: mapguide maestro color chooser
   :align: center

5. En la lista de colores (Foreground Color) selecciona verde (Green), haz click en Ok para cerrar el editor de estilo. En la pantalla principal de Maestro haz click en el ícono Disk para guardar los cambios.

.. image:: ../../images/screenshots/1024x768/mapguide_maestroSaveIcon.png
   :scale: 50%
   :alt: mapguide maestro Save icon 
   :align: center

6. Para una vista previa del cambio, abre http://localhost:8008/mapguide/phpviewersample/ajaxtiledviewersample.php en el navegador o haz click en el ícono Preview en la barra de herramientas de la pantalla principal de Maestro y se abrirá el browser en esa misma dirección. En la vista de mapa haz zoom al nivel de los edificios y verás que su color es ahora verde.

.. image:: ../../images/screenshots/1024x768/mapguide_buildingColorBeforeChanging.png
   :scale: 50%
   :alt: Building color is grey 
   :align: center

.. image:: ../../images/screenshots/1024x768/mapguide_buildingColorAfterChanging.png
   :scale: 50%
   :alt: Building color is green 
   :align: center

