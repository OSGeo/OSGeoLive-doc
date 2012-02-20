:Author: OSGeo-Live
:Author: Micha Silver
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _spatialite-quickstart:
 
.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: project logo
  :align: right

********************************************************************************
SpatiaLite Quickstart 
********************************************************************************

SpatiaLite ist eine SQLite-Datenbank-Engine mit zusätzlichen räumlichen Funktionen.

Dieser Quickstart beschreibt, wie man eine Datenbank mit Hilfe der Kommandozeile oder mit der graphischen Anwendung öffnet.


spatialite Ausführen
================================================================================

* Öffnen Sie eine Konsole und öffnen Sie eine Beispiel-Datenbank mit SpatiaLite::

   spatialite /home/user/data/spatialite/trento.sqlite

* Hilfreiche Befehle im CLI Interface::
   ``.help
   .tables
   .quit``   

* Einige Beispiele für räumliche Abfragen::

   ``SELECT lc.NOME, lc.NOME_PROV, lc.COM, mh.Perimeter 
        FROM LocalCouncils AS lc, MunicipalHalls AS mh 
        WHERE CONTAINS(lc.Geometry,mh.Geometry) AND lc.NOME LIKE 'VILLA%' 
        ORDER BY lc.NOME;
   .headers ON
   SELECT COMUNE, LOCALITA, Area(Geometry)/1000000 AS "Area Sq.km." 
        FROM PopulatedPlaces ORDER BY "Area Sq.km." DESC LIMIT 10 ; 
   SELECT lc.NOME AS "Provence Name", X(mh.Geometry) AS X_COORD, Y(mh.Geometry) AS Y_COORD 
        FROM LocalCouncils AS lc, MunicipalHalls AS mh 
        WHERE mh.COMU=lc.COM ORDER BY "Provence Name" LIMIT 10;`` 


Erstellen Sie eine neue Datenbank mit spatialite-gui
================================================================================

* Starten Sie spatialite-gui über das Datenbank Verzeichnis auf dem Desktop
* Wählen Sie :menuselection:`File --> Creating a new SQLite DB`
* Klicken Sie Browse und gehen Sie in das Verzeichnis /home/user/data/spatialite/. Geben Sie einen Namen beispielsweise "Test.sqlite" an und klicken Sie Speichern.

Öffenen einer bestehenden Datenbank mit  **spatialite-gui**
================================================================================

* Klicken Sie den Button "Disconnecting current SQLite DB"
* Klicken Sie den Button "Connect existing SQLite DB"
* Gehen Sie in das Verzeichnis /home/user/data/spatialite und wählen Sie trento.sqlite
* Klicken Sie mit der rehchten Maustaste auf die Tabelle MunicpalHallsView und wählen Sie "Show Columns"
* Klicken Sie mit der rechten Maustaste auf die Tabelle PopulatedPlaces und wählen Sie "Edit table rows"
* Geben Sie folgenden Befehl im oberen SQL-Fenster ein:

   ``SELECT NOME, X(Geometry) AS Longitude, Y(Geometry) AS Latitude
   FROM "MunicipalHallsView"
   WHERE NOME_PROV LIKE "BRESCIA";``


   und klicken anschließend zum Ausführen den Button "Execute SQL" auf der rechten Seite

spatialite-gis Ausführen
================================================================================

* Führen Sie spatialite-gis über das Desktop GIS Verzeichnis auf dem Desktop aus
* Klicken Sie den Button "Connecting existing SQLite DB" und verbinden Sie mit /home/user/data/spatialite/trento.sqlite

Sie sollten eine Reihe von Flughäfen in Italien sehen.

   - Rechter Klick auf den Layer Highways und wählen Sie :menuselection:`Hide`
   - Rechter Klick auf den Layer LocalCouncils und wählen Sie :menuselection:`Layer Configuration->Classify` und wählen Sie hier "-not selected-" für diese Spalte.
   - Verändern Sie die Umrandungsfarbe über einen Rechtsklick auf reg2008_s und wählen Sie :menuselection:`Layer configuration->Graphics` und wählen Sie hier andere Farbe.
   - Rechter Klick auf den Layer aeroporti und wählen Sie "Show". Nun wieder ein Rechtsklick und wählen Sie :menuselection:`Layer Configuration->Classify`
   - Selektieren Sie die Spalte PRO_COM und wählen "Range of Values" und setzen Klassen auf '4'. Nun klicken Sie OK, um das Ergebnis an zu zeigen

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
