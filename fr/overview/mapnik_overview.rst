:Author: Dane Springmeyer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapnik.png
  :scale: 80 %
  :alt: Logo du projet
  :align: right
  :target: http://mapnik.org/


Mapnik
================================================================================

Moteur de rendu cartographique
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mapnik est une boîte à outils pour générer des belles cartes, avec des bordures claires, arrondies aux angles grâce aux systèmes d'anti-crênelage, de placement "intelligent" des étiquettes, et à la représentation avec des symbologies SVG (redimensionnables). Mapnik est célèbre pour être utiliser pour générer le rendu principal des couches de carte du projet OpenStreetMap.

Typiquement, Mapnik est encapsulé dans des applications Python qui fournissent des cartes via Internet malgré le fait qu'avec l'amélioration des résolutions et de la mise à l'échelle, Mapnik ait été aussi récemment utilisé pour créer des cartes papier haute-résolutions.

.. image:: ../../images/screenshots/1024x768/mapnik-screenshot-barcelona.png
  :scale: 40 %
  :alt: Capture d'écran Mapnik
  :align: right

Essentiellement constitué d'une collection d'objets géographiques ("map", "layer", 
"datasource", "feature", "geometry"), la bibliothèque ne s'appuie pas sur un 
"système avec des fenêtres" et peut être déployées sur n'importe quel environnement 
serveur. Il est destiné à bien jouer dans un environnement multi-threaded et vise 
en premier mais pas exclusivement le developpement web.

Les bindings Python de hauts-niveaux (boost.python) facilite le développement rapide 
d'applications, ciblant zope3, django, etc...

Mapnik est muliplates-formes. Les paquets sont disponibles pour la plupart des 
distributions Linux et des installateurs sont habituellement utilisés sur Mac 
OS X et Windows.


Détails
--------------------------------------------------------------------------------

**Site web:** http://www.mapnik.org/

**Licence:** LGPL (GNU Lesser General Public Licence)

**Version du logiciel:** 2.0.0

**Plates-formes supportées:** Windows, Linux, Mac

**Interfaces de l'API:** C++, Python



Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/mapnik_quickstart>`


