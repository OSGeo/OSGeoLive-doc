:Author: OSGeo-Live
:Author: Dane Springmeyer
:Author: Dominik Helle
:Version: osgeo-live10.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-mapnik.png
  :scale: 80 %
  :alt: project logo
  :align: right

Mapnik Quickstart
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mapnik ist ein Werkzeug, um Kartenanwendungen zu entwickeln. Mapnik wird meist dazu genutzt, Karten zu generieren. Mapnik ist leicht erweiterbar und sowohl für Web- als auch Desktop-Entwicklung geeignet. 


Mapnik & Python
--------------------------------------------------------------------------------

Mapnik und die dazugehörigen Python-Abhängigkeiten sind auf dem aktuellen System installiert und können über entsprechende Scripts angesprochen werden.

Karten über Python zu erstellen ist mit Mapnik ganz einfach. Öffnen Sie das Terminal und tippen Sie `python` in der Kommandozeile. Nach dem Bestätigen öffnet sich der Python-Interpreter. Geben Sie dort Folgendes ein:: 

    >>> import mapnik, os
    >>> m = mapnik.Map(600,400)
    >>> style = '/usr/local/share/mapnik/demo/population.xml'
    >>> mapnik.load_map(m,style)
    >>> m.zoom_all()
    >>> mapnik.render_to_file(m,'map.png')
    >>> os.system('xdg-open map.png')


.. note::
    
	Der oben dargestellte Code beruht darauf, dass ein XML Stylesheet an Mapnik übergeben wird. 
	Hieraus werden die Layerdaten und die dazugehörigen Styles gelesen. Diese können zum Beispiel 
	innerhalb von QGIS mit Quantumnik erstellt werden: http://plugins.qgis.org/plugins/quantumnik/


Mapnik & Leaflet
--------------------------------------------------------------------------------

Außerdem ist eine Basis-Demoanwendung vorhanden. Hier wird Mapnik dazu genutzt, Kacheln im OSM/Google Tile-Schema in eine OpenLayers Anwendung einzubinden.

Die Demo benutzt den für Mapnik entwickelten Tileserver "TileStache"

  * Mehr Informationen über TileStache: http://tilestache.org/

Um die Demo zu starten müssen folgende Schritte durchgeführt werden:

  #. Klick :menuselection:`Desktop --> Spatial Tools --> Start Mapnik & TileStache`

    * Der Server startet nun in einem Terminal Fenster, welches geöffnet bleibt um Basis-Debug-Informationen auszugeben.

  #. Vergewissern Sie sich, dass der Server läuft indem Sie eine Kachel vom Server anfordern http://localhost:8012/example/0/0/0.png

  #. Besuchen Sie dann die Leaflet Demoanwendung:

    * This page is at `http://localhost/leaflet-demo.html <../../../leaflet-demo.html>`_


Wie geht es weiter?
--------------------------------------------------------------------------------

* Mapnik Tutorials

  Lesen Sie das Tutorial_ , um mehr über Mapnik zu lernen.

.. _Tutorial: https://github.com/mapnik/mapnik/wiki/MapnikTutorials

* Erkunden Sie die Konfigurationsdateien

  Schauen Sie sich die bereitgestellten Dateien_  an.

.. _Dateien: file:///usr/local/share/mapnik/
