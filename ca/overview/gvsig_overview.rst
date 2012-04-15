:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Reconeixement 3.0 No adaptada (CC BY 3.0)

.. _gvsig-overview-ca:

.. image:: ../../images/project_logos/logo-gvSIG.png
  :scale: 75 %
  :alt: project logo
  :align: right
  :target: http://www.gvsig.org/

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html


gvSIG Desktop
================================================================================

SIG d'escriptori
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

gvSIG_ és un Sistema d'Informació Geogràfica(SIG), una aplicació d'escriptori
dissenyada per capturar, emmagatzemar, manipular, analitzar i desplegar qualsevol tipus
d'informació geogràfica referenciada per tal de resoldre problemes complexes de gestió i de planificació. gvSIG és conegut per la seva interfície amigable i de ser capaç d'accedir
a tots els formats vectorials i raster més comuns. Compta amb una àmplia gamma d'eines per
treballar amb informació geogràfica (consulta, creació de sortida gràfica, geoprocessament,
xarxes, etc), que fan de gvSIG l' eina ideal per a usuaris que treballen en les ciències de la terra.

A gvSIG se'l coneix per:

* la integració a una mateixa vista de dades tant locals com remotes, a través dels estàndards d'OGC.
* ser fàcilment extensible, permetent un enriquiment continu de l'aplicació, així com el desenvolupament de solucions a mida.
* està disponible en més de 20 idiomes (Espanyol, Anglès, Alemany, Francès, Italià,...).
* estar disponible per Windows, Linux i Mac OS X.

.. image:: ../../images/screenshots/1024x768/gvsig_desktop.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Característiques Principals
--------------------------------------------------------------------------------

* Proporciona eines comunes de SIG, com la càrrega de dades, navegació sobre el mapa, consulta
  al Mapa de la informació alfanumèrica, el mesurament de distància, realització de mapes temàtics,
  l'edició de la llegenda amb els tipus més comuns, l'etiquetatge,
  la selecció d'elements per molts tipus de selecció, taules de dades amb les estadístiques,
  ordenació, relacions entre taules, vinculació entre taules, disseny de sortida gràfica, eines de geoprocessament,
  CAD, processament ràster, etc

* Interoperable: capaç de treballar amb la majoria dels formats de dades coneguts:

  * Ràster: ecw,  ENVI hdr, ERDAS img, (Geo)TIFF, GRASS,...
  * Vector i CAD: shapefile, GML, KML, DGN, DXF, DWG
  * Bases de Dades: PostGIS, MySQL, Oracle, ArcSDE
  * En línia: ECWP, ArcIMS, estàndards OGC

* Client de servei de descobriment per a localitzar recursos d'una IDE (serveis de catàleg i nomenclàtor)
  
  * Catàlegs: Z3950, SRW, CSW (ISO/19115 i ebRIM)
  * Nomenclator: ADL, WFS, WFS-G
  
* Més de 290 algorismes de geoprocessament a través de la biblioteca SEXTANTE i la integració de GRASS
  
* Incorporació d'eines CAD avançades:

  * Dades vectorials: Editar, crear i esborrar elements
  * Consola de comandes, eina habitual al protgramari CAD
  * Eines com ajuda, reixa, pila de comandes, sel·lecció complexa d'elements
  * Eines per a la inserció d'elements com punts, polígons, línies, el·lipses, etc.
  * Eines per modificar la seva rotació, simetria,...

* Incorporació d'eines raster avançades:

  * Georeferenciació i reprojecció
  * Exportació, retalls
  * Taules de consulta, histograma
  * Filtres, vectorització
  * Gestió de vistes de localització i regions d'interès

* Suport de *scripts* de comandes
* Potent motor de reprojecció mitjançant PROJ4


Estàndards aplicats
--------------------------------------------------------------------------------

Clients amb suport avançat per a nombrosos estàndards de l'Open Geospatial Consortium (OGC)

* Càrrega de capes WMS, WFS i WCS
* Exportació/importació de simbolització SLD
* Exportació/importació de Web Map Context (WMC)
* Cerca a catàlegs amb CSW (perfils ISO/19115 i ebRIM)
* Cerca de nomenclàtor utilitzant la recomanació WFS-G 

Detalls
--------------------------------------------------------------------------------

**Lloc Web:** http://www.gvsig.org/

**Llicència:** GNU General Public License (GPL) versió 2

**Versió del Software:** 1.11

**Plataformes suportades:** Windows, Linux, Mac

**Suport:** http://www.gvsig.org/web/organization/services


.. _gvSIG: http://www.gvsig.org

Guia d'inici ràpid
--------------------------------------------------------------------------------
    
* :doc:`Documentació de la guia d'inici ràpid <../quickstart/gvsig_quickstart>`
