:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _qgis-quickstart-de:
 
.. image:: ../../images/project_logos/logo-QGIS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.qgis.org

********************************************************************************
QGIS Quickstart 
********************************************************************************

Quantum GIS (QGIS) ist ein benutzerfreundliches, quelloffenes Geographisches Informationssystem, mit dem man Geodaten visualisieren, managen, editieren und analysieren sowie druckfertige Karten erstellen kann.

Dieser Quickstart Guide beschreibt folgende Schritte:

  * Bearbeiten eines existierenden QGIS Projektes
  * Erstellen eines neuen QGIS Projektes mit einem einfachen Vektor-Layer


Bearbeiten eines QGIS Projektes
================================================================================

#. :menuselection:`Applications --> Desktop GIS --> Quantum GIS` im Startmenü des Desktops wählen

#. Wählen Sie :menuselection:`Datei --> Projekt öffnen...` in der Menu-Zeile

#. Selektieren Sie die Datei :file:`QGIS-NaturalEarth-Example.qgs` und klicken Sie :guilabel:`Öffnen`.

   * Sie sollten darauf eine Weltkarte sehen

#. Setzen Sie einen Haken bei **10m_populated_places_simple** im Layer-Fenster

   * Es werden Städte der Welt angezeigt:

     .. image:: ../../images/screenshots/1024x768/qgis.png
        :scale: 50 %

#. Machen Sie einen Doppelklick auf **10m_rivers_lake_centerlines** im Layer-Fenster

#. Ändern Sie unter :guilabel:`Stil` einen anderen Blauton als Farbe

#. Klicken Sie auf die Schaltfläche :guilabel:`OK`

   * Die Flüsse werden jetzt in der gewählten Farbe dargestellt


Neues QGIS Projekt erstellen
================================================================================

#. Wählen Sie :menuselection:`Datei --> Neues Projekt`

#. Wählen Sie :menuselection:`Layer --> Vektorlayer hinzufügen...`

#. Klicken Sie auf die Schaltfläche :guilabel:`Durchsuchen` und wählen Sie den Datensatz :file:`/home/user/data/natural_earth/10m_admin_0_countries.shp`

#. Klicken Sie auf die Schaltfläche :guilabel:`Öffnen`

   * Sie sollten jetzt alle Länder der Welt sehen


Weitere Informationen
================================================================================

Weitere Tutorials mit fortgeschrittenen Funktionen von QGIS sind als `OSGeo-Live QGIS tutorials`_ (in Englisch) auf dieser Live_DVD verfügbar.

Um mehr über QGIS zu erfahren, dient die Seite `QGIS Dokumentation`_ auf der QGIS Webseite als Ausgangspunkt.
Diese Live-DVD enthält die englische Einführung `A Gentle Introduction to GIS`_  und den `QGIS User Guide`_, der auch in deutscher Übersetzung erhältlich ist.

.. _`OSGeo-Live QGIS tutorials`: ../../qgis/tutorials/
.. _`QGIS Dokumentation`: http://www.qgis.org/de/dokumentation.html
.. _`A Gentle Introduction to GIS`: ../../qgis/qgis-1.0.0_a-gentle-gis-introduction_en.pdf
.. _`QGIS User Guide`: ../../qgis/qgis-1.7.0_user_guide_en.pdf
