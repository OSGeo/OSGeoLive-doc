:Author: Barry Rowlingson
:Author: Astrid Emde
:Author: Regina Obe
:Reviewer: Argyros Argyridis
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Nicolas Roelandt
:Version: osgeo-live10.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. TBD Cameron Review Comment:
  For this quickstart, which targets new users who might not be familiar with
  databases or SQL, I suggest we drop section describing command line
  control of Postgres. If we do keep command line information, I suggest
  it is moved to the end of the quickstart, possibly added into "Things you
  could try".
  Instead, I think the Quickstart should cover:
    * Keep Client/Server overview
    * Create a database in pgAdmin
    * Load a dataset, probably from a shapefile
    * Do some SQL queries on the dataset
    * Use QGis to view data from PostGIS (using the existing Natural Earth data). We should be able to keep most of the existing QGis sections

.. image:: ../../images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://postgis.net

********************************************************************************
PostGIS Quickstart
********************************************************************************

PostGIS ist die räumliche Erweiterung der relationalen Datenbank PostgreSQL. PostGIS ermöglicht die 
Speicherung, Abfrage und Bearbeitung von räumlichen Daten. In diesem Zusammenhang werden wir 'PostgreSQL' 
verwenden, wenn wir über generelle Datenbankfunktionen sprechen und 'PostGIS', wenn wir über die zusätzlichen 
Funktionalitäten, die die Erweiterung bereitstellt, reden. 

Diese Kurzeinführung beschreibt:

 * Das Anlegen und Abfragen einer räumlichen Datenbank von der Kommandzeile und über :doc:`QGIS <../overview/qgis_overview>` als grafischen Client.
 * Das Datenmanagement über den grafische Datenbank-Client ``pgAdmin``.

Client-Server Architektur
================================================================================

PostgreSQL arbeitet wie viele Datenbanksysteme als Server in einem Client-Server-System.
Dabei stellt der Client die Anfragen an den Server und bekommt vom Server eine Antwort zurück.
Auf die selbe Art kommuniziert auch das Internet - der Browser ist der Client, der die Anfrage stellt, 
und ein WebServer sendet die angefragte Webseite zurück.
PostgreSQL sendet die Anfragen in der Sprache SQL und die Antwort ist in der Regel eine Tabelle mit 
Daten aus der Datenbank.

Es spricht nichts dagegen, den Server auf dem selben Computer wie den Client zu nutzen. 
Dies ermöglicht es Ihnen, PostgreSQL auf einer einzigen Maschine laufen zu lassen.
Ihr Client verbindet sich mit dem Server über die interne 'loopback' Network Verbindung und ist 
für andere Rechner nicht sichtbar außer Sie konfigurieren dies.

Erzeugen einer Räumlichen Datenbank
================================================================================

Das Kommandozeilen Tool läuft innerhalb einer Terminal Session. Öffnen Sie hierfür ein Terminal über 
:menuselection:`Applications --> Accessories --> Terminal Emulator`. geben sie hier::

   psql -V

ein, um die Version von PostgreSQL anzuzeigen.

Ein einziger PostgreSQL Server ermöglicht es Ihnen, Ihre Arbeit in unterschiedlichen Datenbanken zu organisieren.
Jede Datenbank ist dabei ein unabhängiges System, mit eigenen Tabellen, Sichten, Benutzern und so weiter.
Wenn Sie sich mit einem PostgreSQL Server verbinden wollen, müssen Sie die gewünschte Datenbank angeben.

Sie können eine Liste der Datenbanken des Datenbankservers über den Aufruf::

   psql -l

ausgeben lassen.

Über den Aufruf sollten in unserem Fall diverse Datenbanken aufgelistet werden, die von den OSGeo-Live Projekten 
auf dem System verwendet werden.  Wir werden in dieser Übung eine neue Datenbank anlegen.

