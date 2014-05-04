<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Restaurants.aspx.cs" Inherits="Hotels" MasterPageFile="MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Hotels</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">
        <div class="container">
            <table>
                <tr>
                    <td>
                        <div>
                            <asp:ImageButton ID="img1" runat="server" CssClass="imgH" ImageUrl="images/chineseFood.jpg" OnClick="img1_Click" Height="300px" Width="300px" />
                        </div>
                        <div><b>Chinese Cuisine</b></div>
                    </td>
                    <td>
                        <div>
                            <asp:ImageButton ID="img2" runat="server" CssClass="imgH" ImageUrl="images/japaneseFood.jpg" OnClick="img2_Click" Height="300px" Width="300px" />
                        </div>
                        <div>
                            <b>Japanese Cuisine</b>
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:ImageButton ID="img3" runat="server" ImageUrl="images/indianFood.jpg" CssClass="imgH" OnClick="img3_Click" Height="300px" Width="300px" />
                        </div>
                        <div>
                            <b>Indian Cuisine</b>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div>
                            <asp:ImageButton ID="ImageButton1" CssClass="imgH" runat="server" ImageUrl="images/ThaiFood.jpg" Height="300px" Width="300px" />
                        </div>
                        <div>
                            <b>Thai Cuisine</b>
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:ImageButton ID="ImageButton2" CssClass="imgH" runat="server" ImageUrl="images/mexicanFood.jpg" Height="300px" Width="300px" />
                        </div>
                        <div>
                            <b>Mexican Cuisine</b>
                        </div>
                    </td>
                    <td>
                        <div>
                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="images/italianFood.jpg" CssClass="imgH" Height="300px" Width="300px" />
                        </div>
                        <div>
                            <b>Italian Cuisine</b>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <div class="push">
        </div>
    </div>
</asp:Content>
