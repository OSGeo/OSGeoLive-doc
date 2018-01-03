

set(LIST
    "abstract.txt"
    "index.html"
    "start_presentation.txt"
    "workshop_abstract.txt")

foreach (f ${LIST} )
    if (OSGeoLiveDoc_VERBOSE_DEBUG)
        message(STATUS "        Adding file ${f}")
    endif()
    configure_file("${f}" "${f}")
endforeach()

add_subdirectory(scripts)

