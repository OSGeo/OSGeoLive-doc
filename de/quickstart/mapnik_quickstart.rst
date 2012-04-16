:Author: OSGeo-Live
:Author: Dominik Helle
:Version: osgeo-live5.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-mapnik.png
  :scale: 80 %
  :alt: project logo
  :align: right

Mapnik Quickstart
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mapnik ist eine Werkzeug um Kartenanwendungen zu entwickeln. Vor allem wird Mapnik dazu eingesetzt um Karten zu generieren. Mapnik ist leicht erweiterbar und sowohl für Web- als auch Desktop-Entwicklung geeignet. 


Mapnik & Python
--------------------------------------------------------------------------------

Mapnik und die dazugehörigen Python-Abhängigkeiten sind auf dem aktuellen System installiert und können über entsprechende Scripts angesprochen werden.

Karten über Python zu erstellen ist mit Mapnik ganz einfach. Öffnen Sie das Terminal und tippen Sie `python` in der Kommandozeile. Nach dem Bestätigen öffnet sich der Python-Interpreter. Geben Sie dort folgendes ein:: 

    >>> import mapnik, os
    >>> m = mapnik.Map(600,400)
    >>> style = '/usr/local/share/mapnik/demo/population.xml'
    >>> mapnik.load_map(m,style)
    >>> m.zoom_all()
    >>> mapnik.render_to_file(m,'map.png')
    >>> os.system('xdg-open map.png')


.. note::
	Der oben dargestellte Code beruht darauf, dass ein XML Stylesheet an den Mapnik übergeben wird. 
	Hieraus werden die Layerdaten und die dazugehörigen Stylings gelesen. Diese können zum Beispiel 
	innerhalb von QGIS mit dem Quantumnik erstellt werden: http://bitbucket.org/springmeyer/quantumnik/

Mapnik & OpenLayers
--------------------------------------------------------------------------------

Außerdem ist eine Basis-Demo Anwendung vorhanden. Hier wird Mapnik dazu genutzt um Kacheln im OSM/Google Tile-Schema in eine OpenLayers Anwendung einzubinden.

Die Demo benutzt den für den Mapnik entwickelten Tileserver "TileLite"

  * Mehr Informationen über TileLite: http://bitbucket.org/springmeyer/tilelite/

Um die Demo zu starten müssen folgende Schritte durchgeführt werden:

  #. Klick :menuselection:`Desktop --> Spatial Tools --> Start Mapnik & TileLite`

    * Der Server startet nun in einem Terminal Fenster, welches geöffnet bleibt um Basis-Debug-Informationen auszugeben.
        
    * Falls sich das Terminal Fenster nicht öffnet, versuchen Sie TileLite noch einmal zu installieren und starten Sie den Server über die Kommandozeile::
      
        $ sudo easy_install tilelite
        $ liteserv.py /usr/local/share/mapnik/demo/population.xml


  #.  Um sicher zu gehen, dass der Server läuft besuchen Sie die TileLite Willkommens-Seite auf http://localhost:8000

  #. Nun rufen Sie das TileLite OpenLayers Beispiel "World Population" auf:
    
    * Die Seite finden sie unter: `http://localhost/mapnik/demo/openlayers.html <../../mapnik/demo/openlayers.html>`_


Wie geht es weiter?
--------------------------------------------------------------------------------

* Mapnik Tutorials

  Lesen Sie das Tutorial_ um mehr über Mapnik zu lernen.

.. _Tutorial: http://trac.mapnik.org/wiki/MapnikTutorials

* Erkunden Sie die Dateien auf der DVD

  Schauen Sie sich die bereitgestellten Dateien_ auf der DVD an.

.. _Dateien: file:///usr/local/share/mapnik/
