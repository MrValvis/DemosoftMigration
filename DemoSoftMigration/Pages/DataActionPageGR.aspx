<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataActionPageGR.aspx.cs" Inherits="DemoSoftMigration.Pages.DataActionsGR" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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


    <title>Demosoft</title>

</head>
<body>
    <form id="form1" runat="server">
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
                    <div>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a onclick="CPHome();">Αρχική</a></li>
                            <li><a onclick="DataHelp('Greek');">Βοήθεια</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        <asp:Panel ID="PanelEnglish" runat="server">
            <table style="width: 50%; margin: auto;">
                <tr>
                    <th>
                        <br />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="OrderId" runat="server" Text="Κωδικός παραγγελίας" />
                    </th>
                    <th>
                        <asp:TextBox ID="OrderIdTextbox" runat="server" Text="Αυτόματη αύξηση" ReadOnly="True" class="form-control" />
                        <br />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="CustomerId" runat="server" Text="Κωδικός πελάτη" />
                    </th>
                    <th>
                        <asp:TextBox ID="CustomerIdTextbox" runat="server" MaxLength="5" class="form-control" />
                        <asp:RegularExpressionValidator ID="CustomerIdTextboxValidator" runat="server" ErrorMessage="Μόνο αγγλικοί και ελληνικοί χαρακτήρες επιτρέπονται στο πεδίο &quot;Κωδικός πελάτη&quot;" ForeColor="Red" ControlToValidate="CustomerIdTextbox" ValidationExpression="^[A-Za-z\u0370-\u03ff\u1f00-\u1fff]*$" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="EmployeeId" runat="server" Text="Κωδικός υπαλλήλου" />
                    </th>
                    <th>
                        <asp:TextBox ID="EmployeeIdTextbox" runat="server" MaxLength="9" class="form-control" />
                        <asp:RegularExpressionValidator ID="EmployeeIdValidator" runat="server" ControlToValidate="EmployeeIdTextbox" ErrorMessage="Μόνο αριθμιτικές τιμές επιτρέπονται στο πεδίο &quot;Κωδικός υπαλλήλου&quot;" ForeColor="Red" ValidationExpression="^[0-9]*$" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="OrderDate" runat="server" Text="Ημ/νία παραγγελίας" />
                    </th>
                    <th>
                        <asp:TextBox ID="OrderDateTextbox" runat="server" TextMode="Date" class="form-control" />
                        <br />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="RequiredDate" runat="server" Text="Ημ/νία παράδοσης" />
                    </th>
                    <th>
                        <asp:TextBox ID="RequiredDateTextbox" runat="server" TextMode="Date" class="form-control" />
                        <br />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="ShippedDate" runat="server" Text="Ημ/νία αποστολής" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShippedDateTextbox" runat="server" TextMode="Date" class="form-control" />
                        <br />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="Shipvia" runat="server" Text="Αποστολή μέσω" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShipviaTextbox" runat="server" MaxLength="9" class="form-control" />
                        <asp:RegularExpressionValidator ID="ShipviaTextboxValidator" runat="server" ControlToValidate="ShipviaTextbox" ErrorMessage="Μόνο αριθμιτικές τιμές επιτρέπονται στο πεδίο &quot;Αποστολή μέσω&quot; " ForeColor="Red" ValidationExpression="^[0-9]*$" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="Freight" runat="server" Text="Κόστος" />
                    </th>
                    <th>
                        <asp:TextBox ID="FreightTextbox" runat="server" MaxLength="10" class="form-control" />
                        <asp:RegularExpressionValidator ID="FreightTextboxValidator" runat="server" ControlToValidate="FreightTextbox" ErrorMessage="Μόνο δεκαδικές τιμές επιτρέπονται στο πεδίο &quot;Κόστος&quot; (π.χ 1,2.33,1953.29 )" ForeColor="Red" ValidationExpression="^\d{0,10}(?:\.\d\d)?$" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="ShipName" runat="server" Text="Όνομα μεταφορικής" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShipNameTextbox" runat="server" MaxLength="40" class="form-control" />
                        <br />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="Shipaddress" runat="server" Text="Διεύθυνση αποστολής" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShipAddressTextbox" runat="server" MaxLength="60" class="form-control" />
                        <br />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="ShipCity" runat="server" Text="Πόλη αποστολής" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShipCityTextbox" runat="server" MaxLength="15" class="form-control" />
                        <asp:RegularExpressionValidator ID="ShipCityTextboxValidator" runat="server" ControlToValidate="ShipCityTextbox" ErrorMessage="Μόνο αγγλικοί και ελληνικοί χαρακτήρες επιτρέπονται στο πεδίο &quot;Πόλη αποστολής&quot;" ForeColor="Red" ValidationExpression="^[A-Za-z\u0370-\u03ff\u1f00-\u1fff]*$" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="ShipRegion" runat="server" Text="Διεύθυνση περιοχής" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShipRegionTextbox" runat="server" MaxLength="15" class="form-control" />
                        <asp:RegularExpressionValidator ID="ShipRegionTextboxValidator" runat="server" ControlToValidate="ShipRegionTextbox" ErrorMessage="Μόνο αγγλικοί και ελληνικοί χαρακτήρες επιτρέπονται στο πεδίο &quot;Διεύθηνση περιοχής&quot;" ForeColor="Red" ValidationExpression="^[A-Za-z\u0370-\u03ff\u1f00-\u1fff]*$" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="ShipPostal" runat="server" Text="Ταχ. κώδικας" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShipPostalTextbox" runat="server" MaxLength="9" class="form-control" />
                        <asp:RegularExpressionValidator ID="ShipPostalTextboxValidator" runat="server" ControlToValidate="ShipPostalTextbox" ErrorMessage="Μόνο αριθμιτικές τιμές επιτρέπονται στο πεδίο &quot;Ταχ. κώδικας&quot;" ForeColor="Red" ValidationExpression="^[0-9]*$" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="ShipCountry" runat="server" Text="Χώρα αποστολής" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShipCountryTextbox" runat="server" MaxLength="15" class="form-control" />
                        <asp:RegularExpressionValidator ID="ShipCountryTextboxnValidator" runat="server" ControlToValidate="ShipCountryTextbox" ErrorMessage="Μόνο αγγλικοί και ελληνικοί χαρακτήρες επιτρέπονται στο πεδίο &quot;Χώρα αποστολής&quot;" ForeColor="Red" ValidationExpression="^[A-Za-z\u0370-\u03ff\u1f00-\u1fff]*$" />
                    </th>
                </tr>
                <tr>
                    <th colspan="2">
                        <br />
                        <dx:ASPxButton ID="OkButton" runat="server" Text="Ολοκλήρωση" Style="width: 100%" OnClick="OkButton_Click" Theme="Office2003Blue" />
                    </th>
                </tr>
                <tr>
                    <th colspan="2">
                        <dx:ASPxButton ID="RedirectToHome" runat="server" Style="visibility: hidden; display: none;" OnClick="RedirectToHome_Click" />
                        <dx:ASPxButton ID="ChangeLanguageToEnglish" runat="server" Text="ASPxButton"  Style="visibility: hidden; display: none;" OnClick="ChangeLanguageToEnglish_Click" />
                    </th>
                </tr>
            </table>
        </asp:Panel>

        <footer class="container-fluid text-center">
            <div class="row">

                <div class="col-sm-4">
                    <h3>Επικοινωνία </h3>
                    <br />
                    <h4>Demosoft@info.com</h4>
                    <h4>210-1223344</h4>
                    <h4 >Χαροκόπου 86, Καλλιθέα</h4>
                </div>

                <div class="col-sm-4">
                    <h3>Μείνετε συνδεδεμένοι  </h3>
                    <br />
                    <a href="https://www.facebook.com/" class="fa fa-facebook"></a>
                    <a href="https://www.youtube.com/" class="fa fa-youtube"></a>
                    <a href="https://linkedin.com/" class="fa fa-linkedin"></a>
                </div>

                <div class="col-sm-4">
                    <h3 >Γλώσσες</h3>
                    <br />
                    <h4 class="LangSelect">Greek-Ελ</h4>
                    <h4 class="LangSelect" onclick="CLDAGR();">English-En</h4>
                    <br />
                </div>
                <h4 id="Copyrights" />
            </div>
        </footer>
    </form>
</body>
</html>