.. tip:: 
   Die Liste verwendet den Standard UNIX Pager - über die Leertaste gelangen Sie zur nächsten Seite, 
   über :kbd:`b` gehen Sie zurück, über :kbd:`q` verlassen Sie die Liste, über h gelangen Sie zur Hilfe.

PostgreSQL verfügt über das Hilfprogramm ``createdb`` zum Erstellen von Datenbanken. 
Wir wollen eine Datenbank mit PostGIS 2.0 Erweiterung erzeugen.  
Unsere Datenbank soll ``demo`` heißen. Der Aufruf zum Erstellen der Datenbank lautet:

::

   createdb demo

.. tip::
   Eine Hilfe zu kommandozeilen basierten Programmen erhalten Sie in der Regel über die Option ``--help``.


Wenn Sie nun wieder die Liste der Datenbanken über ``psql -l`` ausgeben, sollten Sie Ihre Datenbank 
``demo`` in der Liste finden. Wir haben nicht die PostGIS-Erweiterung hochgeladen, aber im nächsten Abschnitt werden Sie erlernen wie.

Sie können PostGIS Datenbanken auch direkt über einen SQL Befehl erzeugen. Zuerst wollen wir die gerade angelegte 
Datenbank über das Hilfsprogramm ``dropdb`` löschen. Anschließend soll ``psql`` zur Ausführung von SQL-Befehlen 
verwendet werden:

:: 

  dropdb demo
  psql -d postgres
 
Der Aufruf stellt eine Verbindung zur Datenbank mit dem Namen ``postgres`` her. ``postgres`` ist eine 
Systemdatenbank, die auf jedem Datenbankserver vorliegen sollte. Setzen Sie nun das SQL ab, um eine 
Datenbank anzulegen:

:: 

 postgres=# CREATE DATABASE demo;

Die Datenbank wurde angelegt und Sie können sich nun mit der Datenbank ``demo`` verbinden.
Zukünftig können Sie sich direkt über ``psql -d demo`` mit Ihrer Datenbank verbinden, an dieser Stelle
können Sie aber auch direkt innerhalb von ``psql`` eine Verbindung zu einer anderen Datenbank aufbauen:

::

 postgres=# \c demo


.. tip:: 
   Wenn die psql Eingabe auch nach dem Drücken der Return Taste erscheint, können Sie über :kbd:`CTRL` + kbd:`C` 
   Ihre Eingabe löschen und von Neuem beginnen. Es kann sein, dass psql auf ein schließendes Anführungszeichen, 
   ein Semikolon oder ein anderes Zeichen wartet.

Sie sollten eine Meldung sehen, die Eingabe wechselt und zeigt an, dass Sie mit der Datenbank ``demo`` verbunden sind. 

Fügen Sie nun die PostGIS Erweiterung hinzu:

::

 demo=# create extension postgis;

 
Lassen Sie sich die PostGIS Version ausgeben, um sich zu vergewissern, dass PostGIS installiert wurde.

::
	
	demo=# SELECT postgis_version();
	
	postgis_full_version
	-----------------------------------------------------------
	POSTGIS="2.2.2 r14797" GEOS="3.5.0-CAPI-1.9.0 r4090" ...
	(1 row)

	
PostGIS erzeugt viele Funktionen, eine Tabelle und einige Sichten.

Über ``\dt`` können Sie dies prüfen und die Liste der Tabellen in der Datenbank ausgeben lassen.
Es sollte diese Ausgabe erfolgen:

::

  demo=# \dt
               List of relations
   Schema |       Name       | Type  | Owner 
  --------+------------------+-------+-------
   public | spatial_ref_sys  | table | user
  (1 row)

Die Tabelle ``spatial_ref_sys`` wird von PostGIS zur Konvertierung zwischen verschiedenen Koordinatenreferenzsystemen verwendet.
Die Tabelle ``spatial_ref_sys`` speichert Informationen zu den Koordinatenreferenzsystemen. 
Mit Hilfe von SQL können wir einen Blick in die Tabelle werfen:

