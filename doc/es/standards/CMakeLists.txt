

foreach (f ${OSGeoLiveDoc_STANDARDS} )
    set(fn "${f}_overview.rst")
    message(STATUS "        Adding file ${fn}")
    if(EXISTS "${fn}")
        configure_file("${fn}" "${fn}")
    else()
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../../en/standards/${fn}" "${fn}")
    endif()

endforeach()

SET(LOCAL "make.bat"  "standards.rst" "toc.rst")

foreach (f ${LOCAL} )
    message(STATUS "        Adding file ${f}")
    if(EXISTS "${f}")
        configure_file("${f}" "${f}")
    else()
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../../en/standards/${f}" "${f}")
    endif()
endforeach()
