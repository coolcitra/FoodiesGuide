<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Login" MasterPageFile="MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Register</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="container">
            <div class="welcometxt_box">
                <div class="welcome_txt" style="background-color:coral; width: 400px; margin-left:-390px; font-family:'Brush Script MT'; font-size:28px">
                  Welcome
                </div>
            </div>
            <div class="loginbox" style="width: 370px; background-color:beige; border-color:coral">
                <div class="logintxt_box">
                    <h1 style="font-family:'Brush Script MT'; font-size:25px">Register
                    </h1>
                </div>
                <div class="username">
                    <label class="labelcontrol" style="font-family:'Brush Script MT'; font-size:23px">
                        Name</label>
                    <div class="label_info">
                        <asp:TextBox ID="txt1" runat="server" BackColor="PowderBlue"></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt1"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="username">
                    <label class="labelcontrol" style="font-family:'Brush Script MT'; font-size:23px">
                        Email</label>
                    <div class="label_info">
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="PowderBlue"></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="username">
                    <label class="labelcontrol" style="font-family:'Brush Script MT'; font-size:23px">
                        Phone Number</label>
                    <div class="label_info">
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="PowderBlue"></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="username">
                    <label class="labelcontrol" style="font-family:'Brush Script MT'; font-size:23px">
                        Password</label>
                    <div class="label_info">
                        <asp:TextBox ID="txt2" runat="server" TextMode="Password" BackColor="PowderBlue"></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt2"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="username">
                    <label class="labelcontrol" style="font-family:'Brush Script MT'; font-size:23px">
                        Confirm Password</label>
                    <div class="label_info">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" BackColor="PowderBlue"></asp:TextBox>&nbsp;&nbsp;
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
