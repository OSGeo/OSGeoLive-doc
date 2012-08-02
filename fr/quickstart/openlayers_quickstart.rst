:Author: Chris Schmidt
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
OpenLayers Guide de démarrage rapide 
********************************************************************************

OpenLayers Exemples
--------------------------------------------------------------------------------
Parfois, le meilleur moyen de comprendre comment OpenLayers fonctionne est de regarder les 
exemples qui sont situés à: `http://localhost/openlayers/examples <../../openlayers/examples>`_.

Creation de votre première carte
--------------------------------------------------------------------------------
L'API OpenLayers a deux concepts qui sont importants de comprendre afin de construire votre 
première carte: «Map», et «Layer». La balise «Map» d'OpenLayers stocke des informations sur 
la projection par défaut, l'étendue de la map, les unités, et d'autres informations sur la 
map. À l'intérieur de la map, les données sont affichées via la balise «Layer». Un layer 
comprend une source de données, l'information sur la façon qu'OpenLayers doit interroger les 
données et comment il doit les afficher.

Page HTML
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

La mise en place d'un visualiseur OpenLayers nécessite une page HTML. Le visualiseur OpenLayers 
se place à l'intérieur de n'importe quel bloc d'éléments, ce qui signifie qu'il peut être utilisé 
pour mettre une carte dans la plupart des éléments HTML de votre page.

En plus du bloc unique, il est également nécessaire d'inclure à la page HTML une balise script 
qui comprend la bibliothèque OpenLayers.

.. code-block:: html
  
  <html>
  <head>
    <title>OpenLayers Example</title>
      <script src="http://localhost/openlayers/OpenLayers.js"></script>
      </head>
      <body>
        <div style="width:100%; height:100%" id="map"></div>
      </body>
  </html>
    
**Ex. 1**: Création de votre première page HTML  

Creation du visualiseur de cartes
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Afin de créer le visualiseur, vous devez d'abord créer une carte. Le constructeur OpenLayers.Map 
nécessite un argument: Cet argument doit être soit un élément HTML, ou l'ID d'un élément HTML. 
C'est l'élément dans lequel la carte sera placée.

.. code-block:: javascript

  var map = new OpenLayers.Map('map');
  
**Ex. 2:** Constructeur Map

La prochaine étape pour la création d'un visualiseur est d'ajouter un layer à la carte. OpenLayers 
supporte de nombreuses sources de données différentes, à partir de WMS à Yahoo! Maps en passant 
par WorldWind. Dans cet exemple, une couche WMS est utilisée. La couche WMS est un exemple fourni 
par MetaCarta.

.. code-block:: javascript

  var wms = new OpenLayers.Layer.WMS(
    "WMS",
    "http://localhost/cgi-bin/qgis_mapserv.fcgi", 
    {
    'map': '/usr/local/share/qgis/QGIS-NaturalEarth-Example.qgs',
    'layers':'HYP_50M_SR_W,10m_lakes,10m_rivers_lake_centerline'} );
  map.addLayer(wms);

**Ex. 3:** Constructeur Layer

Le premier paramètre de ce constructeur est le nom de la couche, qui est utilisé lors de l'affichage. 
Le deuxième argument est l'URL du serveur WMS. Le troisième argument est un objet contenant les 
paramètres à être jointe à la requête WMS.

Finallement, afin d'afficher la carte, vous devez définir le centre et le niveau de zoom. Pour ajuster 
le zoom de la carte à la fenêtre, vous pouvez utiliser la fonction zoomToMaxExtent, qui fera un zoom 
aussi proche que possible tout en s'assurant que l'étendue complète de la carte soit au sein de la fenêtre.

Assembler tous les éléments
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Le bloc de code suivant met tous les morceaux ensemble pour créer un visualiseur OpenLayers.

.. code-block:: html

  <html>
  <head>
    <title>OpenLayers Example</title>
      <script src="http://localhost/openlayers/OpenLayers.js"></script>
      </head>
      <body>
        <div style="width:100%; height:100%" id="map"></div>
        <script defer="defer" type="text/javascript">
          var map = new OpenLayers.Map('map');
          var wms = new OpenLayers.Layer.WMS(
            "WMS",
            "http://localhost/cgi-bin/qgis_mapserv.fcgi", 
            {
            'map': '/usr/local/share/qgis/QGIS-NaturalEarth-Example.qgs',
            'layers':'HYP_50M_SR_W,10m_lakes,10m_rivers_lake_centerline'} );
          map.addLayer(wms);
          map.zoomToMaxExtent();
        </script>
  
  </body>
  </html>

**Ex. 4:** Remplir les fichiers HTML et Javascript pour un simple visualiseur WMS

Ajouter une supperpositon de WMS
--------------------------------------------------------------------------------

Les couches WMS ont la possibilité de se superposer au-dessus de d'autres couches WMS ayant la même 
projection. Il ya plusieurs façons d'indiquer une couche comme étant une superposition, plutôt que 
d'une couche de base. Avec WMS, la meilleure façon de faire est de fixer le paramètre «transparent»  
à 'true'. L'exemple ici utilise un WMS des frontières politiques pour démontrer la superposition 
d'une couche WMS transparente.

.. code-block:: javascript

    var twms = new OpenLayers.Layer.WMS( "World Map", 
        "http://world.freemap.in/cgi-bin/mapserv?", 
        { map: '/www/freemap.in/world/map/factbooktrans.map', 
          transparent: 'true', layers: 'factbook'} 
        );
    map.addLayer(twms);

**Ex. 5:** Comment ajouter un WMS transparent à votre map.

Using the transparent: 'true' parameter sets two flags automatically:
 
Utilisation de la transparence: le paramètre 'true' définit deux drapeaux automatiquement:
  
  * Le paramètre "format". Le format de la couche WMS est fixé à image/png si le navigateur prend en 
  	charge les images PNG transparentes. (C'est pour tous les navigateurs sauf Internet Explorer 6.) 
  	Dans Internet Explorer 6, ce sera plutôt mis à image/gif.
   
  * l'option isBaseLayer. L'option isBaseLayer contrôle si la couche peut être affichée en même temps 
  	que les autres couches. Cette option par défaut est fixée à "TRUE" pour la couche WMS, mais la mise 
  	en transparence d'une couche change ce paramètre à "TRUE" par défaut.

Ajout d'un marqueur à la carte
--------------------------------------------------------------------------------

Pour ajouter un seul marqueur à une latitude et longitude, vous pouvez utiliser une couche vectorielle 
et la superposer à la carte.

.. code-block:: html  
   
   var vectorLayer = new OpenLayers.Layer.Vector("Overlay");
   var feature = new OpenLayers.Feature.Vector(
    new OpenLayers.Geometry.Point(-71, 42),
    {some:'data'},
    {externalGraphic: 'img/marker.png', graphicHeight: 21, graphicWidth: 16});
   vectorLayer.addFeatures(feature);
   map.addLayer(vectorLayer);

Il s'agit d'une simple démonstration, de plus amples renseignements sont disponibles sur les superpositions, 
la façon d'interagir avec eux, de les contrôler et sur le changement de style dans la documentation de 
OpenLayers sur openlayers.org.
