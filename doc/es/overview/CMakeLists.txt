

#---------------------------------------------
# Overview
#---------------------------------------------

foreach (f ${OSGeoLiveDoc_PROJECTS} ${OSGeoLiveDoc_OVERVIEW} )
    set(fn "${f}_overview.rst")
    message(STATUS "        Adding file ${fn}")
    if(EXISTS "${fn}")
        configure_file("${fn}" "${fn}")
    else()              
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../../en/overview/${fn}" "${fn}")
    endif()                             
endforeach()


set(LOCAL
    "toc.rst"
    "overview.rst")

foreach (f ${LOCAL} )
    message(STATUS "        Adding file ${f}")
    if(EXISTS "${f}")
        configure_file("${f}" "${f}")
    else()
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../../en/overview/${f}" "${f}")
    endif()
endforeach()

