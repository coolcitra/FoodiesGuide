<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Japanese.aspx.cs" Inherits="Japanese" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title >Japanese</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="wrapper">
        <div class="container">

            <div class="loginbox" style="width: 960px; height: 350px; margin-top: 60px">
                <%-- <asp:Label ID="holder" runat ="server" ></asp:Label>--%>
                <div>
                    <h1>Kansai
                    </h1>
                    
                    <asp:Image ID="Image1" CssClass="loginbox1" runat="server" ImageUrl="~/images/Indian5.jpg" Width="300" Height="180" />
                    <div style ="float:left;position :relative;width :550px;font-size :15px;font-family: 'RobotoLight' ,Sans-Serif;color :black  ;height :200px;margin-left :20px;">
                        Welcome to Kansai – San Jose!  We offer high quality Sushi and Sashimi with one of the best All-You-Can-Eat specials!  Please feel free to take a look around at our menu and what we have to offer. 
                         We serve high quality Sushi such as our famous “Mango Crunch” and “Mamasitta” rolls.
                        <br />
                        <br />
                        <span style ="font-weight :bold ;font-size :16px;margin-bottom :5px;margin-top :0px">Event</span>
                        <asp:ListBox ID="listBox1" runat="server" Width="550px" CssClass="listbx" Height="100px"></asp:ListBox>
                        <br />
                       Our bento boxes come with excellent portions and we offer a wide variety of items such as Chicken and Beef Teriyaki, Tempura, and so much more.
                    </div>
                </div>
                           </div>
        </div>
        <div class="push">
        </div>
    </div>
</asp:Content>

