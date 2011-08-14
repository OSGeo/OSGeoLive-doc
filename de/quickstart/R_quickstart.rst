:Author: Barry Rowlingson
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _r-quickstart:
 
.. image:: ../../images/project_logos/logo-R.jpg
  :scale: 60 %
  :alt: project logo
  :align: right

********************************************************************************
R Quickstart
********************************************************************************

R ist eine freie Software-Umgebung für statistische Berechnungen und Grafik.

Dieser Quick Start beschreibt, wie man:

  * R für einfache Arithmetik benutzt
  * ein Shapefile lädt und darstellt
  * eine Koordinatentransformation durchführt
  * Datenpunkte auf eine Karte plottet

R starten
================================================================================

Entweder:

  * Wähle ``R Statistics`` aus dem Menü Geospatial - Spatial Tools - ein Konsolenfenster mit R startet.
  * Gebe ``R`` in ein Konsolenfenster. R startet dann in dem Fenster.

Keine Angst vor der Kommandozeile - es ist eine Quelle großer Macht. Mit der Aufwärts- und 
Abwärts Pfeiltasten können Sie Befehle zurückholen und die Tastenkombination CTRL-C gibt den 
Eingabepromt wieder, wenn Sie mal irgendwo stecken bleiben.

R beenden
================================================================================

Fast alles in R ist eine Funktion, inklusive der Funktion zum Beenden. Tippen Sie ``q()`` 
und drücken dann Return. Wenn Sie nur ``q`` tippen, sehen Sie den Quellcode der Funktion ``q``.

R fragt Sie dann, ob Sie die letzte Session als R data image speichern wollen. Wenn Sie 
R aus einem Ordner mit einer ``.RData`` Datei starten, werden alle Daten daraus wieder 
integriert.

R Einführung
================================================================================

R ist im Wesentlichen ein Kommandozeilen-Programm, obwohl auch grafische 
Benutzeroberflächen zur Verfügung stehen. Sie geben einen Code-Zeile ein, 
drücken die Eingabetaste, und der R-Interpreter wertet sie aus und druckt 
das Ergebnis.

Sie können mit einer einfachen Arithmetik starten

::

   > 3*2
   [1] 6

   > 1 + 2 * 3 / 4
   [1] 2.5

   > sqrt(2)
   [1] 1.414214

   > pi * exp(-1)
   [1] 1.155727


Und so weiter. Eine vollständige Palette von Arithmetik, trigonometrischen und 
statistischen Funktionen sind integriert, und weitere tausende Pakete im 
`CRAN <http://cran.r-project.org/>`_ Archiv.

Der Hauptpprompt in R ist ``>``, aber es gibt auch die Fortsetzungs-Eingabeaufforderung 
``+``, die erscheint, wenn R mit mehr rechnet, damit ein gültiger Ausdruck enststeht. Das 
werden Sie sehen, wenn Sie z.B. vergessen, eine Klammer zu schliessen.

::

   > sqrt(
   + 2
   + )
   [1] 1.414214


Daten erstellen
================================================================================

Sie fragen sich vielleicht, was die geheimnisvolle '1' in eckigen Klammern 
in der Ausgabe ist. Das zeigt Ihnen, dass das Ergebnis eine Zahl ist. R kann 
Dinge in eindimensionalen Vektoren, zweidimensionalen Matrizen und 
mehrdimensionalen Arrays speichern. Es gibt viele Funktionen, die diese Dinge 
erzeugen können. Hier ist eine einfache Sequenz:

::

    > seq(1,5,len=10)
    [1] 1.000000 1.444444 1.888889 2.333333 2.777778 3.222222 3.666667 4.111111
    [9] 4.555556 5.000000

Jetzt können Sie sehen, dass die `` [9] `` sagt, dass die 4,555 der neunte 
Wert in dem Vektor ist.

Wenn Sie eine Matrix konstruieren, bekommen Sie Zeilen- und Spaltenbeschriftungen:

::

	> m=matrix(1:12,3,4)
	> m
	     [,1] [,2] [,3] [,4]
	[1,]    1    4    7   10
	[2,]    2    5    8   11
	[3,]    3    6    9   12

