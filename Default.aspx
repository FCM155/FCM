<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .table{
            margin-bottom: 0px;
        }
        .table th{
            text-align: center;
        }
        .table td{
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12 text-left">
            <asp:LinkButton ID="btnRequestAdd" runat="server"  CssClass="btn btn-success" PostBackUrl="~/requestAdd.aspx">New Request</asp:LinkButton>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Requests List | قائمة الطلبات
                </div>
                <div class="panel-body" style="padding: 0px;">
                    <asp:GridView ID="gvRequestList" CssClass="table table-striped table-condensed" GridLines="none" runat="server" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField HeaderText="Request No">
                                <ItemTemplate>
                                    <asp:Label ID="lblRequestNo" runat="server" Text='<%# Eval("RequestNo") %>' />
                                </ItemTemplate>
                                <HeaderStyle Width="20%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status">
                                <ItemTemplate>
                                    <asp:Label ID="lblRequestStatus" runat="server" Text='<%# ((Eval("RequestStatus").ToString() == "N") ? "New" : "Done") %>' />
                                </ItemTemplate>
                                <HeaderStyle Width="20%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Created Date">
                                <ItemTemplate>
                                    <asp:Label ID="lblCreatedDate" runat="server" Text='<%# String.Format("{0:yyyy/MM/dd}", Eval("CreatedDate")) %>' />
                                </ItemTemplate>
                                <HeaderStyle Width="20%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Changed Date">
                                <ItemTemplate>
                                    <asp:Label ID="lblCreatedDate" runat="server" Text='<%# String.Format("{0:yyyy/MM/dd}", Eval("ChangedDate")) %>' />
                                </ItemTemplate>
                                <HeaderStyle Width="20%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnReqView" runat="server"  CssClass="btn btn-sm btn-warning" PostBackUrl='<%# String.Format("~/requestView.aspx?i={0}", Eval("RequestNo")) %>'>View</asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="10%" />
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <div class="alert alert-warning">
                                No Data
                            </div>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