::

  demo=# SELECT srid, auth_name, proj4text FROM spatial_ref_sys LIMIT 10;

   srid | auth_name |          proj4text                                            
  ------+-----------+--------------------------------------
   3819 | EPSG      | +proj=longlat +ellps=bessel +towgs...
   3821 | EPSG      | +proj=longlat +ellps=aust_SA +no_d...
   3824 | EPSG      | +proj=longlat +ellps=GRS80 +towgs8...
   3889 | EPSG      | +proj=longlat +ellps=GRS80 +towgs8...
   3906 | EPSG      | +proj=longlat +ellps=bessel +no_de...
   4001 | EPSG      | +proj=longlat +ellps=airy +no_defs...
   4002 | EPSG      | +proj=longlat +a=6377340.189 +b=63...
   4003 | EPSG      | +proj=longlat +ellps=aust_SA +no_d...
   4004 | EPSG      | +proj=longlat +ellps=bessel +no_de...
   4005 | EPSG      | +proj=longlat +a=6377492.018 +b=63...
  (10 rows)

Die Ausgabe bestätigt, dass wir eine Datenbank mit räumlicher Erweiterung vorliegen haben.

Zusätzlich wurden einige Sichten bei der PostGIS Aktivierung erzeugt.

Über ``\dv`` können die Sichten aufgelistet werden.

::
	
	demo=# \dv
									List of relations
	 Schema |       Name        | Type |  Owner
	--------+-------------------+------+----------
	 public | geography_columns | view | postgres
	 public | geometry_columns  | view | postgres
	 public | raster_columns    | view | postgres
	 public | raster_overviews  | view | postgres
	(4 rows)

PostGIS unterstützt einige räumliche Datentypen:

	`geometry` - speichert Daten als Vektoren auf einer flächen Oberfläche
	
	`geography` - speichert Daten als Vektoren auf einer spheroidalen Oberfläche
	
	`raster` - speichert Daten als n-dimensionale Matrix 
wobei jede Position (Pixel) einen Bereich repräsentiert und jeder Kanel (Band, Dimension) über einen Wert für jede Position verfügt.
		
Die Sichten ``geometry_columns``, ``geography_columns`` und ``raster_columns`` geben Metadaten aus und informieren, welche Tabellen über PostGIS geometry, geography und raster Spalten verfügen.

Übersichten sind Tabellen mit geringerer Auflösung für Rasterdaten. Die Sicht ``raster_overviews`` gibt die Tabellen mit Übersichten, deren Raster-Spalten und die Tabelle für die sie eine Übersicht ist aus.
 Raster Übersichten werden Anwendungen wie QGIS genutzt, um über geringer aufgelöste Versionen
der Rasterdaten schneller Daten anzeigen zu können.

PostGIS geometry ist der erste und weiterhin bei PostGIS Anwendern populärste Datentyp. Wir werden unseren Fokus auf diesen Typ richten.


Erzeugen einer Tabelle mit räumlicher Erweiterung - die harte Tour
================================================================================

Wir haben nun eine Datenbank mit räumlicher Erweiterung vorliegen und können daher eine Tabelle mit 
räumlichen Daten erzeugen.

Zuerst erzeugen wir eine gewöhnliche Tabelle, in der wir einige Daten über Städte speichern wollen.
Diese Tabelle hat drei Spalten - ein numerisches Feld id für die laufende Nummer, ein Feld für den 
Namen der Stadt und ein Feld für die Geometriespalte:

::

  demo=# CREATE TABLE cities ( id int4 primary key, name varchar(50), geom geometry(POINT,4326) );

In der Regel wird diese Spalte ``geom`` genannt (Die ältere PostGIS Konvention war ``the_geom``). 
Der Aufruf gibt an, welcher Geometrietyp angelegt werden soll (Punkte, Linien. Polygone etc), wie 
viele Dimensionen unterstützt werden sollen (bei 3 oder 4 Dimensionen würde die Angabe POINTZ, POINTM, oder POINTZM lauten) und welches Koordinatenreferenzsystem 
genutzt werden soll. Wir haben EPSG:4326 für unsere Städte verwendet.


