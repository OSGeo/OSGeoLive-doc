
SET(LOCAL
    #"make.bat"
    "standards.rst"
    "toc.rst")

foreach (f ${OSGeoLiveDoc_STANDARDS} )
    if (OSGeoLiveDoc_VERBOSE_DEBUG)
        message(STATUS "        Adding file ${f}_overview.rst")
    endif()
    configure_file("${f}_overview.rst" "${f}_overview.rst")
endforeach()


foreach (f ${LOCAL} )
    if (OSGeoLiveDoc_VERBOSE_DEBUG)
        message(STATUS "        Adding file ${f}")
    endif()
    configure_file("${f}" "${f}")
endforeach()
