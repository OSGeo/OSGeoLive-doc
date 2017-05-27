

set(LIST "abstract.txt"  "index.html"  "workshop_abstract.txt")

foreach (f ${LIST} )
    message(STATUS "        Adding file ${f}")
    configure_file("${f}" "${f}")
endforeach()


