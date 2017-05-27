

foreach (f ${OSGeoLiveDoc_STANDARDS} )
    message(STATUS "        Adding file ${f}_overview.rst")
    configure_file("${f}_overview.rst" "${f}_overview.rst")
endforeach()

SET(LOCAL "make.bat"  "standards.rst" "toc.rst")

foreach (f ${LOCAL} )
    message(STATUS "        Adding file ${f}")
    configure_file("${f}" "${f}")
endforeach()
