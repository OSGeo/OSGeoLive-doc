

#---------------------------------------------
# Overview
#---------------------------------------------

foreach (f ${OSGeoLiveDoc_PROJECTS} ${OSGeoLiveDoc_OVERVIEW} )
    set(fn "${f}_overview.rst")
    if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/${fn}")
        message(STATUS "        Adding translation ${fn}")
        configure_file("${fn}" "${fn}")
    else() 
        message(STATUS "        Adding original ${fn}")
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../../en/overview/${fn}" "${fn}")
    endif()                             
endforeach()


set(LOCAL
    "toc.rst"
    "overview.rst")

foreach (f ${LOCAL} )
    if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/${f}")
        message(STATUS "        Adding translation ${f}")
        configure_file("${f}" "${f}")
    else()
        message(STATUS "        Adding original ${f}")
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../../en/overview/${f}" "${f}")
    endif()
endforeach()

