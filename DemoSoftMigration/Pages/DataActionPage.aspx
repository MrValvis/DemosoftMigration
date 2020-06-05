<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataActionPage.aspx.cs" Inherits="DemoSoftMigration.Pages.DataActionPage" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxScheduler" TagPrefix="dxwschs" %>

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
<body onload="CDT();">
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
                    <div class="English">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a onclick="DataHelp();">Help</a></li>
                        </ul>
                    </div>
                    <div class="Greek">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a onclick="DataHelp();">Βοήθεια</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        <asp:Panel ID="PanelEnglish" runat="server">
            <table style="width: 100%;">
                <tr>
                    <th>
                        <asp:Label ID="OrderId" runat="server" Text="Order Id" />
                    </th>
                    <th>
                        <asp:TextBox ID="OrderIdTextbox" runat="server" Text="Auto Incremental" ReadOnly="True" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="CustomerId" runat="server" Text="Customer Id" />
                    </th>
                    <th>
                        <asp:TextBox ID="CustomerIdTextbox" runat="server" MaxLength="5" />
                        <asp:RegularExpressionValidator ID="CustomerIdTextboxValidator" runat="server" ErrorMessage="Only letters are allowed in Customer Id field" ForeColor="Red" ControlToValidate="CustomerIdTextbox" ValidationExpression="^[A-Za-z]*$" />
                    </th> 
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="EmployeeId" runat="server" Text="Employee Id" />
                    </th>
                    <th>
                        <asp:TextBox ID="EmployeeIdTextbox" runat="server"  MaxLength="9" />
                        <asp:RegularExpressionValidator ID="EmployeeIdValidator" runat="server" ControlToValidate="EmployeeIdTextbox" ErrorMessage="Only numeric values are allowed in Employee Id field" ForeColor="Red" ValidationExpression="^[0-9]*$" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="OrderDate" runat="server" Text="Order Date" />
                    </th>
                    <th>
                        <asp:TextBox ID="OrderDateTextbox" runat="server" TextMode="Date" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="RequiredDate" runat="server" Text="Required Date" />
                    </th>
                    <th>
                        <asp:TextBox ID="RequiredDateTextbox" runat="server" TextMode="Date" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="ShippedDate" runat="server" Text="Shipped Date" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShippedDateTextbox" runat="server" TextMode="Date" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="Shipvia" runat="server" Text="Ship via" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShipviaTextbox" runat="server" MaxLength="9" />
                        <asp:RegularExpressionValidator ID="ShipviaTextboxValidator" runat="server" ControlToValidate="ShipviaTextbox" ErrorMessage="Only numeric values are allowed in Ship Via field" ForeColor="Red" ValidationExpression="^[0-9]*$" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="Freight" runat="server" Text="Freight" />
                    </th>
                    <th>
                        <asp:TextBox ID="FreightTextbox" runat="server" MaxLength="10" />
                        <asp:RegularExpressionValidator ID="FreightTextboxValidator" runat="server" ControlToValidate="FreightTextbox" ErrorMessage="Only decimal numbers values are allowed in freight field (examples 1,2.33,1953.29 etc.)" ForeColor="Red" ValidationExpression="^\d{0,10}(?:\.\d\d)?$" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="ShipName" runat="server" Text="Ship Name" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShipNameTextbox" runat="server" MaxLength="40" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="Shipaddress" runat="server" Text="Ship address" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShipAddressTextbox" runat="server" MaxLength="60" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="ShipCity" runat="server" Text="Ship City" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShipCityTextbox" runat="server" MaxLength="15" />
                        <asp:RegularExpressionValidator ID="ShipCityTextboxValidator" runat="server" ControlToValidate="ShipCityTextbox" ErrorMessage="Only letters are allowed in Ship city field" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="ShipRegion" runat="server" Text="Ship Region" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShipRegionTextbox" runat="server" MaxLength="15" />
                        <asp:RegularExpressionValidator ID="ShipRegionTextboxValidator" runat="server" ControlToValidate="ShipRegionTextbox" ErrorMessage="Only letters are allowed in Ship region field" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="ShipPostal" runat="server" Text="Ship Postal" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShipPostalTextbox" runat="server" MaxLength="9" />
                        <asp:RegularExpressionValidator ID="ShipPostalTextboxValidator" runat="server" ControlToValidate="ShipPostalTextbox" ErrorMessage="Only numeric values are allowed in Ship Postal field" ForeColor="Red" ValidationExpression="^[0-9]*$" />
                    </th>
                </tr>
                <tr>
                    <th>
                        <asp:Label ID="ShipCountry" runat="server" Text="Ship Country" />
                    </th>
                    <th>
                        <asp:TextBox ID="ShipCountryTextbox" runat="server" MaxLength="15" />
                        <asp:RegularExpressionValidator ID="ShipCountryTextboxnValidator" runat="server" ControlToValidate="ShipCountryTextbox" ErrorMessage="Only letters are allowed in Country field" ForeColor="Red" ValidationExpression="^[A-Za-z]*$" />
                    </th>
                </tr>
                <tr>
                    <th colspan="2">
                        <dx:ASPxButton ID="OkButton" runat="server" Text="Ok" Style="width: 100%" OnClick="OkButton_Click" />
                    </th>
                </tr>
            </table>
        </asp:Panel>

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
                    <h4 class="LangSelect" onclick="ChangeLanguage('GR');">Greek-Ελ</h4>
                    <h4 class="LangSelect" onclick="ChangeLanguage('EN');">English-En</h4>
                    <br />
                </div>
                <h4 id="Copyrights" />
            </div>
            <asp:HiddenField ID="LanguageHiddenField" runat="server"/>
        </footer>
    </form>
</body>
</html>
