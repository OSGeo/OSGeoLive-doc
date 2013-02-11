:Author: Jinsongdi Yu (j.yu@jacobs-university.de)
:Author: Michael Owonibi (o.michael@jacobs-university.de)
:Author: Peter Baumann (p.baumann@jacobs-university.de)
:Author: Dimitar Misev (d.misev@jacobs-university.de)
:Author: Frank Gasdorf
:Author: Alan Beccati (a.beccati@jacobs-university.de)
:Version: osgeo-live6.5draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-rasdaman.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.rasdaman.org


*******************
rasdaman Quickstart
*******************

rasdaman ist ein Rasterserver, der es erlaubt, Anfragen an n-D Datensätze, die in einer relationalen Datenbank gespeichert sind, zu stellen.

Dieser Quickstart Guide beschreibt, wie Anfragen an eine "Spielwiese" von Rasterobjekten gestellt werden können.
Um mit den Beispielen arbeiten zu können, ist der rasdaman Server zu starten (:menuselection:`Geospatial --> Databases --> Rasdaman --> Start Rasdaman Server`).

Erkunden der 1-D bis 4-D Beispiele
==================================

    * Sie können die rasdaman `Demo <http://localhost/rasdaman-demo/index-osgeolive.php>`_ lokal aufrufen, um einige Demodatensätze anzuschauen. Die kleineren sind Teil von OSGeo-Live, die die größere Datensätze verwenden verweisen direkt auf die `Earthlook Demo Seite <http://kahlua.eecs.jacobs-university.de/~earthlook/demos/index.php>`_ (Internetzugang wird benötigt).

Anfragen lokal ausführen
========================

    * Öffnen Sie eine Konsole und die lokal installierte Beispieldatenbank
    * Verwenden Sie :command:`rasql` um die Abfragen auszuführen und die Ergebnisse zu erhalten, zum Beispiel::

      $ rasql -q "select png((char)(c.red / (c.red + c.green) - c.green / (c.red + c.green)) > 0.6 * 255) from rgb AS c" --out file

    * Verwenden Sie die favorisierte Bild-Programm, um das generierte Datei zu öffnen.


Erstellen einer eigenen Datenbank
=================================

    * Öffnen Sie eine Konsole
    * `Laden und installieren Sie rasdaman <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/Download>`_ und dessen `Abhängigkeiten <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/RequiredPackages>`_
    * Starten sie das Demo-Installationsscript::

      $ install_demo.sh

    * Verwenden Sie :command:`rasql` um die Abfragen auszuführen und die Ergebnisse zu erhalten, zum Beispiel::

      $ rasql -q "select png( NIR ) from NIR" --out file

Wie geht es weiter?
============================

Weitere Herausforderungen, die Sie meistern können:

    * Erkunden sie die Demo-Datensätze unter Verwendung des `rasql query language guide <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/browser/manuals_and_examples/manuals/pdf/ql-guide.pdf>`_
    * Um mehr über den OGC `Web Coverage Processing Service <http://www.opengeospatial.org/standards/wcps>`_ (WCPS) Sprach-Standard (starker Einfluss von rasdaman) zu erfahren, sind die `Dokumentations- und die Tutorial- Seiten <http://kahlua.eecs.jacobs-university.de/~earthlook/tech/interface-wcps.php>`_ zu empfehlen. 
