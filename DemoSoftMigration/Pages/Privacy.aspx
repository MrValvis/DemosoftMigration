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

    <title> Demosoft-Privacy policy</title>

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
                    <div >
                        <ul class="nav navbar-nav navbar-right">
                            <li><a onclick=" CPHome();">Home</a></li>
                            <li><a onclick="CPTerms();">Terms and conditions</a></li>
                            <li class="active"><a>Privacy policy</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        <div class="TermsAndPrivacyTextarea">
            <textarea id="TextAreaEnglish" class="English" cols="20" rows="20" style="width: 100%; height: 100%; box-sizing: border-box; resize: none;">DemoCompany built the Demosoft app as a Free app.\n This SERVICE is provided by DemoCompany at no cost and is intended for use as is.\n\n This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service. If you choose to use our Service, then you agree to the collection and use of information in relation to this policy.\n The Personal Information that we collect is used for providing and improving the Service.\n we will not use or share your information with anyone except as described in this Privacy Policy.\n The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Demosoft unless otherwise defined in this Privacy Policy. Information Collection and Use For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to None.\n The information that we request will be retained by us and used as described in this privacy policy.\n The app does use third party services that may collect information used to identify you.\n Link to privacy policy of third party service providers used by the app Facebook Log Data we want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data.\n This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.\n Cookies Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers.\n These are sent to your browser from the websites that you visit and are stored on your device's internal memory.\n This Service does not use these “cookies” explicitly.\n However, the app may use third party code and libraries that use “cookies” to collect information and improve their services.\n You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device.\n If you choose to refuse our cookies, you may not be able to use some portions of this Service.\n Service Providers we may employ third-party companies and individuals due to the following reasons: To facilitate our Service; To provide the Service on our behalf; To perform Service-related services; or To assist us in analyzing how our Service is used. we want to inform users of this Service that these third parties have access to your Personal Information.\n The reason is to perform the tasks assigned to them on our behalf.\n However, they are obligated not to disclose or use the information for any other purpose.\n Security we value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it.\n But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.\n Links to Other Sites This Service may contain links to other sites.\n If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us.\n Therefore, we strongly advise you to review the Privacy Policy of these websites. we have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services. Children’s Privacy These Services do not address anyone under the age of 13.\n we do not knowingly collect personally identifiable information from children under 13.\n In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers.\n If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions. Changes to This Privacy Policy we may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes.\n we will notify you of any changes by posting the new Privacy Policy on this page.\n This policy is effective as of 2020-05-11 Contact Us If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at DemoCompany.\n This privacy policy page was created at privacypolicytemplate.net and modified/generated by App Privacy Policy Generator
            </textarea>&nbsp;
        </div>

        <dx:ASPxButton ID="RedirectToHome" runat="server" Style="visibility: hidden; display: none;" OnClick="RedirectToHome_Click"/>
        <dx:ASPxButton ID="RedirectToTerms" runat="server" Style="visibility: hidden; display: none;" OnClick="RedirectToTerms_Click" />
        <dx:ASPxButton ID="ChangeLanguageToGreek" runat="server" Style="visibility: hidden; display: none;" OnClick="ChangeLanguageToGreek_Click" />
        <footer class="container-fluid text-center">
            <div class="row">

                <div class="col-sm-4">
                    <h3>Contact </h3>
                    <br />
                    <h4>Demosoft@info.com</h4>
                    <h4>210-1223344</h4>
                    <h4 >Charokopu 86, Kalithea</h4>
                </div>

                <div class="col-sm-4">
                    <h3>Stay connected </h3>
                    <br />
                    <a href="https://www.facebook.com/" class="fa fa-facebook"></a>
                    <a href="https://www.youtube.com/" class="fa fa-youtube"></a>
                    <a href="https://linkedin.com/" class="fa fa-linkedin"></a>
                </div>

                <div class="col-sm-4">
                    <h3 >Languages</h3>
                    <br />
                    <h4 class="LangSelect" onclick="CLDAEN();">Greek-Ελ</h4>
                    <h4 class="LangSelect" >English-En</h4>
                    <br />
                </div>
                <h4 id="Copyrights" />
            </div>
        </footer>
    </form>
</body>
</html>