Wenn Sie sich nun die Tabelle cities anschauen, sollten Sie die neue Spalte sehen. Sie sehen ebenfalls, dass 
die Tabelle derzeit leer ist.

::

  demo=# SELECT * from cities;
   id | name | geom 
  ----+------+----------
  (0 rows)

Um die Tabelle zu füllen, nutzen wir einige SQL Aufrufe. Um die Geometrie in die Geometriespalte zu überführen, 
nutzen wir die PostGIS Funktion ``ST_GeomFromText``. Diese Funktion benötigt zwei Paramter - die Geometrie als 
Text und als zweiten Parameter den EPSG-Code:

::

  demo=# INSERT INTO cities (id, geom, name) VALUES (1,ST_GeomFromText('POINT(-0.1257 51.508)',4326),'London, England');
  demo=# INSERT INTO cities (id, geom, name) VALUES (2,ST_GeomFromText('POINT(-81.233 42.983)',4326),'London, Ontario');
  demo=# INSERT INTO cities (id, geom, name) VALUES (3,ST_GeomFromText('POINT(27.91162491 -33.01529)',4326),'East London,SA');

.. tip:: 
   Verwenden Sie die Pfeiltaste, um den Befehl erneut aufzurufen und anzupassen.

Sie werden sehen, dass dieses Vorgehen der Dateneingabe schnell ermüdet. Zum Glück gibt es andere einfachere 
Wege, um Daten in PostGIS Tabellen zu bekommen. Aber nun haben wir erst einmal drei Städte in unserer Tabelle 
und können mit diesen arbeiten.


Einfache Abfragen
================================================================================

Alle üblichen SQL Operationen können angewendet werden, um Daten aus einer PostGIS Tabelle abzufragen.

::

 demo=# SELECT * FROM cities;
  id |      name       |                      geom                      
 ----+-----------------+----------------------------------------------------
   1 | London, England | 0101000020E6100000BBB88D06F016C0BF1B2FDD2406C14940
   2 | London, Ontario | 0101000020E6100000F4FDD478E94E54C0E7FBA9F1D27D4540
   3 | East London,SA  | 0101000020E610000040AB064060E93B4059FAD005F58140C0
 (3 rows)

Diese Ausgabe gibt uns die hexadezimale Version der Koordinaten aus, die für uns schwer lesbar ist.

Wenn Sie Ihre Geoemetrien wieder im WKT Format ausgeben möchten, können Sie die Funktionen ST_AsText(geom) 
oder ST_AsEwkt(geom) verwenden. Sie können außerdem die Funktionen ST_X(geom) und ST_Y(geom) 
verwenden, um die Koordinaten auszugeben:

::

 demo=# SELECT id, ST_AsText(geom), ST_AsEwkt(geom), ST_X(geom), ST_Y(geom) FROM cities;
  id |          st_astext           |               st_asewkt                |    st_x     |   st_y    
 ----+------------------------------+----------------------------------------+-------------+-----------
   1 | POINT(-0.1257 51.508)        | SRID=4326;POINT(-0.1257 51.508)        |     -0.1257 |    51.508
   2 | POINT(-81.233 42.983)        | SRID=4326;POINT(-81.233 42.983)        |     -81.233 |    42.983
   3 | POINT(27.91162491 -33.01529) | SRID=4326;POINT(27.91162491 -33.01529) | 27.91162491 | -33.01529
 (3 rows)



Räumliche Abfragen
================================================================================

