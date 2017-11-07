:Author: OSGeoLive
:Author: Julien Moquet
:Reviewer: Vicky Vergara
:Version: osgeolive11.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_proj4@
@OSGEO_KIND_proj4@

********************************************************************************
@NAME_proj4@ Quickstart
********************************************************************************

proj.4 is a standard Unix filter function which converts geographic longitude
and latitude coordinates into cartesian coordinates (and vice versa), and it is
a C API for software developers to include coordinate transformation in their
own software.

.. contents:: This Quick Start describes how to use these tools :
   :local:
   :depth: 1

proj
================================================================================

.. note:: 

  **What will I learn ?** In this section, you will learn how to use the proj tool. 

What is proj ?
--------------------------------------------------------------------------------

Proj and invproj perform respective forward  and inverse  transformation  of cartographic data to
or from cartesian data  with  a  wide  range  of selectable projection functions.

proj Synopsis
--------------------------------------------------------------------------------
::

    proj [ -bcCeEfiIlmorsStTvVwW [ args ] ] [ +args ] file[s]
    invproj [ -bcCeEfiIlmorsStTwW [ args ] ] [ +args ] file[s]

These commands are fully describe in `proj documentation <http://proj4.org/apps/proj.html>`_ for the latest version.

proj Example
--------------------------------------------------------------------------------

The following script

::

     proj +proj=utm  +lon_0=112w  +ellps=clrk66
     -r <<EOF
     45d15'33.1"   111.5W
     45d15.551666667N   -111d30
     +45.25919444444    111d30'000w
     EOF

will perform UTM forward projection with a stan-
dard  UTM  central  meridian  nearest  longitude
112W.  The geographic values of this example are
equivalent and  meant  as  examples  of  various
forms  of  DMS  input.  The x-y output data will
appear as three lines of::

     460769.27     5011648.45

cs2cs
================================================================================

.. note:: 

  **What will I learn ?** In this section, you will learn how to use the cs2cs tool. 

What is cs2cs ?
--------------------------------------------------------------------------------

``cs2cs`` performs transformation between the source and destination cartographic  coordinate  system
on a set of input points.  The coordinate system transformation can include  translation  between
projected  and geographic coordinates as well as the application of datum shifts.

cs2cs Synopsis
--------------------------------------------------------------------------------
::

    cs2cs [ -eEfIlrstvwW [ args ] ] [ +opts[=arg] ] [ +to [+opts[=arg]] ] file[s]

These commands are fully describe in `cs2cs documentation <http://proj4.org/apps/cs2cs.html>`_ for the latest version.

cs2cs Example
--------------------------------------------------------------------------------

The following script

::

     cs2cs +proj=latlong +datum=NAD83
           +to +proj=utm +zone=10  +datum=NAD27
     -r <<EOF
     45d15'33.1"   111.5W
     45d15.551666667N   -111d30
     +45.25919444444    111d30'000w
     EOF

will  transform the input NAD83 geographic coordinates into NAD27
coordinates in the  UTM  projection  with  zone 10 selected.  The geographic
values of this example are equivalent and  meant as  examples of various forms of DMS input.
The x-y output data will appear as three lines of:

::

     1402285.99      5076292.42 0.000

geod
================================================================================

.. note:: 

  **What will I learn ?** In this section, you will learn how to use the geod tool. 

What is geod ?
--------------------------------------------------------------------------------

``geod``  (direct)  and  ``invgeod`` (inverse) perform geodesic ("Great
Circle") computations for determining latitude,  longitude  and
back  azimuth  of  a terminus point given a initial point latitude,
longitude, azimuth and distance (direct) or  the  forward
and  back azimuths and distance between an initial and terminus
point latitudes and  longitudes  (inverse).   The  results  are
accurate  to  round  off for `|f| < 1/50`, where f is flattening.

``invgeod`` may not be available on all  platforms;  in  this  case
call geod with the -I option.

geod Synopsis
--------------------------------------------------------------------------------
::

       geod +ellps=<ellipse> [ -afFIlptwW [ args ] ] [ +args ] file[s]

       invgeod +ellps=<ellipse> [ -afFIlptwW [ args  ]  ]  [  +args  ] file[s]

These commands are fully describe in `proj documentation <http://proj4.org/apps/proj.html>`_ for the latest version.

geod Example
--------------------------------------------------------------------------------

The following script determines the geodesic azimuths and  distance in U.S.
statute miles from Boston, MA, to Portland, OR:

::

     geod +ellps=clrk66 <<EOF -I +units=us-mi
     42d15'N 71d07'W 45d31'N 123d41'W
     EOF

which gives the results:

::

     -66d31'50.141" 75d39'13.083" 2587.504

where the first two values are the azimuth from Boston to Portland,
the back azimuth from Portland to Boston followed by the distance.

An  example  of forward geodesic use is to use the Boston loca-
tion and determine Portland's location by azimuth and distance:

::

     geod +ellps=clrk66 <<EOF +units=us-mi
     42d15'N 71d07'W -66d31'50.141" 2587.504
     EOF

which gives:

::

     45d31'0.003"N 123d40'59.985"W 75d39'13.094"

.. note::
    lack  of precision in the distance value compromises the
    precision of the Portland location.


Further reading
--------------------------------------------------------------------------------

#. `GeographicLib <http://geographiclib.sf.net>`_

#. `C. F. F. Karney, Algorithms for Geodesics, J. Geodesy 87, 43-55 (2013) <http://dx.doi.org/10.1007/s00190-012-0578-z>`_.
   `Addendum <http://geographiclib.sf.net/geod-addenda.html>`_

#. `The online geodesic bibliography <http://geographiclib.sf.net/geodesic-papers/biblio.html>`_

