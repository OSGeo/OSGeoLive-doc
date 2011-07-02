.. Writing Tip:
  Dieser Quickstart Guid soll die wesentlichen Funktionen anhand eines einfachen 
  Beispiels aufzeigen. Man sollte die einzelnen Schritte innerhalb von 5 Minuten
  durchgehen können. Der Quickstart Guide kann auch einige zusätzliche optionale 
  Schritte enthalten, um weitere Funktionalitäten aufzuzeigen.
  Das Dokument sollte jeden einzelnen Schritt möglichst mit Screenshot darstellen, 
  um zum entsprechenden Ergebnis zu gelangen.
  Enden sollte das Dokument mit "Einen Versuch wert" und "Was nun?" Sektionen.
  Man sollte das Dokument so schreiben, dass weniger erfahrenen Anwender und Nutzer 
  mit wenig Expertenwissen verstehen können, was in den einzelnen Schritten erreicht 
  werden soll. Abkürzungen sollten erklärt beziehungsweise auschrieben werden.
 
  Wenn Beispieldaten verwendet werden sollen, sollten Naturalearth beziehungsweise
  Openstreetmap Datensätze verwendet werden. Diese Beispieldaten werden durch das Installationsskript
  install_gisdata.sh mit installiert:
   Opensreetmap:
     /home/user/data/osm/
   Vektordaten als Shape (*.shp) -Dateien : 
     /home/user/data/natural_earth/
       cultural/10m-populated-places-simple
       cultural/10m-admin-0-countries
       cultural/10m-populated-places-simple
       cultural/10m-urban-area
       physical/10m-land
       physical/10m-ocean
       physical/10m-lakes
       physical/10m-rivers-lake-centerlines
   Rasterdaten als TIFF (*.tif)
     Basiskarte 1:50 Millionen (40mb -  Cross Blended Hypso with Shaded Relief and Water) :
     /home/user/data/natural_earth/HYP_50M_SR_W/

  Bilder sollten skaliert werden:
   50% bei einer Auflösung von 1024x768 (bevorzugt) oder
   70% bei einer Auflösung von 800x600.
  und gespeichert werden unter:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/screenshots/1024x768/
  bzw.
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/screenshots/800x600/

.. Writing Tip:
  Metadaten des Dokumentes 

:Author: OSGeo-Live
:Author: Jody Garnett
:Author: Micheal Bedward
:Author: Frank Gasdorf
:Version: osgeo-live4.0
:License: Creative Commons
:Thanks: geotools-user list

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _udig-quickstart:
 
.. image:: ../../images/project_logos/logo-uDig.png
  :scale: 60 %
  :alt: Projektlogo
  :align: right

***************
uDig Quickstart 
***************

.. Writing Tip:
  First sentence defines what the application does.
  You may also need to include a sentence of two describing the domain.
  Eg: For a Business Intelligence application, you should describe what
  Business Intelligence is.

uDig (User Friendly Internet Desktop GIS) ist ein Desktop GIS-Client zum Anzeigen und Editieren von räumlichen Daten.

.. Writing Tip:
  Beschreibe, was mit diesem Quickstart Guide erreicht werden soll.

Mit dem Quickstart Guide soll folgendes erreicht werden:

  * Hinzufügen von Vektordaten als Layer zur Karte (Shapefile)
  * Hinzufügen eines Layers von einem Web Map Service (WMS) Server
  * Verwenden der Standardwerkzeuge zum Navigieren in der Karte
  * Anpassen der Farbe für die Darstellung von Objekten (Style)

.. contents:: Inhalt
  
uDig starten
==========

.. Writing Tip:
  beschreibe die Schritte, um die Anwendung zu starten. Hier sollte ein 
  Bild des Startmenüs mit enthalten sein, auf dem Applikation rot umrandet 
  hervorhegoben wird, die gestrattet werden soll.
  #. Ein Gatter ist für die Aufzählung von Einzelschritten zu verwenden. 
  Es sollte nur eine Anweisung pro Gatter geschrieben werden.


.. TBD: Add menu graphic to this uDig Quickstart
#. :menuselection:`Geospatial --> Desktop GIS --> uDig` im Startmenü des Desktops wählen
#. nach einem Moment wird die Anwendung gestartet und ein Begrüßungsbildschirm angezeigt

  .. image:: ../../images/screenshots/800x600/udig_Quickstart1Splash.png
   :scale: 70 %

