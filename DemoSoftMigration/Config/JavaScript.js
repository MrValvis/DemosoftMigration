//function CDT() {
//    var CurrentLanguage = document.getElementById("LanguageHiddenField").value;
//    //Copyright();
//    LoadLanguage(CurrentLanguage);
//}
//function Copyright() {
//    var VersionNo = "1.0";
//    var Copyrights;
//    var CurrentYear = new Date().getFullYear();

//    if (CurrentYear <= 2019) {
//        Copyrights = `Copyrights © 2020 DemoSoft.Ltd Version ${VersionNo}`;
//    }
//    else {
//        Copyrights = `Copyrights © 2020-${CurrentYear} DemoSoft.Ltd Version ${VersionNo}`;
//    }
//    document.getElementById("Copyrights").id = Copyrights;
//}

////#region Language 
//function ChangeLanguage(ChangeLanguageTo) {
//    var CurrentLanguage = document.getElementById("LanguageHiddenField").value;
//    var Language;

//    if (ChangeLanguageTo === 'EN') {
//        document.getElementById("LanguageHiddenField").value = 'English';
//        Language = 'English';
//    }
//    else {
//        document.getElementById("LanguageHiddenField").value = 'Greek';
//        Language = 'Greek';
//    }
//    LoadLanguage(Language);
//}

//function LoadLanguage(CurrentLanguage) {

//    var ElementsInEnglish = document.getElementsByClassName('English');
//    var ElementsInGreek = document.getElementsByClassName('Greek');
//    var i = 0;

//    if (CurrentLanguage === "English") {

//        for (i = 0; i < ElementsInEnglish.length; i++) {
//            document.getElementsByClassName('Greek')[i].style.display = 'none';
//        }
//        for (i = 0; i < ElementsInGreek.length; i++) {
//            document.getElementsByClassName('English')[i].style.display = 'block';
//        }
//        document.getElementById('LanguageHiddenField').value = 'English';
//    }
//    else {

//        for (i = 0; i < ElementsInEnglish.length; i++) {
//            document.getElementsByClassName('Greek')[i].style.display = 'block';
//        }
//        for (i = 0; i < ElementsInGreek.length; i++) {
//            document.getElementsByClassName('English')[i].style.display = 'none';
//        }
//        document.getElementById('LanguageHiddenField').value = 'Greek';
//    }
//}
////#endregion Language

////#region Redirecting
//function CPH() {
//    window.location.href = "WebForm.aspx";
//}

//function CPTerms() {
//    document.getElementById("RedirectToTerms").click();
//    __doPostBack('RedirectToTerms');
//}

//function CPPolicy() {
//    document.getElementById("RedirectToPrivacy").click();
//    __doPostBack('RedirectToPrivacy');
//}
////#endRegion Redirecting

//function DatagridHelp(CurrentLanguage) {
//    if (CurrentLanguage === "English") {
//        alert("Εικονίδια κοινωνικών δικτύων : \n" +
//            "1)facebook\n" +
//            "2)Linkedin\n" +
//            "3)Youtube\n\n" +

//            "Πλήκτρο αλλαγής γλώσσας Greek/Αγγλικά : πραγματοποιεί αλλαγή μεταξύ των δύο γλωσσών.\n" +

//            "Μενού :Λειτουργίες της βάσης δεδομένων \n" +
//            "1)Προσθήκη : Σας επιτρέπει την καταχώρηση νέας παραγγελίας.\n" +
//            "2)Τροποποίηση : Σας επιτρέπει την τροποποίηση του επιλεγμένου στοιχείου παραγγελίας.\n" +
//            "3)Επίβλεψη  : Σας επιτρέπει να δείτε αναλυτικά τα στοιχεία της παραγγελίας" +
//            "4)Επαναφόρτωση : Πραγματοποιεί επαναφόρτωση των δεδομένων του πίνακα.\n" +
//            "5)Ιστορικό : Εμφανίζει τις τροποποιήσεις που έχουν γίνει επί της επιλεγμένης εγγραφής.\n" +
//            "6)Export: Επιτρέπει την εξαγωγή των δεδομένων της τρέχουσας σελίδας στον επιλεγμένο τύπο.\n\n" +

//            "Μενού\n" +
//            "Βοήθεια : Βρίσκεστέ εδώ!\n" +

