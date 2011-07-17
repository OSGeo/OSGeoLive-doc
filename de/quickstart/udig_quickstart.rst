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
  werden soll. Abkürzungen sollten erklärt beziehungsweise ausgeschrieben werden.
 
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
  * Hinzufügen eines Layers von einem :doc:`Web Map Service (WMS) <../standards/wms_overview>` Server
  * Verwenden der Standardwerkzeuge zum Navigieren in der Karte
  * Anpassen der Farbe für die Darstellung von Objekten (Style)

.. contents:: Inhalt
  
uDig starten
============

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
==================

#. Wird uDig erstmalig gestartet, erscheint die Willkommensansicht, die Links zu Tutorials, Dokumentationen und der Projekt-Webseite enthält. Keine weiteren Ansichten sind sichtbar.
 
#. Bewegen Sie die Maus auf den Pfeil **Workbench**. Klicken Sie auf das Icon, um diese Ansicht zu schließen und den Arbeitsbereich anzuzeigen zu lassen. 
  
  .. image:: ../../images/screenshots/800x600/udig_welcome.png
   :scale: 70 %

Die Willkommensansicht können Sie jederzeit wieder herstellen, indem Sie im Applikationsmenü :menuselection:`Help --> Welcome` auswählen.

Arbeitsbereich
==============

Im Arbeitsbereich gibt es einen Bereich für die Karten, der umgeben ist von Ansichten, die das Arbeiten mit der Karte unterstützen. 
Viele Ansichten zeigen dabei kontextbezogene Informationen zur aktuell geöffneten und ausgewählten Karte an.

  .. image:: ../../images/screenshots/800x600/udig_workbench.png
   :scale: 70 %

Oben ist ein typischer uDig -Arbeitsplatz mit Karten (Editoren) sowie Ansichten für Kartenprojekte und Layer zu sehen. Darüber hinaus 
gibt es noch die Katalogansicht. Die Ansichten und deren Verwendung werden weiter unten beschrieben.

Dateien
=======

Um einen ersten Eindruck der Anwendung zu gewinnen, werden wir Beispieldaten laden, die auf der DVD enthalten sind.

#. Wählen Sie :menuselection:`Layer --> Add...` vom Applikationsmenü. Es öffnet sich der Wizard **Add Data**.

#. Wählen Sie in der Liste der Datenquellentypen **Files** aus.

#. Klicken Sie auf die Schaltfläche :guilabel:`Next`. Es öffnet sich ein Dialog zur Auswahl von Dateien.

#. Die OSGeo-Live DVD enthält Beispieldaten im Ordner:
   
   * :file:`~/data` (a short cut to :file:`/usr/local/share/data`)

#. Wählen Sie die folgende Datei aus dem Ordner :file:`natural_earth`  aus:
   
   * :file:`10m_admin_0_countries.shp`
   
#. Klicken Sie auf die Schaltfläche :guilabel:`Open`
   
   * Eine neue Karte wird geöffnet, die den Inhalt des Shapefiles anzeigt. Der Name und die Projektion für die Karte wurden vom Shapefile übernommen (Standardverhalten)

   * Die Katalogansicht (**Catalog view**) wurde aktualisiert und enthält nun einen Eintrag für das Shapefile :file:`10m_admin_0_countries.shp`. Diese Ansicht enthält als Liste alle Resourcen, die in den unterschiedlichsten Karten der uDig Anwendung verwendet werden.
   
   * In der Layeransicht (**Layers**) sehen Sie einen einzigen Eintrag für den Layer der in der Karte angezeigt wird. Diese Ansicht wird verwendet, um die Reihenfolge mehrerer Layer anzupassen und das Darstellungsverhalten eines Layer zu ändern.
   
   * Die Projektansicht (**Projects**) wurde ebenfalls aktualisiert und zeigt nun die hinzugefügte Karte unter `project > 10m admin 0 countries`. Es können mehrere Projekte geöffnet sein. Jedes Projekt kann wiederum mehrere Karten enthalten.

#. Öffnen Sie den Ordner :file:`~/data/natural_earth/HYP_50M_SR_W` im Home -Verzeichnis mit dem **File Manager**

#. Ziehen Sie per Drag&Drop die Datei :file:`HYP_50M_SR_W.tif` in die Karte. Ein neuer Layer wird er Karte hinzugefügt.

#. In welcher Reihenfolge die Layer in der Karte dargestellt werden, sehen Sie in der Layeransicht. Im Moment wird der Layer `HYP_50M_SR_W` über den Ländergrenzen des Layers `10m admin 0 countries` gezeichnet.

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
=====

Sie können die Karte mit Hilfe der Navigationswerkzeuge anpassen, um den Ausschnitt der Welt anzuzeigen, der für Sie von 
Interesse ist. Die Werkzeuge sind in der Werkzeugleiste direkt unter dem Applikationsmenü zu finden.

