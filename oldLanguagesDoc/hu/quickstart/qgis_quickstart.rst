:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Author: Hamish Bowman
:Author: Zoltan Siki
:Translator: Zoltan Siki
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live8.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. TBD: Cameron's review comments:
  This document is in "DRAFT" state until these comments have been removed.
  I've added a number of review comments, starting with TBD: ...
  Overall: Each section needs to explain what it is about to do and the
  benefits of it. (target audience is a new user).
  We also need screen shots after each significant step.
  Once these comments have been addressed, please remove my comment.

.. image:: /images/project_logos/logo-QGIS.png
  :scale: 100 %
  :alt: projekt logó
  :align: right
  :target: http://www.qgis.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


********************************************************************************
QGIS gyorstalpaló
********************************************************************************

A QGIS egy felhasználóbarát asztali térinformatikai kliens, segítségével 
megjelenítheti, kezelheti, szerkesztheti, elemezheti adatai és nyomtatható
térképet állíthat össze.

.. contents:: Tartalom


QGIS projekt szerkesztése
================================================================================

Kezdjünk egy létező QGIS projekt megnyitásával és kapcsoljunk be és ki
rétegeket.

     .. image:: /images/projects/qgis/qgis_project_open.png
       :scale: 70 %
       :alt: Egy QGIS projekt megnyitása

#. Indítsa el a QGIS-t a menüből
   :menuselection:`Geospatial --> Desktop GIS --> QGIS` és válassza a QGIS
   menüből a :menuselection:`Project --> Open` opciót.

#. Válassza a :file:`QGIS-NaturalEarth-Example.qgs` és kattintson az
   :guilabel:`Open` gombra.

   * Egy világtérképnek kell megjelennie.

#. A réteg fában kattintson a ``ne_10m_populated_places`` réteg jelölőnégyzetébe.

   * A lakott helyek zöld pontokkal jelennek meg:

     .. image:: /images/projects/qgis/qgis.png
        :scale: 70 %
        :alt: Térkép a QGIS-ben

#. Próbálja meg felfelé és lefelé húzni a rétegeket a jelmagyarázatban és
   figyelje meg hogyan változik az alatta levő rétegek láthatósága.

#. Vessen egy pillantást az eszközökre az eszköztárban. Próbálja ki az
   eltolást, a nagyítást és térjen vissza ismét a teljes terjedelem
   megjelenítéséhez. Ezeket az eszközöket a :guilabel:`kéz` ikon mellett
   találja. Ha zsúfoltnak tűnnek az eszközsorok más helyre húzhatja és
   ki illetve bekapcsolhatja jobb egérgomb kattintással.
   Az egérgörgővel is nagyíthat és kicsinyíthet, mozgathatja a térképet
   a középső egérgombbal megragadva.

Réteg stílus beállítás
================================================================================

Próbáljuk meg a térkép stílusát módosítani. 

     .. image:: /images/projects/qgis/qgis_style_set.png
        :scale: 70 %
        :alt: Stílus beállítások

#. Nagyítson bele egy kicsit a térképbe, majd kattinson duplán a
   ``ne_10m_rivers_lake_centerlines`` rétegre a réteg fában.

#. A `Layer Properties` párbeszédablakban a `Style` fülön kattintson a 
   `Color` mezőre és válasszon egy másik színt, például sárgát.

#. Nyomja meg az :guilabel:`OK` gombot.

   * Vegye észre, hogy a folyók az új színnel jelennek meg.

     .. image:: /images/projects/qgis/qgis_style.png
        :scale: 70
        :alt: Térkép a QGIS-ben

Új QGIS projekt létrehozása
================================================================================

Hozzunk létre egy új QGIS projektet és töltsük be saját adatainkat.

#. Válassza a menüből :menuselection:`Project --> New`. A program megkérdezi,
   hogy mentse-e az előző projektet, megnyomhatja a 
   :guilabel:`Close without Saving` gombot.

#. Kattinson a menüben a :menuselection:`Layer --> Add Vector Layer...`
   lehetőségre.