//            "Πεδίο εμφάνισης δεδομένων\n" +
//            "Στον πίνακα μπορείτε να επιλέξετε οποιαδήποτε γραμμή θέλετε και έπειτα να πατήσετε στην αντίστοιχη λειτουργία (τροποποίηση ,επίβλεψη , διαγραφή ή ιστορικό).\n" +
//            "Μπορείτε να πραγματοποιήσετε φιλτράρισμα των δεδομένων κάνοντας κλικ στην ονομασία της στήλης και να επιλέξετε τα επιθυμητά κριτήρια, Επίσης μπορείτε να σύρεται μία κολόνα στο πλαίσιο που αναγράφετε και να εμφανιστεί ατομικά η συγκεκριμένη στήλη.\n\n" +

//            "Σελιδοποίηση\n" +
//            "Εδώ μπορείτε να επιλέξετε τον αριθμό των εμφανιζόμενων εγγραφών καθώς και να μετακινηθείτε εμπρός και πίσω μεταξύ των σελίδων.\n\n" +
//            "Πολιτική απορρήτου, όροι και προυποθέσεις\n" +
//            " Aυτές οι δύο λειτουργίες σας ενημερώνουν σχετικά με τα αντίστοιχα περιεχόμενα χρήσης του προγράμματος καθώς και των υπηρεσιών μας");
//    }
//    else {
//        alert("Social icon buttons : \n" +
//            "1)facebook\n" +
//            "2)Linkedin\n" +
//            "3)Youtube\n\n" +

//            "Change language button Greek/Αγγλικά : Changes the language to the desired.\n" +

//            "Menu :Database operations \n" +
//            "1)Add : Allows you to add new entry/order .\n" +
//            "2)Modify : Allow the modification of the selected entry.\n" +
//            "3)Inspect  : Allow the inspect of the selected entry" +
//            "4)Reload : Reloads all entries of database.\n" +
//            "5)History : Show all the modifications done for the selected entry.\n" +
//            "6)Export: Exprots current page data to the selected format.\n\n" +

//            "Menu\n" +
//            "Help : You are currently here!\n\n" +

//            "Data grid\n" +
//            "In the data grid you can select any row and then click any operation (modify,inspect,delete or histroy.\n " +
//            "You can filter the data by clicking in the column header and by selecting the desired cirteria, also you can drag a column header in the panel and it will allows you to group the data.\n\n" +

//            "Paging\n" +
//            "Here you can change the displayed items/entries being showed, also you can go back and forth between pages.\n\n" +

//            "Privacy policy, terms and conditions\n" +
//            "These two buttons are informing you about the corresponding contents of program usage contents and as well as our services");
//    }
//}

//function DataHelp(CurrentLanguage) {
//    if (CurrentLanguage === "English") {
//        alert("English text help");
//    }
//    else {
//        alert("Βοηθητικό κείμενο στα ελληνικά");
//    }
//}


//////#region ActionData script
////function CDTActionForm() {
////    var CurrentLanguage = document.getElementById("LanguageHiddenField").value;
////    //Copyright();
////    LoadLanguageActionPage(CurrentLanguage);
////}

////function ChangeLanguageActionPage(ChangeLanguageTo) {
////    var CurrentLanguage = document.getElementById("LanguageHiddenField").value;
////    var Language;

////    if (ChangeLanguageTo === 'EN') {
////        document.getElementById("LanguageHiddenField").value = 'English';
////        Language = 'English';
////    }
////    else {
////        document.getElementById("LanguageHiddenField").value = 'Greek';
////        Language = 'Greek';
////    }
////    document.getElementById("HiddenButtonLanguageChange").click();
////    __doPostBack('HiddenButtonLanguageChange');
////    LoadLanguageActionPage(Language);
////}

////function LoadLanguageActionPage(CurrentLanguage) {

////    var ElementsInEnglish = document.getElementsByClassName('English');
////    var ElementsInGreek = document.getElementsByClassName('Greek');
////    var i = 0;

////    if (CurrentLanguage === "English") {

////        for (i = 0; i < ElementsInEnglish.length; i++) {
////            document.getElementsByClassName('Greek')[i].style.display = 'none';
////        }
////        for (i = 0; i < ElementsInGreek.length; i++) {
////            document.getElementsByClassName('English')[i].style.display = 'block';
////        }
////        document.getElementById('LanguageHiddenField').value = 'English';
////    }
////    else {

