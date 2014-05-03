<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ForgotPassword.aspx.vb" Inherits="ForgotPassword" MasterPageFile ="~/MasterPage.master"  %>

<asp:Content ID="content1" runat ="server" ContentPlaceHolderID ="head" >
    <title >Forgot Password</title>
</asp:Content>
<asp:Content ID ="content2" runat ="server" ContentPlaceHolderID ="ContentPlaceHolder1" >
    <div class ="wrapper" >
        <div class ="container" >
            
            <div class="welcometxt_box">
                <div class="welcome_txt">
                    Welcome
                </div>
            </div>
            <div class="loginbox" style ="width :370px">
                <div class="logintxt_box">
                    <h1>
                        Forgot Password
                    </h1>
                </div>
                <div class="username">
                    <label class="labelcontrol">
                        Email/User</label>
                    <div class="label_info">
                        <asp:TextBox ID="txtUsername" runat="server" ></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>
                

                <%--<div class="username">
                    <label class="labelcontrol">
                        Password</label>
                    <div class="label_info">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ></asp:TextBox>&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>--%>
                
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
                            <asp:LinkButton ID="btnLogin" Text="Mail" ValidationGroup="LoginGroup"
                                runat="server" ForeColor ="White"   />
                        </div>
                       
                    </div>
                     
                </div>
                  <%--<label class="error_handler" id ="lblError" runat ="server" visible ="false" >
                      You have entered wrong username or password </label>--%>         
            </div>
        </div>
      
        <div class ="push" >

        </div>
    </div>
</asp:Content>