PostGIS erweitert PostgreSQL um zahlreiche räumliche Funktionen.
Die Funktion ST_GeomFromText zur Konvertierung von WKT in eine Geometrie haben wir schon kennen gelernt.
Die meisten Funktionen starten mit ST (Abkürzung für spatial type) und werden 
in der PostGIS Dokumentation sehr gut beschrieben.
Wir werden nun eine PostGIS Funktion zur Beantwortung einer praktischen Frage verwenden. 
Wie weit sind diese 3 Londons voneinander entfernt? Die Ausgabe soll in Metern erfolgen und wir 
gehen von einer sphärischen Erde aus.

::

 demo=# SELECT p1.name,p2.name,ST_DistanceSphere(p1.geom,p2.geom) FROM cities AS p1, cities AS p2 WHERE p1.id > p2.id;
       name       |      name       | st_distancesphere 
 -----------------+-----------------+--------------------
  London, Ontario | London, England |   5875766.85191657
  East London,SA  | London, England |   9789646.96784908
  East London,SA  | London, Ontario |   13892160.9525778
  (3 rows)

Die Abfrage gibt uns die Entfernung in Metern zwischen jedem Städtepaar aus.
Schauen Sie sich die 'WHERE'-Bedingung an. Diese verhindert, dass Städte die Entfernung zu sich selbst 
ausgeben (diese Entfernung würde 0 sein) oder dass die umgekehrte Distanzberechung ausgegeben wird (London, 
England nach London, Ontario ist die selbe Entfernung wie London, Ontario nach London, England). Lassen 
Sie die 'WHERE'-Bedingung weg und schauen Sie sich die Ausgabe an.

Wir können die Distanz unter Verwendung eines Sphäroids auch über eine andere Funktion berechnen und den 
Namen des Sphäroids, die große Halbachse und die inverse Abplattung angeben:

::

  demo=# SELECT p1.name,p2.name,ST_DistanceSpheroid(
          p1.geom,p2.geom, 'SPHEROID["GRS_1980",6378137,298.257222]'
          ) 
         FROM cities AS p1, cities AS p2 WHERE p1.id > p2.id;
        name       |      name       | st_distancespheroid 
  -----------------+-----------------+----------------------
   London, Ontario | London, England |     5892413.63776489
   East London,SA  | London, England |     9756842.65711931
   East London,SA  | London, Ontario |     13884149.4140698
  (3 rows)

Geben Sie den folgenden Befehl ein, um den PostgreSQL Client psql zu verlassen:

::

\q

Sie sind nun wieder auf der Systemkonsole:

::

user@osgeolive:~$

Mapping
================================================================================

Um eine Karte aus Ihren PostGIS Daten zu erzeugen, brauchen Sie einen Client, der auf die Daten zugreifen kann.
Die meisten der Open Source Desktop GIS Programme unterstützen PostGIS - wie z. B. QGIS, gvSIG, uDig. 
Wir werden unsere Karte mit QGIS erzeugen.

Starten Sie QGIS und wählen Sie ``PostGIS-Layer hinzufügen`` aus dem Layer-Menü. Die Verbindungsparameter
für die Natural Earth Datensätze sind bereits in der Liste der Verbindungsauswahlliste vorkonfiguriert.
Sie können hier weitere Verbindungen zu Servern definieren und die Einstellungen speichern, so dass diese beim 
erneuten Aufruf wieder zur Verfügung stehen. Wählen Sie aus der Auswahl der Verbindungen Natrual Earth aus. Klicken Sie ``Edit`` (Bearbeiten), um die Verbindungsparameter anzusehen oder zu bearbeiten. Oder aber einfach 
``Connect`` (Verbinden) um fortzufahren:

.. image:: ../../images/screenshots/1024x768/postgis_addlayers.png
  :scale: 50%
  :alt: Verbindung mit Natural Earth aufbauen
  :align: center

Im Anschluss daran erscheint eine Liste der Tabellen mit räumlichen Informationen:

.. image:: ../../images/screenshots/1024x768/postgis_listtables.png
  :scale: 50 %
  :alt: Natural Earth Layers
  :align: center