////        for (i = 0; i < ElementsInEnglish.length; i++) {
////            document.getElementsByClassName('Greek')[i].style.display = 'block';
////        }
////        for (i = 0; i < ElementsInGreek.length; i++) {
////            document.getElementsByClassName('English')[i].style.display = 'none';
////        } 

////        //document.getElementById('<%=OrderId.ClientID %>').InnerHTML = 'Κωδικός παραγγελίας';
////        //document.getElementById('<%=OrderIdTextbox.ClientID%>').InnerHTML = 'Fuck YOU TOO!';
////        //document.getElementById('<%=CustomerId.ClientID%>').InnerHTML = 'Κωδικός πελάτη';
////        //document.getElementById('<%=EmployeeId.ClientID%>').InnerHTML = 'Κωδικός υπαλλήλου';
////        //document.getElementById('<%=OrderDate.ClientID%>').InnerHTML = 'Ημ/νια παραγγελίας';
////        //document.getElementById('<%=RequiredDate.ClientID%>').InnerHTML = 'Ημ/νια παραλαβής';
////        //document.getElementById('<%=ShippedDate.ClientID%>').InnerHTML = 'Ημ/νια αποστολής';
////        //document.getElementById('<%=Shipvia.ClientID%>').InnerHTML = 'Αποστολή μέσω';
////        //document.getElementById('Freight.ClientID%>').InnerHTML = 'Κόστος';
////        //document.getElementById('<%=ShipName.ClientID%>').InnerHTML = 'Όνομα μεταφορικής';
////        //document.getElementById('<%=Shipaddress.ClientID%>').InnerHTML = 'Διεύθηνση αποστολής';
////        //document.getElementById('<%=ShipCity.ClientID%>').InnerHTML = 'Πόλη αποστολής';
////        //document.getElementById('<%=ShipRegion.ClientID%>').InnerHTML = 'Περιοχή αποστολής';
////        //document.getElementById('<%=ShipPostal.ClientID%>').InnerHTML = 'Ταχ. Κώδ. περιοχής';
////        //document.getElementById('<%=ShipCountry.ClientID%>').InnerHTML = 'Χώρα αποστολής';

////        document.getElementById('<%=LanguageHiddenField.ClientID%>').InnerHTML = 'Greek';
////    }
////}
////#endregion ActionData script



//#region Generic redicrecting
function CPHome() {
    document.getElementById("RedirectToHome").click();
    __doPostBack('RedirectToHome');
}

function CPTerms() {
    document.getElementById("RedirectToTerms").click();
    __doPostBack('RedirectToTerms');
}

function CPPolicy() {
    document.getElementById("RedirectToPrivacy").click();
    __doPostBack('RedirectToPrivacy');
}
//#endregion

//#region action data page : change language
function CLDAGR() {
    document.getElementById("ChangeLanguageToEnglish").click();
    __doPostBack('ChangeLanguageToEnglish');
}

function CLDAEN() {
    document.getElementById("ChangeLanguageToGreek").click();
    __doPostBack('ChangeLanguageToGreek');
}
//#endregion 


