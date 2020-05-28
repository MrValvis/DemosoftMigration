function CDT() {
    Copyright();

}



function Copyright() {
    var VersionNo = "1.0";
    var Copyrights;
    var CurrentYear = new Date().getFullYear()

    if (CurrentYear <= 2019) {
        Copyrights = `Copyrights © 2020 DemoSoft.Ltd Version ${VersionNo}`;
    }
    else {
        Copyrights = `Copyrights © 2020-${CurrentYear} DemoSoft.Ltd Version ${VersionNo}`;
    }
    document.getElementById("Copyrights").id = Copyrights;
}


function ChangeLanguage() {
    Language = Language == "English" ? "Greek" : "English";
}

function PrivacyPolicy() {
    if (Language == "English") {
        alert();
    }
    else { alert(); }
}

function TermsOfService() {
    if (Language == "English") {
        alert();
    }
    else { alert(); }
}

function test() {
    alert("working");
}