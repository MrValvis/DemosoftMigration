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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../Config/StyleSheet.css" />

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
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a onclick="CPH();">Αρχική</a></li>
                        <li><a onclick="CPA();">Σχετικά με εμάς</a></li>
                        <li><a onclick="CPS();">Project's</a></li>
                        <li><a onclick="CPC();">Επικοινωνία</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="Content">
            <div class="DatabaseActionsMenu">
                <table class="DatabaseActionsTable">
                    <tr>
                        <th>
                            <img src="../Resources/add.png" class="DatabaseActionImage" />add</th>
                        <th>
                            <img src="../Resources/modify.png" class="DatabaseActionImage" />modify</th>
                        <th>
                            <img src="../Resources/inspect.png" class="DatabaseActionImage" />inspect</th>
                        <th>
                            <img src="../Resources/Remove.png" class="DatabaseActionImage" />delete</th>
                        <th>
                            <img src="../Resources/refresh.png" class="DatabaseActionImage" />refresh</th>
                        <th>
                            <img src="../Resources/history.png" class="DatabaseActionImage" />history</th>
                        <th>
                            <img src="../Resources/export.png" class="DatabaseActionImage" /><asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>Export</th>

                    </tr>
                </table>
            </div>

            <div class="GridView">
                <dx:ASPxGridView ID="ASPxGridViewData" runat="server" EnableTheming="True" Theme="iOS" Cursor="auto">
                    <SettingsPager AlwaysShowPager="True" NumericButtonCount="4">
                        <PageSizeItemSettings Items="10, 20, 40, 100, 200" Visible="True">
                        </PageSizeItemSettings>
                    </SettingsPager>
                    <Settings ShowHeaderFilterButton="True" />
                    <SettingsBehavior AllowSelectByRowClick="True" />
                    <SettingsSearchPanel Visible="True" />
                </dx:ASPxGridView>
            </div>
        </div>


        <footer class="container-fluid text-center">
            <div class="row">

                <div class="col-sm-4">
                    <h3>Επικοινωνία </h3>
                    <br />
                    <h4>NeutronSoft@info.com</h4>
                    <h4>210-1223344</h4>
                    <h4>Χαροκόπου 86, Καλλιθέα</h4>
                </div>

                <div class="col-sm-4">
                    <h3>Μείνετε συνδεδεμένοι  </h3>
                    <br />
                    <a href="https://www.facebook.com/" class="fa fa-facebook"></a>
                    <a href="https://www.youtube.com/" class="fa fa-youtube"></a>
                    <a href="https://linkedin.com/" class="fa fa-linkedin"></a>
                </div>

                <div class="col-sm-4">
                    <h3>Γλώσσες</h3>
                    <br />
                    <h4 class="LangSelect" onclick="CLG();">Greek-Ελ</h4>
                    <h4 class="LangSelect" onclick="CLE();">English-En</h4>
                    <br />
                </div>
                <h4 id="Copyrights" />
            </div>
        </footer>
    </form>
</body>
</html>
