
cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
if ( ${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR} )
    message(FATAL_ERROR "In-source builds not allowed.
    Please make a new directory (called a build directory) and run CMake from there.
    You may need to remove CMakeCache.txt." )
endif()

#---------------------------------------------
#---------------------------------------------
#---------------------------------------------

project(OSGeoLiveDoc)
set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

#---------------------------------------------
#---------------------------------------------
#---------------------------------------------

#---------------------------------------------
# Setting the version number
#---------------------------------------------
set(OSGeoLiveDoc_VERSION_MAJOR "11")
set(OSGeoLiveDoc_VERSION_MINOR "0")
set(OSGeoLiveDoc_VERSION_PATCH "0")
set(OSGeoLiveDoc_VERSION_DEV "-dev")


#---------------------------------------------
# minimum versions
#---------------------------------------------
set(SPHINX_MINIMUM_VERSION "1.1")

                 
#---------------------------------------------
# Fining sphinx
#---------------------------------------------
find_package(Sphinx REQUIRED)
if (NOT SPHINX_FOUND)
    message(WARNING "Sphinx not found. Cannot generate documentation!")
elseif (SPHINX_VERSION VERSION_LESS SPHINX_MINIMUM_VERSION)
    message(WARNING "Your Sphinx version is too old!
    This project requires Sphinx v1.0 or above to produce
    proper documentation (you have v${SPHINX_VERSION}).
    You will get output but it will have errors.")
endif()



option(BUILD_LATEX
    "Set ON|OFF (default=OFF) to build Documentation library tree as PDF" OFF)

option(BUILD_HTML
    "Set ON|OFF (default=ON) to build Documentation library tree as HTML" ON)

option(BUILD_MAN
    "Set ON|OFF (default=ON) to build Documentation library tree as MAN page" OFF)

option(DOC_USE_BOOTSTRAP
    "Set ON|OFF (default=ON) to build Documentation library tree as MAN page" OFF)




if (DOC_USE_BOOTSTRAP)
    set(SPHINX_INCLUDE "import sphinx_bootstrap_theme")
    set(SPHINX_THEME "bootstrap")
    set(SPHINX_THEME_DIR "sphinx_bootstrap_theme.get_html_theme_path()")
    set(SPHINX_THEME_OPTIONS "'source_link_position': \"none\",")
else()
    set(SPHINX_INCLUDE "")
    set(SPHINX_THEME "haiku")
    set(SPHINX_THEME_DIR "['']")
    set(SPHINX_THEME_OPTIONS "")
endif()


# Languages to be used
#set(OSGeoLiveDoc_LANGUAGES "ca"  "de"  "el"  "en" "es"  "fr"  "hu"  "id"  "it"  "ja"  "ko"  "pl"  "ru"  "zh")
set(OSGeoLiveDoc_ENGLISH "en")
set(OSGeoLiveDoc_LANGUAGES "en")

# File lists (english)
set(OSGeoLiveDoc_FILES "contact.rst"    "disclaimer.rst"  "index.rst"           "metrics.rst"   "sponsors.rst"  "welcome_message.txt"
"copyright.rst"  "download.rst"    "mac_installers.rst"       "presentation.rst"  "sponsors_osgeo.rst"       "win_installers.rst")


# Directory lists (english)
set(OSGeoLiveDoc_SUBDIRS
    "presentation"      "quickstart"
    "overview"     "standards")

# list of projects with quickstart
set(OSGeoLiveDoc_PROJECTS
    "52nSOS"       "geomajas"      "gpsprune"  "liblas"     "mb-system"       "qgis"        "ushahidi"
    "52nWPS"       "geomoose"      "grass"     "mapbender"  "osm"             "rasdaman"    "viking"
    "52nWSS"       "geonetwork"    "gvsig"     "mapfish"    "ossim"           "R"           "webworldwind"
    "atlasstyler"  "geonode"       "iris"      "mapguide"         "otb"             "saga"        "worldwindjava"
    "cartaro"      "geopublisher"  "istsos"    "mapnik"     "ncWMS"           "sahana"      "zoo-project"
    "cesium"       "geoserver"           "mapproxy"     "pgrouting"       "spatialite"  "zygrib"
    "deegree"      "mapserver"  "opencpn"         "postgis"         "tilemill"
    "eoxserver"    "jupyter"   "mapslicer"  "openjump"        "pycsw"           "tinyows"
    "gdal"         "gmt"           "kosmo"     "mapwindow"  "openlayers"      "pywps"           
    "geokettle"    "gpsdrive"      "leaflet"   "marble"     "osgearth"        "qgis_mapserver"  "udig")


# Overview only projects 
set(OSGeoLiveDoc_OVERVIEW
    "osm_dataset"
    "metacrs"
    "naturalearth"
    "nc_dataset"
    "josm"
    "netcdf_dataset"
    "geos"
    "jts"
    "geotools"
    )

set(OSGeoLiveDoc_STANDARDS
    "csw"  "gml"  "sld"  "wcs"  "wms"
    "fe"   "kml"  "sensorml"  "sos"  "wfs"  "wps"
    )

# Quickstart only
set(OSGeoLiveDoc_QUICKSTART
    "internationalisation"
    "osgeolive_install"
    "osgeolive"
    "usb"
    "virtualbox"
    "virtualization"
    "vmware"
    )


add_subdirectory(doc)

