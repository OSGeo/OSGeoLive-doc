set(LIST
  "abstract.txt"
  "start_presentation.txt"
  "middle_presentation.txt"
  "end_presentation.txt"
  "workshop_abstract.txt"
  )

foreach (f ${LIST} )
  if (OSGeoLiveDoc_VERBOSE_DEBUG)
    message(STATUS "        Adding file ${f}")
  endif()
  configure_file("${f}" "${f}")
endforeach()

#---------------------------------------------
# Adding the sphinx subdirectories and files
#---------------------------------------------
configure_file("conf.py" "revealjs/conf.py" @ONLY)

#---------------------------------------------
# Adding the scripts and executing
#---------------------------------------------

add_subdirectory(scripts)
add_custom_command(
  OUTPUT
  "${CMAKE_CURRENT_BINARY_DIR}/revealjs/presentation.rst"

  COMMAND ${PERL_EXECUTABLE} ${CMAKE_CURRENT_BINARY_DIR}/scripts/build_presentation.pl

  DEPENDS
  ${CMAKE_CURRENT_BINARY_DIR}/start_presentation.txt
  ${CMAKE_CURRENT_BINARY_DIR}/middle_presentation.txt
  ${CMAKE_CURRENT_BINARY_DIR}/end_presentation.txt
  ${CMAKE_CURRENT_BINARY_DIR}/scripts/build_presentation.pl
  ${CMAKE_SOURCE_DIR}/projects_info.csv
  )




if (LOCALE)
  add_custom_target(p-locale
    COMMAND ${SPHINX_EXECUTABLE}

    -b gettext

    # the location of the documentation to be build
    "${CMAKE_CURRENT_BINARY_DIR}/revealjs"
    "${CMAKE_SOURCE_DIR}/locale/pot"

    COMMAND sphinx-intl update
    -d ${CMAKE_SOURCE_DIR}/locale -l en >> locale_changes.txt

    COMMAND sphinx-intl update-txconfig-resources
    --locale-dir ${CMAKE_SOURCE_DIR}/locale
    --pot-dir ${CMAKE_SOURCE_DIR}/locale/pot
    --transifex-project-name osgeolive > /dev/null


    DEPENDS revealjs/presentation.rst

    COMMENT "Generating POT & PO files ..."
    )
  add_dependencies(locale p-locale)
  return()
endif()


add_custom_target(presentation ALL
  COMMENT "Building presentation with Sphinx")


message(STATUS "CMAKE_CURRENT_BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR}")

# Presentation is only revealjs
foreach (target ${OSGeoLiveDoc_DOC_TARGETS})
  foreach (lang ${OSGeoLiveDoc_BUILD_LANGUAGES})
    add_custom_target(
      "presentation-${lang}"
      COMMAND ${SPHINX_EXECUTABLE}

      -M revealjs
      #-c "${CMAKE_CURRENT_BINARY_DIR}"
      -Dlanguage='${lang}'

      # the location of the presentation to be build
      "."

      # where the presentation is written
      "${SPHINX_BUILD_DIR}/${target}/${lang}"

      DEPENDS revealjs/presentation.rst

      COMMENT "Generating presentation/${lang} documentation ..."
      )
    add_dependencies("presentation" "presentation-${lang}")
  endforeach()
endforeach()
add_dependencies(doc presentation)