//#region MainForm : Help
function DatagridHelp(Language) {
    if (Language === "Greek") {
        alert("Εικονίδια κοινωνικών δικτύων : \n" +
            "1)facebook\n" +
            "2)Linkedin\n" +
            "3)Youtube\n\n" +

            "Πλήκτρο αλλαγής γλώσσας Greek/Αγγλικά : πραγματοποιεί αλλαγή μεταξύ των δύο γλωσσών.\n" +

            "Μενού :Λειτουργίες της βάσης δεδομένων \n" +
            "1)Προσθήκη : Σας επιτρέπει την καταχώρηση νέας παραγγελίας.\n" +
            "2)Τροποποίηση : Σας επιτρέπει την τροποποίηση του επιλεγμένου στοιχείου παραγγελίας.\n" +
            "3)Επίβλεψη  : Σας επιτρέπει να δείτε αναλυτικά τα στοιχεία της παραγγελίας" +
            "4)Επαναφόρτωση : Πραγματοποιεί επαναφόρτωση των δεδομένων του πίνακα.\n" +
            "5)Ιστορικό : Εμφανίζει τις τροποποιήσεις που έχουν γίνει επί της επιλεγμένης εγγραφής.\n" +
            "6)Export: Επιτρέπει την εξαγωγή των δεδομένων της τρέχουσας σελίδας στον επιλεγμένο τύπο.\n\n" +

            "Μενού\n" +
            "Βοήθεια : Βρίσκεστέ εδώ!\n" +

            "Πεδίο εμφάνισης δεδομένων\n" +
            "Στον πίνακα μπορείτε να επιλέξετε οποιαδήποτε γραμμή θέλετε και έπειτα να πατήσετε στην αντίστοιχη λειτουργία (τροποποίηση ,επίβλεψη , διαγραφή ή ιστορικό).\n" +
            "Μπορείτε να πραγματοποιήσετε φιλτράρισμα των δεδομένων κάνοντας κλικ στην ονομασία της στήλης και να επιλέξετε τα επιθυμητά κριτήρια, Επίσης μπορείτε να σύρεται μία κολόνα στο πλαίσιο που αναγράφετε και να εμφανιστεί ατομικά η συγκεκριμένη στήλη.\n\n" +

            "Σελιδοποίηση\n" +
            "Εδώ μπορείτε να επιλέξετε τον αριθμό των εμφανιζόμενων εγγραφών καθώς και να μετακινηθείτε εμπρός και πίσω μεταξύ των σελίδων.\n\n" +
            "Πολιτική απορρήτου, όροι και προυποθέσεις\n" +
            " Aυτές οι δύο λειτουργίες σας ενημερώνουν σχετικά με τα αντίστοιχα περιεχόμενα χρήσης του προγράμματος καθώς και των υπηρεσιών μας");
    }
    else {
        alert("Social icon buttons : \n" +
            "1)facebook\n" +
            "2)Linkedin\n" +
            "3)Youtube\n\n" +

            "Change language button Greek/Αγγλικά : Changes the language to the desired.\n" +

            "Menu :Database operations \n" +
            "1)Add : Allows you to add new entry/order .\n" +
            "2)Modify : Allow the modification of the selected entry.\n" +
            "3)Inspect  : Allow the inspect of the selected entry" +
            "4)Reload : Reloads all entries of database.\n" +
            "5)History : Show all the modifications done for the selected entry.\n" +
            "6)Export: Exprots current page data to the selected format.\n\n" +

            "Menu\n" +
            "Help : You are currently here!\n\n" +

            "Data grid\n" +
            "In the data grid you can select any row and then click any operation (modify,inspect,delete or histroy.\n " +
            "You can filter the data by clicking in the column header and by selecting the desired cirteria, also you can drag a column header in the panel and it will allows you to group the data.\n\n" +

            "Paging\n" +
            "Here you can change the displayed items/entries being showed, also you can go back and forth between pages.\n\n" +

            "Privacy policy, terms and conditions\n" +
            "These two buttons are informing you about the corresponding contents of program usage contents and as well as our services");
    }
}

//#endregion

//#region action data page : help button
function DataHelp(Language) {
    if (Language === 'English') {
        alert('Add\n' + "In this mode you can add a new order/entry in the database (All fields are optional to fill).\n\n" +
            'Modify\n' + "In this mode you can modify the selected order/entry." +
            'Inspect\n' + "In this mode you can ONLY inspect the selected order/entry.");
    }
    else {
        alert('Προσθήκη\n' + "Σε αυτή τη λειτουργία μπορείτε να προσθέσετε μία νέα παραγγελία/εγγραφή στην βάση δεδομένων (Η συμπλήρωση των πεδίων δεν είναι υποχρεωτική).\n\n" +
            'Τροποποίηση\n' + "Σε αυτή τη λειτουργία μπορείτε να τροποποιήσετε την επιλεγμένη παραγγελία/εγγραφή." +
            'Έλεγχος\n' + "Σε αυτή τη λειτουργία μπορείτε ΜΟΝΟ να επιβλέψετε την επιλεγμένη παραγγελία εγγραφή.");
    }
}
//#endregion

//#region History tab
function HistoryHelp(Language)  {
    if (Language === "English") {
        alert('Modification history \n' +
            "In this tab you can overview all the modifications that have done to the selected entry from the creation to latest modification.\n");
    }
    else {
        alert('Ιστορικό τροποποιήσεων\n' +
            "Σε αυτή την καρτέλα έχουμε μία σύνοψη όλων των τροποποιήσεων που έχουν πραγαματοποιηθεί στην συγκεκριμένη εγγραφή απο την δημιουργία της έως την τελευταία τροποποίηση.\n");
    }
}
//#endregion