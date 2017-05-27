

#---------------------------------------------
# Adding the languages directories
#---------------------------------------------

foreach (l ${OSGeoLiveDoc_LANGUAGES} )
    message(STATUS "Adding Language= ${l}")
    add_subdirectory(${l})
endforeach()

configure_file("conf.py.in" "conf.py" @ONLY)
