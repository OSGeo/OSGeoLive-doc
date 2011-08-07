:Author: OSGeo-Live
:Author: Alan Boudreault, Steve Lime
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _mapserver-quickstart:

.. image:: ../../images/project_logos/logo-mapserver-new.png
  :scale: 65 %
  :alt: Project logo
  :align: right
  :target: http://mapserver.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

====================
MapServer Quickstart
====================

MapServer ist eine `Open Source <http://www.opensource.org>` _ serverbasierte Anwendung, mit der geografische Kartenbilder und Vektordaten im Internet mittels `OGC standards <http://www.opengeospatial.org/standards>`_ wie etwa `WMS <http://www.opengeospatial.org/standards/wms>`_ und `WFS <http://www.opengeospatial.org/standards/wfs>`_ veröffentlicht werden können.

Dieser Quickstart beschreibt:
     
  * :ref:`mapserver-quickstart-configure-with-mapfile`
  * :ref:`mapserver-quickstart-wms-request`
  * :ref:`mapserver-quickstart-add-new-layer`
  * :ref:`mapserver-quickstart-styling-a-layer`

.. _mapserver-quickstart-configure-with-mapfile:

MapServer mit einem "mapfile" konfigurieren
===========================================

.. note:: **Was werden wir lernen ?** In diesem Abschnitt werden Sie lernen, was ein mapfile ist und wie man ihn so konfiguriert, dass MapServer ein Shapefile als Bilder bereitstellt, die mittels einer WMS Anfrage abgerufen werden können.

Was ist ein MapFile ?
---------------------

Der `Mapfile <http://mapserver.org/mapfile/index.html>`_ ist die Konfigurationsdatei, die MapServer nutzt, um raumbezogene Daten wie Bilder oder Vektordaten zu bereitzustellen. Sein Hauptzweck ist es, die Karten die er zeichnet zu lesen und festzulegen, wie diese dargestellt werden (z.B. Farbe, Symbole, Labels, etc. ..).

Erstellen eines ersten MapFile
------------------------------

#. Öffnen Sie einen Texteditor (Mousepad ist der Standard Editor auf der live dvd: :menuselection:`Applications --> Accessories --> Mousepad`).
#. Erstellen Sie eine Datei "mapserver_quickstart.map" in Ihrem Home Verzeichnis: :file:`/home/user/mapserver_quickstart.map`

Fügen Sie folgenden Text ein::

  MAP
    NAME "MAPSERVER QUICKSTART"
    EXTENT -137 29 -53 88
    UNITS DD
    SHAPEPATH "/home/user/data/natural_earth/"
    SIZE 800 600

    IMAGETYPE PNG24
  
    PROJECTION
      "init=epsg:4326" 
    END

    LAYER
      NAME "Admin Countries"
      STATUS ON
      TYPE POLYGON
      DATA "10m_admin_0_countries"
      CLASS 
        STYLE
          COLOR 246 241 223
          OUTLINECOLOR 0 0 0
        END
      END 
    END

  END

.. note::
   Das Beispiel verwendet den natural earth Datensatz, der bereits auf der Live-DVD installiert ist: :file:`~/data/natural_earth` (eine Abkürzung für: :file:`/usr/local/share/data/natural_earth`)

Jedes Objekt einem mapfile beginnt mit seinem Namen (z.B. **MAP**) und endet mit einem **END**. Ein mapfile beginnt immer mit dem Objekt **MAP** und sollte eine Liste von **LAYER** Objekten enthalten, die der Mapfile lesen und zeichnen kann. In unserem mapfile haben wir nur eine Karte definiert.

Lassen Sie uns einen Blick auf einige Objekte (und Eigenschaften) werfen, die in unserem mapfile definiert sind: 
 * EXTENT : definiert die Standard GIS BoundingBox für diese Konfiguration.
 * LAYER : definiert den Zugriff und die Anzeige-Eigenschaften für einen räumlichen Datensatz. Wir werden weitere Karten später hinzufügen.
 * SHAPEPATH : definiert einen Basispfad für Datei-basierte Daten (z.B. Shape-Dateien oder TIFF-Bilder).

