<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="DemoSoftMigration.Pages.History" %>

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

    <title>Item History</title>
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
                            <li><a onclick="DatagridHelp();">Help</a></li>
                        </ul>
                    </div>
                    <div class="Greek">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a onclick="DatagridHelp();">Βοήθεια</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        <div class="DataGridDiv" style="width: 100%; word-wrap: break-word; table-layout: fixed; font-size: smaller; overflow-x: scroll; overflow-y: hidden;">
            <dx:ASPxGridView ID="ASPxGridViewData" runat="server" EnableTheming="True" Theme="iOS" Cursor="auto" KeyFieldName="OrderID">

                <Settings ShowHeaderFilterButton="True" HorizontalScrollBarMode="Auto" />
                <SettingsBehavior AllowSelectByRowClick="True" />
                <SettingsDataSecurity AllowDelete="False" AllowEdit="False" />
                <SettingsSearchPanel Visible="True" />
            </dx:ASPxGridView>
        </div>
        <dx:ASPxButton ID="ASPxOkButton" runat="server" Text="Ok" HorizontalAlign="Center" OnClick="ASPxOkButton_Click" Theme="MetropolisBlue" style="display: flex;justify-content: center;align-items: center;"/>

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
