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

======================
 MapServer Quickstart
======================

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
-------------------

Der `Mapfile <http://mapserver.org/mapfile/index.html>`_ ist die Konfigurationsdatei, die MapServer nutzt, um raumbezogene Daten wie Bilder oder Vektordaten zu bereitzustellen. Sein Hauptzweck ist es, die Karten die er zeichnet zu lesen und festzulegen, wie diese dargestellt werden (z.B. Farbe, Symbole, Labels, etc. ..).

Erstellen eines ersten MapFile
-----------------------------

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
    
Das Beispiel verwendet den natural earth Datensatz, der bereits auf der Live-DVD installiert ist:: Datei: `~/data/natural_earth` (eine Abkürzung für: Datei: `/usr/local/share/data/natural_earth`)

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

Was bedeutet das Obige ? Einach gesagt, es ist ein `Web Map Service (WMS) <http://www.opengeospatial.org/standards/wms>`_ **GetMap** Request der dem mapserver sagt, er soll den folgenden mapfile verwenden, um bestimmte Karten als PNG Bild mit festgelegten Eigenschaften wie Bildgröße, Ausdehnung, Projektion, etc.* darzustellen.  Alle Karten im "*&LAYERS=...*" Bereich, die *STATUS ON* oder *STATUS DEFAULT* im mapfile haben, werden nun dargestellt. Das Ergebnis sollte so aussehen :

  .. image:: ../../images/screenshots/800x600/mapserver_map.png
    :scale: 70 %

.. note:: Alle Parameter des Reqests sind WMS-spezifisch, ausser "*?map=/home/user/mapserver_quickstart.map*", welcher MapServer-spezifisch ist.  

.. _mapserver-quickstart-add-new-layer:

Add a new layer to the "mapfile" to serve a local shapefile
===========================================================

.. note:: **What will I learn ?** You will learn how to add a new layer object definition to your mapfile.

We will now add a new layer to our mapfile. Before last *END* statement in the mapfile, add the following layer configuration::

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

Now we have 2 layer definitions in our MapFile.  Note that this new one we just added has the "STATUS ON" property.  That means that unless we specifically request it, it won't be rendered.

Let's take our previous WMS **GetMap** request and add our new "Lakes" layer to the image rendered.  We simply need to add the new layer name to the "LAYERS" property list, as such::

 http://localhost/cgi-bin/mapserv?map=/home/user/mapserver_quickstart.map&SERVICE=WMS&REQUEST=Getmap&VERSION=1.1.1&LAYERS=Admin%20Countries,Lakes&SRS=EPSG:4326&BBOX=-137,29,-53,88&FORMAT=AGG/PNG&WIDTH=800&HEIGHT=600

The image rendered by MapServer look like our previous map, but with addition of the lakes from our new layer:

  .. image:: ../../images/screenshots/800x600/mapserver_lakes.png
    :scale: 70 %

.. _mapserver-quickstart-styling-a-layer:

Style a layer using "mapfile" configurations
=============================================

.. note:: **What will I learn ?** You will see an example of styling elements inside a layer depending on some of its data properties.

In a MapFile, a LAYER object can contain an infinite number of CLASS object.  These are used to style the elements contained in the spatial data file (DATA).  For example, if we look closer at our "10m_lakes" data file using a tool such as `ogrinfo <http://www.gdal.org/ogrinfo.html>`_, we'll see the geometry and attribute definitions it contains.  These attribute values can be used as a way to draw the elements inside a dataset differently using multiple CLASS objects.

In our "10m_lakes" dataset, we have a *ScaleRank* attribute, which seems to be related ot the size of the lake.  We can use this as a way to render the lakes differently.  In the LAYER object, we'll add an other CLASS object just before our current one, as such::

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

What does our new CLASS object do?  It's basically tells MapServer to draw the elements having the "ScaleRank" property equal to "0" or "1" with a black outline.  Class objects are always read from the top to the bottom for each feature to be drawn.  When a feature matches the "EXPRESSION" specified in a class, that class used to render the feature. If the feature does not match a class the next class is checked. If a feature does not match any class then it is not rendered and if the last class in a layer contains no EXPRESSION then that class acts as a default. The LAYER "CLASSITEM" property tells MapServer which attribute to use when evaluating EXPRESSIONs defined in the CLASS objects.

The result of this new addition should make the big lakes in our map image render with a black outline, as such:

  .. image:: ../../images/screenshots/800x600/mapserver_lakes_scalerank.png
    :scale: 70 %

.. note:: Learn more about `EXPRESSIONS <http://mapserver.org/mapfile/expressions.html>`_ in MapServer.

What Next?
==========

This is a simple example, but you can do much, much more.  The MapServer project website contains many resources to help you get started.  Here's a few resources to check out next:

* Read the `Introduction to MapServer <http://mapserver.org/introduction.html#introduction>`_.
* Have a look at the `MapServer Tutorial <http://www.mapserver.org/tutorial/index.html>`_ which contains more MapFile examples.
* Check the `OGC Support and Configuration <http://www.mapserver.org/ogc/index.html>`_ to learn more about OGC standards in MapServer (WMS, WFS, SLD, WFS Filter Encoding, WCS, SOS, etc.).
* Ready to use MapServer ?  Then join the community on the `Mailing Lists <http://www.mapserver.org/community/lists.html>`_ to exchange ideas, discuss potential software improvements and ask questions.