Wenn wir genauer auf das Objekt **LAYER** in unserem mapfile schauen, sehen wir, dass es auch eine Reihe von Objekten und Eigenschaften enthält.
 * STATUS : ob die Karte gezeichnet (*ON*), nicht gezeichnet (*OFF*) oder immer gezeichet werden soll (*DEFAULT*).
 * TYPE : der Geometrietyp, den der MapServer benutzen soll, wenn die Daten als Bild gezeichnet werden. In unserem mapfile werden die Daten als Polygon dargestellt.
 * DATA : der Name des Datentyps der Karte, in diesem Fall ein Shapefile.
 * CLASS : legt fest, wie eine Karte gezeichnet werden soll (styling). Wir gehen darauf später noch genauer ein.

.. note:: Eine komplette Liste von Objekten und Eigenschaften, die ein`Mapfile <http://mapserver.org/mapfile/index.html>`_ haben kann, finden Sie in der MapServer Dokumentation.

.. _mapserver-quickstart-wms-request:

Darstellen einer Karte mit MapServer mittels eines WMS **GetMap** Requests
==========================================================================

.. note:: **Was werden wir lernen ?** Sie werden lernen, wie man von einem MapServer ein Bild aus in einem mapfile definierten Karten mittels eines OGC WMS Requests abfragen kann.

Öffnen Sie den Webbrowser mit folgender URL::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=AGG/PNG&WIDTH=800&HEIGHT=600

Was bedeutet das Obige ? Einfach gesagt, es ist ein `Web Map Service (WMS) <http://www.opengeospatial.org/standards/wms>`_ **GetMap** Request, der dem mapserver sagt, er soll den angegebenen mapfile verwenden, um bestimmte Karten als PNG Bild mit festgelegten Eigenschaften wie Bildgröße, Ausdehnung, Projektion, etc.* darzustellen.  Alle Karten im "*&LAYERS=...*" Bereich, die *STATUS ON* oder *STATUS DEFAULT* im mapfile haben, werden nun dargestellt. Das Ergebnis sollte so aussehen:

  .. image:: ../../images/screenshots/800x600/mapserver_map.png
    :scale: 70 %

.. note:: Alle Parameter des Reqests sind WMS-spezifisch, ausser "*?map=/home/user/mapserver_quickstart.map*", welcher MapServer-spezifisch ist.  

.. _mapserver-quickstart-add-new-layer:

Einen neuen Layer im "mapfile" ergänzen, um eine Shapefile darzustellen
=======================================================================

.. note:: **Was werden wir lernen ?** Sie werden lernen, wie man neue layer Objekte in einem mapfile definiert.

Wir ergänzen jetzt einen weiteren layer zu unserem mapfile. Vor dem letzten *END* im mapfile, fügen wir folgende layer konfiguration hinzu::

 LAYER
   NAME "Lakes"
   STATUS ON
   TYPE POLYGON
   DATA "10m_lakes"
   CLASS 
     STYLE
       COLOR 153 179 204
     END
   END 
  END

Nun haben wir 2 layer Definitionen in unserem mapfile. Dieser layer hat die "STATUS ON" Eigenschaft. Das heisst, solange wir ihn nicht explizit anfragen, wird er nicht dargestellt. 

Nehmen wir nun unseren vorherigen WMS **GetMap** Request und ergänzen den neuen layer "Lakes" zu dem erzeugten Bild. Dazu müssen wir einfach nur den neuen layer Namen zur "LAYERS" liste hinzufügen::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries,Lakes&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=AGG/PNG&WIDTH=800&HEIGHT=600

Das Bild, das nun vom MapServer dargestellt wird sieht aus wie das vorherige, nur mit dem zusätzlichen neuen lake Layer:

  .. image:: ../../images/screenshots/800x600/mapserver_lakes.png
    :scale: 70 %

.. _mapserver-quickstart-styling-a-layer:

Darstellung eines Layers anpassen mit "mapfile" Konfigurationen
===============================================================

