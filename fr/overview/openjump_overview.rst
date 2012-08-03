:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-openjump.png
  :scale: 100 %
  :alt: Logo du projet
  :align: right
  :target: http://www.openjump.org

OpenJUMP GIS
================================================================================

SIG bureautique
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
OpenJUMP est un SIG bureautique facile à utiliser et puissant qui permet aux 
utilisateurs d'afficher, éditer, analyser et traier des données géographiques.
Il est fourni en édition CORE ou PLUS, cette dernière version ajoutant de nombreux 
plugins pratiques. 
OpenJUMP est excellent pour l'édition de données le prototypage rapide de fonctions SIG.

.. image:: ../../images/screenshots/1024x768/openjump-screenshot.png
  :scale: 50 %
  :alt: Capture d'écran de OpenJump
  :align: right

Caractéristiques (principales et avec plugins*)
--------------------------------------------------------------------------------

* Formats de données

    * lecture (fichier): GML, SHP, DXF*, MIF*, CSV* & TIFF, JPG, PNG, JPEG2000*, MrSID*, ECW*
    * lecture (base de données): PostGIS, ArcSDE*, Oracle*, MySQL* and SpatiaLite*
    * lecture (standards OGC): WKT, WMS
    * écriture: GML, SHP, WKT, DXF*, PostGIS* & JPG, TIFF and SVG*
    * notez que les formats avec un astérisque (*) sont fournies par un plugin supplémentaire

* Edition et traitements

    * dessins de points, lignes, polygones, multigéometries, collections de géoometries et cercles (éventuellement mélangés dans une couche seule)
    * ajout, déplacement, suppression de vertices
    * rotation, mise à l'échelle, auto-complétion de polygone
    * découpage, fusion, simplification de polygones et de lignes
    * outils de déformation d'images et d'assurance qualité

* Analyse & requêtes

    * fonctions de requêtes spatiales et attributaires
    * analyse : tampon, union, superposition, centroïde, enveloppe convexe...
    * statistiques : longueur, aire, statistiques de couche, statistiques des attributs, graphiques...
    * outils d'édition: convertisseur, transformation en point, transformation en polygones, graphes planaires, nettoyage topologique dans l'édition PLUS, ...
    * outils de transferts d'attributs: jointure, correspondance*
    * outil d'analyse raster SEXTANTE inclus dans l'édition PLUS

* Customisation

    * internationalisation (cz, de, en, es, fi, fr, hu, it, ja, pt, ta, zh)
    * fournit une API avec support du scripting via BeanShell et Python Java
    * Système de plugin (Java)
   

Standards implémentés
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* Standards OGC supportés: GML2, SFS, WMS et SLD; (WFS pour Deegree)

Détails
--------------------------------------------------------------------------------

**Site web:** http://www.openjump.org

**Licence:** GPL

**Version du logiciel:** 1.5.2 (Edition CORE)

**Plates-formes supportées:** Windows, Linux, Mac, Unix

**Support communautaire:** http://www.openjump.org/support.html

**Support commercial:** http://sourceforge.net/apps/mediawiki/jump-pilot/index.php?title=Professional_Support_Page

**Page de téléchargement:** http://sourceforge.net/projects/jump-pilot/files/ 

Guide de démarrage rapide
--------------------------------------------------------------------------------
    
* :doc:`Documentation du guide de démarrage rapide <../quickstart/openjump_quickstart>`
