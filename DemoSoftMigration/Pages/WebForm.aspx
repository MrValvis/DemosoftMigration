<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="DemoSoftMigration.Pages.WebForm" %>

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
                            <li><a onclick="DatagridHelp();">Help</a></li>
                            <li><a onclick="CPTerms();">Terms and conditions</a></li>
                            <li><a onclick="CPPolicy();">Privacy policy</a></li>

                        </ul>
                    </div>
                    <div class="Greek">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a onclick="DatagridHelp();">Βοήθεια</a></li>
                            <li><a onclick="CPTerms();">Όροι χρήσης</a></li>
                            <li><a onclick="CPPolicy();">Πολιτική απορρήτου</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        <div class="DatabaseActionsMenu">
            <table class="DatabaseActionsTable">
                <tr>
                    <th >
                        <dx:ASPxButton ID="AddButton" runat="server" Text="Add" Image-Url="~/Resources/add32x32.ico" OnClick="AddButton_Click" />
                    </th>
                    <th>
                        <dx:ASPxButton ID="ModifyButton" runat="server" Text="Modify" Image-Url="~/Resources/modify32x32.ico" OnClick="ModifyButton_Click" />
                    </th>
                    <th>
                        <dx:ASPxButton ID="InspectButton" runat="server" Text="Inspect" Image-Url="~/Resources/inspect32x32.ico" OnClick="InspectButton_Click" />
                    </th>
                    <th>
                        <dx:ASPxButton ID="RemoveButton" runat="server" Text="Remove" Image-Url="~/Resources/Remove32x32.ico" OnClick="RemoveButton_Click" />
                    </th>
                    <th>
                        <dx:ASPxButton ID="RefreshButton" runat="server" Text="Refresh" Image-Url="~/Resources/refresh32x32.ico" OnClick="RefreshButton_Click" />
                    </th>
                    <th>
                        <dx:ASPxButton ID="HistoryButton" runat="server" Text="History" Image-Url="~/Resources/history32x32.ico" OnClick="HistoryButton_Click" />
                    </th>
                    <th>
                        <dx:ASPxComboBox ID="ExportCombobox" runat="server" Width="285px" ImageUrlField="ImageUrl" TextField="Export To" ValueField="Name" ShowImageInEditBox="True" EnableTheming="True" ReadOnly="false" Theme="iOS"  AutoPostBack="True" OnSelectedIndexChanged="ExportCombobox_SelectedIndexChanged" Caption="Export To">
                            <Items>
                                <dx:ListEditItem Text="PDF" Value="0" ImageUrl="../Resources/PDFexport.ico" />
                                <dx:ListEditItem Text="XLS (Data Aware)" Value="1" ImageUrl="../Resources/XLSExport.ico" />
                                <dx:ListEditItem Text="XLSX (Data Aware)" Value="3" ImageUrl="../Resources/XLSXExport.ico" />
                                <dx:ListEditItem Text="RTF" Value="4" ImageUrl="../Resources/RTFExport.ico" />
                                <dx:ListEditItem Text="CSV" Value="5" ImageUrl="../Resources/CVSExport.ico" />
                                <dx:ListEditItem Text="DOCX" Value="6" ImageUrl="../Resources/DOCXExport.ico" />
                            </Items>
                            <ItemImage Height="24px" Width="23px" />
                        </dx:ASPxComboBox>
                    </th>
                </tr>
            </table>
        </div>

        <div class="DataGridDiv" style="width: 100%; word-wrap: break-word; table-layout: fixed; font-size: smaller; overflow-x: scroll; overflow-y: hidden;">

            <dx:ASPxGridView ID="ASPxGridViewData" runat="server" ClientInstanceName="ASPxGridViewData" EnableTheming="True" Theme="iOS" Cursor="auto" KeyFieldName="OrderID" GridViewID="ASPxGridViewData">
                <SettingsPager AlwaysShowPager="True" NumericButtonCount="4">
                    <PageSizeItemSettings Items="10, 20, 40, 100, 200" Visible="True">
                    </PageSizeItemSettings>
                </SettingsPager>
                <Settings ShowHeaderFilterButton="True" HorizontalScrollBarMode="Auto" />
                <SettingsBehavior AllowSelectByRowClick="True" />
                <SettingsSearchPanel Visible="True" />
            </dx:ASPxGridView>
                        <dx:ASPxGridViewExporter ID="ASPxGridViewExporterData" runat="server"></dx:ASPxGridViewExporter>
        </div>

        <dx:ASPxButton ID="RedirectToTerms" runat="server" style="visibility: hidden; display: none;" OnClick="RedirectToTerms_Click"/>
         <dx:ASPxButton ID="RedirectToPrivacy" runat="server" style="visibility: hidden; display: none;" OnClick="RedirectToPrivacy_Click"/>

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
        </footer>
        <asp:HiddenField ID="LanguageHiddenField" runat="server" />
    </form>
</body>
</html>
