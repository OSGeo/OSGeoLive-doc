

set(LIST "abstract.txt"  "index.html"  "workshop_abstract.txt")

foreach (f ${LOCAL} )
    message(STATUS "        Adding file ${f}")
    if(EXISTS "${f}")
        configure_file("${f}" "${f}")
    else()
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../../en/presentation/${f}" "${f}")
    endif()
endforeach()



