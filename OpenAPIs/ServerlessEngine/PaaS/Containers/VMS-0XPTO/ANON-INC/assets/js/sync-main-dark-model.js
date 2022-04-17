var SettingsOptions = { version: "dark-models"};

function getUrlParams(dParam) {
    var dPageURL = window.location.search.substring(1),
        dURLVariables = dPageURL.split('&'),
        dParameterName,
        i;
    for (i = 0; i < dURLVariables.length; i++) {
        dParameterName = dURLVariables[i].split('=');
        if (dParameterName[0] === dParam) {
            return dParameterName[1] === undefined ? true : decodeURIComponent(dParameterName[1]);
        }
    }
}

/* Cookies Function */
function setCookie(cname, cvalue, exhours) {
    var d = new Date();
    var minutes = 1000 * 60;
    var hours = minutes * 60;
    var days = hours * 24;
    /* d.setTime(d.getTime() + (30*60*1000)); 30 Minutes */
    d.setTime(d.getTime() + days); /* 1days */
    var expires = "expires=" + d.toString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function deleteCookie(cname) {
    var d = new Date();
    d.setTime(d.getTime() + (1)); // 1/1000 second
    var expires = "expires=" + d.toString();
    //document.cookie = cname + "=1;" + expires + ";path=/";
    document.cookie = cname + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT" + ";path=/";

}

function deleteAllCookie(reload = true) {
    jQuery.each(themeOptionArr, function (optionKey, optionValue) {
        deleteCookie(optionKey);
    });
    if (reload) {
        location.reload();
    }
}

(function ($) {
    "use strict"
    const body = $('body');
    const version = "dark-models";
    body.attr('sync-transformers-model-version', version);
    setCookie('version', 1);
})(jQuery);