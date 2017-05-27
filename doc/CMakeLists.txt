

#---------------------------------------------
# Adding the languages directories
#---------------------------------------------

foreach (l ${OSGeoLiveDoc_ENGLISH} ${OSGeoLiveDoc_LANGUAGES})
    message(STATUS "Adding Language= ${l}")
    add_subdirectory(${l})
endforeach()


# Always define the target




set(SPHINX_DOCUMENTATION_DIR "${CMAKE_CURRENT_BINARY_DIR}")
set(SPHINX_BUILD_DIR "${CMAKE_CURRENT_BINARY_DIR}/_build")
set(SPHINX_CACHE_DIR "${CMAKE_CURRENT_BINARY_DIR}/_doctrees")

file(COPY "images" DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
file(COPY "themes" DESTINATION "${SPHINX_BUILD_DIR}")
file(COPY "static" DESTINATION "${SPHINX_BUILD_DIR}")
configure_file("conf.py.in" "${SPHINX_BUILD_DIR}/conf.py" @ONLY)
#TODO index contents depends on configuration
configure_file("index.rst" "index.rst")

# Internal variables.
option(LATEX_PAPER_SIZE
    "Set a4|letter (default=letter) paper size" "letter")

option(SPHINX_OPTS
    "Set Sphinx options (default are sphinx defaults)"  "")

set(LATEX_PAPER_SIZE " -D latex_paper_size=${LATEX_PAPER_SIZE}")


foreach (target ${OSGeoLiveDoc_DOC_TARGETS})
    add_custom_target(${target} ALL
        DEPENDS
        ${OSGeoLiveDoc_INSTALLED_FILES}
        )
    foreach (lang ${OSGeoLiveDoc_ENGLISH} ${OSGeoLiveDoc_LANGUAGES})
        add_custom_command(
            TARGET ${target} POST_BUILD
            COMMAND ${SPHINX_EXECUTABLE}
            -b ${target} 
            -d "${SPHINX_CACHE_DIR}"

            # Where the conf.py is located
            -c "${SPHINX_BUILD_DIR}"

            # the location of the documentation to be build
            "${CMAKE_CURRENT_BINARY_DIR}"

            #where the documentations is written
            "${CMAKE_CURRENT_BINARY_DIR}/${target}"
            COMMENT "Generating ${target} documentation ...")

    endforeach()
endforeach()

