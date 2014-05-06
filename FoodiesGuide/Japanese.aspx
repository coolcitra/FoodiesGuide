﻿<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Japanese.aspx.cs" Inherits="Japanese" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Japanese</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper">
        <div class="container">

            <div class="loginbox" style="width: 960px; height: 350px; margin-top: 60px">
                <%-- <asp:Label ID="holder" runat ="server" ></asp:Label>--%>

                <table>
                    <tr>
                        <td>
                            <h1>Kaita</h1>
                            <asp:Image ID="Image2" runat="server" ImageUrl="images/rating4.jpg" Width="120" Height="30" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image3" CssClass="loginbox1" runat="server" ImageUrl="images/japaneseFood.jpg" Width="300" Height="180" />
                        </td>

                        <td>
                            <div style="float: left; position: relative; width: 550px; font-size: 15px; font-family: 'RobotoLight' ,Sans-Serif; color: black; height: 200px; margin-left: 20px;">
                                Welcome to Kaita – San Jose!  We offer high quality Sushi and Sashimi with one of the best All-You-Can-Eat specials!  
                                Please feel free to take a look around at our menu and what we have to offer. 
                         We serve high quality Sushi such as our famous “Mango Crunch” and “Mamasitta” rolls. 
                        <br />
                                <br />
                                Our bento boxes come with excellent portions and we offer
                                 a wide variety of items such as Chicken and Beef Teriyaki, Tempura, and so much more.
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <div style="float: left; position: relative; font-size: 17px; font-family: 'RobotoLight' ,Sans-Serif; color: black; margin-left: 20px; font-weight: bold">
                                Downtown
                                <br />
                                215 Jackson St
                                <br />
                                San Jose, CA 95112
                                <br />
                                (408)287-5551
                            </div>
                        </td>
                    </tr>
                </table>

                <br />
                <br />
                <br />

                <table id="addreviews" runat="server">
                        <tr>
                            <td>
                                <div class="username">
                                    <label class="labelcontrol">
                                        Add Review</label>
                                    <div style="overflow: auto; height: 62px; width: 250px;">
                                        <asp:TextBox ID="txtreview" Height="62px" runat="server" Width="271px" MaxLength="100"></asp:TextBox>&nbsp;&nbsp;
                                    </div>
                                </div>

                                <div class="username">
                                    <div class="label_info">
                                        <div class="login_btn">
                                            <asp:LinkButton ID="addReview" Text="Add" ValidationGroup="LoginGroup"
                                                runat="server" ForeColor="White" OnClick="addReview_Click" />
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>

                    <br />
                    <div style="float: left; position: relative; font-size: 17px; font-family: 'RobotoLight' ,Sans-Serif; 
                        color: black; height: 200px; margin-left: 20px; font-weight: bold; top: 26px; left: -15px;">
                        Reviews
                    <asp:GridView ID="grd" runat="server" AllowPaging="True" Width="700px"
                        HeaderStyle-CssClass="hdrGrid" RowStyle-CssClass="rowGrid" 
                        CssClass="grdCourse" OnRowDataBound="grd_RowDataBound">
                        <Columns>
                        </Columns>
                    </asp:GridView>
                    </div>
            </div>
        </div>
    </div>
    <div class="push">
    </div>

</asp:Content>

