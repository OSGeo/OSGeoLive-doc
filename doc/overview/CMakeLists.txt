

#---------------------------------------------
# Adding the languages directories
#---------------------------------------------

# over view only projects
foreach (f ${OSGeoLiveDoc_OVERVIEW})
    if (OSGeoLiveDoc_VERBOSE_DEBUG)
        message(STATUS "        Adding overview ${f}")
    endif()
    configure_file("${f}_overview.rst" "${f}_overview.rst")
endforeach()