Elemente von Matrizen extrahiert man mit eckigen Klammern, mit Zeilen und Spalten
Indizes durch Komma getrennt. Lassen Sie einen Index leer, um eine ganze Zeile als 
Vektor erhalten. Verwenden Sie einen Vektor Index, um mehrere Zeilen oder Spalten 
als eine kleinere Matrix zu erhalten:

::

	> m[2,4]
	[1] 11

	> m[2,]
	[1]  2  5  8 11

	> m[,3:4]
	     [,1] [,2]
	[1,]    7   10
	[2,]    8   11
	[3,]    9   12

Daten-Frames sind Datenstrukturen, die die Art der Struktur in einem RDBMS wie 
Postgres oder MySQL spiegeln. Jede Zeile kann als ein Datensatz gedacht werden, 
mit Spalten, wie Felder in einer Datenbank. Wie in einer Datenbank müssen die 
einzelnen Felder den gleichen Typ für jeden Datensatz besitzen.

In vielerlei Hinsicht funktionieren sie wie Matrizen, aber Sie können die Spalten 
auch über Namen ansprechen mit $-Notation:

::

	> d = data.frame(x=1:10,y=1:10,z=runif(10)) # z is 10 random numbers
	> d
	        x  y          z 
	    1   1  1 0.44128080 
	    2   2  2 0.09394331 
	    3   3  3 0.51097462 
	    4   4  4 0.82683828 
	    5   5  5 0.21826740 
	    6   6  6 0.65600533 
	    7   7  7 0.59798278 
	    8   8  8 0.19003625 
	    9   9  9 0.24004866 
	    10 10 10 0.35972749 

	> d$z
	 [1] 0.44128080 0.09394331 0.51097462 0.82683828 0.21826740 0.65600533
	 [7] 0.59798278 0.19003625 0.24004866 0.35972749

	> d$big = d$z > 0.6  # d$big ist jetzt ein boolean true / false-Wert
	> d[1:5,]
	  x y          z   big
	1 1 1 0.44128080 FALSE
	2 2 2 0.09394331 FALSE
	3 3 3 0.51097462 FALSE
	4 4 4 0.82683828  TRUE
	5 5 5 0.21826740 FALSE

	> d$name = letters[1:10] # erstelle ein neues Character Feld
	> d[1:5,]
	  x y          z   big name
	  1 1 1 0.44128080 FALSE    a
	  2 2 2 0.09394331 FALSE    b
	  3 3 3 0.51097462 FALSE    c
	  4 4 4 0.82683828  TRUE    d
	  5 5 5 0.21826740 FALSE    e



Karten laden
================================================================================

Es gibt viele Pakete für räumliche Datenmanipulation und deren statistische 
Analyse. Einige sind bereits hier enthalten, und einige können vom CRAN Server 
heruntergeladen werden.

Hier werden wir zwei Shapefiles herunterladen - die Landesgrenzen und die 
besiedelten Orte aus dem Natural Earth Datensatz. Wir verwenden zwei Add-on 
Pakete, um die notwendige Funktionalität zu bekommen:

::

	> library(sp)
	> library(maptools)

	> countries = readShapeSpatial("/usr/local/share/data/natural_earth/10m-admin-0-countries.shp")
	> places = readShapeSpatial("/usr/local/share/data/natural_earth/10m_populated_places_simple.shp")
	> plot(countries)

Damit stellen wir eine einfache Weltkarte dar:

.. image:: ../../images/screenshots/1024x768/r_plot1.png

Wenn ein OGR Datensatz auf diese Weise nach R eingelesen wird, bekommen wir ein Objekt, 
dass sich in vielerlei Hinsicht wie ein Daten Frame verhält. Wir können die Spalte 
``COUNTRY`` benutzen, um eine Teilmenge der Weltdaten, nämlich nur das UK zu bekommen:

::

	> uk = countries[countries$COUNTRY=="United Kingdom",]
	> plot(uk); axis(1); axis(2)

.. image:: ../../images/screenshots/1024x768/r_plot2.png

