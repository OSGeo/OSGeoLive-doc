

#---------------------
# Files
#---------------------
set(OSGeoLiveDoc_IMG_FILES
    )


#---------------------
# Directories
#---------------------
set(OSGeoLiveDoc_IMG_SUBDIRS
    "download_buttons"
    "flagicons"
    "logos"
    "presentation"
    "stars"
    "osgeolive-logo"
    )



#---------------------------------------------
# Adding the documentation subdirectories & files
#---------------------------------------------

foreach (dir ${OSGeoLiveDoc_IMG_SUBDIRS})
    file(COPY "${dir}" DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
    file(COPY "${dir}" DESTINATION "${CMAKE_BINARY_DIR}/presentation/revealjs/images")
    if (OSGeoLiveDoc_DEBUG)
        message(STATUS "   Adding images directory ${dir}")
    endif()
endforeach()

foreach (f ${OSGeoLiveDoc_IMG_FILES})
    if (OSGeoLiveDoc_VERBOSE_DEBUG)
        message(STATUS "    Adding file ${f}")
    endif()
    FILE(COPY ${f} DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
endforeach()


add_subdirectory(projects)
