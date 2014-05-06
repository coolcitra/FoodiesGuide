<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login1.aspx.cs" MasterPageFile="MasterPage.master" Inherits="Login1" %>

<asp:Content ID="content1" runat="server" ContentPlaceHolderID="head">
    <title>Login</title>
</asp:Content>
<asp:Content ID="content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="wrapper">
        <div class="container">
            
            <div class="welcometxt_box">
                <div class="welcome_txt" style="background-color:coral; width: 400px; margin-left:119px;font-family:'Brush Script MT'; font-size:28px">
                  Welcome
                </div>
            </div>
            <div class="loginbox" style="width: 370px; background-color:beige; border-color:coral">
                <div class="logintxt_box">
                    <h1 style="font-family:'Brush Script MT'; font-size:25px">Login
                    </h1>
                </div>
                <div class="username">
                    <label class="labelcontrol" style="font-family:'Brush Script MT'; font-size:23px">
                        Email/User</label> 
                    <div class="label_info">
                        <asp:TextBox ID="txtUsername" runat="server" BackColor="PowderBlue" Width="198px"></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class="username">
                    <label class="labelcontrol" style="font-family:'Brush Script MT'; font-size:23px">
                        Password</label>
                    <div class="label_info">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" BackColor="PowderBlue"></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="passforgot">
                    <a href="ForgotPassword.aspx" style="color: #0083ca;">Forgot Your Password?</a>
                </div>
                <%--<div class="login_btn">
                    Login
               </div>--%>
                <div class="username">
                    <div class="label_info">
                        <div class="login_btn">
                            <%-- --%>
                            <asp:LinkButton ID="btnLogin" Text="Login" font-size="Small" ValidationGroup="LoginGroup"
                                runat="server" ForeColor="White" OnClick="btnLogin_Click" />
                        </div>

                    </div>

                </div>
                <label class="error_handler" id="lblError" runat="server" visible="false">
                    You have entered wrong username or password
                </label>
            </div>
               
        </div>
        
        <div class="push">
        </div>
    </div>
</asp:Content>