Das sieht für jeden, der dort lebt ein bisschen gequetscht aus, da wir mehr vertraut sind 
mit einem Koordinatensystem, das unsere Breitengrade zentriert. An dieser Stelle wurde dem 
Objekt jetzt noch kein Koordinatensystem zugeordnet - das können wir mit ein paar mehr 
Funktionen überprüfen:

::

	> proj4string(uk)
	[1] NA

``NA`` steht für fehlende Daten. Wir müssen also dem Objekt ein KBS zuweisen, bevor wir 
es mit der spTransform Funktion aus dem rgdal Paket zum EPSG-Code: 27700 transformieren 
können, was dann dem Ordnance Survey of Great Britain Grid-System entspricht:

::

	> proj4string(uk)=CRS("+init=epsg:4326")
	> library(rgdal)
	> ukos = spTransform(uk,CRS("+init=epsg:27700"))
	> proj4string(ukos)
	[1] " +init=epsg:27700 +proj=tmerc +lat_0=49 +lon_0=-2 +k=0.9996012717 +x_0=400000 +y_0=-100000 +ellps=airy +datum=OSGB36 +units=m +no_defs
	+towgs84=446.448,-125.157,542.060,0.1502,0.2470,0.8421,-20.4894"

	> plot(ukos);axis(1);axis(2)

Dies zeichnet eine Karte der transformierten Daten. Nun wollen wir einige Punkte aus dem 
besiedelte Orte Datensatz ergänzen. Wieder erstellen wir eine Teilmenge der Punkte und 
transformieren sie zu Ordnance Survey Grid Reference-Koordinaten:

::

	> ukpop = places[places$ADM0NAME=="United Kingdom",]
	> proj4string(ukpop)=CRS("+init=epsg:4326")
	> ukpop = spTransform(ukpop,CRS("+init=epsg:27700"))

Wir fügen diese Punkte auf die Karte und skalieren die Größe der Punkte entsprechend der 
skalierten Quadratwurzel der Bevölkerung (denn das macht ein Symbol mit einer Fläche 
proportional zur Bevölkerung), stellen die Farbe auf Rot, die Plot-Einstellung auf 
einen soliden blob:

::

	> points(ukpop,cex=sqrt(ukpop$POP_MAX/1000000),col="red",pch=19)
	> title("UK Population centre sizes")

und unsere Ausgabekarte erscheint:

.. image:: ../../images/screenshots/1024x768/r_plot3.png

Vignetten
================================================================================

In der Vergangenheit waren die Dokumentation für R-Pakete eher lapidar geschriebene Hilfeseiten 
für jede Funktion. Jetzt werden Autoren aufgefordert, eine "Vignette", als ein freundliches 
Schreiben zur Einführung in das Paket zu erstellen. Wenn Sie die ``vignette()`` Funktion 
ohne Argumente starten, bekommen Sie eine Liste der Vignetten auf Ihrem System. Versuchen 
Sie ``vignette("sp")`` für eine kurze technische Einführung in die räumlichen Datenstrukturen 
von R, oder ``vignette("spdep")`` für eine Einführung in statistische Analysen der räumlichen 
Autokorrelation. Die ``vignette("gstat")`` gibt ein Tutorial in der Verwendung dieses Paket 
für räumliche Interpolation mit Kriging aus.

Weiterführende Links
================================================================================

Für allgemeine Informationen über R, versuchen Sie die offizielle Seite `Introduction to R 
<http://cran.r-project.org/doc/manuals/R-intro.html>`_ oder eine andere Dokumentation von 
der Hauptseite des `R Projekts <http://www.r-project.org/>`_.

Für weitere Informationen über räumliche Aspekte von R, ist wahrscheinlich das `R Spatial 
Task View <http://cran.r-project.org/web/views/Spatial.html>`_ am hilfreichsten.

Vielleicht wollen Sie auch zuerst die `R-Spatial <http://r-spatial.sourceforge.net/>`_ Seite 
auf Sourceforge anschauen, um einige weitere Links, einschließlich Informationen über die 
R-sig-Geo-Mailingliste zu bekommen.

