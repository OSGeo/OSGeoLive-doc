:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Anna Muñoz
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-uDig.png
  :scale: 30
  :alt: logo udig
  :align: right
  :target: http://udig.refractions.net/

User-friendly Desktop Internet GIS (uDig)
================================================================================

SIG d'escriptori
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/screenshots/1024x768/udig-overview.png
  :scale: 50
  :alt: udig workshop
  :align: right

User-friendly Desktop Internet GIS (uDig) és un programari de codi obert per a la visualització i edició de dades espacials, 
que posa especial èmfasi en els estàndards OpenGIS per als SIG en internet com són els estàndards Web Map Server (WMS) i el 
Web Feature Server (WFS).

uDig és:

* **amigable**, proporciona un entorn gràfic conegut pels usuaris de SIG;
* **un programari d'escriptori**, s'executa de forma nativa sobre Windows, Mac OS/X i Linux;
* **orientat a internet**, consumeix serveis web geoespacials estàndards; i,
* **un entorn SIG**, proporciona l'entorn on poder construir capacitats analítiques complexes, i on poder anar incloent de manera gradual aquestes noves capacitats en l'aplicatiu principal.

Pels desenvolupadors, uDIG proporciona una plataforma Java per a la construcció d'aplicacions espacials amb components de codi obert.
El lloc web ofereix una sèrie de tutorials que abasten des de la creació d'una eina simple fins al desenvolupament d'una aplicació personalitzada. 

Característiques Principals
--------------------------------------------------------------------------------

* Client d'escriptori amb integració de les accions 'arrossegar' i 'deixar anar' tant pels exploradors de carpetes com pels navegadors web.
* S'integra amb infraestructures ja existents: ArcSDE, Oracle, DB2 i altres
* Treballa amb arxius locals: Shapefile, jpeg, png, tiff entre d'altres.
* Treballa amb formats ràster avançats de tipus espacial: ECW, MrSID, JPEG 2000
* Compatible amb servidors de mapes web (s'han verificat GeoServer i MapServer)
* Experiencia d'integració Web amb un navegador incrustat que reconeix serveis web OGC i que afegeix enllaços al mapa en pantalla.
* Control del ''renderitzat'' mitjançant el Descriptor d'Estils de Capa (SLD, Style Layer Descriptor) que permet publicar mapes usant la mateixa simbologia tant en uDig com en un servidor de mapes.
* Integració total d'estàndards que permet el intercanvi entre els diferents serveis de visualització, interacció i edició dels que consta l'aplicació.
* Impressió i generació de PDF
* Per desenvolupadors
  
  * Construcció d'aplicacions Java usant :doc:`GeoTools <geotools_overview>`, i `JTS Topology Suite (JTS) <http://tsusiatsoftware.net/jts/main.html>`_
  * Plug-in industrial proporcionat per Eclipse Rich Client Platform
  * Us de **widgets** nadius

Estàndards implementats
--------------------------------------------------------------------------------

* OGC Web Map Server (WMS)
* OGC Web Feature Server (WFS)
* OGC Web Feature Server Transactional (WFS-T)
* OGC Simple Features per SQL (SFQL)
* Web Map Server Cache (WMS-C)
* OGC Style Layer Descriptor (SLD)

Detalls
--------------------------------------------------------------------------------

**Lloc web:** http://udig.refractions.net/

**Llicència:** GNU Lesser General Public License (LGPL) versió 2

**Versió de programari:** 1.2.2

**Plataformes suportades:** Windows, Linux, Mac

**Interfícies de desenvolupament:** GeoTools, ImageIO-Ext, Java Advanced Imaging, Eclipse Rich Client Platform, Eclipse Modelling Framework

**Suport:** http://udig.refractions.net/users/

**Desenvolupadors:** http://udig.refractions.net/developers/


Guia d'inici ràpid
--------------------------------------------------------------------------------

* :doc:`Documentació de la guia d'inici ràpid <../quickstart/udig_quickstart>`
