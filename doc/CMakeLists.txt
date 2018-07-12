

#---------------------
# Files
#---------------------
set(OSGeoLiveDoc_FILES
    #"disclaimer.rst"
    "osgeo_contact.rst"
    "index.rst"
    "contact.rst"
    "sponsors.rst"
    "welcome_message.txt"
    "copyright.rst"
    "download.rst"
    "presentation.rst"
    "sponsors_osgeo.rst"
    "prior_applications.rst"
    )


#---------------------
# Directories
#---------------------
set(OSGeoLiveDoc_SUBDIRS
    "quickstart"
    "overview"
    )



#---------------------------------------------
# Adding the documentation subdirectories & files
#---------------------------------------------

foreach (dir ${OSGeoLiveDoc_SUBDIRS})
    if (OSGeoLiveDoc_DEBUG)
        message(STATUS "   Adding directory ${dir}")
    endif()
    add_subdirectory(${dir})
endforeach()

foreach (f ${OSGeoLiveDoc_FILES})
    if (OSGeoLiveDoc_VERBOSE_DEBUG)
        message(STATUS "    Adding file ${f}")
    endif()
    configure_file(${f} ${f})
endforeach()

add_subdirectory(images)

#---------------------------------------------
# Adding the scripts and executing
#---------------------------------------------

add_subdirectory(scripts)
add_custom_command(
    OUTPUT "${CMAKE_CURRENT_BINARY_DIR}/overview/overview.rst"
        "${CMAKE_CURRENT_BINARY_DIR}/metrics.rst"

    COMMAND ${PERL_EXECUTABLE} ${CMAKE_CURRENT_BINARY_DIR}/scripts/build_overview.pl
    COMMAND ${PERL_EXECUTABLE} ${CMAKE_CURRENT_BINARY_DIR}/scripts/build_metrics.pl

    DEPENDS 
    ${CMAKE_CURRENT_BINARY_DIR}/scripts/build_overview.pl
    ${CMAKE_CURRENT_BINARY_DIR}/scripts/build_metrics.pl
    ${CMAKE_SOURCE_DIR}/projects_info.csv
    )


#---------------------------------------------
# Adding the sphinx subdirectories and files
#---------------------------------------------
configure_file("conf.py" "conf.py" @ONLY)
add_subdirectory(_themes)

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

         # the location of the documentation to be build
        "${CMAKE_CURRENT_BINARY_DIR}" 
        "${CMAKE_SOURCE_DIR}/locale/pot" 

        COMMAND sphinx-intl update -d ${CMAKE_SOURCE_DIR}/locale -l en

        #COMMAND sphinx-intl update-txconfig-resources --locale-dir ${CMAKE_SOURCE_DIR}/locale --pot-dir ${CMAKE_SOURCE_DIR}/locale/pot --transifex-project-name osgeolive


        DEPENDS overview/overview.rst metrics.rst

        COMMENT "Generating POT & PO files ..."
        )
    return()
endif()


add_custom_target(doc
    COMMENT "Building documentation with Sphinx")

foreach (target ${OSGeoLiveDoc_DOC_TARGETS})
    add_custom_target(${target} ALL
        COMMENT "Building documentation with Sphinx")

    configure_file("forward.html" "${SPHINX_BUILD_DIR}/${target}/index.html")

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

            DEPENDS overview/overview.rst metrics.rst

            COMMENT "Generating ${target}/${lang} documentation ..."
            )
        add_dependencies("${target}" "${target}-${lang}")
    endforeach()
    add_dependencies(doc "${target}")
endforeach()

add_subdirectory(presentation)