#. Tallózzon a
   :file:`/home/user/data/natural_earth2/ne_10m_admin_0_countries.shp` fájlhoz.

#. Nyomja meg a :guilabel:`Open` gombot, majd ismét az :guilabel:`Open` gombot.

   * A világ országai jelennek meg.

     .. image:: /images/projects/qgis/qgis_add_layer.png
        :scale: 70
        :alt: Réteg hozzáadás

     .. image:: /images/projects/qgis/qgis_countries.png
        :scale: 70
        :alt: Réteg hozzáadás eredménye

Kapcsolódás PostGIS téradatbázishoz
================================================================================

.. TBD: Cameron's review comments:
  For Info of author: I've switched from OSM dataset to Natural Earth,
  as OSM extent changes between releases, which means screenshots from
  this quickstart would become dated.

Töltsünk be egy réteget a Postgres adatbázisból.

#. A baloldali réteg listában kapcsolja ki a ``ne_10m_admin_0_countries`` réteg
   megjelenítését, kattinson a jelölő négyzetbe a réteg tartalom elrejtéséhez.

   .. image:: /images/projects/qgis/qgis_postgis_connect.png
      :scale: 70 %
      :alt: Kapcsolódás PostGIS adatbázishoz
      :align: right

#. Válassza a menüből :menuselection:`Layer --> Add PostGIS Layers...`.

   * A Natural Earth és az OpenStreetMap PostGIS adatbázisok érhetők el;
     a Natural Earth adatbázist fogjuk használni.
     Ha egy másik adatbázishoz akar kapcsolódni, akkor nyomja meg a
     :guilabel:`New` gombot és töltse ki az adatbázis paramétereit.

#. Válassza a "Natural Earth" kapcsolatot és nyomja meg a :guilabel:`Connect`
   gombot.

   * Az adatbázis táblák listája jelenik meg.

#. Válassza a ``ne_10_populated_places`` táblát és kattinstson az
   :guilabel:`Add` gombra.

   * A PostGIS adatbázisokkal kapcsolatos munka további részleteiről nézze meg
     a :doc:`PostGIS Quickstart <postgis_quickstart>` oldalt.

#. Nagyítson az Egyesült Államokra az egérgörgővel és a görgő nyomvatartása 
   mellett a térkép mozgatásával.

#. A réteg listában kattintson jobb gombbal a ``ne_10m_populated_places``
   rétegre, hogy a felbukkanó menü megjelenjen, majd válassza a 
   :menuselection:`Properties` opciót.

#. Ábrázoljuk az adattábla egyik attribútumát mint egy buborék rajzot.
   A `Style` fül közepén húzza el az átlátszóság pótmétert **50%**-ra,
   nyomja meg az :guilabel:`Advanced` gombot és válassza a 
   :menuselection:`Size scale field`-et, majd válassza a **scalerank**-et
   (ez közel a lista elejéhez található). Majd nyomjam meg az :guilabel:`Ok`
   gombot.

#. Az eszközsorban a lekérdezés gombot válassza ki (nyíl kék "i" betűvel),
   utána kattinson a térképen az egyik buborékra az egyes városok adatainak
   megjelenítéséhez.

     .. image:: /images/projects/qgis/qgis_bubble.png
        :scale: 70
        :alt: Buborék térkép

GRASS eszköztár használata
================================================================================

A QGIS alap funcionalitását bővítendő már számos modult készítettek. 
A GRASS modul az egyik leghasznosabb ezek közül, mely a 
:doc:`GRASS GIS <../overview/grass_overview>`-ben százával rendelkezésre álló 
térinformatikai feldolgozó modult teszi elérhetővé.

#. Induljunk tiszta lappal :menuselection:`Project --> New`.

   .. image:: /images/projects/qgis/qgis_plugin.png
      :scale: 70 %
      :alt: GRASS modul bekapcsolása
      :align: right

