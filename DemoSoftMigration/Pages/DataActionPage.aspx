<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataActionPage.aspx.cs" Inherits="DemoSoftMigration.Pages.DataActionPage" %>

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

 <%--   <style>
        .form-inline {
            display: flex;
            flex-flow: row wrap;
            align-items: center;
        }

            .form-inline input {
                vertical-align: middle;
                margin: 5px 10px 5px 0;
                padding: 10px;
                background-color: #fff;
                border: 1px solid #ddd;
            }

            .form-inline button {
                padding: 10px 20px;
                background-color: dodgerblue;
                border: 1px solid #ddd;
                color: white;
                cursor: pointer;
            }

                .form-inline button:hover {
                    background-color: royalblue;
                }

        @media (max-width: 800px) {
            .form-inline input {
                margin: 10px 0;
            }

            .form-inline {
                flex-direction: column;
                align-items: stretch;
            }
        }

        .test {
            display: inline-block;
            vertical-align: top; /* Vertically align the inline-block elements */
            height: 100%;
            line-height: 100%;
            width: 33.33%; /* Just for Demo */
            outline: 1px dashed red
        }
    </style>--%>

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
                        <li><a onclick="DataHelp();">Βοήθεια</a></li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="test" style="margin: auto;width: 50%;padding: 10px;">

            <div class="form-inline">
                <div class="column" style="display:inline-block;">
                    <div class="ty" style="width:100%;">
                    <asp:Label ID="Label1" runat="server" Text="Label" />
                    <asp:TextBox ID="TextBox1" runat="server" />
                    <asp:Label ID="Label2" runat="server" Text="Label" />
                    <asp:TextBox ID="TextBox2" runat="server" />
                        </div>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Label" />
                    <asp:TextBox ID="TextBox3" runat="server" />
                    <asp:Label ID="Label4" runat="server" Text="Label" />
                    <asp:TextBox ID="TextBox4" runat="server" />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Label" />
                    <asp:TextBox ID="TextBox5" runat="server" />
                    <asp:Label ID="Label6" runat="server" Text="Label" />
                    <asp:TextBox ID="TextBox6" runat="server" />
                    <br />
                </div>
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
