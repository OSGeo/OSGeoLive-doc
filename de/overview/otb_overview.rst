:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-otb.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.orfeo-toolbox.org/

OTB
================================================================================

Bild Prozessierung
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ORFEO Toolbox Library (OTB) ist eine hochperformante Bildprozessierungsbibliothek. OTB wurde anfangs
zur Prozessierung von Fernerkundungsdaten (Remote Sensing) wie Radaraufnahmen, Satellitenaufnahmen und Luftbildern. 
OTB stellt Werkzeuge für Future Optic und Radarbilder
(3D Aspekte, Erkennung von Änderungen, Texturanalysen, Musterabgleich, optische/radar Komplementaritäten) zur Verfügung.

OTB wurde von der French Space Agency (CNES) im Rahmen des
methodischen Bereichs des ORFEO Accompaniement Programms gegründet und 
wurde aktiv seit 2006 entwickelt. Es basiert auf der bewährten medizinischen Bildprozesierungsbibliothek
ITK(v4) und ist Open Source.

Kernfunktionen
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/800x600/otb-mapping.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

* Bildzugriff: optimierter Lese-/Schreibzugriff für die meisten Fernerkundungsdatenformate (inklusive Jpeg2000 über OpenJPEG), Metadatenzugriff und Visualisierung
* Orthorectification unter Verwendung von DEM und Kartenumprojektion
* Kalibierung
* Bildfusion
* Filtern: Blurring, Denoising, Verbesserungen
* Erzeugen von Objekten: Einfügen von Punkten, Anpassungen, Linien
* Objekterkennung
* Bildsegmentierung: Region Growing, Watershed, Niveaumengenmethoden (Level Sets)
* Klassifizierung: K-Means, SVM, MRF (Markov Random Fields)
* objektbasierte Bildanalyse
* räumliche Analyse
* Stereoskopische Rekonstruktion von optischen Bildern
* SAR Datenanalyse
* Änderungsverfolgung

Details
--------------------------------------------------------------------------------

**Webseite:** http://www.orfeo-toolbox.org/

**Lizenz:** CeCILL (CeCILL kompatibel mit GPL und erweitert
  für französisches Recht)

**Software Version:** 4.0

**Unterstützte Plattformen:** Linux, Mac, Windows

**API Schnittstellen:** C++ (verfügbare Bindings in Java und Python)

**Support:** http://www.osgeo.org/search_profile


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart Dokumentation <../quickstart/otb_quickstart>`

