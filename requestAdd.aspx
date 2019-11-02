<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="requestAdd.aspx.cs" Inherits="requestAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .text{
            padding: 2px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-3 text-left">
                    <img src="img/collLogo.png" />
                </div>
                <div class="col-md-9 text-center">
                    <h3>كلية الإتصال والإعلام</h3>
                    <h3>Faculty of Communication And Media</h3>
                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        بيانات مقدم الطلب | User Information
                    </div>
                    <div class="panel-body">
                        <div class="col-md-12" style="direction: rtl;">
                            <div class="row" style="padding: 5px;">
                                <div class="col-md-3 text-center divTitle">الإسم الرباعي | Fullname</div>
                                <div class="col-md-9"><asp:Label ID="txtFullname" class="vcenter" runat="server" /></div>
                                <asp:HiddenField ID="hfUserID" runat="server" />
                            </div>
                            <div class="row" style="padding: 5px;">
                                <div class="col-md-3 text-center divTitle">جهة العمل | Site</div>
                                <div class="col-md-3"><asp:Label ID="txtSite" runat="server" /></div>
                                <div class="col-md-3 text-center divTitle">القسم | Department</div>
                                <div class="col-md-3"><asp:Label ID="txtDepartment" runat="server" /></div>
                            </div>
                            <div class="row" style="padding: 5px;">
                                <div class="col-md-3 text-center divTitle">البريد الإلكتروني | Email</div>
                                <div class="col-md-3"><asp:Label ID="txtEmail" runat="server" /></div>
                                <div class="col-md-3 text-center divTitle">جوال | Mobile</div>
                                <div class="col-md-3"><asp:Label ID="txtMobile" runat="server" /></div>
                            </div>
                            <div class="row" style="padding: 5px;">
                                <div class="col-md-3 text-center divTitle">تلفون | Tele No</div>
                                <div class="col-md-3"><asp:Label ID="lblTeleNo" runat="server" /></div>
                                <div class="col-md-3 text-center divTitle">الوقت والتاريخ | Time & Date</div>
                                <div class="col-md-3"><asp:Label ID="lblTimeDate" runat="server" /></div>
                            </div>
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        بيانات الطلب | Request Information
                    </div>
                    <div class="panel-body">

                        <div class="col-md-12" style="direction: rtl;">
                            <div class="row" style="padding: 5px;">
                                <div class="col-md-3 text-center divTitle">نوع الجهاز | Device Type
                                    <asp:RequiredFieldValidator ID="rfvDeviceType" runat="server" ControlToValidate="ddlDeviceType" ForeColor="Red" ErrorMessage="*" />
                                </div>
                                <div class="col-md-9">
                                    <asp:DropDownList ID="ddlDeviceType" runat="server" CssClass="form-control">
                                        <asp:ListItem Selected="True" Value="">--اختر</asp:ListItem>
                                        <asp:ListItem Value="1">لاب توب شخصي - Personal Laptops</asp:ListItem>
                                        <asp:ListItem Value="2">الماسح الضوئي - Scanner</asp:ListItem>
                                        <asp:ListItem Value="3">طابعه محلية - Local printer</asp:ListItem>
                                        <asp:ListItem Value="4">طابعه شبكية - Network printer</asp:ListItem>
                                        <asp:ListItem Value="5">جهاز الكمبيوتر - PC</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row" style="padding: 5px;">
                                <div class="col-md-3 text-center divTitle">فئة مقدم الطلب | Applicant Category
                                    <asp:RequiredFieldValidator ID="rfvApplicantCat" runat="server" ControlToValidate="ddlApplicantCat" ForeColor="Red" ErrorMessage="*" />
                                </div>
                                <div class="col-md-9">
                                    <asp:DropDownList ID="ddlApplicantCat" runat="server" CssClass="form-control">
                                        <asp:ListItem Selected="True" Value="">--اختر</asp:ListItem>
                                        <asp:ListItem Value="1">اكاديمي - academic</asp:ListItem>
                                        <asp:ListItem Value="2">اداري - Administrative</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row" style="padding: 5px;">
                                <div class="col-md-3 text-center divTitle">رقم المكتب | Office No
                                    <asp:RequiredFieldValidator ID="rfvOfficeNo" runat="server" ControlToValidate="txtOfficeNo" ForeColor="Red" ErrorMessage="*" />
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtOfficeNo" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-3 text-center divTitle">رقم الطابق | Floor No
                                    <asp:RequiredFieldValidator ID="rfvFloorNo" runat="server" ControlToValidate="ddlFloorNo" ForeColor="Red" ErrorMessage="*" />
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="ddlFloorNo" runat="server" CssClass="form-control">
                                        <asp:ListItem Selected="True" Value="">--اختر</asp:ListItem>
                                        <asp:ListItem Value="1">الثالث the third</asp:ListItem>
                                        <asp:ListItem Value="2">الثاني - The second</asp:ListItem>
                                        <asp:ListItem Value="3">الاول - the first</asp:ListItem>
                                        <asp:ListItem Value="4">الارضي - Ground</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row" style="padding: 5px;">
                                <div class="col-md-3 text-center divTitle">الرقم التسلسلي | Sernal Number</div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtSN" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-3 text-center divTitle"><%--نوع الجهاز | Device Type--%></div>
                                <div class="col-md-3">
                                    <%--<asp:DropDownList ID="ddlDeviceType" runat="server" CssClass="form-control"></asp:DropDownList>--%>
                                </div>
                            </div>
                            <div class="row" style="padding: 5px;">
                                <div class="col-md-3 text-center divTitle">موديل الكمبيوتر | Computer Model</div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtComputerModel" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-3 text-center divTitle">نظام التشغيل | Operating System
                                    <asp:RequiredFieldValidator ID="rfvOS" runat="server" ControlToValidate="ddlOS" ForeColor="Red" ErrorMessage="*" />
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="ddlOS" runat="server" CssClass="form-control">
                                        <asp:ListItem Selected="True" Value="">--اختر</asp:ListItem>
                                        <asp:ListItem Value="1">Windows 10</asp:ListItem>
                                        <asp:ListItem Value="2">Windows 8</asp:ListItem>
                                        <asp:ListItem Value="3">Windows 7</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row" style="padding: 5px;">
                                <div class="col-md-3 text-center divTitle">مسمى الجهاز داخل الشبكة | Device name inside network</div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtDomainName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-3 text-center divTitle">العنوان الفيزيائي | Mac Address</div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtMAcAddress" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<div class="col-md-3" style="padding: 0px 5px; margin: 0px; width: 15%;"><asp:TextBox ID="TextBox5" runat="server" CssClass="form-control text"></asp:TextBox></div>
                                    <div style="float: right; padding: 10px 0px; margin: 0px">-</div>
                                    <div class="col-md-3" style="padding: 0px 5px; margin: 0px; width: 15%;"><asp:TextBox ID="TextBox7" runat="server" CssClass="form-control text"></asp:TextBox></div>
                                    <div style="float: right; padding: 10px 0px; margin: 0px">-</div>
                                    <div class="col-md-3" style="padding: 0px 5px; margin: 0px; width: 15%;"><asp:TextBox ID="TextBox8" runat="server" CssClass="form-control text"></asp:TextBox></div>
                                    <div style="float: right; padding: 10px 0px; margin: 0px">-</div>
                                    <div class="col-md-3" style="padding: 0px 5px; margin: 0px; width: 15%;"><asp:TextBox ID="TextBox9" runat="server" CssClass="form-control text"></asp:TextBox></div>
                                    <div style="float: right; padding: 10px 0px; margin: 0px">-</div>
                                    <div class="col-md-3" style="padding: 0px 5px; margin: 0px; width: 15%;"><asp:TextBox ID="TextBox10" runat="server" CssClass="form-control text"></asp:TextBox></div>
                                    <div style="float: right; padding: 10px 0px; margin: 0px">-</div>
                                    <div class="col-md-3" style="padding: 0px 5px; margin: 0px; width: 15%;"><asp:TextBox ID="TextBox11" runat="server" CssClass="form-control text"></asp:TextBox></div>--%>
                                </div>
                            </div>
                            <div class="row" style="padding: 5px;">
                                <div class="col-md-3 text-center divTitle">نوع الخدمة | Service Type
                                    <asp:RequiredFieldValidator ID="rfvServiceType" runat="server" ControlToValidate="ddlServiceType" ForeColor="Red" ErrorMessage="*" />
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="ddlServiceType" runat="server" CssClass="form-control">
                                        <asp:ListItem Selected="True" Value="">--اختر</asp:ListItem>
                                        <asp:ListItem Value="1">دعم فني - Technical Support</asp:ListItem>
                                        <asp:ListItem Value="2">إضافة الى نطاق - Add to domain</asp:ListItem>
                                        <asp:ListItem Value="3">شبكات - Networks</asp:ListItem>
                                        <asp:ListItem Value="4">تثبيت برامج - Software installation</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-3 text-center divTitle">عنوان الإنترنت | IP Address</div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtIP" runat="server" CssClass="form-control"></asp:TextBox>
                                    <%--<div class="col-md-3" style="padding: 0px 5px; margin: 0px; width: 20%;"><asp:TextBox ID="TextBox6" runat="server" CssClass="form-control text"></asp:TextBox></div>
                                    <div style="float: right; padding: 10px 2px; margin: 0px">.</div>
                                    <div class="col-md-3" style="padding: 0px 5px; margin: 0px; width: 20%;"><asp:TextBox ID="TextBox12" runat="server" CssClass="form-control text"></asp:TextBox></div>
                                    <div style="float: right; padding: 10px 2px; margin: 0px">.</div>
                                    <div class="col-md-3" style="padding: 0px 5px; margin: 0px; width: 20%;"><asp:TextBox ID="TextBox13" runat="server" CssClass="form-control text"></asp:TextBox></div>
                                    <div style="float: right; padding: 10px 2px; margin: 0px">.</div>
                                    <div class="col-md-3" style="padding: 0px 5px; margin: 0px; width: 20%;"><asp:TextBox ID="TextBox14" runat="server" CssClass="form-control text"></asp:TextBox></div>--%>
                                </div>
                            </div>
                            <div class="row" style="padding: 5px;">
                                <div class="col-md-3 text-center divTitle">الوصف | Description</div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">
                <asp:LinkButton ID="btnSubmit" runat="server" CssClass="btn btn-success" OnClick="btnSubmit_Click">Submit | تقديم</asp:LinkButton>
            </div>
        </div>
        <br />
    </div>
</asp:Content>