#. Válassza a :menuselection:`Plugins --> Manage and Install Plugins...`, 
   majd görgesse a listát lefelé vagy gépelje be a ``grass`` szót a kereső
   mezőbe, és kapcsolja be a `GRASS` modult.

   * Vegye észre, hogy egy új GRASS ikon jelenik meg az eszközsorban és
     egy új `GRASS` menüpont került a `Plugins` menübe.

#. Kapcsolódjon egy létező GRASS munkaterülethez:
   `Plugins --> GRASS --> Open mapset`.

   * A GRASS GIS adatbázist (Gisdbase) a lemezen már beállítottuk a
     `/home/user/grassdata` könyvtárra.

#. A központi GRASS adatbázisban több minta adathalmaz található. A Spearfish
   munkaterületet és ezen belül a  ``user1`` térképhalmazt fogjuk használni.
   Válassza a `spearfish60` munkaterületet és a `user1` térképhalmazt, majd
   kattintson az :guilabel:`Ok` gombra.

#. Egy térkép QGIS réteglistához adásához válassza a 
   :menuselection:`Plugins --> GRASS --> Add GRASS raster layer`-t a menüből.

   * A PERMANENT térképhalmazból válassza az `aspect` térképet és kattintson
     az :guilabel:`Ok`-ra.

     .. image:: /images/projects/qgis/qgis_grass_layers.jpg
       :scale: 50 %
       :alt: QGIS-be betöltött GRASS GIS réteg
       :align: right

#. Töltsünk be egy másik GRASS raszter rétegek, az `elevation.10m` térképet
   a PERMANENT térképhalmazból.

   * Kattinson duplán az `elevation.10m` térképre a QGIS réteglistában és
     az átlátszóság fülön a globális átlátszóságot állítsa 30%-ra.

#. Egy vektor réteg hozzáadásához válassza a 
   :menuselection:`Plugins --> GRASS --> Add GRASS vector layer` menüpontot.

   * A PERMANENT térképhalmazból válassza a `roads` térképet és kattintson a
     :guilabel:`Ok` gombra.

#. Módosítsa a rétegek sorrendjét, ha szükséges (roads, elevation, aspect).

A modul hozzáférést biztosít számos hatékony GRASS elemző modulhoz és
megjelenítő eszközhöz:

.. HB: We could go through a grass processing module here (e.g. r.sun), but
  probably it gets too long and a fTools or SEXTANTE module could take on that
  role. Here we show off NVIZ as it brings 3D visualization capability to
  QGIS, and people do like the shiny. It is helpful to go through the g.region
  housecleaning step next, so for now we'll use that as the example of how to
  run a module.

#. A felső menüből válassza a 
   :menuselection:`Plugins --> GRASS --> Open GRASS tools` és az ablak szélét
   megragadva növelje meg egy kicsit a méretét.

   * Az elemző eszközök hosszú listája jelenik meg. Menjen a `Modules Tree` 
     fülre és válassza a 
     :menuselection:`Region settings --> g.region.multiple.raster` opciót.
     Kattintson rá és egy új fül nyílik meg. Írja be az  ``elevation.10m``-t
     a raszter térkép nevéhez és nyomja meg a :guilabel:`Run` gombot. Az
     `elevation.10m` térkép körül egy vékony piros vonal jelenik meg, ez jelzi 
     a GRASS `számítási terület` határait.

#. Térjen vissza a `GRASS Tools` ablak `Modules Tree` fülére, menjen le a 
   :menuselection:`3d Visualization` opcióra és válassza az `NVIZ`-t. Lehet,
   hogy ismét az ablak sarok húzásával egy kicsit meg kell növelni az ablak 
   méretét, hogy minden opciót láthasson.

#. A felbukkanó új modul fülön válassza az `elevation.10m` térképet, mint a
   magasságokat tartalmazó réteget. Engedje ki a piros sarkú téglalapot 
   tartalmazó gombot a térkép név jobb oldalán, hogy a térkép határát és a 
   felbontását ebből a térképből vegye. Ahogy már korábban említettük a 
   `számítási terület` egy alapfogalom a GRASS raszter feldolgozásban.

