﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="DemoSoftMigration.Pages.WebForm" %>

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

        <%-- <div class="Content">

            <div class="GridView">
                <dx:ASPxGridView ID="ASPxGridViewData" runat="server" ClientInstanceName="ASPxGridViewData" EnableTheming="True" Theme="iOS" Cursor="auto" OnToolbarItemClick="Grid_ToolbarItemClick">

                    <%-- toolbar --%>
        <%--<SettingsSearchPanel CustomEditorID="tbToolbarSearch" />
                    <SettingsBehavior AllowFocusedRow="true" />
                    <%-- end of toolbar --%>
        <%--<ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />
                    <SettingsPager AlwaysShowPager="True" NumericButtonCount="4">
                        <PageSizeItemSettings Items="10, 20, 40, 100, 200" Visible="True">
                        </PageSizeItemSettings>
                    </SettingsPager>--%>

        <%-- <Settings ShowHeaderFilterButton="True" />
                    <SettingsBehavior AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
                    <SettingsSearchPanel Visible="True" />

                    <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="DataAware" />

                    <Toolbars>
                        <dx:GridViewToolbar>
                            <SettingsAdaptivity Enabled="true" EnableCollapseRootItemsToIcons="true" />
                            <Items>--%>
        <%--<dx:GridViewToolbarItem Command="New" />
                                    <dx:GridViewToolbarItem Command="Edit" />
                                    <dx:GridViewToolbarItem Command="Delete" /> 
                                    <dx:GridViewToolbarItem Command="Refresh" BeginGroup="true" AdaptivePriority="2" />
        --%>

        <%--   <dx:GridViewToolbarItem Command="New" Text="New" BeginGroup="true" AdaptivePriority="0" />
                                <dx:GridViewToolbarItem Command="Edit" Text="Modify" BeginGroup="true" AdaptivePriority="1" />
                                <dx:GridViewToolbarItem Command="Delete" Text="Delete" BeginGroup="true" AdaptivePriority="3" />
                                <dx:GridViewToolbarItem Command="Refresh" BeginGroup="true" AdaptivePriority="4" />
                                <dx:GridViewToolbarItem Command="PreviewChanges" Text="History" BeginGroup="true" AdaptivePriority="5" />

                                <dx:GridViewToolbarItem Text="Export to" Image-IconID="actions_download_16x16office2013" BeginGroup="true" AdaptivePriority="1">
                                    <Items>
                                        <dx:GridViewToolbarItem Command="ExportToPdf" />
                                        <dx:GridViewToolbarItem Command="ExportToDocx" />
                                        <dx:GridViewToolbarItem Command="ExportToRtf" />
                                        <dx:GridViewToolbarItem Command="ExportToCsv" />
                                        <dx:GridViewToolbarItem Command="ExportToXls" Text="Export to XLS(DataAware)" />
                                        <dx:GridViewToolbarItem Name="CustomExportToXLS" Text="Export to XLS(WYSIWYG)" Image-IconID="export_exporttoxls_16x16office2013">
                                            <Image IconID="export_exporttoxls_16x16office2013"></Image>
                                        </dx:GridViewToolbarItem>
                                        <dx:GridViewToolbarItem Command="ExportToXlsx" Text="Export to XLSX(DataAware)" />
                                        <dx:GridViewToolbarItem Name="CustomExportToXLSX" Text="Export to XLSX(WYSIWYG)" Image-IconID="export_exporttoxlsx_16x16office2013">
                                            <Image IconID="export_exporttoxlsx_16x16office2013"></Image>
                                        </dx:GridViewToolbarItem>
                                    </Items>

                                    <Image IconID="actions_download_16x16office2013"></Image>
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Alignment="right">
                                    <Template>
                                        <dx:ASPxButtonEdit ID="tbToolbarSearch" runat="server" NullText="Search for..." Height="100%">
                                            <Buttons>
                                                <dx:SpinButtonExtended Image-IconID="find_find_16x16gray" />
                                            </Buttons>
                                        </dx:ASPxButtonEdit>
                                    </Template>
                                </dx:GridViewToolbarItem>
                            </Items>
                        </dx:GridViewToolbar>
                    </Toolbars>

                </dx:ASPxGridView>
            </div>
        </div>--%>



        <div class="DataGridDiv" style="width: 100%; word-wrap: break-word; table-layout: fixed; font-size: smaller; overflow-x: scroll; overflow-y: hidden;">

            <dx:ASPxGridView ID="ASPxGridViewData" runat="server" ClientInstanceName="ASPxGridViewData" EnableTheming="True" Theme="iOS" Cursor="auto" OnToolbarItemClick="Grid_ToolbarItemClick" KeyFieldName="OrderID">
                <SettingsPager AlwaysShowPager="True" NumericButtonCount="4">
                    <PageSizeItemSettings Items="10, 20, 40, 100, 200" Visible="True">
                    </PageSizeItemSettings>
                </SettingsPager>
                <Settings ShowHeaderFilterButton="True" HorizontalScrollBarMode="Auto" />
                <SettingsBehavior AllowSelectByRowClick="True" />
                <SettingsSearchPanel Visible="True" />
                <Toolbars>
                    <dx:GridViewToolbar>
                        <SettingsAdaptivity Enabled="true" EnableCollapseRootItemsToIcons="true" />
                        <Items>
                            <dx:GridViewToolbarItem Name="Add" Text="Add" ToolTip="Allow to add a new entry" />
                            <dx:GridViewToolbarItem Name="Modify" Text="Modify" Command="Edit" />
                            <dx:GridViewToolbarItem Name="Delete" Text="Delete" Command="Delete" />
                            <dx:GridViewToolbarItem Name="Refresh" Text="Refresh" Command="Refresh" />
                            <dx:GridViewToolbarItem Name="Custom" Text="Custom" Command="Custom" />
                            <dx:GridViewToolbarItem Text="Export to" Image-IconID="actions_download_16x16office2013" BeginGroup="true" AdaptivePriority="1">
                                <Items>
                                    <dx:GridViewToolbarItem Command="ExportToPdf" />
                                    <dx:GridViewToolbarItem Command="ExportToDocx" />
                                    <dx:GridViewToolbarItem Command="ExportToRtf" />
                                    <dx:GridViewToolbarItem Command="ExportToCsv" />
                                    <dx:GridViewToolbarItem Command="ExportToXls" Text="Export to XLS(DataAware)" />
                                    <dx:GridViewToolbarItem Name="CustomExportToXLS" Text="Export to XLS(WYSIWYG)" Image-IconID="export_exporttoxls_16x16office2013" />
                                    <dx:GridViewToolbarItem Command="ExportToXlsx" Text="Export to XLSX(DataAware)" />
                                    <dx:GridViewToolbarItem Name="CustomExportToXLSX" Text="Export to XLSX(WYSIWYG)" Image-IconID="export_exporttoxlsx_16x16office2013" />
                                </Items>
                            </dx:GridViewToolbarItem>
                        </Items>
                    </dx:GridViewToolbar>
                </Toolbars>
            </dx:ASPxGridView>
        </div>



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
        </footer>
    </form>
</body>
</html>
