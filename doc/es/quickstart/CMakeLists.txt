
set (LOCAL "toc.rst" "make.bat")

#---------------------------------------------
# Adding the *_quickstarts
#---------------------------------------------

foreach (f ${OSGeoLiveDoc_PROJECTS} ${OSGeoLiveDoc_QUICKSTART})
    set(fn "${f}_quickstart.rst")
    message(STATUS "        Adding file ${fn}")
    if(EXISTS "${fn}")
        configure_file("${fn}" "${fn}")
    else()              
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../../en/quickstart/${fn}" "${fn}")
    endif()                             
endforeach()

foreach (f ${LOCAL} )
    message(STATUS "        Adding file ${f}")
    if(EXISTS "${f}")
        configure_file("${f}" "${f}")
    else()
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../../en/quickstart/${f}" "${f}")
    endif()
endforeach()