Willkommensansicht
============

#. Wird uDig erstmalig gestartet, erscheint die Willkommensansicht, die Links zu Tutorials, Dokumentationen und der Projekt-Webseite enthält. Keine weiteren Ansichten sind sichtbar.
 
#. Bewegen Sie die Maus auf den Pfeil in der oberen rechten Ecke, es erscheint der Text **Workbench**. Klicken Sie auf den Pfeil, um diese Ansicht zu schließen und den Arbeitsbereich anzuzeigen. 
  
  .. image:: ../../images/screenshots/800x600/udig_welcome.png
   :scale: 70 %

Die Willkommensansicht können Sie jederzeit wieder herstellen, indem Sie im Menü :menuselection:`Help --> Welcome` wählen.

Arbeitsbereich
=========

Im Arbeitsbereich gibt es einen Bereich für die Karten, der umgeben ist von Ansichten, die das Arbeiten mit der Karte unterstützen. Viele Ansichten zeigen dabei kontextbezogene Informationen zur aktuell geöffneten und ausgewählten Karte an.

  .. image:: ../../images/screenshots/800x600/udig_workbench.png
   :scale: 70 %

Oben ist eine typischer uDig Arbeitsplatz zu sehen mit Karten (Editoren) sowie Ansichten für Kartenprojekte und Layer. Darüber hinaus gibt es noch die Katalogansicht. Die Ansichten und deren Verwendung werden weiter unten beschrieben.

Dateien
=====

Um einen ersten Eindruck der Anwendung zu gewinnen, werden wir Beispieldaten laden, die auf der DVD enthalten sind.

#. Wählen Sie :menuselection:`Layer --> Add...` vom Applikationsmenü. Es öffnet sich der Wizard **Add Data**.

#. Wählen Sie in der Liste der Datenquellentypen **Files** aus.

#. Klicken Sie auf die Schaltfläche :guilabel:`Next`. Es öffnet sich ein Dialog zur Auswahl von Dateien.

#. Die OSGeo-Live DVD enthält Beispieldaten im Ordner:
   
   * :file:`~/data` (a short cut to :file:`/usr/local/share/data`)

#. Wählen Sie die folgende Datei aus dem :file:`natural_earth` Ordner aus :
   
   * :file:`10m_admin_0_countries.shp`
   
#. Klicken Sie auf die Schaltfläche :guilabel:`Open`
   
   * Eine neue Karte wird geöffnet, die den Inhalt des Shapefiles anzeigt. Der Name und die 
     Projektion für die Karte wurden vom Shapefile übernommen (Standardverhalten)

   * Die Katalogansicht (**Catalog view**) wurde aktualisiert und enthält nun einen Eintrag 
     für das Shapefile :file:`10m_admin_0_countries.shp`. Diese Ansicht enthält als Liste 
	 alle Resourcen, die in den unterschiedlichsten Karten der uDig Anwendung verwendet werden.
   
   * In der Layeransicht (**Layers**) sehen Sie einen einzigen Eintrag für den Layer der in 
     der Karte angezeigt wird. Diese Ansicht wird verwendet, um die Reihenfolge mehrerer Layer 
	 anzupassen und das Darstellungsverhalten eines Layer zu ändern.
   
   * Die Projektansicht (**Projects**) wurde ebenfalls aktualisiert und zeigt nun die hinzugefügte 
     Karte has been gespeichert wurde unter project > 10m admin 0 countries. Es können mehrere 
	 Projekte geöffnet sein. Jedes Projekt kann wiederum mehere Karten enthalten.

#. Öffnen Sie den Ordner :file:`~/data/natural_earth/HYP_50M_SR_W` im Home-Verzeichnis mit dem **File Manager**

#. Ziehen Sie per Drag&Drop die Datei :file:`HYP_50M_SR_W.tif` in die Karte. Ein neuer Layer wird er Karte hinzugefügt.

#. In welcher Reihenfolge die Layer in der Karte dargestellt werden, sehen Sie in der Layeransicht. Im Moment wird der 
   Layer `HYP_50M_SR_W` über den Ländergrenzen des Layers `10m admin 0 countries` gezeichnet.

