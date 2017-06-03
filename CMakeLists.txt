
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

foreach(opt HTML DIRHTML PICKLE JSON HTMLHELP LATEX)
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
file(STRINGS project_versions.txt OSGeoLiveDoc_PROJECTS_VERSIONS_FILE)

set (OSGeoLiveDoc_PROJECTS_VERSIONS "")
foreach(line ${OSGeoLiveDoc_PROJECTS_VERSIONS_FILE})
    string(REGEX REPLACE "^(.*)\\|(.*)\\|(.*)\\|(.*)\\|(.*)" "\\1" pdocumented ${line})
    string(REGEX REPLACE "^(.*)\\|(.*)\\|(.*)\\|(.*)\\|(.*)" "\\2" pname ${line})
    string(REGEX REPLACE "^(.*)\\|(.*)\\|(.*)\\|(.*)\\|(.*)" "\\3" pversion ${line})
    string(REGEX REPLACE "^(.*)\\|(.*)\\|(.*)\\|(.*)\\|(.*)" "\\4" pquick ${line})
    string(REGEX REPLACE "^(.*)\\|(.*)\\|(.*)\\|(.*)\\|(.*)" "\\5" poverview ${line})

    string(STRIP ${pdocumented} pdocumented)
    string(STRIP ${pname} pname)
    string(STRIP ${pversion} pversion)
    string(STRIP ${pquick} pquick)
    string(STRIP ${poverview} poverview)


    string(CONCAT  OSGeoLiveDoc_PROJECTS_VERSIONS ${OSGeoLiveDoc_PROJECTS_VERSIONS} ".. |version-${pname}| replace:: ${pversion}\n")
    if (NOT "${pdocumented}" MATCHES "Y") 
        if (OSGeoLiveDoc_VERBOSE_DEBUG)
            message(STATUS "${pname} is not for documentation")
        endif()
        continue()
    endif()

    if (OSGeoLiveDoc_VERBOSE_DEBUG)
        message(STATUS "${pdocumented} \t${pname} \t${pversion} \t${pquick} \t${poverview}")
    endif()

    if ("${pquick}" MATCHES "q")
        list(APPEND OSGeoLiveDoc_QUICKSTART "${pname}")
    endif()
    if ("${poverview}" MATCHES "o")
        list(APPEND OSGeoLiveDoc_OVERVIEW "${pname}")
    endif()

endforeach()

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

add_subdirectory(doc)
