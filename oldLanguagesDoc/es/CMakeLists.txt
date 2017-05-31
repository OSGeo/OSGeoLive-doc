

#---------------------------------------------
# Adding the languages directories
#---------------------------------------------

foreach (f ${OSGeoLiveDoc_FILES} )
    message(STATUS "    Adding file ${f}")
    if(EXISTS "${f}")
        configure_file(${f} ${f})
    else()
        configure_file("${CMAKE_CURRENT_SOURCE_DIR}/../en/${f}" "${f}")
    endif()
endforeach()

foreach (subdir ${OSGeoLiveDoc_SUBDIRS} )
    message(STATUS "    Adding subdirectory ${subdir}")
    add_subdirectory(${subdir})
endforeach()