#. Wählen Sie den Layer `HYP_50M_SR_W` in der Layeransicht und schieben diesen per Drag&Drop an das Ende der Liste.
  
  .. image:: ../../images/screenshots/800x600/udig_QuickstartCountriesMap.jpg
   :scale: 70 %

.. Writing Tip:
  Notes are used to provide descriptions and background information without
  getting in the way of instructions. Notes will likely be rendered in
  the margin in some printed formats.

.. note::
   Eine oft gestellte Frage bei der Einführung von uDig ist die nach dem Speicherbedarf und -verbrauch.
   uDig kann im Gegensatz zu anderen GIS Applikationen mit fest zugewiesenem Speicher umgehen. Ein Shapefile 
   wird z.B. nicht komplett in den Arbeitsspeicher geladen. Wir haben den Grundsatz, die Daten auf dem Filesystem zu 
   belassen und nur auf Anfrage beim Darstellen in der Karte den relevanten Teil anzufragen.

.. tip:: Sie können Shapefiles direkt vom **File Manager** per Drag&Drop in die uDig Anwendung ziehen, um weitere Daten hinzuzufügen!

Karte
===

Sie können die Karte mit Hilfe der Navigationswerkzeuge anpassen, um den Ausschnitt der Welt anzuzeigen, der für Sie von 
Interesse ist. Die Werkzeuge sind in der Werkzeugleiste direkt unter dem Applikationsmenü zu finden.

#. Das Zoomwerkzeug (|ZOOM|) ist nach dem Start standardmäßig aktiv
   
   .. |ZOOM| image:: ../../images/screenshots/800x600/udig_zoom_mode.gif
   
   * Verwenden Sie dieses Werkzeug innerhalb des Kartenfensters und spannen Sie mit Hilfe der Maus ein Rechteck auf. Die Aktion wird begonnen
     beim ersten Klick mit der linken Maustaste und beendet mit dem zweiten Klick mit der gleichen Maustaste. Zwischen den zwei Klicks können 
	 Sie die Maus bewegen um das gewünschte Rechteck einzustellen. Mit gelber Farbe wird der potentiell neue Ausschnitt während der Mausbewegung 
	 mit dargestellt.
	 
   * Um den sichtbaren Bereich der Karte zu vergrößern, klicken Sie innerhalb des Kartenfensters mit der rechten Maustaste dahin, wo der neue 
     Ausschnitt zentriert werden soll.

#. Mit Hilfe des Verschiebewerkzeuges (|PAN|) können sie den Ausschnitt der Karte bewegen, ohne dabei den Maßstab anzupassen.
  
   .. |PAN| image:: ../../images/screenshots/800x600/udig_pan_mode.gif

#. Weitere Navigationswerkzeuge, die jederzeit genutzt werden können:
 
   * |SHOWALL| Zeige alles, kann verwendet werden, um einen Ausschnitt um alle in der Karte enthaltene Daten einzustellen.
   
     .. |SHOWALL| image:: ../../images/screenshots/800x600/udig_zoom_extent_co.gif

   * Zoom In (|ZOOM_IN|) und Zoom Out (|ZOOM_OUT|) können jederzeit genutzt werden, um den Maßstab um einen fixen Anteil zu vergrößern bzw. zu verkleinern.

     .. |ZOOM_IN| image:: ../../images/screenshots/800x600/udig_zoom_in_co.gif
     .. |ZOOM_OUT| image:: ../../images/screenshots/800x600/udig_zoom_out_co.gif

   * Sie können mit den Werkzeugen Zurück (|BNAV|) und Vorwärts (|FNAV|) in der Historie der eingestellten Ausschnitte hin und herschalten.

	 .. |BNAV| image:: ../../images/screenshots/800x600/udig_backward_nav.gif
     .. |FNAV| image:: ../../images/screenshots/800x600/udig_forward_nav.gif

.. tip:: Die meisten Werkzeuge erlauben es Ihnen, bei gedückter mittlerer Maustaste den Ausschnitt zu verschieben und unter Verwendung des 
         Mausrades den Maßstab anzupassen.

Web Map Server
==============

.. sidebar:: Offline

   If you are not connected to the internet run **Start GeoServer** for a local WMS. The script
   will open a page with a "wms capabilities" link you can drag into your empty map.
   