#. Das Zoomwerkzeug |ZOOM| ist nach dem Start standardmäßig aktiv
   
   .. |ZOOM| image:: ../../images/screenshots/800x600/udig_zoom_mode.gif
   
   * Verwenden Sie dieses Werkzeug innerhalb des Kartenfensters und spannen Sie mit Hilfe der Maus ein Rechteck auf. Die Aktion wird begonnen beim ersten Klick mit der linken Maustaste und beendet mit dem zweiten Klick mit der gleichen Maustaste. Zwischen den zwei Klicks können 	 Sie die Maus bewegen um das gewünschte Rechteck einzustellen. Mit gelber Farbe wird der potentiell neue Ausschnitt während der Mausbewegung mit dargestellt.
	 
   * Um den sichtbaren Bereich der Karte zu vergrößern, klicken Sie innerhalb des Kartenfensters mit der rechten Maustaste dahin, wo der neue Ausschnitt zentriert werden soll.

#. Mit Hilfe des Verschiebewerkzeuges |PAN| können sie den Ausschnitt der Karte bewegen, ohne dabei den Maßstab anzupassen.
  
     .. |PAN| image:: ../../images/screenshots/800x600/udig_pan_mode.gif

#. Weitere Navigationswerkzeuge, die jederzeit genutzt werden können:
 
   * |SHOWALL| Zeige alles, kann verwendet werden, um einen Ausschnitt um alle in der Karte enthaltene Daten einzustellen.
   
     .. |SHOWALL| image:: ../../images/screenshots/800x600/udig_zoom_extent_co.gif

   * Zoom In |ZOOM_IN| und Zoom Out |ZOOM_OUT| können jederzeit genutzt werden, um den Maßstab um einen fixen Anteil zu vergrößern bzw. zu verkleinern.

     .. |ZOOM_IN| image:: ../../images/screenshots/800x600/udig_zoom_in_co.gif
     .. |ZOOM_OUT| image:: ../../images/screenshots/800x600/udig_zoom_out_co.gif

   * Sie können mit den Werkzeugen Zurück |BNAV| und Vorwärts |FNAV| in der Historie der eingestellten Ausschnitte hin und herschalten.

     .. |BNAV| image:: ../../images/screenshots/800x600/udig_backward_nav.gif
     .. |FNAV| image:: ../../images/screenshots/800x600/udig_forward_nav.gif

.. tip:: Die meisten Werkzeuge erlauben es Ihnen, bei gedrückter mittlerer Maustaste den Ausschnitt zu verschieben 
         und unter Verwendung des Mausrades den Maßstab anzupassen.

Web Map Server
==============

.. sidebar:: Offline

Sollten Sie keine Verbindung ins Internet herstellen können, starten Sie einfach über :menuselection:`Geospatial --> Servers --> Start GeoServer` einen lokalen WMS Server. Das Skript wird eine Seite öffnen, die einen Links unter "Service Capabilities" auflistet. Ziehen Sie per Drag&Drop einen der **WMS** Links in Ihre Karte.
   
Mit uDig haben Sie die Möglichkeit auf Geodaten, die freie im Internet zugänglich sind, zuzugreifen. Dieses Kapitel beschreibt die Verwendung von Web Map Servern. Diese publizieren Layer, die in uDig zusammen genutzt werden können, um eigene Karten zu erstellen.

.. tip:: Sie können eine Verbindung zu Web Map Servern aufbauen, indem Sie über den **Add Data** Wizard (:menuselection:`Layer --> Add...`) gehen oder per Drag&Drop eines WMS Hyperlinks in die Karte.

#. Wählen Sie hierfür :menuselection:`File --> New --> New Map` im Applikationsmenü

#. Wechseln Sie in die **Web** Ansicht, diese befindet sich neben der Katalogansicht unterhalb der Karte.

	.. image:: ../../images/screenshots/800x600/udig_WebViewClick.png
		:scale: 70 %

#. Wählen Sie innerhalb der **Web** Ansicht den Link WMS\:`dm solutions`_ aus

	.. _dm solutions: http://www2.dmsolutions.ca/cgi-bin/mswms_gmap?Service=WMS&VERSION=1.1.0&REQUEST=GetCapabilities

#. Im darauf folgenden **Add Data** Wizard wählen Sie folgende Layer als Resourcen aus:

   * Elevation/Bathymetry
   * Parks
   * Cities
   
	.. image:: ../../images/screenshots/800x600/udig_AddWMSLayers.png
		:scale: 70 %

#. Bestätigen Sie mit :guilabel:`Finish`, dass die Layer zur Karte hinzugefügt werden sollen
   
	.. image:: ../../images/screenshots/800x600/udig_WMSMap.png
		:scale: 70 %
  
