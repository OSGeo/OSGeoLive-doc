

foreach (f ${OSGeoLiveDoc_STANDARDS} )
    set(fn "${f}_overview.rst")
    if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/${fn}")
        message(STATUS "        Adding translation ${fn}")
        configure_file("${fn}" "${fn}")
    else()
        message(STATUS "        Adding original ${fn}")
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../../en/standards/${fn}" "${fn}")
    endif()
endforeach()


SET(LOCAL "make.bat"  "standards.rst" "toc.rst")

foreach (f ${LOCAL} )
    if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/${f}")
        message(STATUS "        Adding translation ${f}")
        configure_file("${f}" "${f}")
    else()
        message(STATUS "        Adding original ${f}")
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../../en/standards/${f}" "${f}")
    endif()
endforeach()

