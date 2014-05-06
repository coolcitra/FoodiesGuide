<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Restaurants.aspx.cs" Inherits="Hotels" MasterPageFile="MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Hotels</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">
        <div class="container">
            <div class="loginbox" style="width: 960px; height: 700px; margin-top: 60px">
                <table>
                    <tr>
                        <td>
                            <div>
                                <asp:ImageButton ID="img1" runat="server" CssClass="imgH" ImageUrl="images/chineseFood.jpg" OnClick="img1_Click" Height="300px" Width="300px" />
                            </div>
                            <div><b><h1><center>Chinese Cuisine</center></h1></b></div>
                        </td>
                        <td>
                            <div>
                                <asp:ImageButton ID="img2" runat="server" CssClass="imgH" ImageUrl="images/japaneseFood.jpg" OnClick="img2_Click" Height="300px" Width="300px" />
                            </div>
                            <div>
                                <div><b><h1><center>Japanese Cuisine</center></h1></b></div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <asp:ImageButton ID="img3" runat="server" ImageUrl="images/indianFood.jpg" CssClass="imgH" OnClick="img3_Click" Height="300px" Width="300px" />
                            </div>
                            <div>
                                <div><b><h1><center>Indian Cuisine</center></h1></b></div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <asp:ImageButton ID="img4" CssClass="imgH" runat="server" ImageUrl="images/ThaiFood.jpg" OnClick="img4_Click" Height="300px" Width="300px" />
                            </div>
                            <div>
                                <div><b><h1><center>Thai Cuisine</center></h1></b></div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <asp:ImageButton ID="img5" CssClass="imgH" runat="server" ImageUrl="images/mexicanFood.jpg" OnClick="img5_Click" Height="300px" Width="300px" />
                            </div>
                            <div>
                                <div><b><h1><center>Mexican Cuisine</center></h1></b></div>
                            </div>
                        </td>
                        <td>
                            <div>
                                <asp:ImageButton ID="img6" runat="server" ImageUrl="images/italianFood.jpg" CssClass="imgH" OnClick="img6_Click" Height="300px" Width="300px" />
                            </div>
                            <div>
                                <div><b><h1><center>Italian Cuisine</center></h1></b></div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="push">
        </div>
    </div>
</asp:Content>