.. note:: **Was werden wir lernen ?** Sie sehen ein Beispiel für die Darstellungselemente eines Layers in Abhängigkeit von seinen Eigenschaften.

In einem MapFile kann ein Layer-Objekt eine unendliche Anzahl von CLASS-Objekten enthalten. Diese werden verwendet, um die Darstellung von Elementen einer Karte (DATA) zu definieren. Zum Beispiel, wenn wir uns die "10m_lakes" Datei mit einem Tool wie `ogrinfo <http://www.gdal.org/ogrinfo.html>` anzeigen lassen _, sehen wir die Geometrie und Attribut-Definitionen der Objekte . Diese Attributwerte können verwendet werden, um die Objekte innerhalb eines Datensatzes mit mehreren unterschiedlichen CLASS-Objekten unterschiedlich darzustellen.

Im "10m_lakes" Datensatz haben wir das *ScaleRank* Attribut, welches in Bezug zur Größe der Seen steht. Wir können es benutzen, um die Seen unterschiedlich darzustellen. Im LAYER-Objekt fügen wir ein weiteres CLASS-Objekt hinzu::

  LAYER
   NAME "Lakes"
   STATUS DEFAULT
   TYPE POLYGON
   DATA "10m_lakes"
   CLASSITEM "ScaleRank" 
   CLASS 
     EXPRESSION /0|1/  
     STYLE
       COLOR 153 179 204
       OUTLINECOLOR 0 0 0
     END
   END 
   CLASS 
     STYLE
       COLOR 153 179 204
     END
   END 
  END

Was macht dieses neue CLASS-Objekt?  

Im Grunde sagt es, das Elemente mit der "ScaleRank"-Eigenschaft gleich "0" oder "1" mit einem schwarzen Umriss gezeichnet werden sollen. CLASS-Objekte werden immer von oben nach unten für jede Funktion gelesen. Wenn ein Objekt mit der "EXPRESSION" in einer Klasse übereinstimmt, wird diese Klasse verwendet, um das Objekt darzustellen. Wenn das Objekt nicht mit einer Klasse übereinstimmt, wird es anhand der nächsten Klasse überprüft. Wenn ein Objekt mit keiner Klasse übereinstimmt, und die letzte Klasse in einem LAYER-Objekt keine "EXPRESSION" enthält, dann wird diese Klasse als Standard benutzt. Das LAYER-Objekt "CLASSITEM" teilt MapServer mit, welches Attribut bei der Auswertung von EXPRESSIONs benutzt werden soll.

Das Ergebnis dieser Ergänzung bewirkt, dass große Seen mit einem schwarzen Umriss gezeichnet werden:

  .. image:: ../../images/screenshots/800x600/mapserver_lakes_scalerank.png
    :scale: 70 %

.. note:: Lernen Sie mehr über `EXPRESSIONS <http://mapserver.org/mapfile/expressions.html>`_ im MapServer.

Weiterführende Links
====================

Dies ist ein einfaches Beispiel und Sie können noch viel, viel mehr machen. Die MapServer Projekt Webseite enthält zahlreiche Hilfen, um ihnen einen Start zu ermöglichen. Hier sind ein paar Tipps, wo sie als nächstes nachschauen können:

* Lesen Sie die `Introduction to MapServer <http://mapserver.org/introduction.html#introduction>`_.
* Schauen Sie sich das `MapServer Tutorial <http://www.mapserver.org/tutorial/index.html>`_ an, es enthält weitere MapFile Beispiele.
* Lesen Sie über `OGC Support and Configuration <http://www.mapserver.org/ogc/index.html>`_ um mehr über OGC Standards im MapServer (WMS, WFS, SLD, WFS Filter Encoding, WCS, SOS, etc.) zu lernen.
* Bereit, mit dem MapServer zu arbeiten ?  Dann tragen Sie sich in die `Mailing Listen <http://www.mapserver.org/community/lists.html>`_ der Community ein, um Ideen auszutauschen, Verbesserungen zu diskutieren und Fragen zu stellen.