Wählen Sie ne_10m_lakes table (Seen) und klicken Sie ``Hinzufügen`` (nicht ``Abfrage erstellen``). 
Die Daten sollten nun in QGIS geladen werden:

.. image:: ../../images/screenshots/1024x768/postgis_lakesmap.png
  :scale: 50 %
  :alt: My First PostGIS layer
  :align: center

Sie sollten eine Karte der Seen sehen. QGIS weiß nicht, dass es sich um Seen handelt und zeigt die Flächen 
möglicherweise nicht blau an. Nutzen Sie die QGIS Dokumentation, um herauszufinden, wie die Farbe angepasst 
werden kann. Navigieren Sie in die bekannte Seengruppe von Kanada.


Erzeugen einer Tabelle mit räumlicher Erweiterung - der einfache Weg
====================================================================

Die meisten OSGeo Desktop GIS Werkzeuge bieten Schnittstellen zum Import von räumlichen Daten nach PostGIS, 
beispielsweise Shapedateien. Wir wollen wieder QGIS zur Demonstration nutzen.

Der Import von Shapedateien kann über den komfortablen QGIS Database Manager erfolgen.


Sie finden den Manager im Menü unter ``Datenbank -> DB-Verwaltung -> DB-Verwaltung``.

Unter PostGIS findet sich im der Eintrag NaturalEarth. 
Über Klick erfolgt die Verbindung zur Natural Earth Datenbank. Das Passwort kann weggelassen werden, sofern danach gefragt wird.

Im Bereich public finden sich die Layer, die sich bereits in der Datenbank befinden. In dem Fenster befinden sich 
links die Tabelle. Diese können ausgewählt werden. Über die Reiter auf der rechten Seite erhalten Sie Informationen
über die Layer. Der Preview Reiter zeigt eine kleine Karte.

.. image:: ../../images/screenshots/1024x768/postgis_managerpreview.png
  :scale: 50 %
  :alt: QGIS Manager Vorschau
  :align: center

Nun wollen wir DB Manager zum Import von Shape in die Datenbank nutzen. Wir werden die Daten 
`North Carolina sudden infant death syndrome (SIDS)` nutzen, die in einem der R Statistikpakete enthalten sind.

