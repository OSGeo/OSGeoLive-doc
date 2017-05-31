

set(LIST "abstract.txt"  "index.html"  "workshop_abstract.txt")


foreach (f ${LOCAL} )
    if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/${f}")
        message(STATUS "        Adding translation ${f}")
        configure_file("${f}" "${f}")
    else()
        message(STATUS "        Adding original ${f}")
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../../en/presentation/${f}" "${f}")
    endif()
endforeach()

foreach (f ${LOCAL} )
    message(STATUS "        Adding file ${f}")
    if(EXISTS "${f}")
        configure_file("${f}" "${f}")
    else()
    endif()
endforeach()



