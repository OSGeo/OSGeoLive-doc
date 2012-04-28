// Author : Frank Gasdorf (fgdrf)
// use the current page and switch over to the selected language (do not jump to selected language index page anymore)
// e.g. en/overview/overview.html -> select Catalan -> new page is ca/overview/overview.html

/**
 * the supported languages for osgeo-live DVD, 
 * update if an other translation is available
 */
var supported_languages= ["el", "es", "ca", "pl", "en", "de", "jp", "zh"];

/**
 * returns the context if its possible to extract a 2 char lenght language key
 * otherwise just returns an empty object
 * 
 * @param {url} - the current url
 */
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

/**
 * returns a substring for the language from url
 * 
 * @param {url} - the current url
 */
var getLanguageFormUrl = function(url) {
    var context = getContext(url);
    if (!context) {
        return;
    }
    return context.substr(1, 2);
}

/**
 * creates a location object from url string 
 * to work with pathname (<object>.pathname)
 * 
 * @param {theStringURL} - the url as string presentation
 */ 
var createHrefFromString = function(theStringURL) {
    var tmpLink = document.createElement('a');
    // the current context, independent from adhoc or live deployment
    tmpLink.href = theStringURL;
    return tmpLink;
}

/**
 * public accessable function to redirect from 
 * the main menu (see page.html)
 * usage : ...href="javascript:defaultRedirect('de')"
 * 
 * @param {newLanguage} - the new language to direct to 
 *                        eg. 'en', 'de', 'ja', etc
 */
var defaultRedirect = function(newLanguage) {
    redirectFromUrlToLang(window.location, newLanguage);
}

/**
 * internal function that redirects from url 
 * to the given language
 * 
 * @param {url} - the url to change for redirect
 * @param {lang} - the new language key, eg. 'en', 'de', 'ja', etc
 */
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

/**
 * redirect to the navigator language index page 
 * if its one of the supported. If users haven 
 * browser or environment settings for the prefered 
 * language thats not it the supported list, the fallback
 * language is used.
 * 
 * @param {fallback} - the fallback language string (should be 'en' for osgeolive)
 */
var redirectIndex = function(fallback) {
    var langCode = navigator.language || navigator.systemLanguage;
    var lang = langCode.toLowerCase().substr(0,2);

    if (true === isLanguageSupported(lang)) {
        relativeLangPath = lang + "/index.html";
    } else {
        relativeLangPath = fallback + "/index.html";
    }
    window.location = relativeLangPath;
}

/**
 * convenient method for redirectIndex 
 * with default fallback language 'en'
 */
var redirectToUserLanguage = function() {
    redirectIndex("en");
}

/**
 * simple function to check, whether it's one of the supported
 * languages, see supported_languages above
 * 
 * @return true if the language is supported, otherwise false
 * @param {lang} - language key to check, 
 *                 whether its supported by 
 *                 osgeo-live (as a translation 
 *                 or the origin language (en))
 */
var isLanguageSupported = function(lang) {

    for(var i=0; i<supported_languages.length; i++) {
        if (lang === supported_languages[i]) {
            return true;
        }
    }

    return false;
}
