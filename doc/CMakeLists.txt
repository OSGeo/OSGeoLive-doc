

#---------------------
# Files
#---------------------
set(OSGeoLiveDoc_FILES
    "disclaimer.rst"
    "translators.rst"
    "osgeo_contact.rst"
    "contributors.rst"
    "index.rst"
    "contact.rst"
    "disclaimer.rst"
    "metrics.rst"
    "sponsors.rst"
    "welcome_message.txt"
    "copyright.rst"
    "download.rst"
    "mac_installers.rst"
    "presentation.rst"
    "sponsors_osgeo.rst"
    "win_installers.rst")


#---------------------
# Directories
#---------------------
set(OSGeoLiveDoc_SUBDIRS
    "WindowsInstallers"
    "MacInstallers"
    "presentation"
    "quickstart"
    "overview"
    "standards")



#---------------------------------------------
# Adding the languages directories
#---------------------------------------------

foreach (dir ${OSGeoLiveDoc_SUBDIRS})
    message(STATUS "   Adding directory ${dir}")
    add_subdirectory(${dir})
endforeach()

foreach (f ${OSGeoLiveDoc_FILES})
    message(STATUS "    Adding file ${f}")
    configure_file(${f} ${f})
endforeach()

configure_file("conf.py.in" "conf.py" @ONLY)

add_subdirectory(themes)
add_subdirectory(static)

file(COPY "images" DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")


set(SPHINX_DOCUMENTATION_DIR "${CMAKE_CURRENT_BINARY_DIR}")
set(SPHINX_BUILD_DIR "${CMAKE_CURRENT_BINARY_DIR}/_build")


# Internal variables.
option(LATEX_PAPER_SIZE
    "Set a4|letter (default=letter) paper size" "letter")

option(SPHINX_OPTS
    "Set Sphinx options (default are sphinx defaults)")

message(STATUS "SPHINX_OPTS=${SPHINX_OPTS}")

set(LATEX_PAPER_SIZE " -D latex_paper_size=${LATEX_PAPER_SIZE}")

add_custom_target(doc
    COMMENT "Building documentation with Sphinx")

foreach (target ${OSGeoLiveDoc_DOC_TARGETS})
    add_custom_target(${target} ALL
        COMMENT "Building documentation with Sphinx")

    foreach (lang ${OSGeoLiveDoc_ENGLISH} ${OSGeoLiveDoc_LANGUAGES})

        add_custom_target("${target}-${lang}" ALL
            COMMENT "Building ${DOC_TARGET}/${lang} documentation with Sphinx")

        add_custom_command(
            TARGET "${target}-${lang}" POST_BUILD
            COMMAND ${SPHINX_EXECUTABLE}

            -b ${target}
            -c "${CMAKE_CURRENT_BINARY_DIR}"
            -D language='${lang}'


            # the location of the documentation to be build
            "${CMAKE_CURRENT_BINARY_DIR}"

            #where the documentations is written
            "${CMAKE_CURRENT_BINARY_DIR}/${target}"
            COMMENT "Generating ${target}/${lang} documentation ...")

        add_dependencies("${target}" "${target}-${lang}")
    endforeach()
        add_dependencies(doc "${target}")
endforeach()


if (LOCALE)
    add_custom_target(locale ALL
        COMMENT "Building documentation with Sphinx")
    add_custom_command(
        TARGET locale POST_BUILD

        COMMAND ${SPHINX_EXECUTABLE}
        -b gettext
        -c "${CMAKE_CURRENT_BINARY_DIR}"

        # the location of the documentation to be build
        "${CMAKE_CURRENT_BINARY_DIR}"

        "${SPHINX_BUILD_DIR}/gettext/pot"

        COMMAND
        sphinx-intl update
        -p  "${SPHINX_BUILD_DIR}/gettext/pot"
        -d  "${SPHINX_BUILD_DIR}/gettext"
        --language=${SPHINXINTL_LANGUAGE}



        COMMENT "Generating pot files for ${OSGeoLiveDoc_LOCALE_LANG} ...")


    message(STATUS
        "*******************************
        after:

        make locale

        POST PROCESSING
        NOT AUTOMATICALLY DONE YET
        GO TO root/of/repo/locale
        And read README.md
        ********************************")

    add_dependencies(doc locale)
endif()
