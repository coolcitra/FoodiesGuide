<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Mexican.aspx.cs" Inherits="Mexican" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Mexican</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper">
        <div class="container">

            <div class="loginbox" style="width: 960px; height: 370px; margin-top: 60px">
                <%-- <asp:Label ID="holder" runat ="server" ></asp:Label>--%>

                <table>
                    <tr>
                        <td>
                            <h1>La Victoria Taqueria</h1>
                            <asp:Image ID="Image2" runat="server" ImageUrl="images/rating4.jpg" Width="120" Height="30" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image3" CssClass="loginbox1" runat="server" ImageUrl="images/mexicanFood.jpg" Width="300" Height="180" />
                        </td>

                        <td>
                            <div style="float: left; position: relative; width: 550px; font-size: 15px; font-family: 'RobotoLight' ,Sans-Serif; color: black; height: 200px; margin-left: 20px;">
                               Over the years, it has evolved in to a very popular go to place in the South Bay.  
                                From breakfast burrito to your typical carne asada super or regular tacos, La Vic’s food is unique in every way. 
                                 First of all, the food is incredibly tasty and served fresh at all times.  
                                Secondly, the price is right and third but certainly not least, La Vic’s is the only place on the planet that serves the Orange Sauce.
                        <br />
                                <br />
                               Yes, the Orange Sauce is what La Vic’s is well known for. 
                                 If you have not had La Vic’s, you need to get your self to one of the five locations in the Bay Area and order anything on the menu but don’t forget to ask for the Orange sauce.
                            </div>
                        </td> 
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <div style="float: left; position: relative; font-size: 17px; font-family: 'RobotoLight' ,Sans-Serif; color: black; margin-left: 20px; font-weight: bold">
                                Downtown
                                <br />
                                140 E San Carlos St
                                <br />
                                San Jose, CA 95112
                                <br />
                                (408)298-5335
                                <br />
                                <a href="http://www.lavicsj.com/LaVictoria.html"> lavicsj.com/ </a>
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

