:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Author: Hamish Bowman
:Author: Zoltan Siki
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Nicolas Roelandt
:Version: osgeo-live9.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: /images/project_logos/logo-QGIS.png
  :alt: project logo
  :align: right
  :target: http://www.qgis.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org

********************************************************************************
QGIS Quickstart 
********************************************************************************

QGIS ist ein benutzerfreundliches, quelloffenes Geographisches Informationssystem, mit dem man Geodaten visualisieren, managen, editieren und analysieren sowie druckfertige Karten erstellen kann.

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

     .. image:: /images/projects/qgis/qgis.png
        :scale: 70 %
        :alt: Map in QGIS

#. Machen Sie einen Doppelklick auf **10m_rivers_lake_centerlines** im Layer-Fenster

#. Ändern Sie unter :guilabel:`Stil` einen anderen Blauton als Farbe

#. Klicken Sie auf die Schaltfläche :guilabel:`OK`

   * Die Flüsse werden jetzt in der gewählten Farbe dargestellt

     .. image:: /images/projects/qgis/qgis_zoom_toolbar.png
        :scale: 70 %
        :alt: Map in QGIS


Neues QGIS Projekt erstellen
================================================================================

#. Wählen Sie :menuselection:`Datei --> Neues Projekt`

#. Wählen Sie :menuselection:`Layer --> Vektorlayer hinzufügen...`

     .. image:: /images/projects/qgis/qgis_add_layer.png
        :scale: 70
        :alt: Add layer

#. Klicken Sie auf die Schaltfläche :guilabel:`Durchsuchen` und wählen Sie den Datensatz :file:`/home/user/data/natural_earth/10m_admin_0_countries.shp`

#. Klicken Sie auf die Schaltfläche :guilabel:`Öffnen`

   * Sie sollten jetzt alle Länder der Welt sehen

     .. image:: /images/projects/qgis/qgis_countries.png
        :scale: 70
        :alt: Add layer result

Weitere Informationen
================================================================================

Weitere Tutorials mit fortgeschrittenen Funktionen von QGIS sind als `OSGeo-Live QGIS tutorials`_ auf dieser Live_DVD verfügbar.

Um mehr über QGIS zu erfahren, dient die Seite `QGIS Dokumentation`_ auf der QGIS Webseite als Ausgangspunkt.
Die englische Einführung `A Gentle Introduction to GIS`_ und der `QGIS User Guide`_ sind als PDF auf dieser Live-DVD enthalten `[1]`_ `[2]`_.


.. _`OSGeo-Live QGIS tutorials`: ../../qgis/tutorials/de/
.. _`QGIS Dokumentation`: http://www.qgis.org/de/docs/index.html
.. _`A Gentle Introduction to GIS`: http://docs.qgis.org/2.8/de/docs/gentle_gis_introduction/
.. _`QGIS User Guide`: http://docs.qgis.org/2.8/de/docs/user_manual/
.. _`[1]`: ../../qgis/QGIS-2.2-UserGuide-en.pdf
.. _`[2]`: ../../qgis/QGIS-1.8-UserGuide-en.pdf
