// Author : Frank Gasdorf (fgdrf)
// use the current page and switch over to the selected language (do not jump to selected language index page anymore)
// e.g. en/overview/overview.html -> select Catalan -> new page is ca/overview/overview.html

var getContext = function(url) {

	// search the 
    // substring to extract the language code (two chars, e.g. 'en', 'ca', etc)
    var context;
	
	var splittedURL = url.split("/");
	
	var currentLanguage;
	
	// search backwards
	for(i = splittedURL.length-1; i >=0 ; i--) {
		if (splittedURL[i].length === 2) {
			currentLanguage = "/" + splittedURL[i] + "/";
			break;
		}
	}

	if (!currentLanguage) {
		return;
	}
	var lastLangIndex = url.lastIndexOf(currentLanguage);
	return url.substr(lastLangIndex);
}

// returns a substring for the language from url
var getLanguageFormUrl = function(url) {
	var context = getContext(url);
	if (!context) {
		return;
	}
    return context.substr(1, 2);
}

// creates a location object from url string to work with pathname
var createHrefFromString = function(theStringURL) {
    var tmpLink = document.createElement('a');
    // the current context, independent from adhoc or live deployment
    tmpLink.href = theStringURL;
    return tmpLink;
}

// public accessable function to redirect from the main menu (see page.html)
// parameter is the new language, eg. 'en', 'de', 'ja', etc
var defaultRedirect = function(newLanguage) {
    redirectFromUrlToLang(window.location, newLanguage);
}

var redirectFromUrlToLang = function(url, lang) {
    var language;
    if (lang.length != 2) {
        language = "en";
    } else {
        language = lang.toLowerCase();
    }
    var pathName = url.pathname;
    var newPathName = getContext(pathName);
	
	if (!newPathName) {
		// do nothing
		return;
	}
	
	// the requested language is different to the current
    if (!(language === getLanguageFormUrl(pathName))) {
        var pathWithoutLanguage = newPathName.substr(3);
        var newContext = "/" + language + pathWithoutLanguage;
        newPathName = pathName.replace(newPathName, newContext);
    }

    var newPage = url.href.replace(pathName, newPathName);
    
    window.location.href = newPage;

}
