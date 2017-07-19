.. Writing Tip:
  Aquesta guia d'inici ràpid descriu com executar un exemple senzill, on utilitzarem algunes funcions bàsiques de l'aplicació.
  Està pensat per poder-se executar en uns 5 minuts.
  De manera opcional, s'inclouen algunes seccions que descriuen com executar funcionalitat addicional.
  Aquest document hauria de descriure en detall cadascun dels passos a executar per tal de tenir l'aplicació operativa, 
  incloent captures de pantalla per a cada etapa del procés.
  Acaba amb les seccions "Coses que cal provar" i "I ara què?".  
  Les dades d'exemple que s'utilitzen provenen de les bases Natural Earth i OpenStreetMap.
  Les capes d'informació es carreguen als següents directoris:
   Open Street Map:
     /home/user/data/osm/
   Dades Vectorials: Disponibles com arxius .shp
     /home/user/data/natural_earth/
       cultural/10m-populated-places-simple
       cultural/10m-admin-0-countries
       cultural/10m-populated-places-simple
       cultural/10m-urban-area
       physical/10m-land
       physical/10m-ocean
       physical/10m-lakes
       physical/10m-rivers-lake-centerlines
   Mapa Base Raster mostrant la hidrografia i el relleu amb hipsometria ombrejada
     1:50 million (40mb). Disponible com a .TIF
     /home/user/data/natural_earth/HYP_50M_SR_W/

.. Writing Tip:
  Metadades relatives a aquest document

:Author: OSGeo-Live
:Author: Jody Garnett
:Author: Frank Gasdorf
:Translator: Anna Muñoz Bollas
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Thanks: udig-devel list

.. image:: /images/project_logos/logo-uDig.png
  :scale: 60 %
  :alt: project logo
  :align: right

********************************************************************************
Guia d'inici ràpid a uDig
********************************************************************************

uDig (User Friendly Internet Desktop GIS), és un client d'escriptori GIS per a l'edició i visualització de dades geoespacials.

Aquesta Guia d'Inici Ràpid descriu com:
  
  * llegir dades procedents d'un shapefile i des d'un :doc:`Web Map Service (WMS) <../standards/wms_overview>`
  * usar eines estàndard per confeccionar mapes
  * aplicar color als diferents elements d'un mapa fent ús dels estils

.. contents:: Contingut
  
Iniciar uDig
================================================================================

#. Seleccioneu |osgeolive-appmenupath-udig| en el menú d'inici
#. L'aplicació trigarà uns moments en iniciar-se

.. image:: /images/screenshots/800x600/udig_Quickstart1Splash.png
   :scale: 70 %

Si teniu qualsevol problema amb l'execució d'uDig, reviseu si us plau la pàgina de referència 'Running uDig'.

Pantalla de Benvinguda
================================================================================

#. El primer cop que s'executa uDig, us apareixerà la pantalla de benvinguda. 
En aquesta pantalla podreu veure enllaços a documentació d'ajuda, a manuals en línia i al lloc web del projecte.

#. Feu clic sobre la fletxa anomenada 'Workbench', que apareix en la cantonada superior dreta, per tal de mostrar 
el contingut de l'entorn de treball d'uDig.
  
  .. image:: /images/screenshots/800x600/udig_welcome.png
   :scale: 70 %
   
Sempre que vulgueu podeu tornar a aquesta pantalla de benvinguda seleccionant l'opció :menuselection:`Help --> Welcome` en la barra de menú.

Entorn de treball (Workbench)
================================================================================

La finestra de l'entorn de treball (Workbench) ofereix diversos Editors (cadascú mostrant un mapa) i 
suporta diferents Vistes que mostren informació sobre el mapa amb què es treballa.

  .. image:: /images/screenshots/800x600/udig_workbench.png
   :scale: 70 %

La imatge anterior mostra una sessió típica d'uDIG amb 

	#. la vista dels projectes (Projects view, 1), 
	#. la vista de les capes de dades (Layers view, 2), 
	#. la vista de catàleg (Catalog view, 3) i 
	#. l'editor de mapes (Map editor, 4). 

Més endavant, en aquest mateix document, es descriuran cadascuna d'aquestes vistes i es mostrarà el seu ús.

Arxius
================================================================================

Per començar carregarem algunes de les dades d'exemple incloses en el DVD.

#. Seleccioneu :menuselection:`Layer --> Add` des de la barra de menú per obrir l'assistent **Add Data**.

#. Seleccioneu **Files** en el llistat de fonts de dades

#. Feu clic en :guilabel:`Next` per obrir el diàleg de selecció d'arxius

#. Podeu trobar les dades d'exemple del OSGeo-Live DVD en:
   
   * :file:`/usr/local/share/data`

#. Seleccioneu el següent arxiu contingut a la carpeta :file:`natural_earth`:
   
   * :file:`10m_admin_0_countries.shp`
   
