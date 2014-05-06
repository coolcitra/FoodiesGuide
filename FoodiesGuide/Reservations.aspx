<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reservations.aspx.cs" Inherits="Reservations" MasterPageFile="MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Reservations</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">
        <div class="container">
            <div class="loginbox" style="width: 370px; margin-top: 70px;">

                <div class="username">
                    <label class="labelcontrol">
                        Reservations</label>
                    <div class="label_info">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class="username">
                    <label class="labelcontrol">
                        Description</label>
                    <div class="label_info">
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="username">
                    <label class="labelcontrol">
                        Restaurant</label>
                    <div class="label_info">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="username">
                    <div class="label_info">
                        <div class="login_btn">
                            <%-- --%>
                            <asp:LinkButton ID="btnLogin" Text="Add" ValidationGroup="LoginGroup"
                                runat="server" ForeColor="White" OnClick="btnLogin_Click" />
                        </div>

                    </div>

                </div>
            </div>
            <br />
            <asp:GridView ID="grd" runat="server" AllowPaging="True" HeaderStyle-CssClass="hdrGrid" RowStyle-CssClass="rowGrid" CssClass="grdCourse" OnRowDataBound="grd_RowDataBound" OnRowDeleting="grd_RowDeleting">
                <Columns>
                    <%--<asp:ButtonField CommandName ="Add" Text ="Add"  />--%>
                    <%-- <asp:ButtonField CommandName="Edit" Text="Edit" />--%>
                    <asp:ButtonField CommandName="Delete" Text="Delete" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="push">
        </div>
    </div>

</asp:Content>