#. Válassza a `roads` réteget mint vektor fedvény, majd kattintson a 
   :guilabel:`Run` gombra.

#. Amikot az NVIZ 3D nézet megnyilik, maximalizálja az ablakot és mozgassa a
   pozicionáló korongot az iránytűnél a bal oldalon, hogy egy szép látványt 
   kapjon.

#. Válasza a :menuselection:`Visualize --> Raster surfaces` és állítsa be a
   a finom felbontást 1-re, aztán, ha szükséges kattintson a zöld
   :guilabel:`DRAW` gombra a bal felső részen és várjon az eredményre.

   .. image:: /images/projects/qgis/qgis_3d.jpg
      :scale: 70 %
      :alt: 3D visualization

A feldolgozás eszköztár használata
================================================================================

A Processing Toolbox egy alap QGIS modul, mely a feldolgozó eszközök egy
nagy családja felé nyitja meg az ajtót (korábbi nevén SEXTANTE Toolbox).
Ez úgy működik mint egy szabványosított felület számos más eszközkészlethez.

.. TBD: Cameron's review comments:
  If we are to include Sextante, then we need to describe using one of the
  Sextane features.

#. Válassza a :menuselection:`Processing --> Toolbox`-ot a menüből.

   * Egy új eszköztár jelenik meg a képernyő jobb oldalán, sok feldolgozó
     eszközzel, melyek közül választhat. Szánjon rá időt és nézzen körül.

   .. image:: /images/projects/qgis/qgis_toolbox.png
      :scale: 70 %
      :alt: Feldolgozás eszköztár

   * Lehet, hogy engedélyeznie kell a feldolgozás szolgáltatót, hogy használni 
     tudja. A következő képernyő kép a GRASS GIS 7 támogatás bekapcsolását 
     mutatja be. Győződjön meg, hogy a GRASS támogatást (értsd GRASS 6)
     kikapcsolta. Térjen át az "Advanced Interface"-re (lásd a jobb alsó
     sarkot a képernyő képen) a szolgáltatók megtekintéséért:

   .. image:: /images/projects/qgis/qgis_enable_provider.png
      :scale: 70 %
      :alt: A GRASS GIS 7 szolgáltatás bekapcsolása a feldolgozás beállításokban

OpenStreetMap adatok importálása
================================================================================

.. TBD: Cameron comment
  Need a sentence here introducing what the OpenStreetMap tools provide.

#. Nyissa meg az LX Terminal Emulatort az :menuselection:`Accessories` menüből.

   * Vágja ki és másolja be a következő parancsokat a terminál ablakba, ezzel
     egy másolatot készít az OSM adatokról a felhasználói könyvtárába:

     ::
     
       cp data/osm/feature_city_CBD.osm.bz2 .
       bzip2 -d feature_city_CBD.osm.bz2

#. Válassza a QGIS-ben a :menuselection:`Project --> New` menüpontot.
   Ha a Processing Toolbox nyitva van zárja le.


   .. image:: /images/projects/qgis/qgis_osm_plugin.png
     :scale: 50 %
     :alt:  Az OpenStreetMap modul
     :align: right

#. Válassza ki a :menuselection:`Vector --> OpenStreetMap --> Import topology from XML` menüpontot.

#. Kattintson a "..." gombra az "Input XML file (.osm)" mellett és válassza ki
   a `feature_city_CBD.osm` fájlt, amit az előbb másolt a saját könyvtárába.
   Az "Output SpatialLite DB file" nevét a program automatikusan beállítja.
   Kattintson az :guilabel:`Ok` gombra az adathalmaz SpatiaLite formátumba 
   konvertálásához és hozzon létre a QGIS-ben egy kapcsolatot a
   SpatialLite DB-hez

