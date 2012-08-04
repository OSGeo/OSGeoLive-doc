:Author: Barry Rowlingson
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-R.jpg
  :scale: 60 %
  :alt: logotip del projecte
  :align: right

********************************************************************************
R: Inici ràpid
********************************************************************************

R és un entorn lliure de representació i càlcul estadístic

Aquesta guia d'inici ràpid descriu com:

  * Fer servir R per a càlculs aritmètics simples
  * Carregar dades d'un shapefile i fer-ne un mapa
  * Fer un canvi de coordenades
  * Dibuixar punts sobre un mapa

Iniciar R
================================================================================

Es pot fer una de les dues opcions:

  * Triar ``R Statistics`` des de la secció del menú Spatial Tools. Una finestra de terminal apareixerà amb R executant-se.
  * Escriure ``R`` a la línia de comandes d'una terminal. R s'iniciarà en aquesta terminal.

No tingueu por de la línia de comandes, és molt poderosa. Fent servir les fletxes d'amunt i avall per a tornar a cridar les comandes i poder-ne esmenar els errors ajuda molt. Premeu CTRL-C si hi ha algun problema i el cursor tornarà a aparèixer.

Sortir d'R
================================================================================

Gairebé tot dins R és una funció, incloent-hi la funció per sortir. Escriviu ``q()`` i premeu la tecla ``Enter``. Si escriviu només ``q``, veureu el codi font de la funció ``q``.

R us preguntarà si voleu desar el vostre espai de treball com a arxiu d'imatge de dades R. Quan inicieu un altra vegada R des d'un directori amb un arxiu ``.RData``, se'n carregaran les dades per a restaurar la sessió.

Començant R
================================================================================

R és, essencialment, un programa de línia de comandes, to i que hi ha disponibles alguns programes amb interfície gràfica d'usuari. Quan escriviu una línia de codi a la línia de comandes i premeu ``Return``, l'intèrpret d'R avalua el codi i n'imprimeix el resultat.

Podeu començar fent càlculs aritmètics simples:

::

   > 3*2
   [1] 6

   > 1 + 2 * 3 / 4
   [1] 2.5

   > sqrt(2)
   [1] 1.414214

   > pi * exp(-1)
   [1] 1.155727

Etcètera. Un ampli ventall de funcions aritmètiques, trigonomètriques i estadístiques venen incloses, i milers més són disponibles en paquets a l'arxiu `CRAN <http://cran.r-project.org/>`.

El cursor principal d'R és ``>``, però també hi ha el cursor de continuació, ``+``, que apareix si R espera més dades per a fer una expressió vàlida. El veureu si us oblideu de tancar algun parèntesi o claudàtor.

::

   > sqrt(
   + 2
   + )
   [1] 1.414214


Construint les dades
================================================================================

Estareu preguntant-vos què hi fa el número u misteriós entre claudàtors. Significa que el resultat és un número. R pot desar dades en vectors uni-dimensionals, matrius bi-dimensionals i arrays multi-dimensionals. Hi ha moltes funcions que poden generar aquesta mena de coses, aquí en teniu una seqüència simple:

::

    > seq(1,5,len=10)
    [1] 1.000000 1.444444 1.888889 2.333333 2.777778 3.222222 3.666667 4.111111
    [9] 4.555556 5.000000

Ara podeu veure que el ``[9]`` indica que 4.555 és el novè valor en el vector.

Si construïu una matriu, rebreu etiquetes de fila i columna:

::

	> m=matrix(1:12,3,4)
	> m
	     [,1] [,2] [,3] [,4]
	[1,]    1    4    7   10
	[2,]    2    5    8   11
	[3,]    3    6    9   12

Els elements de les matrius es poden extreure fent servir claudàtors, amb la fila i columna separats per comes. Deixeu un índex en blanc per a obtenir una filera sencera com a vector. Feu servir un índex de vector per a obtenir múltiples files o columnes en forma de matriu més petita:

::

	> m[2,4]
	[1] 11

	> m[2,]
	[1]  2  5  8 11

	> m[,3:4]
	     [,1] [,2]
	[1,]    7   10
	[2,]    8   11
	[3,]    9   12

Els ``Data frames`` són estructures de dades que reflecteixen el tipus d'estructura que es troben als RDBMS com ara Postgres o MYSQL. Cada filera pot ser pensada com a un registre, amb les columnes fent de camps de la base de dades. Com en una base de dades, cada camp ha de ser del mateix tipus per a cada registre.

En molts sentits, funcionen com a matrius, però es poden establir i recuperar els valors de les columnes fent servir la notació $-:

::

	> d = data.frame(x=1:10,y=1:10,z=runif(10)) # z is 10 random numbers
	> d
	        x  y          z 
	    1   1  1 0.44128080 
	    2   2  2 0.09394331 
	    3   3  3 0.51097462 
	    4   4  4 0.82683828 
	    5   5  5 0.21826740 
	    6   6  6 0.65600533 
	    7   7  7 0.59798278 
	    8   8  8 0.19003625 
	    9   9  9 0.24004866 
	    10 10 10 0.35972749 

	> d$z
	 [1] 0.44128080 0.09394331 0.51097462 0.82683828 0.21826740 0.65600533
	 [7] 0.59798278 0.19003625 0.24004866 0.35972749

	> d$big = d$z > 0.6  # d$big is now a boolean true/false value
	> d[1:5,]
	  x y          z   big
	1 1 1 0.44128080 FALSE
	2 2 2 0.09394331 FALSE
	3 3 3 0.51097462 FALSE
	4 4 4 0.82683828  TRUE
	5 5 5 0.21826740 FALSE

	> d$name = letters[1:10] # create a new field of characters
	> d[1:5,]
	  x y          z   big name
	  1 1 1 0.44128080 FALSE    a
	  2 2 2 0.09394331 FALSE    b
	  3 3 3 0.51097462 FALSE    c
	  4 4 4 0.82683828  TRUE    d
	  5 5 5 0.21826740 FALSE    e