#. Verwenden Sie das Zoom |ZOOM| Werkzeug, um die Parks detaillierter  anzuzeigen

#. Wechseln Sie dann zum Info Tool |INFO| und klicken Sie auf einen Park in der Karte, um weitere Details zu diesem Objekt anzuzeigen 
   
	.. |INFO| image:: ../../images/screenshots/800x600/udig_info_mode.gif

.. tip:: Sie können zwischen dem Info und dem Zoom Tool hin und her schalten, indem Sie auf der Tastatur `I` und `Z` drücken.

Stile
=====

#. Wählen Sie in der **Project** Ansicht die Karte `project > 10m admin 0 countries`, Sie können sie per Doppelklick oder rechter Maustaste :guilabel:`Open Map` öffnen

#. Wählen Sie den Layer :guilabel:`countries` in der **Layers** Ansicht aus

#. Öffnen Sie den **Style Editor**, indem Sie per rechter Maustaste auf dem Layer :guilabel:`Change Style` auswählen

#. Wir werden mehrer Änderungen vorgenommen, die sich auf die Darstellung der Länder auswirken
   
   * begrenzende Linie (Border) : Wählen Sie den Tab :guilabel:`Border` und ändern Sie die Farbe auf Schwarz
   
   * Füllfläche : Deaktivieren Sie Checkbox :guilabel:`enable/disable fill` unter dem Tab :guilabel:`Fill`
   
   * Label : Aktivieren sie die Checkbox :guilabel:`enable/disable labeling` unter dem Tab :guilabel:`Labels` und wählen Sie in Attributliste zu :guilabel:`label` das Attribut **NAME** aus
   
   .. image:: ../../images/screenshots/800x600/udig_StyleEditor.png
      :scale: 70 %

#. Bestätigen Sie :guilabel:`Apply`, um zu sehen, wie sich der Stil auf die Karte auswirkt. Die Ansicht **Layers** wird ebenso aktualisiert, das Icon vor dem Namen des Layers reflektiert die aktuelle Stilkonfiguration

#. Sobald Sie mit dem Stil zufrieden sind, können Sie das :guilabel:`Close` bestätigen, um den Dialog zu verlassen

.. note:: Zu einigen Dateien werden bereits Stile mitgeliefert. Dabei gibt es unter gleichen Dateinamen eine :file:`*.sld` Datei, deren Inhalt XML basiert die Stilbeschreibung - :doc:`Styled Layer Description (SLD) <../standards/sld_overview>` - enthält. Ist eine solche Datei vorhanden, so wird der Stil automatisch auf die importierten Daten angewendet.

Mitunter ist es schwierig aufgrund der Stile der verschiedenen Layer das wesentliche auf der Karte zu erkennen. Es gibt die Möglichkeit über :menuselection:`Map --> Mylar` vom Applikationsmenü auf den in der **Layers** Ansicht ausgewählten zu fokussieren. Damit werden alle anderen Layer leicht transparent dargestellt. Klicken Sie in der **Layers** Ansicht auf unterschiedliche Layer, damit Sie eine Idee davon bekommen, wie dieser Effekt wirkt. Sie können diesen Effekt über :menuselection:`Map --> Mylar` wieder deaktivieren.

	.. image:: ../../images/screenshots/800x600/udig_MapMylar.jpg
		:scale: 70 %

Was kann man noch probieren?
============================

Weitere Herausforderungen, die Sie meistern können:

#. Versuchen Sie, Ihre eigenen Kartenlayer oder Layer von einem :doc:`Web Feature Service (WFS) <../standards/wfs_overview>` einer Karte hinzuzufügen.
#. Ändern Sie den Stil einen WFS Layers.

Wie geht es weiter?
===================

Die beschriebenen Funktionalitäten ist nur als ein Ausschnitt des Gesamtpacketes uDig zu betrachten. Es gibt noch weiteres Material, welches einen Blick wert ist. Auch um weitere Funktionalitäten kennenzulernen sei auf die **Walkthrough** -Dokumente verwiesen.

* Walkthrough 1

  Binden Sie Daten aus einer :doc:`PostGIS <../overview/postgis_overview>` Datenbank ein und laden Sie Daten von einem Web Feature Server, 
  erkunden Sie die **Themes** Funktionalität über die mächtige `Color Brewer` Technologie.

  :file:`/usr/local/share/udig/udig-docs/uDigWalkthrough 1.pdf`

* Walkthrough 2 

  Lernen Sie, wie Shapefiles erzeugt werden können, erfassen und ändern Sie Daten mit den Editierwerkzeugen. Dieser Walkthrough deckt die Installation eines :doc:`GeoServers <../overview/geoserver_overview>` wie auch das Ändern von Daten eines WFS Services ab.

  Verfügbar unter http://udig.refractions.net/

