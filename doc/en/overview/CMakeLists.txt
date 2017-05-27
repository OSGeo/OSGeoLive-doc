

#---------------------------------------------
# Adding the languages directories
#---------------------------------------------

# over view only projects
foreach (f ${OSGeoLiveDoc_OVERVIEW} )
    message(STATUS "        Adding project ${f}")
    configure_file("${f}_overview.rst" "${f}_overview.rst")
endforeach()

set(LOCAL
    "toc.rst"
    "overview.rst")

foreach (f ${LOCAL} )
    message(STATUS "        Adding file ${f}")
    configure_file("${f}" "${f}")
endforeach()
