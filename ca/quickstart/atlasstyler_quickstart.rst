:Author: Stefan Tzeggai
:Translator: Anna Muñoz Bollas
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-AtlasStyler.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://en.geopublishing.org/AtlasStyler

********************************************************************************
Guia d'inici ràpid d'AtlasStyler
********************************************************************************

Manuals
================================================================================
* `Manual d'AtlasStyler, Idioma alemany, Creat per a la versió 1.2 <../../geopublishing/AtlasStyler_v1.2_DE_Handbuch_090601.pdf>`_  

Tutorials
================================================================================

AtlasStyler (Estils de capes amb SLD)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* `Tutorial d'etiquetatge d'AtlasStyler, Idioma Anglès, Creat per a la versió 1.3 <../../geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.3_EN_LabellingTutorial_091012.pdf>`_
* `Tutorial d'etiquetatge SLD d'AtlasStyler, Idioma Francès, Creat per a la versió 1.3 <../../geopublishing/tutorial_AtlasStyler_Labelling/AtlasStyler_v1.3_FR_Tutoriel_etiquetage_091012.pdf>`_

Es poden trobar més tutorials en el blog `http://en.geopublishing.org <http://en.geopublishing.org>`_ (cal estar connectat per tal de visitar la pàgina web).


Execució
================================================================================

Introducció
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

AtlasStyler és una aplicació d'usuari final, que permet crear arxius .SLD per a dades vectorials.

0) El Live-DVD d'OSGeo utilitza el sistema operatiu Lubuntu, que té un petit problema amb les aplicacions Java: 
com a solució, si us plau, feu click amb el botó dret del ratolí sobre la barra de menú (on trobareu els llistats 'Applications' i 'Places')
i seleccioneu 'Customize Panel'. A continuació seleccioneu l'opció 'Autohide'. D'aquesta manera la barra de menú quedarà oculta excepte quan 
el ratolí estigui en la part superior de la pantalla.

1) Per iniciar l'aplicació aneu a :menuselection:`Geospatial --> Desktop GIS --> AtlasStyler`.

2) Utilitzeu els botons d'importació per afegir arxius al seu projecte com Shapefiles d'ESRI o fonts de dades PostGIS.

3) Per importar dades des de PostGIS, s'ofereix una preselecció dels paràmetres de connexió a la base de dades.
Només cal introduïr el mot de pas (password) 'user' i afegir la capa '10m_land'.

4) Per fer la importació d'un Shapefile teniu, com a exemple, l'arxiu '/home/user/data/natural_earth/10m_lakes.shp'.

5) Feu click sobre la icona d'una capa que aparegui a la llegenda i seleccioni l'estil. S'obrirà el diàleg principal d'AtlasStyler.
Mentre modifica l'estil, l'opció 'automatic preview' li permetrà veure els canvis a mesura que els vagi aplicant.
Si el volum de dades és molt gran (o el sistema és molt lent) li aconsellem desactivar aquesta opció.

6) Proveu les diferents opcions del programari i, si us plau, feu-nos arribar els vostres comentaris a tzeggai@wikisquare.de