Mit uDig haben Sie die Möglichkeit auf Geodaten, die freie im Internet zugänglich sind, zuzugreifen. Dieses Kapitel beschreibt die Verwendung
von Web Map Servern. Diese publizieren Layer, die in uDig zusammen genutzt werden können, um eigene Karten zu erstellen.

#. Wählen Sie hierfür :menuselection:`File --> New --> New Map` im Applikationsmenü

#. Wechseln Sie in die **Web** Ansicht, diese befindet sich neben der Katalogansicht unterhalb der Karte.
   
  .. image:: ../../images/screenshots/800x600/udig_WebViewClick.png
   :scale: 70 %

#. Wählen Sie innerhalb der **Web** Ansicht den Link *WMS:dm solutions* aus

#. From the Resource Selection page we are going to choose the following layers:

   * Elevation/Bathymetry
   * Parks
   * Cities
   
  .. image:: ../../images/screenshots/800x600/udig_AddWMSLayers.png
   :scale: 70 %

#. Press :guilabel:`Finish` to add these layers to your map
   
  .. image:: ../../images/screenshots/800x600/udig_WMSMap.png
   :scale: 70 %
  
.. tip:: Sie können analog zu den Shapefiles auch per Drag&Drop Layer von Web Map Servern 
         der Karte hinzufügen oder alternativ den **Add Data** Wizard (:menuselection:`Layer --> Add...`) nutzen.
  
  
#. Use the |ZOOM| Zoom Tool to move closer to one of the Parks

#. Switch to the |INFO| Info Tool and click on one the parks to learn more about it
   
   .. |INFO| image:: ../../images/screenshots/800x600/udig_info_mode.gif

Tip: You can switch between the zoom and info tools by pressing Z and I on the keyboard.

Style
=====

#. Select the project > countries, you can double click to open this Map, or Right Click and choose Open Map

#. Select the countries layer in the Layer view

#. Open up the Style Editor by right clicking on countries layer and choosing Change Style

#. We are going to change a few things about how countries are displayed
   
   * Line: Click on the Color and change the color to BLACK
   
   * Fill: uncheck the box to turn off fill
   
   * Label: check the box, and choose CNTRY_NAME from the list of attributes
   
   .. image:: ../../images/screenshots/800x600/udig_StyleEditor.png
      :scale: 70 %

#. Press :guilabel:`Apply` to see what this looks like on your Map, the **Layer** view will also be updated
   to reflect the current style

#. When you are happy with the result you can press :guilabel:`Close` to dismiss the dialog

#. Some files include style settings, Select :menuselection:`Layer --> Add` from the menu bar

#. Select **Files** from the list of data sources and press :guilabel:`Next`

#. Using the file chooser open up **timezone.shp** and press :guilabel:`Open`

#. It is a bit hard to see what is going on with the clouds.jpg layer providing so much details.
   Select :menuselection:`Map --> Mylar` from the menu bar to focus on the selected layer

#. Using the *Layer* view select timezone, countries and clouds.jpg in turn to see the effect
  
  .. image:: ../../images/screenshots/800x600/udig_MapMylar.jpg
   :scale: 70 %

#. You can turn off this effect at any time using :menuselection:`Map --> Mylar` from the menu bar

.. Writing tip
  The final heading should provide pointers to further tutorials,
  documentation or further things to try.
  Present a list of ideas for people to try out. Start off very specific
  with something most people can do based on the materials as presented.
  Continue on with a challenge that involves a small bit of research (it
  is recommended that research be limited to something that can be
  found in documentation packaged on OSGeo-Live, as users might not be
  connected to the internet.

Things to Try
=============

Here are some additional challenges for you to try:

#. Try viewing your own GIS map layers, or try adding a layer from a Web Feature Service (WFS).
#. Try styling the WFS layer.

What Next?
==========

.. Writing tip
  Provide links to further tutorials and other documentation.

This is only the first step on the road to using uDig. There is a lot more great material (and ability) left for your to discover in our walkthroughs.

* Walkthrough 1

  Try out the use of PostGIS, extract data from a Web Feature Server and explore the
  use of Themes with our powerful Color Brewer technology.

  :file:`/usr/local/share/udig/udig-docs/uDigWalkthrough 1.pdf`

* Walkthrough 2 - Learn how to create shapefiles and use the Edit tools to manipulate
  feature data, covers the installation of GeoServer and editing with a Web Feature
  Server.

  Available on http://udig.refractions.net/

