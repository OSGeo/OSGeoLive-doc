:Author: Astrid Emde
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Anna Muñoz Bollas
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-Mapbender.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.mapbender.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 90 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


Mapbender
================================================================================

Geoportal Framework
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Mapbender <http://www.mapbender.org>`_ és un projecte graduat en OSGeo. Consisteix d'un entorn per a la publicació de Geoportals, i per al registre, visualització, navegació, monitoratge i maneig de nivells d'accés segurs a serveis de Infraestructura de Dades Espacials.

Mapbender és la punta del iceberg, una mena de metacapa que proporciona un programari per facilitar l'accés als components d'una IDE (Infraestructura de Dades Espacials) que s'adhereixen als estàndards internacionals d'interoperabilitat per a serveis d'informació geogràfica.

Mapbender permet als usuaris crear fàcilment navegadors web de mapes o Geoportals personalitzats a partir d'una àmplia gamma d'aplicacions o *widgets* sense cap necessitat de programació o en alguns casos molt mínima. Les aplicacions integrades amb les funcionalitats de tipus servidor proveeixen funcionalitats avançades com seguretat de tipus *proxy*, digitalització en línia a través del navegador **web** (o *browser*), *acte snapping* i molt més.

El costat del client Mapbender es basa en HTML i JavaScript usant les biblioteques jQuery i jQuery UI que proporcionen gran quantitat d'aplicacions al navegador web. El costat del servidor està implementat en PHP i PostgreSQL / PostGIS. 

Mapbender dóna una perspectiva totalment nova a la gestió de les IDE usant res més que un navegador web estàndard. 

.. image:: ../../images/screenshots/800x600/mapbender_demo.png
  :scale: 50%
  :alt: Mapbender application
  :align: right


Característiques Principals
--------------------------------------------------------------------------------

* Permet crear fàcilment interfícies web utilitzant l'aplicació de plantilles

 * Afegir / treure / personalitzar els widgets de jQuery
 * Personalitzar l'estil usant el jQuery UI ThemeRoller)
    
* Carregar i compartir serveis remots OGC de tipus WMS (mitjançant* Capabilities caching*)

 * Arrossegar capes per superposar els serveis WMS carregats
 * Editar la visibilitat de les capes
 * Ordenar
 * Assignar format
 * Editar llegendes
 * Desplegar servei de metadades (segons perfil ISO) basat en el document de capacitats per catàleg segons protocol OGC amb interfície CSW (Catalog Service Web).

* Carregar i configurar Serveis WFS per a Buscar, Trobar i Ressaltar objectes o elements espacials (és equivalent al servei Gazetteer o Nomenclàtor)
* Enllaçar de manera transaccional serveis OGC WFS i WMS per permetre la digitalització "en-línia" (amb funcionalitats com el servei creuat de *snapping*, o la manipulació de geometries com la divisió (*split*), la combinació o la clonació).
* Crear usuaris i grups, compartir i proporcionar accés als serveis i mòduls de forma personalitzada
* Manipular Web Map Context (WMC)
* Connectar a serveis remots de catàleg, i de manera opcional a Geonetwork Opensource
* Restringir accés a usuaris amb el mòdul de Seguretat * Proxy * (OWS) via servidors validats
* Monitoritzar protocols encriptats, i notificar l'estat i actualitzacions automàtiques de serveis des d'un servei OGC remot
* Desplegar el client OpenLayers des del repositori de serveis de Mapbender
* Imprimir Mapes d'Alta Qualitat fent servir les teves pròpies plantilles PDF
* ... i més!

Estàndards implementats
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.0.0, 1.1.0, 1.1.1, 1.3.0
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0
* OGC Web Map Context (WMC) 1.1.0 

Detalls
--------------------------------------------------------------------------------

**Lloc Web:** http://www.mapbender.org/ 

**Llicència:** Mapbender es troba sota una llicència dual composta per la llicència GNU General Public License i la llicència Simplified BSD license
  * http://svn.osgeo.org/mapbender/trunk/mapbender/license/gpl.txt  
  * http://svn.osgeo.org/mapbender/trunk/mapbender/license/simplified_bsd.txt

**Versió del Programari:** 2.7.3

**Plataformes suportades:** Windows, Linux, Mac

**Suport:** http://www.mapbender.org/Support


Guia d'inici ràpid
--------------------------------------------------------------------------------

* :doc:`Documentació de la guia d'inici ràpid <../quickstart/mapbender_quickstart>`

