

#---------------------
# Files
#---------------------
set(OSGeoLiveDoc_FILES
    #"disclaimer.rst"
    "translators.rst"
    "osgeo_contact.rst"
    "contributors.rst"
    "index.rst"
    "contact.rst"
    "metrics.rst"
    "sponsors.rst"
    "welcome_message.txt"
    "copyright.rst"
    "download.rst"
    "mac_installers.rst"
    "presentation.rst"
    "sponsors_osgeo.rst"
    "win_installers.rst"
    )


#---------------------
# Directories
#---------------------
set(OSGeoLiveDoc_SUBDIRS
    "WindowsInstallers"
    "MacInstallers"
    "presentation"
    "quickstart"
    "overview"
    "standards"
    )



#---------------------------------------------
# Adding the documentation subdirectories & files
#---------------------------------------------

foreach (dir ${OSGeoLiveDoc_SUBDIRS})
    message(STATUS "   Adding directory ${dir}")
    add_subdirectory(${dir})
endforeach()

foreach (f ${OSGeoLiveDoc_FILES})
    message(STATUS "    Adding file ${f}")
    configure_file(${f} ${f})
endforeach()

file(COPY "images" DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")

#---------------------------------------------
# Adding the scripts and executing
#---------------------------------------------
#TODO find perl

add_subdirectory(scripts)
add_custom_command(
    OUTPUT "${CMAKE_CURRENT_BINARY_DIR}/overview/overview.rst"
    COMMAND perl ./scripts/build_overview.pl
    #COMMAND ${PERL_EXECUTABLE} ./scripts/build_overview.pl
    DEPENDS 
    ./scripts/build_overview.pl
    ${CMAKE_SOURCE_DIR}/projects_info.txt
    )


#---------------------------------------------
# Adding the sphinx subdirectories and files
#---------------------------------------------
configure_file("conf.py.in" "conf.py" @ONLY)
add_subdirectory(themes)
add_subdirectory(static)

set(SPHINX_DOCUMENTATION_DIR "${CMAKE_CURRENT_BINARY_DIR}")
set(SPHINX_BUILD_DIR "${CMAKE_CURRENT_BINARY_DIR}/_build")


# Internal variables.
option(LATEX_PAPER_SIZE
    "Set a4|letter (default=letter) paper size" "letter")

option(SPHINX_OPTS
    "Set Sphinx options (default are sphinx defaults)")

message(STATUS "SPHINX_OPTS=${SPHINX_OPTS}")

set(LATEX_PAPER_SIZE " -D latex_paper_size=${LATEX_PAPER_SIZE}")


if (LOCALE)
    add_custom_target(locale
        COMMAND ${SPHINX_EXECUTABLE} 
        -b gettext
        -c "${CMAKE_CURRENT_BINARY_DIR}" 
        "${CMAKE_CURRENT_BINARY_DIR}" 
        "${CMAKE_SOURCE_DIR}/locale/pot" 

        COMMAND sphinx-intl update -p ${CMAKE_SOURCE_DIR}/locale/pot -d ${CMAKE_SOURCE_DIR}/locale --language=${SPHINXINTL_LANGUAGE}

        DEPENDS overview/overview.rst

        COMMENT "Generating POT & PO files ..."
        )
endif()


add_custom_target(doc
    COMMENT "Building documentation with Sphinx")

foreach (target ${OSGeoLiveDoc_DOC_TARGETS})
    add_custom_target(${target} ALL
        COMMENT "Building documentation with Sphinx")

    foreach (lang ${OSGeoLiveDoc_BUILD_LANGUAGES})
        add_custom_target(
            "${target}-${lang}" 
            COMMAND ${SPHINX_EXECUTABLE}

            -b ${target}
            -c "${CMAKE_CURRENT_BINARY_DIR}"
            -D language='${lang}'

            # the location of the documentation to be build
            "${CMAKE_CURRENT_BINARY_DIR}"

            #where the documentations is written
            "${SPHINX_BUILD_DIR}/${target}/${lang}"

            DEPENDS overview/overview.rst

            COMMENT "Generating ${target}/${lang} documentation ..."
            )
        add_dependencies("${target}" "${target}-${lang}")
    endforeach()
    add_dependencies(doc "${target}")
endforeach()

