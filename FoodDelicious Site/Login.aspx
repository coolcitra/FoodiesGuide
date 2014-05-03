<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Register</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="container">
            <div class="welcometxt_box">
                <div class="welcome_txt">
                    Welcome
                </div>
            </div>
            <div class="loginbox">
                <div class="logintxt_box">
                    <h1>
                        Register
                    </h1>
                </div>
                <div class="username">
                    <label class="labelcontrol">
                        Name</label>
                    <div class="label_info">
                        <asp:TextBox ID="txt1" runat="server" ></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt1"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="username">
                    <label class="labelcontrol">
                        Email</label>
                    <div class="label_info">
                        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="username">
                    <label class="labelcontrol">
                        Phone Number</label>
                    <div class="label_info">
                        <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="username">
                    <label class="labelcontrol">
                        Password</label>
                    <div class="label_info">
                        <asp:TextBox ID="txt2" runat="server" TextMode="Password" ></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt2"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="username">
                    <label class="labelcontrol">
                        Confirm Password</label>
                    <div class="label_info">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" ></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <%--<div class="passforgot">
                    <a href="#" style="color: #0083ca;">Forgot Your Password?</a>
                </div>--%>
                <%--<div class="login_btn">
                    Login
               </div>--%>
                <div class="username">
                    <div class="label_info">
                        <div class="login_btn">
                            <%-- --%>
                            <asp:LinkButton ID="btnLogin" OnClick="btnLogin_Click" Text="Register" ValidationGroup="LoginGroup"
                                runat="server" ForeColor ="White" CssClass="d1" />
                        </div>
                       
                    </div>
                     
                </div>
                  <%--<label class="error_handler" id ="lblError" runat ="server" visible ="false" >
                      You have entered wrong username or password </label>--%>         
            </div>
        </div>
        <div class="push">
        </div>
    </div>
</asp:Content>
