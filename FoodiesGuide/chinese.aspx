<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="chinese.aspx.cs" Inherits="chinese" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title >Chinese</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper">
        <div class="container">

            <div class="loginbox" style="width: 960px; height: 350px; margin-top: 60px">
                <%-- <asp:Label ID="holder" runat ="server" ></asp:Label>--%>
                <div>
                    <h1> Ruby Chinese 
                    </h1>
                    <asp:Image ID="Image1" CssClass="loginbox1" runat="server" ImageUrl="~/images/Indian5.jpg" Width="300" Height="180" />
                    <div style ="float:left;position :relative;width :550px;font-size :15px;font-family: 'RobotoLight' ,Sans-Serif;color :black  ;height :200px;margin-left :20px;">
                         Ruby Chinese's is a great restaurant for friends and family.
                         Our staff are friendly and courteous for whatever the occasion.
                         Be it a lunch break, a dinner with friends or even a quick take out meal! We're here. 
                        <br />
                        <br />
                        <span style ="font-weight :bold ;font-size :16px;margin-bottom :5px;margin-top :0px">Event</span>
                        <asp:ListBox ID="listBox1" runat="server" Width="550px" CssClass="listbx" Height="100px"></asp:ListBox>
                        <br />
                        The food is fresh and ready to go! We believe you'll enjoy.
                         Thank you for the San Jose community's patronage. 
                    </div>
                </div>
                           </div>
        </div>
        <div class="push">
        </div>
    </div>
</asp:Content>

