

#---------------------------------------------
# Adding the languages directories
#---------------------------------------------

foreach (f ${OSGeoLiveDoc_FILES} )
    message(STATUS "    Adding file ${f}")
    configure_file(${f} ${f})
endforeach()

foreach (subdir ${OSGeoLiveDoc_SUBDIRS} )
    message(STATUS "    Adding subdirectory ${subdir}")
    add_subdirectory(${subdir})
endforeach()

