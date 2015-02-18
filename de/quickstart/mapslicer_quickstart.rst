:Author: OSGeo-Live
:Author: Petr Pridal
:Author: Christopher Fleet
:Author: Frank Gasdorf
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-mapslicer.png
  :scale: 100 %
  :alt: project logo
  :align: right

MapSlicer Quickstart
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mit `MapSlicer <https://wiki.osgeo.org/wiki/MapSlicer>`_ kann man Kacheln ausgehend von georeferenzierten Kartenbildern erzeugen.
Die Kacheln können dann über einen Webserver als georeferenzierte Karte eingebunden und präsentiert werden.
MapSlicer folgt dabei der `Tile Map Service (TMS) <http://wiki.osgeo.org/wiki/Tile_Map_Service_Specification>`_ 
Spezifikation der `Open Source Geospatial Foundation (OSGeo) <http://www.osgeo.org/>`_.

* **Eingangsparameter**: Beliebige georeferenzierte Bilddateien, z.B. TIFF, JPEG von ArcGIS, QGIS.

* **Ausgabeoptionen**: Verzeichnisse mit gekachelten Bildern, die in einen Webserver kopiert werden 
  können.

* **Stärken**: MapSlicer is einfach, frei, Open-Source Software mit einem mit einem einfachen Assistenten, 
  der untern beschrieben und auf die Optionen eingegangen wird.

MapSlicer nutzt den Vorteil, dass `Google Maps <http://maps.google.com/>`_ , `Microsoft Bing <http://maps.bing.com>`_ ,
`Yahoo Maps <http://maps.yahoo.com/>`_  und andere Online-Kartenprovider, inklusive 
`OpenStreetMap <http://www.openstreetmap.org/>`_ , die gleiche Kartenprojektion und das Kachelschema verwenden. 
Somit sind die Kacheln kompatibel.

Die Seite `Kacheln à la Google Maps <http://www.maptiler.org/google-maps-coordinates-tile-bounds-projection/>`_ 
beschreibt und verdeutlicht dies. MapSlicer bereitet die Kacheln soweit vor, dass diese zur Spezfikation passen 
und ist somit ein einfaches Tool, um georeferenzierte Karten in einer Mashup Webseite einzubinden.


MapSlicer starten
--------------------------------------------------------------------------------

#. Download MapSlicer oder starten Sie das Programm direkt von der OSGeo-Live Distribution.

#. Wählen Sie **Tile Profile** aus. Nutzen Sie *Google Maps Compatible (Spherical Mercator)* als Standard 
   für die Veröffentlichung ins Web. Wählen Sie *Google Earth (KML SuperOverlay)*, wenn Sie ebenso KML 
   Dateien für Google Earth generiert bekommen möchten. Klicken Sie auf *Continue*.

   .. image:: ../../images/screenshots/1024x768/mapslicer1.jpg
      :width: 60 %
      :align: center

#. Wählen Sie **Source Data Files**. Navigieren Sie zu dem Rasterbild, welches sie kacheln möchten. 
   Ebenso ist es möglich, eine Farbe für NODATA (keine Daten), die letzendlich transparent in den 
   resultierenden Bildern wird. Auch hier klicken Sie *Continue*.

   .. image:: ../../images/screenshots/1024x768/mapslicer2.jpg
      :width: 60 %
      :align: center

#. Legen Sie das Koordinatensystem des Bildes fest (**Spatial Reference System / Coordinate System**). Geben 
   Sie den Code der EPSG/ESRI Datenbank an. Sind zum Beispiel die Karten aus Großbritanien, sollten Sie für 
   die Transfromation die Information `EPSG:27700 with TOWGS84 <http://help.maptiler.org/coordinates/europe/uk>`_ 
   als Parameter enthalten. licken Sie auf *Continue* 

   .. image:: ../../images/screenshots/1024x768/mapslicer3.jpg
      :width: 60 %
      :align: center

#. Geben Sie die Details für die Pyramidenbildung (**Tile Pyramid**). Die Standardeinstellungen für die Zoomstufen und das Deteiformat sind meistens passend. Weiter mit  *Continue*.

   .. image:: ../../images/screenshots/1024x768/mapslicer4.jpg
      :width: 60 %
      :align: center

#. Geben Sie den Zielordner und Adressen / URLs (**Destination folder and Addresses / URLs**) für den 
   Kachelsatz an. Wissen Sie zu diesem Zeitpunkt die URLs noch nicht, können diese später in die 
   Standardseiten *googlemaps.html* und *openlayers.html* eingetragen werden. Weiter mit *Continue*.

   .. image:: ../../images/screenshots/1024x768/mapslicer5.jpg
      :width: 60 %
      :align: center

#. Aktivieren Sie die Zieleformate in **Viewers that should be generated**, die Sie generiert 
   bekommen möchten. Als Vorgabe sind *googlemaps.html* und *openlayers.html* gewählt. Weiter mit *Continue*.


   .. image:: ../../images/screenshots/1024x768/mapslicer6.jpg
      :width: 60 %
      :align: center

#. Legen Sie Details für Titel, Copyright Hinweise und API-Schlüssel fest (**Details for generating the Viewers**). 
   Wissen Sie diese zu diesem Zeitpunkt noch nicht, können diese später in die Standardseiten 
   *googlemaps.html* und *openlayers.html* eingetragen werden. Weiter mit *Continue*. 

   .. image:: ../../images/screenshots/1024x768/mapslicer7.jpg
      :width: 60 %
      :align: center

#. Klicken Sie **Render**, um die Bilder zu erzeugen. Ist der Prozess abgeschlossen, bietet MapSlicer 
   einen Link zu den erzeugten Kachelset an. Öffen Sie *googlemaps.html* oder *openlayers.html* in 
   einem Web-Browser, um die Kacheln als Overlay zur Online-Karte des jeweiligen Providers zu sehen. 
   Um das Ergebnis im Web zu veröffentlichen, kopieren Sie einfach das komplette Kachelset einschließlich 
   aller Unterordner in einen Webserver und passen Sie gegebenenfalls die Seiten googlemaps.html oder 
   openlayers.html an.

