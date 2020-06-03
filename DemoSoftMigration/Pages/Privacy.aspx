<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Privacy.aspx.cs" Inherits="DemoSoftMigration.Pages.Privacy" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--Shortcut icon is favicon  --%>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../Config/StyleSheet.css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="../Config/JavaScript.js"></script>

    <title> Demosoft-Πολιτική απορρήτου</title>

</head>
<body onload="CDT();">
    <form id="form2" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">

                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#NavbarMenuBurger">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#" />
                    <img src="../Resources/demosoftReformatedforWeb.png" />
                </div>
                <div class="collapse navbar-collapse" id="NavbarMenuBurger">
                    <div class="English">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a onclick="CPH();">Home</a></li>
                            <li><a onclick="CPTerms();">Terms and conditions</a></li>
                            <li class="active"><a onclick="CPPolicy();">Privacy Policy</a></li>
                        </ul>
                    </div>
                    <div class="Greek">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a onclick="CPH();">Αρχική</a></li>
                            <li><a onclick="CPTerms();">Όροι χρήσης</a></li>
                            <li class="active"><a onclick="CPPolicy();">Πολιτική απορρήτου</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </nav>

        <div class="TermsAndPrivacyTextarea">
            <textarea id="TextAreaEnglish" class="English" cols="20" rows="20" style="width: 100%; height: 100%; box-sizing: border-box; resize: none;">DemoCompany built the Demosoft app as a Free app.\n This SERVICE is provided by DemoCompany at no cost and is intended for use as is.\n\n This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service. If you choose to use our Service, then you agree to the collection and use of information in relation to this policy.\n The Personal Information that we collect is used for providing and improving the Service.\n we will not use or share your information with anyone except as described in this Privacy Policy.\n The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Demosoft unless otherwise defined in this Privacy Policy. Information Collection and Use For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to None.\n The information that we request will be retained by us and used as described in this privacy policy.\n The app does use third party services that may collect information used to identify you.\n Link to privacy policy of third party service providers used by the app Facebook Log Data we want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data.\n This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.\n Cookies Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers.\n These are sent to your browser from the websites that you visit and are stored on your device's internal memory.\n This Service does not use these “cookies” explicitly.\n However, the app may use third party code and libraries that use “cookies” to collect information and improve their services.\n You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device.\n If you choose to refuse our cookies, you may not be able to use some portions of this Service.\n Service Providers we may employ third-party companies and individuals due to the following reasons: To facilitate our Service; To provide the Service on our behalf; To perform Service-related services; or To assist us in analyzing how our Service is used. we want to inform users of this Service that these third parties have access to your Personal Information.\n The reason is to perform the tasks assigned to them on our behalf.\n However, they are obligated not to disclose or use the information for any other purpose.\n Security we value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it.\n But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.\n Links to Other Sites This Service may contain links to other sites.\n If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us.\n Therefore, we strongly advise you to review the Privacy Policy of these websites. we have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services. Children’s Privacy These Services do not address anyone under the age of 13.\n we do not knowingly collect personally identifiable information from children under 13.\n In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers.\n If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions. Changes to This Privacy Policy we may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes.\n we will notify you of any changes by posting the new Privacy Policy on this page.\n This policy is effective as of 2020-05-11 Contact Us If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at DemoCompany.\n This privacy policy page was created at privacypolicytemplate.net and modified/generated by App Privacy Policy Generator
            </textarea>

            <textarea id="TextAreaGreek" class="Greek" cols="20" rows="20" style="width: 100%; height: 100%; box-sizing: border-box; resize: none;">Πολιτική απορρήτου Η DemoCompany δημιούργησε την εφαρμογή Demosoft ως δωρεάν εφαρμογή.\n Αυτή η ΥΠΗΡΕΣΙΑ παρέχεται από την DemoCompany χωρίς κόστος και προορίζεται για χρήση ως έχει.\n\n Αυτή η σελίδα χρησιμοποιείται για την ενημέρωση των επισκεπτών σχετικά με τις πολιτικές μας σχετικά με τη συλλογή, τη χρήση και την αποκάλυψη Προσωπικών Πληροφοριών εάν κάποιος αποφάσισε να χρησιμοποιήσει την Υπηρεσία μας.\n Εάν επιλέξετε να χρησιμοποιήσετε την Υπηρεσία μας, τότε αποδέχεστε τη συλλογή και τη χρήση πληροφοριών σε σχέση με αυτήν την πολιτική.\n Οι Προσωπικές Πληροφορίες που συλλέγουμε χρησιμοποιούνται για την παροχή και τη βελτίωση της Υπηρεσίας.\n δεν θα χρησιμοποιήσουμε ούτε θα κοινοποιήσουμε τις πληροφορίες σας σε κανέναν εκτός από αυτές που περιγράφονται στην παρούσα Πολιτική Απορρήτου.\n Οι όροι που χρησιμοποιούνται σε αυτήν την Πολιτική Απορρήτου έχουν τις ίδιες έννοιες με τους Όρους και Προϋποθέσεις μας, οι οποίοι είναι προσβάσιμοι στη Demosoft, εκτός εάν ορίζεται διαφορετικά στην παρούσα Πολιτική Απορρήτου.\n Συλλογή και χρήση πληροφοριών Για καλύτερη εμπειρία, ενώ χρησιμοποιείτε την Υπηρεσία μας, ενδέχεται να απαιτήσουμε από εσάς να μας παράσχετε ορισμένες προσωπικά αναγνωρίσιμες πληροφορίες, συμπεριλαμβανομένων ενδεικτικά Καμία.\n Οι πληροφορίες που ζητάμε θα διατηρηθούν από εμάς και θα χρησιμοποιηθούν όπως περιγράφεται σε αυτήν την πολιτική απορρήτου. Η εφαρμογή χρησιμοποιεί υπηρεσίες τρίτων που ενδέχεται να συλλέγουν πληροφορίες που χρησιμοποιούνται για την αναγνώρισή σας.\n Σύνδεσμος προς την πολιτική απορρήτου τρίτων παρόχων υπηρεσιών που χρησιμοποιούνται από την εφαρμογή Δεδομένα καταγραφής Facebook θέλουμε να σας ενημερώσουμε ότι κάθε φορά που χρησιμοποιείτε την Υπηρεσία μας, σε περίπτωση σφάλματος στην εφαρμογή συλλέγουμε δεδομένα και πληροφορίες (μέσω προϊόντων τρίτων) στο τηλέφωνο που ονομάζεται Log Data.\n Αυτά τα δεδομένα καταγραφής ενδέχεται να περιλαμβάνουν πληροφορίες όπως τη διεύθυνση πρωτοκόλλου διαδικτύου της συσκευής σας («IP»),όνομα συσκευής, έκδοση λειτουργικού συστήματος, διαμόρφωση της εφαρμογής κατά τη χρήση της Υπηρεσίας μας, ώρα και ημερομηνία από τη χρήση της Υπηρεσίας από εσάς και άλλα στατιστικά στοιχεία.\n Cookies Τα cookie είναι αρχεία με μικρή ποσότητα δεδομένων που χρησιμοποιούνται συνήθως ως ανώνυμα μοναδικά αναγνωριστικά.\n Αυτά αποστέλλονται στο πρόγραμμα περιήγησής σας από τους ιστότοπους που επισκέπτεστε και αποθηκεύονται στην εσωτερική μνήμη της συσκευής σας.\n Αυτή η Υπηρεσία δεν χρησιμοποιεί αυτά τα «cookies» ρητά. Ωστόσο, η εφαρμογή ενδέχεται να χρησιμοποιεί κώδικα τρίτων και βιβλιοθήκες που χρησιμοποιούν 'cookie' για τη συλλογή πληροφοριών και τη βελτίωση των υπηρεσιών τους.\n Έχετε την επιλογή είτε να αποδεχτείτε είτε να απορρίψετε αυτά τα cookies και να γνωρίζετε πότε αποστέλλεται ένα cookie στη συσκευή σας.\n Εάν επιλέξετε να απορρίψετε τα cookie μας, ενδέχεται να μην μπορείτε να χρησιμοποιήσετε ορισμένα τμήματα αυτής της Υπηρεσίας.\n Πάροχοι υπηρεσιών ενδέχεται να απασχολούμε εταιρείες και άτομα τρίτων για τους ακόλουθους λόγους: Για να διευκολύνουμε την Υπηρεσία μας Να παρέχουμε την Υπηρεσία εκ μέρους μας.\n Για την εκτέλεση υπηρεσιών που σχετίζονται με την υπηρεσία ή για να μας βοηθήσετε στην ανάλυση του τρόπου με τον οποίο χρησιμοποιείται η Υπηρεσία μας.\n θέλουμε να ενημερώσουμε τους χρήστες αυτής της Υπηρεσίας ότι αυτά τα τρίτα μέρη έχουν πρόσβαση στα Προσωπικά σας στοιχεία.\n Ο λόγος είναι η εκτέλεση των καθηκόντων που τους έχουν ανατεθεί για λογαριασμό μας.\n Ωστόσο, υποχρεούνται να μην αποκαλύπτουν ή να χρησιμοποιούν τις πληροφορίες για οποιονδήποτε άλλο σκοπό. Ασφάλεια εκτιμούμε την εμπιστοσύνη σας στην παροχή των Προσωπικών σας Πληροφοριών, επομένως προσπαθούμε να χρησιμοποιήσουμε εμπορικά αποδεκτά μέσα για την προστασία τους. Αλλά θυμηθείτε ότι καμία μέθοδος μετάδοσης μέσω Διαδικτύου ή μέθοδος ηλεκτρονικής αποθήκευσης δεν είναι 100% ασφαλής και αξιόπιστη και δεν μπορούμε να εγγυηθούμε την απόλυτη ασφάλειά του. Σύνδεσμοι προς άλλους ιστότοπους Αυτή η υπηρεσία ενδέχεται να περιέχει συνδέσμους προς άλλους ιστότοπους. Εάν κάνετε κλικ σε έναν σύνδεσμο τρίτου μέρους, θα μεταφερθείτε σε αυτόν τον ιστότοπο. Λάβετε υπόψη ότι αυτές οι εξωτερικές τοποθεσίες δεν λειτουργούν από εμάς.\n Επομένως, σας συμβουλεύουμε να διαβάσετε την Πολιτική απορρήτου αυτών των ιστότοπων.\n δεν έχουμε κανέναν έλεγχο και δεν αναλαμβάνουμε καμία ευθύνη για το περιεχόμενο, τις πολιτικές απορρήτου ή τις πρακτικές οποιωνδήποτε ιστότοπων ή υπηρεσιών τρίτων. Παιδικό απόρρητο Αυτές οι υπηρεσίες δεν απευθύνονται σε κανέναν κάτω των 13 ετών. Δεν συλλέγουμε εν γνώσει μας προσωπικά στοιχεία από παιδιά κάτω των 13 ετών.\n Σε περίπτωση που ανακαλύψουμε ότι ένα παιδί κάτω των 13 ετών μας παρείχε προσωπικά στοιχεία, το διαγράφουμε αμέσως από το διακομιστές.\nΕάν είστε γονέας ή κηδεμόνας και γνωρίζετε ότι το παιδί σας μας παρείχε προσωπικά στοιχεία, επικοινωνήστε μαζί μας για να μπορέσουμε να κάνουμε τις απαραίτητες ενέργειες.\n Αλλαγές σε αυτήν την Πολιτική Απορρήτου ενδέχεται να ενημερώνουμε την Πολιτική Απορρήτου μας κατά καιρούς.\n Επομένως, συνιστάται να ελέγχετε περιοδικά αυτήν τη σελίδα για τυχόν αλλαγές.\n θα σας ενημερώσουμε για τυχόν αλλαγές δημοσιεύοντας τη νέα Πολιτική Απορρήτου σε αυτήν τη σελίδα.\n Αυτή η πολιτική ισχύει από το 2020-05-11 Επικοινωνήστε μαζί μας Εάν έχετε οποιεσδήποτε ερωτήσεις ή προτάσεις σχετικά με την Πολιτική απορρήτου μας, μην διστάσετε να επικοινωνήσετε μαζί μας στο DemoCompany.
            </textarea>
        </div>
        <dx:ASPxButton ID="BackButton" runat="server" Text="Back to main page" Cursor="pointer" style="Width:100%;" HorizontalAlign="Center" Theme="Office2003Blue" OnClick="BackButton_Click"/>
        <footer class="container-fluid text-center">
            <div class="row">

                <div class="col-sm-4">
                    <h3 class="English">Contact </h3>
                    <h3 class="Greek">Επικοινωνία </h3>
                    <br />
                    <h4>Demosoft@info.com</h4>
                    <h4>210-1223344</h4>
                    <h4 class="English">Charokopu 86, Kalithea</h4>
                    <h4 class="Greek">Χαροκόπου 86, Καλλιθέα</h4>
                </div>

                <div class="col-sm-4">
                    <h3 class="English">Stay connected </h3>
                    <h3 class="Greek">Μείνετε συνδεδεμένοι  </h3>
                    <br />
                    <a href="https://www.facebook.com/" class="fa fa-facebook"></a>
                    <a href="https://www.youtube.com/" class="fa fa-youtube"></a>
                    <a href="https://linkedin.com/" class="fa fa-linkedin"></a>
                </div>

                <div class="col-sm-4">
                    <h3 class="English">Languages</h3>
                    <h3 class="Greek">Γλώσσες</h3>
                    <br />
                    <h4 class="LangSelect" onclick="ChangeLanguage();">Greek-Ελ</h4>
                    <h4 class="LangSelect" onclick="ChangeLanguage();">English-En</h4>
                    <br />
                </div>
                <h4 id="Copyrights" />
            </div>
            <asp:HiddenField ID="LanguageHiddenField" runat="server"/>
        </footer>
    </form>
</body>
</html>
