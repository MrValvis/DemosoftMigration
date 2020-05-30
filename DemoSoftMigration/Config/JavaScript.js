var Language = "English";

function CDT() {
    Copyright();
    LoadLanguage(Language);
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

//#region Language 
function ChangeLanguage() {
    Language = Language == "English" ? "Greek" : "English";
    LoadLanguage(Language);
}


function LoadLanguage(Language) {
    var ElementsInEnglish = document.getElementsByClassName("English");
    var ElementsInGreek = document.getElementsByClassName("Greek");

    if (Language == "English") {
        for (var i = 0; i < ElementsInEnglish.length; i++) {
            document.getElementsByClassName('Greek')[i].style.display = 'none';
        }
        for (var i = 0; i < ElementsInGreek.length; i++) {
            document.getElementsByClassName('English')[i].style.display = 'block';
        }
    }
    else {
        for (var i = 0; i < ElementsInEnglish.length; i++) {
            document.getElementsByClassName('Greek')[i].style.display = 'block';
        }
        for (var i = 0; i < ElementsInGreek.length; i++) {
            document.getElementsByClassName('English')[i].style.display = 'none';
        }
    }
}
//#EndRegion Language

function DatagridHelp(Language) {
    alert();
}

function CPH() {
    window.location.href = "WebForm.aspx";
}

function CPTerms() {
    window.location.href = "Terms.aspx";
}

function CPPolicy() {
    window.location.href = "Privacy.aspx";
}


function test() {
    alert("working");
}

//if (Language == "Greek") {
//    MessageBox.Show("", "Βοήθεια");
//    MessageBox.Show(
//        "Εικονίδια κοινωνικών δικτύων : \n" +
//        "1)facebook\n" +
//        "2)Linkedin\n" +
//        "3)Youtube\n\n" +

//        "Πλήκτρο αλλαγής γλώσσας Greek/Αγγλικά : πραγματοποιεί αλλαγή μεταξύ των δύο γλωσσών.\n" +

//        "Μενού :Λειτουργίες της βάσης δεδομένων \n" +
//        "1)Προσθήκη : Σας επιτρέπει την καταχώρηση νέας παραγγελίας.\n" +
//        "2)Τροποποίηση : Σας επιτρέπει την τροποποίηση του επιλεγμένου στοιχείου παραγγελίας.\n" +
//        "3)Επίβλεψη  : Σας επιτρέπει να δείτε αναλυτικά τα στοιχεία της παραγγελίας" +
//        "4)Επαναφόρτωση : Πραγματοποιεί επαναφόρτωση των δεδομένων του πίνακα.\n" +
//        "5)Ιστορικό : Εμφανίζει τις τροποποιήσεις που έχουν γίνει επί της επιλεγμένης εγγραφής.\n" +
//        "6)Export: Επιτρέπει την εξαγωγή των δεδομένων της τρέχουσας σελίδας στον επιλεγμένο τύπο.\n\n" +

//        "Μενού\n" +
//        "Βοήθεια : Βρίσκεστέ εδώ!\n" +

//        "Πεδίο εμφάνισης δεδομένων\n" +
//        "Στον πίνακα μπορείτε να επιλέξετε οποιαδήποτε γραμμή θέλετε και έπειτα να πατήσετε στην αντίστοιχη λειτουργία (τροποποίηση ,επίβλεψη , διαγραφή ή ιστορικό).\n" +
//        "Μπορείτε να πραγματοποιήσετε φιλτράρισμα των δεδομένων κάνοντας κλικ στην ονομασία της στήλης και να επιλέξετε τα επιθυμητά κριτήρια, Επίσης μπορείτε να σύρεται μία κολόνα στο πλαίσιο που αναγράφετε και να εμφανιστεί ατομικά η συγκεκριμένη στήλη.\n\n" +

//        "Σελιδοποίηση\n" +
//        "Εδώ μπορείτε να επιλέξετε τον αριθμό των εμφανιζόμενων εγγραφών καθώς και να μετακινηθείτε εμπρός και πίσω μεταξύ των σελίδων.\n\n" +
//        "Πολιτική απορρήτου, όροι και προυποθέσεις\n" +
//        " Aυτές οι δύο λειτουργίες σας ενημερώνουν σχετικά με τα αντίστοιχα περιεχόμενα χρήσης του προγράμματος καθώς και των υπηρεσιών μας", "Βοήθεια");
//}
//else {
//    MessageBox.Show("", "Help");
//    MessageBox.Show("Social icon buttons : \n" +
//        "1)facebook\n" +
//        "2)Linkedin\n" +
//        "3)Youtube\n\n" +

//        "Change language button Greek/Αγγλικά : Changes the language to the desired.\n" +

//        "Menu :Database operations \n" +
//        "1)Add : Allows you to add new entry/order .\n" +
//        "2)Modify : Allow the modification of the selected entry.\n" +
//        "3)Inspect  : Allow the inspect of the selected entry" +
//        "4)Reload : Reloads all entries of database.\n" +
//        "5)History : Show all the modifications done for the selected entry.\n" +
//        "6)Export: Exprots current page data to the selected format.\n\n" +

//        "Menu\n" +
//        "Help : You are currently here!\n\n" +

//        "Data grid\n" +
//        "In the data grid you can select any row and then click any operation (modify,inspect,delete or histroy.\n " +
//        "You can filter the data by clicking in the column header and by selecting the desired cirteria, also you can drag a column header in the panel and it will allows you to group the data.\n\n" +

//        "Paging\n" +
//        "Here you can change the displayed items/entries being showed, also you can go back and forth between pages.\n\n" +

//        "Privacy policy, terms and conditions\n" +
//        "These two buttons are informing you about the corresponding contents of program usage contents and as well as our services", "Help");
//}