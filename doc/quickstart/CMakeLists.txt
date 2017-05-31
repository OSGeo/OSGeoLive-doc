
set (LOCAL
    "toc.rst"
    "make.bat")

#---------------------------------------------
# Adding the *_quickstarts
#---------------------------------------------

foreach (f ${OSGeoLiveDoc_QUICKSTART})
    if (OSGeoLiveDoc_VERBOSE_DEBUG)
        message(STATUS "        Adding project ${f}")
    endif()
    configure_file("${f}_quickstart.rst" "${f}_quickstart.rst")
endforeach()

foreach (f ${LOCAL})
    if (OSGeoLiveDoc_VERBOSE_DEBUG)
        message(STATUS "        Adding file ${f}")
    endif()
    configure_file("${f}" "${f}")
endforeach()