Carregant dades de mapes
================================================================================

Hi ha molts paquets per a la manipulació de dades i estadístiques espacials. Alguns estan inclosos aquí, altres poden descarregar-se des del CRAN.

Aquí carregarem dos shapefiles: els límits de països i les localitats poblades de les dades de Natural Earth. Usem dos paquets afegits per a obtenir la funcionalitat espacial:

::

	> library(sp)
	> library(maptools)

	> countries = readShapeSpatial("/usr/local/share/data/natural_earth/10m_admin_0_countries.shp")
	> places = readShapeSpatial("/usr/local/share/data/natural_earth/10m_populated_places_simple.shp")
	> plot(countries)

Això dibuixa un mapa del Món simple:

.. image:: ../../images/screenshots/1024x768/r_plot1.png

Quan unes dades OGR es llegeixen des d'R, s'obté un objecte que es comporta com una ``data frame`` en molts sentits. Podem fer servir el camp ``ADMIN`` per a agafar un subconjunt de les dades del Món i quedar-nos només amb el Regne Unit:

::

	> uk = countries[countries$ADMIN=="United Kingdom",]
	> plot(uk); axis(1); axis(2)

.. image:: ../../images/screenshots/1024x768/r_plot2.png

Aquest mapa semblarà una mica aixafat a qualsevol persona que visqui, ja que estem més familiaritzats amb sistemes de coordenades centrats a la nostra latitud. En aquests moments, l'objecte no té un sistema de coordenades assignat. Podem comprovar-ho amb aquesta i altres funcions:

::

	> proj4string(uk)
	[1] NA

``NA`` és un indicador d'absència de dades. Cal que assignem un CRS a l'objecte abans de transformar-lo amb la funció spTransform del paquet rgdal. Transformarem a EPSG:27700, que és la malla de l'Ordenance Survey of Great Britain:

::

	> proj4string(uk)=CRS("+init=epsg:4326")
	> library(rgdal)
	> ukos = spTransform(uk,CRS("+init=epsg:27700"))
	> proj4string(ukos)
	[1] " +init=epsg:27700 +proj=tmerc +lat_0=49 +lon_0=-2 +k=0.9996012717 +x_0=400000 +y_0=-100000 +ellps=airy +datum=OSGB36 +units=m +no_defs
	+towgs84=446.448,-125.157,542.060,0.1502,0.2470,0.8421,-20.4894"

	> plot(ukos);axis(1);axis(2)

Això dibuixarà el mapa base de les dades transformades. Ara volem afegir-hi alguns punts de les dades de llocs poblats. Altre cop, agafem un sub-conjunts de punts que volem i els transformam a les coordenades de l'Ordenance Survey Grid Reference:

::

	> ukpop = places[places$ADM0NAME=="United Kingdom",]
	> proj4string(ukpop)=CRS("+init=epsg:4326")
	> ukpop = spTransform(ukpop,CRS("+init=epsg:27700"))

Afegim aquests punts al mapa base, escalant-ne la mida segons l'arrel quadrada escalada de la població (això farà el símbol amb l'àrea proporcional a la població), seleccionem el color vermell i el caràcter del símbol el d'una taca:

::

	> points(ukpop,cex=sqrt(ukpop$POP_MAX/1000000),col="red",pch=19)
	> title("UK Population centre sizes")

i la imatge final apareix:

.. image:: ../../images/screenshots/1024x768/r_plot3.png

Vinyetes
================================================================================

Antigament, la documentació dels paquets d'R tendia a ser pàgines d'ajuda escrites telegràficament per a cada funció. Ara, s'anima als autors dels paquets a escriure una 'vinyeta' com a introducció amigable a cada funció. Si executeu la funció ``vignette()`` sense arguments, rebreu la llista de les vinyetes al vostre sistema. Proveu d'executar ``vignette("sp")`` i obtindreu una introducció una mica tècnica sobre les estructures espacials d'R, o ``vignette("spdep")`` per a les funcions estadístiques d'anàlisi de correlacions espacials. ``vignette("gstat")`` retorna un tutorial sobre l'ús d'aquest paquet per a fer interpolació espacial, incloent-hi Kriging.


Per a llegir més
================================================================================

Per a obtenir informació general sobre R, proveu el document oficial `Introduction to R <http://cran.r-project.org/doc/manuals/R-intro.html>`_ o qualsevol de la documentació de la pàgina principal del `Projecte R <http://www.r-project.org/>`

Per a tenir més informació sobre els aspectes espacials d'R, el millor lloc per a començar és, probablement, el `R Spatial Task View <http://cran.r-project.org/web/views/Spatial.html>`_

Pot ser que vulgueu mirar també la pàgina al SourceForge de `R-Spatial <http://r-spatial.sourceforge.net/>`_ per a obtenir més enllaços, incloent-hi informació sobre la llista de correu R-sig-Geo.


