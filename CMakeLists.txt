
cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
if ( ${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR} )
    message(FATAL_ERROR "In-source builds not allowed.
    Please make a new directory (called a build directory) and run CMake from there.
    You may need to remove CMakeCache.txt." )
endif()

#---------------------------------------------
#---------------------------------------------
#---------------------------------------------

project(OSGeoLiveDoc LANGUAGES NONE)
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
set(OSGeoLiveDoc_VERSION "${OSGeoLiveDoc_VERSION_MAJOR}.${OSGeoLiveDoc_VERSION_MINOR}.${OSGeoLiveDoc_VERSION_MINOR}.${OSGeoLiveDoc_VERSION_DEV}")
set(OSGeoLiveDoc_NAME "OSGeo-Live")


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

option(OSGeoLiveDoc_DEBUG
    "Set ON|OFF (default=OFF) to display basic DEBUG" OFF)

option(OSGeoLiveDoc_VERBOSE_DEBUG
    "Set ON|OFF (default=OFF) to display detailed DEBUG" OFF)

#---------------------------------------------
#---------------------------------------------
# Perl
#---------------------------------------------
#---------------------------------------------
include(FindPerl)
if(NOT PERL_EXECUTABLE)
    message(FATAL_ERROR " Please check your Perl installation.")
endif(NOT PERL_EXECUTABLE)

execute_process(
    COMMAND ${PERL_EXECUTABLE} -MDateTime -e ""
    ERROR_QUIET RESULT_VARIABLE DATETIME_STAUS
    )


#---------------------------------------------
#---------------------------------------------
#---------------------------------------------
#---------------------------------------------

# Kind of output
# http://www.sphinx-doc.org/en/stable/builders.html

#---------------------------------------------
#---------------------------------------------
#---------------------------------------------
#---------------------------------------------
option(ALL_DOC
    "Set ON|OFF (default=OFF) to build all documentation styles (exept LOCALE)" OFF)

option(HTML
    "Set ON|OFF (default=OFF) to build Documentation library tree as HTML" OFF)

option(DIRHTML
    "Set ON|OFF (default=OFF) to build Documentation library tree as DIRHTML
    STATUS: the navigation does not work " OFF
    )

option(SINGLEHTML
    "Set ON|OFF (default=OFF) to build Documentation library tree as a single HTML file" OFF
    )

option(PICKLE
    "Set ON|OFF (default=OFF) to build Documentation library tree as PICKLE" OFF)

option(JSON
    "Set ON|OFF (default=OFF) to build Documentation library tree as JSON page" OFF)

option(HTMLHELP
    "Set ON|OFF (default=OFF) to build Documentation library tree as HTMLHELP page" OFF)

option(DUMMY
    "Set ON|OFF (default=OFF) to build Documentation library tree as DUMMY page" OFF)

option(LATEX
    "Set ON|OFF (default=OFF) to build Documentation library tree as LATEX page" OFF)

#option(LATEXPDF
#    "Set ON|OFF (default=OFF) to build Documentation library tree as LATEXPDF page" OFF)

option(LOCALE
    "Set ON|OFF (default=OFF) to build the locale files of all languages.
    All other options are ignored
    All supported languages are considered" OFF
    )

foreach(opt HTML DIRHTML SINGLEHTML PICKLE JSON HTMLHELP LATEX)
    if (${${opt}} OR ALL_DOC)
        string(TOLOWER ${opt} val)
        list(APPEND OSGeoLiveDoc_DOC_TARGETS ${val})
    endif()
endforeach()

message(STATUS "OSGeoLiveDoc_DOC_TARGETS = ${OSGeoLiveDoc_DOC_TARGETS}")





#---------------------------------------------
#---------------------------------------------
#---------------------------------------------

# LANGUAGES SETINGS

#---------------------------------------------
#---------------------------------------------
#---------------------------------------------

#---------------------------------------------
# Avaliable Languages
# English is allways built

# list of sphinx languges support
# http://www.sphinx-doc.org/en/stable/config.html#confval-language
# TODO: figure out how to support this
#  "el"   "hu"  "id"  "zh")
#---------------------------------------------
set(OSGeoLiveDoc_SUPPORTED_LANGUAGES "ca"  "de"  "es"  "fr"  "it"  "ja"  "ko"  "pl"  "ru")
set(OSGeoLiveDoc_ENGLISH "en")

#---------------------------------------------
# Language options
#---------------------------------------------
option(ALL_LANG
    "Set ON|OFF (default=OFF) to build all documentation supported languages
    ${OSGeoLiveDoc_SUPPORTED_LANGUAGES}" OFF)

foreach(lang ${OSGeoLiveDoc_SUPPORTED_LANGUAGES})
    string(TOUPPER ${lang} val)
    option(${val}
        "Set ON|OFF (default=OFF) build ${lang} Documentation" OFF)
endforeach()

#---------------------------------------------
# Catching the language options to be build
#---------------------------------------------
list(APPEND OSGeoLiveDoc_BUILD_LANGUAGES  ${OSGeoLiveDoc_ENGLISH})
foreach(lang ${OSGeoLiveDoc_SUPPORTED_LANGUAGES})
    string(TOUPPER ${lang} opt)
    if (${opt} OR ALL_LANG)
        list(APPEND OSGeoLiveDoc_BUILD_LANGUAGES ${lang})
    endif()
endforeach()


#---------------------------------------------
# All languages po files are to be generated
#---------------------------------------------
set (SPHINXINTL_LANGUAGE  ${OSGeoLiveDoc_ENGLISH})
if(LOCALE)
    foreach(lang ${OSGeoLiveDoc_SUPPORTED_LANGUAGES})
        set(SPHINXINTL_LANGUAGE "${SPHINXINTL_LANGUAGE},${lang}")
    endforeach()
    set(OSGeoLiveDoc_LANGUAGES ${OSGeoLiveDoc_ENGLISH})
endif()


#------------------------------------------
# Used to generate the languages bar
#------------------------------------------
MACRO(INSERT_INTO_MAP _KEY _VALUE)
    SET("LangMap_${_KEY}" "${_VALUE}")
ENDMACRO(INSERT_INTO_MAP)

INSERT_INTO_MAP("ca" "Català")
INSERT_INTO_MAP("de" "Deutsch")
INSERT_INTO_MAP("el" "Ελληνικά")
INSERT_INTO_MAP("en" "English")
INSERT_INTO_MAP("es" "Español")
INSERT_INTO_MAP("fr" "Français")
INSERT_INTO_MAP("hu" "missing")
INSERT_INTO_MAP("id" "Bahasa Indonesia")
INSERT_INTO_MAP("it" "Italiano")
INSERT_INTO_MAP("ja" "日本語")
INSERT_INTO_MAP("ko" "한국어")
INSERT_INTO_MAP("pl" "Polski")
INSERT_INTO_MAP("pt" "Portugus")
INSERT_INTO_MAP("ru" "Русский")
INSERT_INTO_MAP("zh" "中文")


message(STATUS "OSGeoLiveDoc_BUILD_LANGUAGES = ${OSGeoLiveDoc_BUILD_LANGUAGES}")
message(STATUS "SPHINXINTL_LANGUAGE = ${SPHINXINTL_LANGUAGE}")

#---------------------------------------------
#---------------------------------------------
#---------------------------------------------

# The list of projects to be documented

#---------------------------------------------
#---------------------------------------------
#---------------------------------------------

# Y = to document | name | version | q = has quickstart | o = has overview
file(STRINGS projects_info.csv OSGeoLiveDoc_PROJECTS_VERSIONS_FILE)

MACRO(INSERT_INTO_MAP_KIND _KEY _TARGET)
    if ("${_TARGET}" STREQUAL "")
      set(_TARGET  "OSGeo_nothing")
    endif()
      
    SET("OSGEO_KIND_${_KEY}" 
".. image:: /images/logos/${_TARGET}.png
    :align: right
    :target: target: http://www.osgeo.org
")
ENDMACRO(INSERT_INTO_MAP_KIND)

MACRO(INSERT_INTO_MAP_LOGO _KEY _TARGET)
    if ("${_TARGET}" STREQUAL "")
      set(_TRGT  ${_TARGET})
    else()
      set(_TRGT ":target: ${_TARGET}")
    endif()
      
    SET("LOGO_${_KEY}"
 ".. image:: /images/projects/${_KEY}/logo-${_KEY}.png
    :align: right
    ${_TRGT}
")
ENDMACRO(INSERT_INTO_MAP_LOGO)

set (OSGeoLiveDoc_PROJECTS_LOGOS "")
set (OSGeoLiveDoc_CONFIGURATION_REGEXP "^(.*)\\|(.*)\\|(.*)\\|(.*)\\|(.*)\\|.*\\|.*\\|.*\\|.*\\|(.*)\\|(.*)")

foreach(line ${OSGeoLiveDoc_PROJECTS_VERSIONS_FILE})
    #Skipping comments
    string(REGEX REPLACE "^(#).*" "\\1" is_comment ${line})
    string(STRIP ${is_comment} is_comment)
    if (${is_comment} MATCHES "#")
        continue()
    endif()

    # TODO define what is usefull at this moment
    string(REGEX REPLACE "${OSGeoLiveDoc_CONFIGURATION_REGEXP}" "\\1" wantDoc ${line})
    string(REGEX REPLACE "${OSGeoLiveDoc_CONFIGURATION_REGEXP}" "\\2" project_name ${line})
    string(REGEX REPLACE "${OSGeoLiveDoc_CONFIGURATION_REGEXP}" "\\3" project_version ${line})
    string(REGEX REPLACE "${OSGeoLiveDoc_CONFIGURATION_REGEXP}" "\\4" want_quickstart ${line})
    string(REGEX REPLACE "${OSGeoLiveDoc_CONFIGURATION_REGEXP}" "\\5" want_overview ${line})
    #string(REGEX REPLACE "${OSGeoLiveDoc_CONFIGURATION_REGEXP}" "\\6" project_classification ${line})
    #string(REGEX REPLACE "${OSGeoLiveDoc_CONFIGURATION_REGEXP}" "\\7" retired_on ${line})
    string(REGEX REPLACE "${OSGeoLiveDoc_CONFIGURATION_REGEXP}" "\\6" url_target ${line})
    string(REGEX REPLACE "${OSGeoLiveDoc_CONFIGURATION_REGEXP}" "\\7" osgeo_kind ${line})

    string(STRIP ${wantDoc} wantDoc)
    string(STRIP ${project_name} project_name)
    string(STRIP ${project_version} project_version)
    string(STRIP ${want_quickstart} want_quickstart)
    string(STRIP ${want_overview} want_overview)
    string(STRIP "${url_target}" url_target)
    string(STRIP "${osgeo_kind}" osgeo_kind)

    if (OSGeoLiveDoc_VERBOSE_DEBUG)
        message(STATUS "${wantDoc} \t${project_name} \t${project_version} \twant_quickstart:${want_quickstart} \twant_overview:${want_overview}")
    endif()

    if (NOT "${wantDoc}" MATCHES "Y")
        if (OSGeoLiveDoc_VERBOSE_DEBUG)
            message(STATUS "${project_name} is not for documentation")
        endif()
        continue()
    endif()

    string(CONCAT  OSGeoLiveDoc_PROJECTS_VERSIONS ${OSGeoLiveDoc_PROJECTS_VERSIONS} ".. |version-${project_name}| replace:: ${project_version}\n")

    # Variable for storing the image commands for the project logos
    #	.. image:: /images/project_logos/logo-pgRouting.png
    #       :scale: 100 %
    #       :alt: pgRouting logo
    #       :align: right
    #       :target: http://www.pgrouting.org
    # TODO finish the lines
    INSERT_INTO_MAP_LOGO("${project_name}" "${url_target}")
    INSERT_INTO_MAP_LOGO("${project_name}" "${osgeo_kind}")


    if ("${want_quickstart}" MATCHES "Y")
        list(APPEND OSGeoLiveDoc_QUICKSTART "${project_name}")
    endif()
    if ("${want_overview}" MATCHES "Y")
        list(APPEND OSGeoLiveDoc_OVERVIEW "${project_name}")
    endif()
endforeach()

if (OSGeoLiveDoc_VERBOSE_DEBUG)
    message(STATUS "OSGeoLiveDoc_QUICKSTART=${OSGeoLiveDoc_QUICKSTART}")
    message(STATUS "OSGeoLiveDoc_OVERVIEW=${OSGeoLiveDoc_OVERVIEW}")
endif()

set(OSGeoLiveDoc_STANDARDS
    "csw"  "gml"  "sld"  "wcs"  "wms"
    "fe"   "kml"  "sensorml"  "sos"  "wfs"  "wps"
    )

if(FALSE)
    # Quickstart only
    set(OSGeoLiveDoc_QUICKSTART
        ${OSGeoLiveDoc_PROJECTS}
        "internationalisation"
        "osgeolive_install"
        "osgeolive"
        "usb"
        "virtualbox"
        "virtualization"
        "vmware"
        )
endif()

configure_file("settings.py" "settings.py")
configure_file("licenses.csv" "licenses.csv")
configure_file("contributors.csv" "contributors.csv")
configure_file("translators.csv" "translators.csv")

add_subdirectory(doc)
