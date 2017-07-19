:Author: OSGeo-Live
:Author: Alan Boudreault
:Author: Steve Lime
:Reviewer: Stephan Meissl
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-mapserver-new.png
  :scale: 65 %
  :alt: Project logo
  :align: right
  :target: http://mapserver.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

================================================================================
MapServer Quickstart
================================================================================

MapServer ist eine `Open Source <http://www.opensource.org>`_ serverbasierte Anwendung, 
mit der geografische Kartenbilder und Vektordaten 
im Internet mittels `OGC Standards <http://www.opengeospatial.org/standards>`_ 
wie etwa `WMS <http://www.opengeospatial.org/standards/wms>`_ , `WFS <http://www.opengeospatial.org/standards/wfs>`_ 
und :doc:`WCS <../standards/wcs_overview>` veröffentlicht werden können.

Dieser Quickstart beschreibt:
     
  * :ref:`mapserver-quickstart-configure-with-mapfile-de`
  * :ref:`mapserver-quickstart-wms-request-de`
  * :ref:`mapserver-quickstart-add-new-layer-de`
  * :ref:`mapserver-quickstart-add-new-layer-de`
  * :ref:`mapserver-quickstart-styling-a-layer-de`

.. _mapserver-quickstart-configure-with-mapfile-de:

MapServer mit einem "mapfile" konfigurieren
================================================================================

.. note:: 

  **Was werden wir lernen ?** In diesem Abschnitt werden Sie lernen, was eine Mapdatei (Mapfile) ist und wie man sie so konfiguriert, dass MapServer eine Shapedatei als Bilder bereitstellt, die mittels einer WMS Anfrage abgerufen werden können.

Was ist ein MapFile ?
--------------------------------------------------------------------------------

`Mapfile <http://mapserver.org/mapfile/index.html>`_ ist die Konfigurationsdatei, die MapServer nutzt, um raumbezogene Daten wie Bilder oder Vektordaten bereitzustellen. Der Hauptzweck der Datei ist es, die Layer und deren Datenquelle festzulegen sowie die Darstellung zu definieren (z.B. Farbe, Symbole, Labels, etc. ..).

Erstellen einer ersten Mapdatei
--------------------------------------------------------------------------------

#. Öffnen Sie einen Texteditor (e.g. :menuselection:`Applications --> Accessories --> 
   Leafpad`).
#. Erstellen Sie eine Datei "mapserver_quickstart.map" in Ihrem Home Verzeichnis: 
   :file:`/home/user/mapserver_quickstart.map`

Fügen Sie folgenden Text ein::

  MAP
    NAME "MAPSERVER QUICKSTART"
    EXTENT -137 29 -53 88
    UNITS DD
    SHAPEPATH "/home/user/data/natural_earth2/"
    SIZE 800 600

    IMAGETYPE PNG24
  
    PROJECTION
      "init=epsg:4326" 
    END

    WEB
      METADATA
        ows_enable_request "*"
      END
    END

    LAYER
      NAME "Admin Countries"
      STATUS ON
      TYPE POLYGON
      DATA "ne_10m_admin_0_countries"
      CLASS 
        STYLE
          COLOR 246 241 223
          OUTLINECOLOR 0 0 0
        END
      END 
    END

  END

.. note::

   Das Beispiel verwendet den Natural Earth Datensatz, der bereits auf auf OSGeo-Live vorliegt: :file:`~/data/natural_earth2` (eine Abkürzung für: :file:`/usr/local/share/data/natural_earth2`)

Jedes Objekt in der Mapdatei beginnt mit seinem Namen (z.B. **MAP**) und endet mit einem **END**. Eine Mapdatei beginnt immer mit dem Objekt **MAP** und sollte eine Liste von **LAYER** Objekten enthalten, die MapServer lesen und zeichnen kann. In unserer Mapdatei haben wir nur einen Layer definiert.

Lassen Sie uns einen Blick auf einige Objekte (und Eigenschaften) werfen, die in unserer Mapdatei definiert sind: 
 * EXTENT : definiert die BoundingBox für diese Konfiguration.
 * LAYER : definiert den Zugriff und die Anzeige-Eigenschaften für einen räumlichen Datensatz. Wir werden weitere Layer später hinzufügen.
 * SHAPEPATH : definiert einen Basispfad für Datei-basierte Daten (z.B. Shapedateien oder TIFF-Dateien).

Wenn wir genauer auf das Objekt **LAYER** schauen, sehen wir, dass es auch eine Reihe von Objekten und Eigenschaften enthält.
 * STATUS : ob die Karte gezeichnet (*ON*), nicht gezeichnet (*OFF*) oder immer gezeichet werden soll (*DEFAULT*).
 * TYPE : der Geometrietyp, den der MapServer benutzen soll, wenn die Daten als Bild gezeichnet werden. In unserer Mapdatei werden die Daten als Polygon dargestellt.
 * DATA : der Name der Datei, in diesem Fall eine Shapedatei.
 * CLASS : legt fest, wie eine Karte gezeichnet werden soll (styling). Wir gehen darauf später noch genauer ein.

.. note::

  Eine komplette Liste von Objekten und Eigenschaften, die ein `Mapfile <http://mapserver.org/mapfile/index.html>`_ haben kann, finden Sie in der MapServer Dokumentation.