Wählen Sie über das Menü ``Tabelle` die Option ``Layer/Datei importieren``.
Klicken Sie den Button ``...`` und wählen Sie die Shapedatei ``sids.shp`` in dem R ``Maptools`` Paket 
(dies befindet sich unter /usr/lib/R/site-library/spdep/etc/shapes/) aus:

.. image:: ../../images/screenshots/1024x768/postgis_browsedata.png
  :scale: 50 %
  :alt: Auswahl der Shapedatei
  :align: center

Belassen Sie die übrigen Angaben und klicken Sie ``Load``

.. image:: ../../images/screenshots/1024x768/postgis_importsids.png
  :scale: 50 %
  :alt: Import der Shapedatei
  :align: center

Die Shapedatei sollte ohne Fehler nach PostGIS importiert worden sein. Schließen Sie den PostGIS Manager und 
gehen Sie zurück in das QGIS Hauptfenster.

Laden Sie nun die SIDS Daten über 'PostGIS-Layer hinzufügen' in Ihre Karte.
Über ein paar Anpassungen der Ebenenreihenfolge und der Farbgebung sollten Sie eine thematische Karte zum plötzlichen Kindstod (SIDS) in North Carolina erzeugen können;

.. image:: ../../images/screenshots/1024x768/postgis_sidsmap.png
  :scale: 50 %
  :alt: thematische Karte zu SIDS
  :align: center

Der grafische Datenbankclient pgAdmin III
=========================================

Sie können den grafischen Datenbankclient ``pgAdmin III`` vom Datenbankmenü nutzen, um SQLs abzusetzen und um 
Ihre Daten zu verwalten.  pgAdmin III verfügt außerdem über einen Plugin zum Shapeimport. pgAdmin III bietet 
ein komfortables Datenmanagement.
Sie können pgAdmin III im Datenbank-Ordner auf dem OSGeo-Live Desktop finden und starten.

.. image:: ../../images/screenshots/1024x768/postgis_pgadmin_main_window.png
  :scale: 50 %
  :alt: pgAdmin III
  :align: center

Hier haben Sie die Möglichkeit eine neue Verbindung zu einem PostgreSQl Server aufzubauen oder sich mit einem bestehenden Server zu verbinden. In unserem Fall verbinden wir uns mit dem vordefinierten Server ``local``.

Nachdem die Verbindung aufgebaut wurde, sehen Sie die Liste der Datenbanken, die bereits vorliegen.

.. image:: ../../images/screenshots/1024x768/postgis_adminscreen0.png
  :scale: 50 %
  :alt: pgAdmin III
  :align: center

Das rote "X" vor dem Symbol der meisten Datenbanken zeigt an, dass Sie sich mit keiner dieser Datenbanken bisher verbunden haben (Sie sind mit der default Datenbank ``postgres`` verbunden).

An dieser Stelle sehen Sie lediglich die existierenden Datenbanken auf dem System. Sie können sich per Doppelklick auf dem Namen einer Datenbank mit dieser verbinden. Verbinden Sie sich mit der Datenbank natural_earth2.

Das rote "X" verschwindet nun und links erscheint ein "+". Per Klick auf das "+" erscheint ein Baum, der den Inhalt der Datenbank anzeigt.

Navigieren Sie zu ``Schemata`` und öffnen Sie den Unterbaum. Öffnen Sie danach das Schema ``public``. Öffnen Sie anschließend ``Tabellen``. Sie sehen hier alle Tabellen dieses Schemas.

.. image:: ../../images/screenshots/1024x768/postgis_adminscreen1.png
  :scale: 50 %
  :alt: pgAdmin III
  :align: center

  


Ausführen von SQL Abfragen mit pgAdmin III
================================================================================
pgAdmin III bietet die Möglichkeit Abfragen an relationale Datenbanken abzusetzen.

Um eine Abfrage an die Datenbank zu schicken, müssen Sie den ``SQL``-Button der Hauptwerkzeugleiste klicken (Button mit gelber Lupe).

Wir werden das Verhältnis der SIDS zu den Geburten des Jahres 1974 in jeder Stadt ausgeben. 
Darüberhinaus wird das Ergebnis sortiert nach dem berechneten Wert sortiert. 
Um dies zu tun, wird die folgende Abfrage benötigt (geben Sie die Abfrage im Texteditor des SQL-Fensters ein):

select name, 1000*sid74/bir74 as rate from sids order by rate;

Über den grünen Pfeil wird die Abfrage ausgeführt.

.. image:: ../../images/screenshots/1024x768/postgis_adminscreen2.png
  :scale: 50 %
  :alt: pgAdmin III
  :align: center
  

Weitere Aufgaben
================================================================================

Hier sind ein paar weitere Aufgaben, die Sie lösen können.

#. Testen Sie weitere räumliche Funktionen beispielsweise ``st_buffer(geom)``, ``st_transform(geom,25831)``, ``st_x(geom)``. Eine ausführliche Dokumentation finden Sie unter http://postgis.net/documentation/

#. Exportieren Sie Ihre Tabellen mit ``pgsql2shp`` in das Shape-Format

#. Nutzen Sie ``ogr2ogr``, um Daten in Ihre Datenbank zu importieren/exportieren

#. Importieren Sie Daten auf der Kommandozeiel mit ``shp2pgsql`` in Ihre Datenbank.

#. Versuchen Sie ein Routing aufzubauen mit Hilfe von :doc:`pgrouting_overview`.



Der nächste Schritt
===================================================================================================


PostGIS Projektseite

 http://postgis.net

PostGIS Dokumentation

 http://postgis.net/documentation/
