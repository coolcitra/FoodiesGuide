<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Indian.aspx.cs" MasterPageFile="MasterPage.master" Inherits="Indian" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <title>Indian</title>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <div class="wrapper">
        <div class="container">

            <div class="loginbox" style="width: 960px; height: 350px; margin-top: 60px">
                <%-- <asp:Label ID="holder" runat ="server" ></asp:Label>--%>
                <div>
                    <h1>Indian Place
                    </h1>
                    <asp:Image ID="Image1" CssClass="loginbox1" runat="server" ImageUrl="~/images/Indian5.jpg" Width="300" Height="180" />
                    <div style ="float:left;position :relative;width :550px;font-size :15px;font-family: 'RobotoLight' ,Sans-Serif;color :black  ;height :200px;margin-left :20px;">
                        Fun, fresh and contemporary are adjectives that spring to mind when you first come to a Tandoori Oven location. The Indian Place experience is unlike any other Indian restaurant you've ever visited.
                        <br />
                        <br />
                        <span style ="font-weight :bold ;font-size :16px;margin-bottom :5px;margin-top :0px">Event</span>
                        <asp:ListBox ID="listBox1" runat="server" Width="550px" CssClass="listbx" Height="100px"></asp:ListBox>
                        <br />
                        We have the highest commitment to a healthy lifestyle so neither ghee or hydrogenated oils are used in our cooking process.
                        Where oil is used, we use natural soy oil and in considerably less quantities than you may have come to expect from Indian cuisine.
                    </div>
                </div>
                           </div>
        </div>
        <div class="push">
        </div>
    </div>
</asp:Content>