.. _mapserver-quickstart-wms-request-de:


Erzeugen eines Kartenbildes über die Kommandozeile
========================================================

Obwohl MapServer für den Einsatz in Webanwendungen ausgerichtet ist, können Bilder auch über die Kommandozeile erzeugt werden. Dies kann beispielsweise bei sich wiederholenden Kartendarstellungen oder beim Debuggen hilfreich sein.

Öffnen Sie ein Terminal und tippen Sie:

 shp2img -m mapserver_quickstart.map -o mymap.png

Wenn dieser Aufruf erfolgreich ausgeführt wird, finden Sie unter file:///home/user/mymap.png ein generiertes Kartenbild.

Darstellen einer Karte mit MapServer mittels eines WMS **GetMap** Requests
================================================================================

.. note:: 

  **Was werden wir lernen ?** Sie werden lernen, wie mit Hilfe eines OGC WMS Request über MapServer ein Bild von Layern einer Mapdatei angefordert werden kann.  

Öffnen Sie den Webbrowser mit folgender URL::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=PNG&WIDTH=800&HEIGHT=600

Was bedeutet der Aufruf? Einfach gesagt, es ist ein `Web Map Service (WMS) <http://www.opengeospatial.org/standards/wms>`_ **GetMap** Request, der MapServer sagt, er soll die angegebene Mapdatei verwenden, um bestimmte Layer als PNG Bild mit festgelegten Eigenschaften wie Bildgröße, Ausdehnung, Projektion, etc.* darzustellen. Alle Layer im "*&LAYERS=...*" Bereich, die *STATUS ON* oder *STATUS DEFAULT* in der Mapdatei haben, werden nun dargestellt. Das Ergebnis sieht wie folgt aus:

  .. image:: /images/screenshots/800x600/mapserver_map.png
    :scale: 70 %

.. note:: 

  Alle Parameter des Requests sind WMS-spezifisch, außer "*?map=/home/user/mapserver_quickstart.map*", welcher MapServer-spezifisch ist.  

.. _mapserver-quickstart-add-new-layer-de:

Einen neuen Layer im "mapfile" ergänzen, um eine Shapedatei darzustellen
================================================================================

.. note:: 

  **Was werden wir lernen ?** Sie werden lernen, wie man neue Layer-Objekte in einer Mapdatei definiert.

Wir ergänzen jetzt einen weiteren Layer zu unserer Mapdatei. Vor dem letzten *END* in der Datei, fügen wir folgende Layer-Konfiguration hinzu::

 LAYER
   NAME "Lakes"
   STATUS ON
   TYPE POLYGON
   DATA "ne_10m_lakes"
   CLASS 
     STYLE
       COLOR 153 179 204
     END
   END 
  END

Nun haben wir 2 Layer-Definitionen in unserer Mapdatei. Der neue Layer hat die "STATUS ON" Eigenschaft. Das heisst, solange wir ihn nicht explizit anfragen, wird er nicht dargestellt. 

Nehmen wir nun unseren vorherigen WMS **GetMap** Request und ergänzen den neuen Layer "Lakes" zu dem erzeugten Bild. Dazu müssen wir einfach nur den neuen layer Namen zur "LAYERS"-Liste hinzufügen::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries,Lakes&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=PNG&WIDTH=800&HEIGHT=600

