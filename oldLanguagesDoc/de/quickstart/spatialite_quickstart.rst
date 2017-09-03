:Author: OSGeo-Live
:Author: Micha Silver
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right

********************************************************************************
SpatiaLite Quickstart 
********************************************************************************

SpatiaLite ist eine SQLite-Datenbank-Engine mit zusätzlichen räumlichen Funktionen.

SQLite ist ein Datenbankmanagement System (DBMS), das einfach, robust, leicht zu handhaben und sehr leichtgewichtg ist. Jede SQLite Datenbank ist eine einfache Datei. Sie können diese kopieren, komprimieren und nach Windows, Linux, MacOs u.a. portieren.

Dieser Quickstart beschreibt, wie man eine Datenbank mit der graphischen Anwendung oder mit Hilfe der Kommandozeile öffnet.

Erstellen Sie eine neue Datenbank mit spatialite-gui
================================================================================

Spatialite-gui stellt eine grafische Oberfläche zur Anzeige und Verwaltung von 
SpaltiaLite Datenbanken. Sie können einfach die Struktur der Tabellen und die Daten 
über Funktionen anzeigen lassen. Darüberhinaus können Sie auch eigene SQL Abfragen absetzen.

Auf geht's! Wir wollen damit beginnen, eine SpaltiaLite Datenbank anzuschauen und 
wollen einen Blick auf die Spalten einer Tabelle werfen.

* Starten Sie Spatialite GUI über :menuselection:`Geospatial->Databases->Spatialite GUI`
* Klicken Sie Browse und gehen Sie in das Verzeichnis /home/user/data/spatialite/ und wählen Sie :file:`trento.sqlite`.

  .. image:: /images/screenshots/spatialite/spatialite-gui-trento.png
    :scale: 70 %

* Klicken Sie mit der rechten Maustaste auf die Tabelle MunicpalHallsView und wählen Sie "Show Columns"

  .. image:: /images/screenshots/spatialite/spatialite-gui-columns.png
      :scale: 70 %

* Sie sehen eine in 3 Bereiche aufgeteilte Ansicht:

  #. Der linke Bereich zeigt die Databank Hierachie an, beispielsweise die Liste der Tabellen und Spalten innerhalb der Tabellen. Klicken Sie auf Elemente des linken Bereichs und wählen anschließend aus einer Liste von gängigen Datenbank Aktionen.

  #. Der Bereich oben rechts zeigt das SQL für die ausgewählte Aktion. Sie können hier ihr eigenes SQL eingeben oder das SQL anpassen.

  #. Der untere rechte Bereich zeigt das Ergebnis der SQL Abfrage.

* Klicken Sie mit der rechten Maustaste auf die Tabelle MunicipalHalls und wählen Sie "Edit table rows". Beachten Sie, 
  dass die SQL Abfrage für Sie im oberen rechten Bereich generiert wurde 
  und dass die Ergebnisse im unteren rechten Bereich erscheinen.::

    SELECT ROWID, "PK_UID", "AREA", "PERIMETER", "COMU", "Geometry"
        FROM "MunicipalHalls"
        ORDER BY ROWID

* Passen Sie nun diese SQL-Abfrage an, so dass NOME und (Lat,Long)
  nur für die NOME_PROV mit dem Eintrag "BRESCIA" unter Verwendung des MunicipalHallsViews ausgegeben werden. 
  Geben Sie folgenden Befehl im oberen SQL-Fenster ein::

   SELECT NOME, X(Geometry) AS Longitude, Y(Geometry) AS Latitude
        FROM "MunicipalHallsView"
        WHERE NOME_PROV LIKE "BRESCIA";

   und klicken anschließend zum Ausführen den Button "Execute SQL" auf der rechten Seite

  .. image:: /images/screenshots/spatialite/spatialite-gui-select.png
      :scale: 70 %


spatialite-gis Ausführen
================================================================================

Spatialite-gis ist ein einfacher Viewer für SpatiaLite basierte Ebenen.

* Führen Sie spatialite-gis über das Desktop GIS Verzeichnis auf dem Desktop aus
* Klicken Sie den Button "Connecting existing SQLite DB" und verbinden Sie mit /home/user/data/spatialite/trento.sqlite

Sie sollten eine eine Karte mit Provinzen in Italien sehen.

   - Rechter Klick auf den Layer Highways und wählen Sie :menuselection:`Hide`
   - Rechter Klick auf den Layer LocalCouncilsTrento und wählen Sie :menuselection:`Layer Configuration->Classify` und wählen Sie hier "Shape Area-" für diese Spalte.Wählen Sie 4 Klassen und klicken Sie auf Min und Max der Farbauswahl und wählen eine dunkle und eine helle Farbe. Klicken Sie ok und schauen Sie sich die Choroplethenkarte der Provinzflächen an.
   - Verändern Sie die Umrandungsfarbe über einen Rechtsklick auf LocalCouncils und wählen Sie :menuselection:`Layer configuration->Graphics` und wählen Sie hier andere Farbe.
   - Zoomen Sie etwas in die Karte. Rechter Klick auf den Layer PopulatedPlaces und wählen Sie :menuselection:`Indentify on`. Klicken Sie nun auf einen Ort und lassen sich die Attribute für ein einzelnes Objekt ausgeben.


