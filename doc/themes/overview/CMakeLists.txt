
MACRO(INSERT_INTO_MAP _KEY _VALUE)
    SET("LangMap_${_KEY}" "${_VALUE}")
ENDMACRO(INSERT_INTO_MAP)

INSERT_INTO_MAP("ca" "Català")
INSERT_INTO_MAP("de" "Deutsch")
INSERT_INTO_MAP("el" "Ελληνικά")
INSERT_INTO_MAP("es" "Español")
INSERT_INTO_MAP("fr" "Français")
INSERT_INTO_MAP("hu" "missing")
INSERT_INTO_MAP("id" "Bahasa Indonesia")
INSERT_INTO_MAP("it" "Italiano")
INSERT_INTO_MAP("ja" "日本語")
INSERT_INTO_MAP("ko" "한국어")
INSERT_INTO_MAP("pl" "Polski")
INSERT_INTO_MAP("pt" "Portugus")
INSERT_INTO_MAP("ru" "Русский")
INSERT_INTO_MAP("zh" "中文")



# -----------------------------------------
#  <a href="javascript:defaultRedirect('en')">English</a> 
# BUilding:
#  | <a href="javascript:defaultRedirect('en')">Language</a> 
#  
# Needed in page.html
# -----------------------------------------

set(OSGeoLiveDoc_LANGUAGES_BAR "")
foreach (lang ${OSGeoLiveDoc_LANGUAGES})
    if(DEFINED "LangMap_${lang}")
        set(OSGeoLiveDoc_LANGUAGES_BAR "${OSGeoLiveDoc_LANGUAGES_BAR} | <a href=\"javascript:defaultRedirect('${lang}')\">${LangMap_${lang}}</a>")
    endif()
endforeach()

message(STATUS "OSGeoLiveDoc_LANGUAGES_BAR = ${OSGeoLiveDoc_LANGUAGES_BAR}")

# -----------------------------------------
# <a href="{{ pathto('en/index') }}">English</a>
#
# BUilding:
# | <a href="{{ pathto('en/index') }}">Español</a>
#  
# Needed in page.html
# -----------------------------------------

set(OSGeoLiveDoc_LANGUAGES_BAR "")
foreach (lang ${OSGeoLiveDoc_LANGUAGES})
    if(DEFINED "LangMap_${lang}")
        set(OSGeoLiveDoc_LANGUAGES_BAR "${OSGeoLiveDoc_LANGUAGES_BAR} | <a href=\"{{  pathto('${lang}/index') }}\">${LangMap_${lang}}</a>")
    endif()
endforeach()


configure_file("theme.conf" "theme.conf")
configure_file("page.html"  "page.html")
add_subdirectory(static)