#. Ezután a pontokat, vonalakat, felületeket kell kinyernünk és mindhárom
   új réteghez topológiát kell hozzáadnunk. Ennek eléréséhez háromszor kell 
   futtatnunk az eszközt. Válassza a 
   :menuselection:`Vector --> OpenStreetMap --> Export toplogy to SpatiaLite`
   menüpontot és használja a "..." gombot az újonnal létrehozott 
   `feature_city_CBD.osm.db` fájl kiválasztásához. Az `Output layer name`
   mezőt automatikusan kitölti a program a kiválasztott  `Export type`
   függvényében. Kattintson a :guilabel:`Load from DB` gombra az elérhető
   tegek betöltéséhez. A "points" rétegnél válassza az `amentity` négyzetet;
   a "polylines" réteghez válassza a  `highway` négyzetet; és a "polygon" 
   réteghez a `building` négyzetet. Megváltoztathatja az `Output layer name`
   mező tartalmát, hogy tükrözze a kiválasztot tegeket. Amikor elkészült
   nyomja meg :guilabel:`Ok` gombot a réteg betöltéséhez. A
   : guilabel:`Load from DB` ismételtem meg kell nyomnia, miután az export
   típust módosította a pontokról törvonalra illetve felületre.


#. Ha már betöltötte a topológiát, akkor finomíthatja a SpatiaLite réteg
   tartalmát, csak bizonyos elemeket lekérdezve abból. Válassza a 
   :menuselection:`Layer --> Add SpatiaLite Layer...` opciót a menüből és a
   `Databases` listából válassza a `feature_city_CBD@...`-t és kattintson a
   a :guilabel:`Connect` gombra. Kattintson duplán a 
   `feature_city_cbd_polylines` táblára majd szintén duplán kattinson a 
   "highway"-re az SQL lekérdezés összeállításának elkezdéséhez. Kattintson
   a :guilabel:`=` gombra majd az :guilabel:`All` gombra és az érték 
   listában duplán kattintson a `motorway`-re. Kattintson a :guilabel:`Test`
   gombra az eredmény ellenőrzésére és végül az  :guilabel:`Ok`-ra kattintson.
   Visszatérve az `Add SpatiaLite Table` ablakba kattintson az :guilabel:`Add` 
   gombra, hogy a megjelenítést csak az autópályákra korlátozza. Megismételheti
   ezt az eljárást új rétegekre, hogy a különböző úttípusok eltérő szélességgel
   és stílussal jelenjenek meg.

#. Most felfedezheti ezt a gazdag adathalmazt. Használja az ``i`` információ
   gombot a QGIS eszköztárból, az egyes térképi elemek adatainak lekérdezéséhez.

Kipróbálandó dolgok
================================================================================

* Próbálja megjeleníteni az adatforrásait a `QGIS Data Browser <http://planet.qgis.org/planet/tag/qgis%20browser/>`_ segítségével, :menuselection:`Geospatial --> Databases` a menüből.

* Próbálja meg a QGIS térképeit a weben publikálni a :doc:`QGIS Map Server <../overview/qgis_mapserver_overview>` segítségével, :menuselection:`Geospatial --> Web Services` a menüből.


Hogyan lépjek tovább?
================================================================================

A haladó témakörök oktatóanyagait a `OSGeo-Live QGIS oktatóanyagok`_ oldalon
gyűjtötték össze.

A QGIS ismeretek bővítéséhez egy jó kiinduló pont a `Dokumentáció`_ a
QGIS honlapon és az `Egy barátságos bevezető a QGIS-hez`_ ekönyv.

A `QGIS felhasználói kézikönyv`_ `[1]`_ szintén megtalálható az OSGeo Live lemezen.

.. _`OSGeo-Live QGIS oktatóanyagok`: ../../qgis/
.. _`Dokumentáció`: http://docs.qgis.org/
.. _`Egy barátságos bevezető a QGIS-hez`: http://docs.qgis.org/2.4/en/docs/gentle_gis_introduction/
.. _`QGIS felhasználói kézikönyv`: http://docs.qgis.org/2.4/en/docs/user_manual/
.. _`[1]`: ../../qgis/QGIS-2.2-UserGuide-en.pdf

