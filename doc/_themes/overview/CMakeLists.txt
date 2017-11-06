

#TODO Fix file
message(STATUS "${CMAKE_CURRENT_SOURCE_DIR}: OSGeoLiveDoc_BUILD_LANGUAGES = ${OSGeoLiveDoc_BUILD_LANGUAGES}")
# -----------------------------------------
#  <a href="javascript:defaultRedirect('en')">English</a> 
# BUilding:
#  | <a href="javascript:defaultRedirect('XX')">Language</a> 
#  
# Needed in page.html
# -----------------------------------------

set(OSGeoLiveDoc_LANGUAGES_BAR "")
foreach (lang ${OSGeoLiveDoc_BUILD_LANGUAGES})
    if(DEFINED "LangMap_${lang}")
        if (NOT ${lang} MATCHES "en")
            set(OSGeoLiveDoc_LANGUAGES_BAR "${OSGeoLiveDoc_LANGUAGES_BAR} | ")
        endif()
        set(OSGeoLiveDoc_LANGUAGES_BAR "${OSGeoLiveDoc_LANGUAGES_BAR}  <a href=\"javascript:defaultRedirect('${lang}')\">${LangMap_${lang}}</a>")
    endif()
endforeach()


if(FALSE)
# -----------------------------------------
# <a href="{{ pathto('en/index') }}">English</a>
#
# BUilding:
# | <a href="{{ pathto('en/index') }}">Español</a>
#  
# Needed in page.html
# -----------------------------------------

#set(OSGeoLiveDoc_LANGUAGES_BAR "")
foreach (lang ${OSGeoLiveDoc_BUILD_LANGUAGES})
    if(DEFINED "LangMap_${lang}")
        if (NOT ${lang} MATCHES "en")
            # add a vertical bar:   en | lang1  | lang2
            set(OSGeoLiveDoc_LANGUAGES_BAR "${OSGeoLiveDoc_LANGUAGES_BAR} | ")
        endif()
        set(OSGeoLiveDoc_LANGUAGES_BAR "${OSGeoLiveDoc_LANGUAGES_BAR} <a href=\"{{  pathto('${lang}/index') }}\">${LangMap_${lang}}</a>")
    endif()
endforeach()
endif()

message(STATUS "${CMAKE_CURRENT_SOURCE_DIR}: OSGeoLiveDoc_LANGUAGES_BAR = ${OSGeoLiveDoc_LANGUAGES_BAR}")

configure_file("theme.conf" "theme.conf")
configure_file("page.html"  "page.html")
add_subdirectory(static)
