// Author : Frank Gasdorf (fgdrf)
// use the current page and switch over to the selected language (do not jump to selected language index page anymore)
// e.g. en/overview/overview.html -> select Catalan -> new page is ca/overview/overview.html

var adhocURL = "http://adhoc.osgeo.osuosl.org/livedvd/docs/en/index.html";
var liveURL = "http://live.osgeo.org/en/index.html";
var adhocContext = "/livedvd/docs";
var localContext = "/_build/html";

var getContext = function(url) {
    // substring to extract the language code (two chars, e.g. 'en', 'ca', etc)
    var context;

	// adhoc urls
    var index1 = url.indexOf(adhocContext);
    if (index1 >= 0) {
        context = url.substring(index1 + adhocContext.length);
    } else {
		// local file
        var i2 = url.indexOf(localContext);
        if (i2 >= 0) {
            context = url.substring(i2 + localContext.length);
        } else {
			// default at live.osgeo.org
            context = url;
        } 
    }

    return context;
}

// returns a substring for the language from url
var getLanguageFormUrl = function(url) {
    return getContext(url).substr(1, 2);
}

// creates a location object from url string to work with pathname
var createHrefFromString = function(theStringURL) {
    var tmpLink = document.createElement('a');
    // the current context, independent from adhoc or live deployment
    tmpLink.href = theStringURL;
    return tmpLink;
}

// just a test function
var testAdhocURL = function() {
    redirectFromUrlToLang(createHrefFromString(adhocURL), "zh");
    redirectFromUrlToLang(createHrefFromString(liveURL), "de");
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
    var newPathName;
    if (language === getLanguageFormUrl(pathName)) {
        newPathName = getContext(pathName);
    } else {
        var completeContext = getContext(pathName);
        var pathWithoutLanguage = completeContext.substr(3);
        var newContext = "/" + language + pathWithoutLanguage;
        newPathName = pathName.replace(completeContext, newContext);
    }

    var newPage = url.href.replace(pathName, newPathName);
    
    window.location.href = newPage;

}
