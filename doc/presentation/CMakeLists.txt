

set(LIST
    "abstract.txt"
    "start_presentation.txt"
    "workshop_abstract.txt"
    )

foreach (f ${LIST} )
    if (OSGeoLiveDoc_VERBOSE_DEBUG)
        message(STATUS "        Adding file ${f}")
    endif()
    configure_file("${f}" "${f}")
endforeach()

#---------------------------------------------
# Adding the scripts and executing
#---------------------------------------------

add_subdirectory(scripts)
add_custom_command(
    OUTPUT
    "${CMAKE_CURRENT_BINARY_DIR}/presentation.rst"

    COMMAND ${PERL_EXECUTABLE} ${CMAKE_CURRENT_BINARY_DIR}/scripts/build_presentation.pl

    DEPENDS 
    ${CMAKE_CURRENT_BINARY_DIR}/scripts/build_presentation.pl
    ${CMAKE_SOURCE_DIR}/projects_info.csv
    )


#---------------------------------------------
# Adding the sphinx subdirectories and files
#---------------------------------------------
configure_file("conf.py" "conf.py" @ONLY)

set(SPHINX_DOCUMENTATION_DIR "${CMAKE_CURRENT_BINARY_DIR}")
#set(SPHINX_BUILD_DIR "${CMAKE_CURRENT_BINARY_DIR}/../_build")


# Internal variables.
#option(LATEX_PAPER_SIZE
#    "Set a4|letter (default=letter) paper size" "letter")

#option(SPHINX_OPTS
#    "Set Sphinx options (default are sphinx defaults)")

#message(STATUS "SPHINX_OPTS=${SPHINX_OPTS}")

#set(LATEX_PAPER_SIZE " -D latex_paper_size=${LATEX_PAPER_SIZE}")



if (LOCALE)
    add_custom_target(p-locale
        COMMAND ${SPHINX_EXECUTABLE} 

        -b gettext

        # the location of the documentation to be build
        "${CMAKE_CURRENT_BINARY_DIR}" 
        "${CMAKE_SOURCE_DIR}/locale/pot" 

        COMMAND sphinx-intl update -d ${CMAKE_SOURCE_DIR}/locale -l en

        COMMAND sphinx-intl update-txconfig-resources --locale-dir ${CMAKE_SOURCE_DIR}/locale --pot-dir ${CMAKE_SOURCE_DIR}/locale/pot --transifex-project-name osgeolive


        DEPENDS presentation.rst

        COMMENT "Generating POT & PO files ..."
        )
endif()


add_custom_target(presentation
    COMMENT "Building presentation with Sphinx")

foreach (target ${OSGeoLiveDoc_DOC_TARGETS})
    add_custom_target(p-${target} ALL
        COMMENT "Building presentation with Sphinx")


    foreach (lang ${OSGeoLiveDoc_BUILD_LANGUAGES})
        add_custom_target(
            "p-${target}-${lang}" 
            COMMAND ${SPHINX_EXECUTABLE}

            -b ${target}
            -c "${CMAKE_CURRENT_BINARY_DIR}"
            -D language='${lang}'

            # the location of the documentation to be build
            "${CMAKE_CURRENT_BINARY_DIR}"

            #where the documentations is written
            "${SPHINX_BUILD_DIR}/${target}/${lang}"

            DEPENDS presentation.rst

            COMMENT "Generating p-${target}/${lang} documentation ..."
            )
        add_dependencies("p-${target}" "p-${target}-${lang}")
    endforeach()
    add_dependencies(doc "p-${target}")
endforeach()