#. Feu clic en :guilabel:`Open`
   
   * S'obrirà un nou editor de mapes mostrant el contingut del shapefile seleccionat. El nom per defecte i la projecció del mapa
     serà la que vingui donada en les dades del shapefile.
   
   * S'actualitzarà el **Catalog view** amb l'entrada :file:`10m_admin_0_countries.shp`. 
     Aquesta vista s'usa per consultar el llistat de recursos continguts a la nostra aplicació uDig.
   
   * La vista **Layers** mostra la única capa de dades que actualment es mostra en el mapa.
     Aquesta vista s'usa per modificar l'ordre i l'aspecte de la informació que es mostra al mapa.
   
   * La vista **Projects** mostra el projecte on s'emmagatzema el mapa.
     Es poden tenir diversos projectes oberts al mateix temps, cadascun d'ells contenint els seus mapes.

#. Accediu al següent directori :file:`~/data/natural_earth/HYP_50M_SR_W`

#. Seleccioneu l'arxiu :file:`HYP_50M_SR_W.tif` i arrossegueu-lo amb el ratolí sobre l'editor de Mapes. S'afegirà una nova capa de dades al mapa.

#. Podeu veure l'ordre de les capes de dades en la vista **Layers**. 

#. Seleccioneu la capa `HYP_50M_SR_W` en la vista de catàleg i arrossegueu-la al final de la llista.
  
  .. image:: /images/screenshots/800x600/udig_QuickstartCountriesMap.png
   :scale: 70 %

.. note::
   Un dels dubtes més comuns sobre uDIG és quina quantitat de memòria usa l'aplicació.
   A diferència d'altres aplicacions GIS, uDIG pot treballar amb una quantitat fixa de memòria.
   El shapefile que hem carregat anteriorment no es llegeix en memòria, si no que les dades es guarden en el disc dur
   i es dibuixen a la pantalla d'edició només quan es necessiten.

.. tip:: Podeu afegir arxius shapefile directament a uDIG amb arrossegar i soltar.

Mapes
================================================================================

Amb les eines de navegació, que trobareu en la barra de menú superior, podeu controlar la vostra posició en el **Map Editor**.

#. L'eina de Zoom |ZOOM| està disponible per defecte
   
   .. |ZOOM| image:: /images/screenshots/800x600/udig_zoom_mode.png
   
   * Podeu usar aquesta eina dibuixant una caixa amb el botó esquerre del ratolí marcant l'àrea del mapa que es vol veure.
   * Per fer zoom out, dibuixeu una caixa amb el botó dret del ratolí. L'extensió del mapa que s'està visualitzant quedarà dintre de la caixa dibuixada.

#. L'eina Pan |PAN| es pot usar per moure's pel mapa canviant l'escala.
  
   .. |PAN| image:: /images/screenshots/800x600/udig_pan_mode.png

#. N'hi han altres botons de navegació que es poden usar en qualssevol moment:
 
   * |SHOWALL| Mostrar tot, mostra l'extensió total del mapa.
   
     .. |SHOWALL| image:: /images/screenshots/800x600/udig_zoom_extent_co.png

   * |ZOOM_IN| Apropar-se i |ZOOM_OUT| Allunyar-se es poden usar per canviar l'escala de visualització a un valor determinat.

     .. |ZOOM_IN| image:: /images/screenshots/800x600/udig_zoom_in_co.png
     .. |ZOOM_OUT| image:: /images/screenshots/800x600/udig_zoom_out_co.png

   * Podeu usar Navigation Back |BNAV| i Forward |FNAV| que estan disponibles en la barra de menú, per tornar a localitzacions que hagueu consultat prèviament.

     .. |BNAV| image:: /images/screenshots/800x600/udig_backward_nav.png
     .. |FNAV| image:: /images/screenshots/800x600/udig_forward_nav.png

Servidor Web de Mapes (Web Map Server)
================================================================================

Una de les raons per usar una aplicació com uDig és la possibilitat d'accedir a gran quantitat d'informació geoespacial 
disponible de manera gratuïta en la web. Aquesta secció descriu l'ús dels Servidors Web de Mapes que proporcionen capes 
d'informació que es poden incloure en els vostres mapes.

.. note:: Si no esteu connectats a Internet executeu |osgeolive-appmenupath-geoserver| per obtenir un servei local WMS.
   Aquest script obrirà una pàgina amb la secció "Service Capabilities"  i dos enllaços a Serveis WMS
   que es poden arrastrar a un mapa buit.

.. tip:: També us podeu connectar a un Servidor de Mapes usant el Wizard **Add Data** (:menuselection:`Layer --> Add...`). 

#. Seleccioneu :menuselection:`File --> New --> New Map` des de la barra de menú.

#. Canvieu a la vista **Web** fent clic en la següent pestanya per accedir a la vista **Catalog** on es desplegarà la vista *Web*.

	.. image:: /images/screenshots/800x600/udig_WebViewClick.png
		:scale: 50 %

