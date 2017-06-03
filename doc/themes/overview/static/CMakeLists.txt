
#---------------------------------------------
# needed in osgeolive.js
#---------------------------------------------

foreach (lang ${OSGeoLiveDoc_BUILD_LANGUAGES})
    if (NOT ${lang} MATCHES "en")
        set(OSGeoLiveDoc_INSTALLED_LANGUAGES "${OSGeoLiveDoc_INSTALLED_LANGUAGES},")
    endif()

    set(OSGeoLiveDoc_INSTALLED_LANGUAGES "${OSGeoLiveDoc_INSTALLED_LANGUAGES} ${lang}")
endforeach()

message(STATUS "${CMAKE_CURRENT_SOURCE_DIR}: OSGeoLiveDoc_INSTALLED_LANGUAGES = ${OSGeoLiveDoc_INSTALLED_LANGUAGES}")



add_subdirectory(img)
configure_file("osgeolive.js" "osgeolive.js")
configure_file("overview.css"  "overview.css")
configure_file("sphinxdoc.css" "sphinxdoc.css")
