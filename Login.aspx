<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Newform.css" rel="stylesheet" />
    <style>
        .RadMenu_Default, .rmRootGroup .rmHorizontal {
            background-color: #666666 !important;
            background-image: none;
            height: 40px !important;
            color: white;
        }

        nodediv, .RadMenu .RadMenu_Default .mainMenu ul li {
            background-color: red !important;
            background-image: none;
        }

        .RadMenu .rmHorizontal .rmItem {
            background-color: #666666;
            color: white !important;
            height: 40px;
        }

        .RadMenu_Default .rmHorizontal .rmRootLink span.rmText {
            color: white;
        }

            .RadMenu_Default .rmHorizontal .rmRootLink span.rmText:hover {
                -webkit-border-radius: 5px;
                -moz-border-radius: 5px;
                -ms-border-radius: 5px;
                -o-border-radius: 5px;
                border-radius: 18px;
                border: 1px solid #77933c;
            }

        .RadMenu_Silk .rmRootGroup {
            box-shadow: none !important;
        }

        .titleText {
            font-family: GE_SS_Two !important;
            font-size: 15px !important;
            text-align: right;
            color: green !important;
            padding-right: 15px;
        }

        .fltRght {
            float: right !important;
        }

        .FormInnerTitle {
            font-family: GE_SS_Two !important;
            font-size: 14px !important;
            text-align: right;
            color: green !important;
            padding-right: 5px;
            text-decoration: underline;
            padding-bottom: 2px;
            padding-top: 2px;
        }

        @font-face {
            font-family: 'Droid Arabic Kufi';
            font-style: normal;
            font-weight: 400;
            src: url('fonts/DroidKufi-Regular.eot');
            src: url('fonts//DroidKufi-Regular.eot?#iefix') format('embedded-opentype'), url('fonts/DroidKufi-Regular.woff2') format('woff2'), url('fonts/DroidKufi-Regular.woff') format('woff'), url('fonts/DroidKufi-Regular.ttf') format('truetype');
        }

        @font-face {
            font-family: 'DroidArabicKufiBold';
            font-style: normal;
            font-weight: 700;
            src: url('fonts/DroidKufi-Bold.eot');
            src: url('fonts/DroidKufi-Bold.eot?#iefix') format('embedded-opentype'), url('fonts/DroidKufi-Bold.woff2') format('woff2'), url('fonts/DroidKufi-Bold.woff') format('woff'), url('fonts/DroidKufi-Bold.ttf') format('truetype');
        }

        body {
            font-family: 'Droid Arabic Kufi' !important;
            font-size: 12px !important;
        }
    </style>

    <style>
        .mnu {
            /*margin-bottom: 20px !important;
            float: right;
            margin-top: 20px !important;*/
            margin-bottom: 12px !important;
            float: right;
            margin-top: 20px !important;
        }
        .sysName {
            background-color: rgba(0, 255, 120, 0.42);
            margin: 0px !important;
            padding: 18px;
            font-size: 15px;
            font-weight: bold;
            margin-left: 30px !important;
            text-decoration: inherit;
            color: #fff !important;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="ctl00_empMenuDiv" class="navbar navbar-inverse navbar-fixed-top" style="background-color: #333 !important; direction: rtl">
            <div class="containerNew" style="padding-right: 0px !important;">
                <div>
                    <div class="mnu sysName">
                        <a href="Default.aspx" id="ctl00_Default" style="text-align: right; color: White;">نظام الدعم الفني في كلية الاتصال والإعلام</a>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="row" style="padding-top: 250px; direction: ltr">
                <div class="col-md-4 col-md-offset-4">
                    <div class="form-group row">
                        <label for="txtUsername" class="col-md-3 col-form-label">Username:</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" Width="90%"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:RequiredFieldValidator ID="valUsername" ControlToValidate="txtUsername" runat="server" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="inputPassword" class="col-md-3 col-form-label">Password:</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" Width="90%" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:RequiredFieldValidator ID="valPassword" ControlToValidate="txtPassword" runat="server" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group row">
                        <asp:LinkButton ID="btnLogin" runat="server" CssClass="btn btn-success" OnClick="btnLogin_Click">Login</asp:LinkButton>
                    </div>
                    <div id="divMsg" class="alert alert-danger" runat="server" visible="false">
                        <asp:Label ID="lblMsg" runat="server"/>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
