:Author: Alan Boudreault, Steve Lime
:Reviewer: Cameron Shorter, Jirotech
:Translator: Zoltan Siki
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-mapserver-new.png
  :alt: projekt logo
  :align: right
  :target: http://mapserver.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Projekt
  :align: right
  :target: http://www.osgeo.org


MapServer
================================================================================

Web szolgáltatás
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A MapServer egy C-ben írt `nyílt forráskódú <http://www.opensource.org>`_ 
térinformatikai adatmegjelenítő motor. Az adatok böngészésén túl a MapServer
"térinformatikai kép térképek" létrehozását is lehetővé teszi, ez olyan térkép,
mely különböző web tartalmakra irányíthatja a felhasználót. Például a Minnesota DNR `Rekreációs iránytű <http://www.dnr.state.mn.us/maps/compass.html>`_ 
alkalmazás több mint 10,000 weblapot kínál a felhasználóknak, egyetlen 
alkalmazáson keresztül. Ugyanez az alkalmazás "térkép motorként" szolgálja ki az
oldal többi részét és térbeli tartalmat szolgáltat ahol szükséges.

A MapServert eredetileg a Minnesota Egyetem (UMN) Természetes Erőforrások 
tanszékén (MNDNR) fejlesztették, a NASA-val együttmüködésben a ForNet projekt
keretében. Később a TerraSIP projekt kezelésébe került, melyet a
NASA szponzorált és az UMN mellett egy termőföld kezelésben érdekelt konzorcium
vett benne részt.

Napjainkban az `OSGeo <http://www.osgeo.org>`_ egy projektje és a világon 
mindenfelé megtalálható, növekvő számú fejlesztő (közel 20) tartja karban. A
szervezetek sokszínü csoportja biztosít támogatást, alapfejlesztést és
karbantartást, az OSGeo-n belüli irányításról a MapServer Projekt Irányító
Bizottság gondoskodik, mely fejlesztőkből és közreműködőkből áll.

Alapfunkciók
--------------------------------------------------------------------------------

.. image:: /images/screenshots/mapserver/mapserver.png
  :scale: 50 %
  :alt: képernyőkép
  :align: right

* Fejlett térképi kimenet

  * Méretarány függő megjelenítés és alkalmazás végrehajtás
  * Címkézés és címke egybeesés vizsgálat
  * TrueType font támogatás a címkézéshez és a szimbólumokhoz
  * Automatikus térkép elemek (lépték vonalzó, áttekintő térkép és jelmagyarázat)
  * Tematikus térkép logikai vagy szabályos kifejezés alapján kialakított osztályokra
  * Lecserélhető megjelenítő AGG, Cairo, GD, OpenGL és még további meghajtókkal
  * Speciális szolgáltatás a csempe output generálásához
  * Maszk rétegek
  * Pontos szimbólum elhelyezés
  * Összetett többszörös címke/szimbólum definíciók
  * Vektor mezők
  * Nyilazott címkék
  * SVG szimbólumok
  * Több font támogatás

* Kifinomult térbeli lekérdezések

  * Elemek azonosítása attrbútum, pont, befoglaló idom vagy geometria alapján, egy vagy több rétegen
  * Raszter lekérdezések
  * Teljesen testreszabható sablon alapú kimenet
  * OGR alapú lekérdezés kimenet

* Népszerű szkript és fejlesztő környezetek támogatása

  * CGI/FastCGI
  * PHP, Python, Perl, Ruby, Java és .NET

* Platform függetlenség

  * Linux, Windows, Mac OS X, Solaris és még továbbiak

* Vektor és raszter formátumok sokasága

  * Natív támogatás ESRI shape fájl, PostGIS, ESRI ArcSDE és Oracle Spatial adatforrásokhoz
  * Sok további formátum GDAL és OGR könyvtáron keresztül

* Térkép vetületek

  * Röptében történő vetületi átszámítások több ezer vetület között a Proj.4 könyvtárral

Implementált szabványok
--------------------------------------------------------------------------------

* Számos Open Geospatial Consortium (OGC) szabvány támogatása

  * :doc:`../standards/wms_overview` (kliens/szerver), :doc:`../standards/wfs_overview` (nem tranzakciós, kliens/szerver), WMC, :doc:`../standards/wcs_overview`, :doc:`../standards/fe_overview`, :doc:`../standards/sld_overview`, :doc:`../standards/gml_overview`, SOS, OM

* INSPIRE View Service kompatibilis

Demo
--------------------------------------------------------------------------------

* `Itasca <http://localhost/mapserver_demos/itasca/>`_

Documentáció
--------------------------------------------------------------------------------

* `MapServer 6.4 Dokumentáció <../../mapserver/doc/index.html>`_

Részletek
--------------------------------------------------------------------------------

**Honlap:** http://www.mapserver.org/

**Licenc:** `MIT-style license <http://mapserver.org/copyright.html#license>`_

**Program verzió:** 6.4.1

**Támogatott platformok:** Windows, Linux, Mac

**API Interfészek:** C, PHP, Python, Perl, Ruby, Java, és .NET

**Támogatás:** http://mapserver.org/community/

Gyorstalpaló
--------------------------------------------------------------------------------
    
* :doc:`Gyorstalpaló dokumentáció <../quickstart/mapserver_quickstart>`