spatialite auf der Kommandozeile ausführen
================================================================================

Anwender die skriptbasiert arbeiten müssen oder automatisierte Abfragen absetzen wollen, werden die Vorteile SpaltiaLite Datenbanken kommandozeielnbasiert anzusprechen kennenlernen. In diesem Beispiel werden wir eine Shapedatei laden und nach Schulen in der Nähe des Highways 42 suchen.

* Für das Arbeiten auf der Konsole benötigen Sie ein Terminal. Öffnen Sie ein Terminal über :menuselection:`LXDE Menu -> Zubehör -> LXTerminal`.

* Öffnen Sie die Beispiel-Datenbank im Terminal über spatialite::

   spatialite /home/user/data/spatialite/trento.sqlite

* Hilfreiche Befehle im CLI Interface::
   ``.help
   .tables
   .quit``
   
* Erzeugen einer neuen spatialite Datenbank und Laden von Shapedateien
  
   - Erzeugen Sie eine neue, leere spatialite Datenbank und laden Sie zwei Shapedateien von der Nord Carolina Daten::

      user@osgeo-6:~$ spatialite test.sqlite
      SpatiaLite version ..: 3.1.0-RC2      Supported Extensions:
           - 'VirtualShape'        [direct Shapefile access]
           - 'VirtualDbf'          [direct DBF access]
           - 'VirtualXL'           [direct XLS access]
           - 'VirtualText'         [direct CSV/TXT access]
           - 'VirtualNetwork'      [Dijkstra shortest path]
           - 'RTree'               [Spatial Index - R*Tree]
           - 'MbrCache'            [Spatial Index - MBR cache]
           - 'VirtualSpatialIndex' [R*Tree metahandler]
           - 'VirtualFDO'          [FDO-OGR interoperability]
           - 'SpatiaLite'          [Spatial SQL - OGC]
      PROJ.4 version ......: Rel. 4.8.0, 6 March 2012
      GEOS version ........: 3.3.3-CAPI-1.7.4
      SQLite version ......: 3.7.9
      Enter ".help" for instructions
      spatialite>
      spatialite> .loadshp data/north_carolina/shape/schools_wake schools utf-8 3358
      spatialite> .loadshp data/north_carolina/shape/roadsmajor roads utf-8 3358


   - Beachten Sie das Format des .loadshp Aufrufs: zuerst die Shapedatei ohne die .shp Erweiterung, dann der Name der neuen spatialite Tabelle, dann das Encoding und abschließend der EPSG Code des CRS der Shapedatei.

   - Nun können Sie die Schulen in der Nähe des Highways 42 ausgeben.::
 
      spatialite> SELECT s.NAMESHORT, s.ADDRNUMBER, s.ADDRROOT
           ...> FROM schools AS s, roads AS r
           ...> WHERE r.ROAD_NAME = "NC-42" AND
           ...> ST_Distance(s.Geometry, r.Geometry) < 1000;
      FUQUAY-VARINA|6600|Johnson Pond Rd
      WILLOW SPRINGS|6800|Dwight Rowland Rd
      FUQUAY-VARINA|109|N Ennis St
      LINCOLN HEIGHTS|307|Bridge St

   - Abschließend wollen wir das Ergebnis der Abfrage kommasepariert in die Textdatei "schools_rt42.txt" ausgeben::

      spatialite> .mode csv
      spatialite> .output "schools_rt42.txt"
      spatialite> SELECT s.NAMESHORT, s.ADDRNUMBER, s.ADDRROOT
          ...> FROM schools AS s, roads AS r
          ...> WHERE r.ROAD_NAME = "NC-42" AND
          ...> ST_Distance(s.Geometry, r.Geometry) < 1000;
      spatialite>.q
 



Weitere Aufgaben
================================================================================

Hier sind einige zusätzliche Herausforderungen für Sie zum Ausprobieren:

* Überprüfen Sie Geometrien mit spatialite-gui
* Öffnen und bearbeiten Sie SpatiaLite Layer in QGIS

Wie geht es weiter?
================================================================================

Wenn Sie mehr über SpatiaLite erfahren möchten, ist die `SpatiaLite Projektseite`_ Seite ein guter Ausgangspunkt.

.. _`SpatiaLite Projektseite`: https://www.gaia-gis.it/fossil/libspatialite/index

und besuchen Sie unbedingt das Tutorial `Spatialite cookbook`_

.. _`Spatialite cookbook`: http://www.gaia-gis.it/gaia-sins/spatialite-cookbook/index.html
