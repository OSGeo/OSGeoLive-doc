:Author: Trevor Wekel
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Anna Muñoz Bollas
:Version: osgeo-live5.5draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-MapGuideOS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://mapguide.osgeo.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


MapGuide Open Source
================================================================================

Servei Web
--------------------------------------------------------------------------------

`MapGuide Open Source <http://mapguide.osgeo.org/>`_ és una plataforma web que proporciona als usuaris la possibilitat de publicar mapes i serveis web a internet. MapGuide és un visor web interactiu que inclou suport per a la selecció d'objectes, l'anàlisi espacial, i altres operacions com buffer, seleccions entre capes i mesuraments.

MapGuide inclou suport XML per a la gestió de continguts. Permet editar la base de dades XML i construir un visor web sense haver d'escriure una sola línia de codi. A més, MapGuide suporta l'accés a la majoria dels formats geoespacial més usuals, bases de dades i estàndards.

MapGuide es pot implementar en Linux o Windows, així com en els servidors web Apache i Microsoft IIS, i es pot estendre amb PHP, .NET, Java i les APIs JavaScript per al desenvolupament d'aplicacions. La llicència de MapGuide Open Source és LGPL.

.. image:: ../../images/screenshots/1024x768/mapguide_viewer.png
  :scale: 50%
  :alt: screenshot
  :align: right

.. NOTA :: A causa de les limitacions d'espai en el DVD, actualment MapGuide 
   no està instal·lat al DVD.
   
.. cal comentar que actualment no funciona la instal·lació manual. Per instal·lar-lo 
   obriu una finestra de consola i executeu ``cd gisvm/bin; sudo ./install_mapguide.sh``
   
Funcionalitats Principals
--------------------------------------------------------------------------------

**Visualització interactiva de Mapes**

* Visor dinàmic basat en el navegador 
* Selecció d'objectes i propietats
* Buffering, consultes
* Impressió de mapes

**Sortides Cartogràfiques de gran qualitat**

* Representació del detall segons l'escala
* Regles per a la creació d'estils temàtics
* Renderització d'imatges amb 'antialiasing'
* Suport de color real

**Gestió d'una Base de Dades de Recursos**

* Emmagatzemament jeràrquic de recursos i documents XML per a definir mapes, capes i connexions de dades
* Definició de dades i capes que es poden reutilitzar en mapes diferents
* Model de gestió de permisos i accessos segons l'usuari

**Accés Uniforme a les Dades**

* Ús de l'API de Feature Data Objects (FDO) per dades vectorials i ràster
* Accés estàndard a diferents tipus de dades com SHP, SDF, Oracle, MySQL, i PostGIS.

**Desenvolupament Flexible d'Aplicacions**

* Desenvolupament d'aplicacions en PHP, .NET, o Java

**API extensible en el costat servidor**

* Creació, consulta, lectura, i escriptura de documents XML
* Consulta i actualització de dades
* Re-projecció de coordenades
* Creació, manipulació i anàlisi de geometries
* Manipulació de capes i mapes

**Plataforma de servidor segura, ràpida i escalable**

* Adaptació total per multi-tasca i per a servidors multi-core
* Repartiment de la càrrega entre servidors
* Cues de connexions a bases de dades
* Integració d'emmagatzemament en *tile caching*

**Suport multiplataforma**

* Instal·lable en Microsoft Windows o Linux
* Es por usar amb Apache o Microsoft IIS
* Treballa amb els següents navegadors: Microsoft Internet Explorer, Mozilla Firefox, Safari i Chrome



Estàndards Implementats
--------------------------------------------------------------------------------

* OGC Web Map Service 1.1.1 

Detalls
--------------------------------------------------------------------------------

**Lloc Web:** http://mapguide.osgeo.org/

**Llicència:** GNU Lesser General Public License (LGPL) 

**Versió de Programari:** 2.4.0 Pre-Release

**Plataformes Suportades:** Linux, Windows

**Suport Comercial:** http://www.osgeo.org/search_profile


Guia d'inici ràpid
--------------------------------------------------------------------------------

* :doc:`Documentació de la guia d'inici ràpid <../quickstart/mapguide_quickstart>`


