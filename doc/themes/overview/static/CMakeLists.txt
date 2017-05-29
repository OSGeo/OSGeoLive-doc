
#---------------------------------------------
# needed in osgeolive.js
#---------------------------------------------

set(OSGeoLiveDoc_INSTALLED_LANGUAGES ${OSGeoLiveDoc_ENGLISH})
foreach (lang ${OSGeoLiveDoc_LANGUAGES})
    set(OSGeoLiveDoc_INSTALLED_LANGUAGES "${OSGeoLiveDoc_INSTALLED_LANGUAGES}, ${lang}")
endforeach()

message(STATUS "OSGeoLiveDoc_INSTALLED_LANGUAGES = ${OSGeoLiveDoc_INSTALLED_LANGUAGES}")



add_subdirectory(img)
configure_file("osgeolive.js" "osgeolive.js")
configure_file("language_redirection.js" "language_redirection.js")
configure_file("overview.css"  "overview.css")
configure_file("sphinxdoc.css" "sphinxdoc.css")