#. Feu clic en l'enllaç WMS\:`dm solutions`_ link

	.. _dm solutions: http://www2.dmsolutions.ca/cgi-bin/mswms_gmap?Service=WMS&VERSION=1.1.0&REQUEST=GetCapabilities

#. Des de la pàgina de **Resource Selection** seleccionarem les següents capes de dades:

   * Elevation/Bathymetry
   * Parks
   * Cities
   
	.. image:: /images/screenshots/800x600/udig_AddWMSLayers.png
		:scale: 70 %

#. Feu clic sobre :guilabel:`Finish` per tal d'afegir aquestes capes sobre el vostre mapa
   
	.. image:: /images/screenshots/800x600/udig_WMSMap.png
		:scale: 70 %

#. Fent ús de l'eina de Zoom |ZOOM|,  apropeu-vos a un dels parcs (capa Parks)

#. Seleccioneu l'eina d'informació |INFO| i feu clic sobre un dels parcs per consultar la informació associada

.. |INFO| image:: /images/screenshots/800x600/udig_info_mode.png

.. tip:: Podeu canviar la selecció entre les eines de zoom i d'informació usant les tecles `Z` i `I`.

Estils
================================================================================

#. Seleccioneu la capa `project > 10m admin 0 countries`, que podeu obrir fent doble clic sobre el nom, o bé clic amb el botó dret i seleccioneu Open Map

#. Seleccioneu la capa **countries** en la vista de capes (Layer)

#. Obriu el **Style Editor** fent clic amb el botó dret sobre la capa `10m admin 0 countries` i seleccionant :guilabel:`Change Style`

#. A continuació, aplicarem alguns canvis sobre l'aspecte com es visualitzen els elements de la capa **countries**
   
   * Line: Feu clic sobre :guilabel:`Border`, seleccioneu el botó **Color** i canvieu el color a BLACK
   
   * Fill: En la pestanya :guilabel:`Fill` verifiqueu que l'opció :guilabel:`enable/disable fill` està desactivada (off)
   
   * Label: En la pestanya :guilabel:`Labels` seleccioneu l'opció :guilabel:`enable/disable labeling`, i escolliu l'atribut **NAME** de la llista d'atributs

   .. image:: /images/screenshots/800x600/udig_StyleEditor.png
      :scale: 70 %

#. Feu clic sobre :guilabel:`Apply` per veure quin aspecte té finalment el mapa, la vista **Layer** s'actualitzarà per reflectir l'estil actual

#. Quan esteu d'acord amb el resultat podeu tancar el diàleg fent clic sobre :guilabel:`Close`

.. note:: Alguns arxius inclouen configuracions d'estil.

   La definició de l'estil es pot trobar en els arxius amb l'extensió :file:`*.sld`. 
   El nom de l'arxiu d'estil ha de ser igual al que conté les dades.
   Si existeix l'arxiu :doc:`Styled Layer Description (SLD) <../standards/sld_overview>`, l'estil s'aplicarà automàticament.

De vegades és una mica difícil veure el que està passant en la capa que descriu aquests detalls. 
Podeu focalitzar la vostra tasca en l'aspecte que més us interessi seleccionant :menuselection:`Map --> Mylar` des de la barra de menú.
Usant la vista *Layer* podeu seleccionar diferents capes per veure els efectes de l'aplicació dels estils.
Per desactivar aquest efecte podeu fer servir en qualssevol moment l'opció :menuselection:`Map --> Mylar` de la barra de menú.
  
	.. image:: /images/screenshots/800x600/udig_MapMylar.png
		:scale: 70 %

Coses per provar
================================================================================

A continuació teniu algunes propostes addicionals perquè intenteu fer pel vostre compte:

#. Intenteu visualitzar les vostres dades GIS, o bé proveu d'afegir capes des d'un servei :doc:`Web Feature Service (WFS) <../standards/wfs_overview>` 
#. Intenteu aplicar estils a una capa WFS.

I ara què?
================================================================================

El que acabem de veure és només el primer pas en el procés d'aprenentatge d'uDig.
Podeu trobar més material i descobrir altres funcionalitats en els documents anomenats **walkthrough**.

* Walkthrough 1 - Proveu a usar :doc:`PostGIS <../overview/postgis_overview>`, feu una extracció de dades des d'un servei WFS i explora 
  l'ús de **Themes** amb la tecnologia `Color Brewer`.

  :file:`/usr/local/share/udig/udig-docs/uDigWalkthrough 1.pdf`

* Walkthrough 2 - Mostra com crear shapefiles i com usar les eines d'edició per manipular les entitats geogràfiques.
  Descriu la instal·lació de :doc:`GeoServer <../overview/geoserver_overview>` i la edició amb un WFS.

  Disponible en http://udig.refractions.net/