Das Bild, das nun vom MapServer dargestellt wird sieht aus wie das vorherige, nur mit dem zusätzlichen neuen lake-Layer:

  .. image:: /images/screenshots/800x600/mapserver_lakes.png
    :scale: 70 %

.. _mapserver-quickstart-styling-a-layer-de:

Darstellung eines Layers anpassen mit "mapfile" Konfigurationen
================================================================================

.. note:: 

  **Was werden wir lernen ?** Sie sehen ein Beispiel für die Darstellungselemente eines Layers in Abhängigkeit von seinen Eigenschaften.

In einer Mapdatei kann ein Layer-Objekt eine unendliche Anzahl von CLASS-Objekten enthalten. Diese werden verwendet, um die Darstellung von Elementen eines Layers (DATA) zu definieren. Zum Beispiel, wenn wir uns die "10m_lakes" Datei mit einem Tool wie `ogrinfo <http://www.gdal.org/ogrinfo.html>` anzeigen lassen _, sehen wir die Geometrie und Attribut-Definitionen der Objekte. Diese Attributwerte können verwendet werden, um die Objekte innerhalb eines Datensatzes mit mehreren unterschiedlichen CLASS-Objekten unterschiedlich darzustellen.

Im "10m_lakes" Datensatz haben wir das *ScaleRank* Attribut, welches in Bezug zur Größe der Seen steht. Wir können es benutzen, um die Seen unterschiedlich darzustellen. Im LAYER-Objekt fügen wir ein weiteres CLASS-Objekt hinzu::

  LAYER
   NAME "Lakes"
   STATUS ON
   TYPE POLYGON
   DATA "ne_10m_lakes"
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

Die Klasse definiert, dass das Elemente mit der "ScaleRank"-Eigenschaft gleich "0" oder "1" mit einem schwarzen Umriss gezeichnet werden sollen. CLASS-Objekte werden immer von oben nach unten für jedes Objekt gelesen. Wenn ein Objekt mit der "EXPRESSION" mit einer Klasse übereinstimmt, wird diese Klasse verwendet, um das Objekt darzustellen. Wenn das Objekt nicht mit einer Klasse übereinstimmt, wird es anhand der nächsten Klasse überprüft. Wenn ein Objekt mit keiner Klasse übereinstimmt und die letzte Klasse in einem LAYER-Objekt keine "EXPRESSION" enthält, dann wird diese Klasse als Standard benutzt. Das LAYER-Objekt "CLASSITEM" teilt MapServer mit, welches Attribut bei der Auswertung von EXPRESSIONs benutzt werden soll.

Das Ergebnis dieser Ergänzung bewirkt, dass große Seen mit einem schwarzen Umriss gezeichnet werden:

  .. image:: /images/screenshots/800x600/mapserver_lakes_scalerank.png
    :scale: 70 %

.. note:: Lernen Sie mehr über `EXPRESSIONS <http://mapserver.org/mapfile/expressions.html>`_ im MapServer.

Weiterführende Links
================================================================================

Dies ist ein einfaches Beispiel und Sie können noch viel, viel mehr machen. Die MapServer Projekt Webseite enthält zahlreiche Hilfen, um Ihnen einen einfachen Einstieg zu ermöglichen. Hier sind ein paar Tipps, wo sie als nächstes nachschauen können:

* Lesen Sie die `Introduction to MapServer <http://mapserver.org/introduction.html#introduction>`_.
* Schauen Sie sich das `MapServer Tutorial <http://www.mapserver.org/tutorial/index.html>`_ an, es enthält weitere Mapdatei Beispiele.
* Lesen Sie über `OGC Support and Configuration <http://www.mapserver.org/ogc/index.html>`_ um mehr über OGC Standards im MapServer (WMS, WFS, SLD, WFS Filter Encoding, WCS, SOS, etc.) zu lernen.
* Bereit, mit dem MapServer zu arbeiten ?  Dann tragen Sie sich in die `Mailing Listen <http://www.mapserver.org/community/lists.html>`_ der Community ein, um Ideen auszutauschen, Verbesserungen zu diskutieren und Fragen zu stellen.
