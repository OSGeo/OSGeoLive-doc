:Author: OSGeo-Live
:Author: Julien Moquet
:Reviewer: Vicky Vergara
:Version: osgeo-live11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. (no logo) .. image:: ../../images/project_logos/logo-mapserver-new.png
  :scale: 65 %
  :alt: Project logo
  :align: right
  :target: http://mapserver.org/

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

********************************************************************************
 Démarrage rapide avec Proj.4
********************************************************************************

Proj.4 est une fonction filtre standard d'Unix qui converti les coordonnées géographiques de latitude et longitude entre coordonnées cartesienne (et vice versa), et est une API C pour les développeurs de logiciels permettant d'y inclure des transformations de coordonnées.

.. contents:: Ce guide de démarrage rapide reprend les fonctions suivantes : 
   :local:
   :depth: 1

proj
================================================================================

.. note:: 

  **Que vais-je apprendre ?** Dans cette section, vous apprendrez à vous servir de l'outil proj. 

Qu'est-ce que proj ?
--------------------------------------------------------------------------------

Proj and invproj perform respective forward  and inverse  transformation  of cartographic data to
or from cartesian data  with  a  wide  range  of selectable projection functions.

Résumé de proj
--------------------------------------------------------------------------------
::

    proj [ -bcCeEfiIlmorsStTvVwW [ args ] ] [ +args ] file[s]
    invproj [ -bcCeEfiIlmorsStTwW [ args ] ] [ +args ] file[s]

Ces commandes sont complètement décrites dans leur dernière version dans `proj documentation <http://proj4.org/apps/proj.html>`_.

Exemple de proj
--------------------------------------------------------------------------------

Le script qui suit

::

     proj +proj=utm  +lon_0=112w  +ellps=clrk66
     -r <<EOF
     45d15'33.1"   111.5W
     45d15.551666667N   -111d30
     +45.25919444444    111d30'000w
     EOF

va effectuer une projection UTM avec un médidien
standard central de longitude 112W. Les coordonnées
géographiques de cet exemple sont équivalentes et
utilisées comme exemple des nombreuses formes
d'entrées de coordonnées. Les données x-y de sortie
vont apparaître sous la forme de 3 fois la ligne::

     460769.27     5011648.45

cs2cs
================================================================================

.. note:: 

  **Que vais-je apprendre ?** Dans cette section, vous allez apprendre à utiliser l'outil cs2cs. 

Qu'est ce que cs2cs ?
--------------------------------------------------------------------------------

``cs2cs`` effectue des transformations d'un système de coordonnées géographique source à un système destination sur un ensemble de points. La transformation de système de coordonnées peut inclure des translations entre des coordonnées géographiques ou projetées autant qu'appliquer des translations de systèmes de référence (datums).

Résumé de cs2cs
--------------------------------------------------------------------------------
::

    cs2cs [ -eEfIlrstvwW [ args ] ] [ +opts[=arg] ] [ +to [+opts[=arg]] ] file[s]

La dernière version de cette commande est complètement décrite dans `cs2cs documentation <http://proj4.org/apps/cs2cs.html>`_.

Exemple de cs2cs
--------------------------------------------------------------------------------

Le script suivant

::

     cs2cs +proj=latlong +datum=NAD83
           +to +proj=utm +zone=10  +datum=NAD27
     -r <<EOF
     45d15'33.1"   111.5W
     45d15.551666667N   -111d30
     +45.25919444444    111d30'000w
     EOF

va transformer les coordonnées géographiques NAD83 en entrée en coordonnées NAD27 dans la zone 10 de la projection UTM. Les coordonnées géographiques de cet exemple sont équivalentes et utilisées comme exemple des nombreuses formes d'entrée de coordonnées.
Les données x-y en sortie vont apparaître 3 fois sous la forme::

     1402285.99      5076292.42 0.000

geod
================================================================================

.. note:: 

  **Que vais-je apprendre ?** Dans cette section, vous allez apprendre à utiliser l'outil geod. 

Qu'est-ce que geod ?
--------------------------------------------------------------------------------

``geod``  (direct)  et  ``invgeod`` (inverse) effectuent des calculs
geodesiques ("Grand cercle") pour déterminer la latitude, longitude 
et azimuth d'un point cible à partir d'un point initial formé d'une
latitude, longitude, azimuth et distance (sens direct) ou pour déterminer
les azimuths avant et arrière et la distance entre les latitudes et longitudes d'un point initial et final (sens inverse). Les résultats sont arrondis tel que |f| < 1/50, où f est l'aplanissement.

``invgeod`` n'est pas nécessairement disponible sur toutes les plateformes; dans ce cas, il est possible d'appeler geod avec l'option -I.

Résumé de geod
--------------------------------------------------------------------------------
::

       geod +ellps=<ellipse> [ -afFIlptwW [ args ] ] [ +args ] file[s]

       invgeod +ellps=<ellipse> [ -afFIlptwW [ args  ]  ]  [  +args  ] file[s]

La dernière version de ces commandes sont complètement décrites dans `proj documentation <http://proj4.org/apps/proj.html>`_.

Exemple de geod
--------------------------------------------------------------------------------

Le script suivant détermine les azimuths géodésiques et la distance en miles U.S. de Boston, MA, à Portland, OR:

::

     geod +ellps=clrk66 <<EOF -I +units=us-mi
     42d15'N 71d07'W 45d31'N 123d41'W
     EOF

ce qui donne comme résultats:

::

     -66d31'50.141" 75d39'13.083" 2587.504

où les deux premières valeurs sont l'azimuth de Boston à Portland et 
l'azimuth arrière de Portland à Boston suivis de la distance.

Un exemple d'usage de géodésique avant est d'utiliser la position à
Boston et de déterminer la position à Portland par son azimuth et
sa distance:

::

     geod +ellps=clrk66 <<EOF +units=us-mi
     42d15'N 71d07'W -66d31'50.141" 2587.504
     EOF

ce qui donne:

::

     45d31'0.003"N 123d40'59.985"W 75d39'13.094"

.. note::
    lack  of precision in the distance value compromises the
    precision of the Portland location.


Pour aller plus loin
--------------------------------------------------------------------------------

#. `GeographicLib <http://geographiclib.sf.net>`_

#. `C. F. F. Karney, Algorithms for Geodesics, J. Geodesy 87, 43-55 (2013) <http://dx.doi.org/10.1007/s00190-012-0578-z>`_.
   `Addendum <http://geographiclib.sf.net/geod-addenda.html>`_

#. `The online geodesic bibliography <http://geographiclib.sf.net/geodesic-papers/biblio.html>`_

