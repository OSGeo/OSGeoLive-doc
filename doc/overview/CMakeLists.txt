

#---------------------------------------------
# Adding the languages directories
#---------------------------------------------

# over view only projects
foreach (f ${OSGeoLiveDoc_OVERVIEW})
    if (OSGeoLiveDoc_VERBOSE_DEBUG)
        message(STATUS "        Adding overview ${f}")
    endif()
    configure_file("${f}_overview.rst" "${f}_overview.rst")
endforeach()

set(LOCAL
    "toc.rst"
    #"overview.rst"
    )

foreach (f ${LOCAL} )
    if (OSGeoLiveDoc_VERBOSE_DEBUG)
        message(STATUS "        Adding file ${f}")
    endif()
    configure_file("${f}" "${f}")
endforeach()

if (FALSE)
configure_file(build_overview.pl build_overview.pl @ONLY)

#TODO find perl
add_custom_command(
    OUTPUT overview.rst
    COMMAND perl ./build_overview.pl
    #COMMAND ${PERL_EXECUTABLE} ./build_overview.pl
    DEPENDS 
    ./build_overview.pl
    ${CMAKE_SOURCE_DIR}/projects_info.csv
    )

add_custom_target(overview ALL
    DEPENDS overview.rst
    )
endif()

