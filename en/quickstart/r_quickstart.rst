:Author: Barry Rowlingson
:Version: osgeo-live4.0
:License: Creative Commons

.. _r-quickstart:
 
.. image:: ../../images/project_logos/logo-R.jpg
  :scale: 60 %
  :alt: project logo
  :align: right

************
R Quickstart
************

R is a free software environment for statistical computing and graphics.

This Quick Start describes how to:

  * use R for simple arithmetic
  * load some data from a shapefile and map it
  * do a coordinate transformation
  * apply colour to map features using styling

start R
=======

#. Choose "R Statistics" from the start menu
#. A terminal window appears running R.

quit R
======

Almost everything in R is a function, including the function for quitting. Type 
q() and hit return.

Beginning R
===========

R is essentially a command-line program, although graphical user
interfaces are available. You type a line of code at the prompt,
press return, and the R interpreter evaluates it and prints the 
result.

You can start with simple arithmetic

::

   > 3*2
   [1] 6
   > 1 + 2 * 3 / 4
   [1] 2.5
   > sqrt(2)
   [1] 1.414214
   > pi * exp(-1)
   [1] 1.155727


And so on. A full range of arithmetic, trigonometric, and statistical
functions are built in, and thousands more are available from
packages in the `CRAN <http://cran.r-project.org/>`_ archive.

Building Data
=============

You might be wondering what the mysterious 'one' in square brackets is 
doing in the output. This is telling you that the result is one number. R
can store things in one-dimensional vectors, two-dimensional matrices,
and multi-dimensional arrays. There are many functions that can 
generate these things. 

::

    > seq(1,5,len=10)
    [1] 1.000000 1.444444 1.888889 2.333333 2.777778 3.222222 3.666667 4.111111
    [9] 4.555556 5.000000

Now you can see that the [9] is telling us that 4.555 is the ninth
value in the vector.

Loading Map Data
================

There are many packages for spatial data manipulation and statistics. Some
are included here, and some can be downloaded from CRAN.

Here we will load two shapefiles - the country boundaries and populated places
from the Natural Earth data. We use two add-on packages to get the spatial 
functionality:

::

	library(sp)
	library(maptools)

	countries = readShapeSpatial("/usr/local/share/data/natural_earth/10m-admin-0-countries.shp")
	places = readShapeSpatial("/usr/local/share/data/natural_earth/10m_populated_places_simple.shp")
	plot(countries)

This gives us a simple map of the world:

.. image:: ../../images/screenshots/1024x768/r_plot1.png

When an OGR dataset is read into R, all its features' attributes are
available as elements of the object. In this case there's a COUNTRY
field we can use to subset the world data and just get the UK:

::

	uk = countries[countries$COUNTRY=="United Kingdom",]
	plot(uk); axis(1); axis(2)

.. image:: ../../images/screenshots/1024x768/r_plot2.png

This looks a bit squashed to anyone who lives here, since we are more familiar with
a coordinate system centred at our latitude. Currently the object doesn't have a 
coordinate system assigned to it - we can check this with some more functions:

::

	proj4string(uk)
	[1] NA

NA is a missing data marker. We need to assign a CRS to the object before we can
transform it with the spTransform function from the rgdal package. We transform
to EPSG:27700 which is the Ordnance Survey of Great Britain grid system:

::

	proj4string(uk)=CRS("+init=epsg:4326")
	library(rgdal)
	ukos = spTransform(uk,CRS("+init=epsg:27700"))
	proj4string(ukos)
	[1] " +init=epsg:27700 +proj=tmerc +lat_0=49 +lon_0=-2 +k=0.9996012717 +x_0=400000 +y_0=-100000 +ellps=airy +datum=OSGB36 +units=m +no_defs
	+towgs84=446.448,-125.157,542.060,0.1502,0.2470,0.8421,-20.4894"

	plot(ukos);axis(1);axis(2)

This plots the base map of the transformed data. Now we want to add some points from the 
populated place data set. Again we subset the points we want and transform them to
Ordnance Survey Grid Reference coordinates:

::

	ukpop = places[places$ADM0NAME=="United Kingdom",]
	proj4string(ukpop)=CRS("+init=epsg:4326")
	ukpop = spTransform(ukpop,CRS("+init=epsg:27700"))

We add these points to the base map, scaling their size by scaled square root of the 
population (because that makes a symbol with area proportional to population), set the
colour to red and the plotting character to a solid blob:
::

	points(ukpop,cex=sqrt(ukpop$POP_MAX/1000000),col="red",pch=19)
	title("UK Population centre sizes")

and our final image appears:

.. image:: ../../images/screenshots/1024x768/r_plot3.png

Further Reading
===============

For general information about R, try the official `Introduction to R <http://cran.r-project.org/doc/manuals/R-intro.html>`_ or any of the documentation from the main `R Project <http://www.r-project.org/>`_ page.

For more information on spatial aspects of R, the best place to start is probably the `R Spatial Task View <http://cran.r-project.org/web/views/Spatial.html>`_

You might also want to check out the `R-Spatial <http://r-spatial.sourceforge.net/>`_ 
page on sourceforge for some more links including information about the R-sig-Geo mailing list.
