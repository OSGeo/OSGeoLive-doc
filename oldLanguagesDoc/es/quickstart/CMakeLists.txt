
set (LOCAL "toc.rst" "make.bat")

#---------------------------------------------
# Adding the *_quickstarts
#---------------------------------------------

foreach (f ${OSGeoLiveDoc_PROJECTS} ${OSGeoLiveDoc_QUICKSTART})
    set(fn "${f}_quickstart.rst")
    if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/${fn}")
        message(STATUS "        Adding translation ${fn}")
        configure_file("${fn}" "${fn}")
    else()              
        message(STATUS "        Adding original ${fn}")
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../../en/quickstart/${fn}" "${fn}")
    endif()                             
endforeach()

foreach (f ${LOCAL} )
    message(STATUS "        Adding file ${f}")
    if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/${f}")
        configure_file("${f}" "${f}")
    else()
        message(STATUS "        Adding original ${f}")
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../../en/quickstart/${f}" "${f}")
    endif()
endforeach()



