
set (LOCAL "toc.rst" "make.bat")

#---------------------------------------------
# Adding the *_quickstarts
#---------------------------------------------

foreach (f ${OSGeoLiveDoc_PROJECTS} ${OSGeoLiveDoc_QUICKSTART})
    message(STATUS "        Adding project ${f}")
    configure_file("${f}_quickstart.rst" "${f}_quickstart.rst")
endforeach()

foreach (f ${LOCAL})
    message(STATUS "        Adding file ${f}")
    configure_file("${f}" "${f}")
endforeach()

