

#---------------------------------------------
# Adding the documentation subdirectories & files
#---------------------------------------------

foreach (dir "osgeolive" ${OSGeoLiveDoc_PROJECTS_NAMES})
    file(COPY "${dir}" DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
    file(COPY "${dir}" DESTINATION
      "${CMAKE_BINARY_DIR}/presentation/revealjs/images/projects")
    if (OSGeoLiveDoc_DEBUG)
        message(STATUS "   Adding images directory ${dir}")
    endif()
endforeach()
