<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Indian.aspx.cs" MasterPageFile="MasterPage.master" Inherits="Indian" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <title>Indian</title>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <div class="wrapper">
        <div class="container">

            <div class="loginbox" style="width: 960px; height: 350px; margin-top: 60px">
                <%-- <asp:Label ID="holder" runat ="server" ></asp:Label>--%>

                <table>
                    <tr>
                        <td>
                            <h1>Indian</h1>
                            <asp:Image ID="Image2" runat="server" ImageUrl="images/rating4.jpg" Width="120" Height="30" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image3" CssClass="loginbox1" runat="server" ImageUrl="images/indianFood.jpg" Width="300" Height="180" />
                        </td>

                        <td>
                            <div style="float: left; position: relative; width: 550px; font-size: 15px; font-family: 'RobotoLight' ,Sans-Serif; color: black; height: 200px; margin-left: 20px;">
                                Fun, fresh and contemporary are adjectives that spring to mind when you first come to Rangoli. 
                                The Indian Place experience is unlike any other Indian restaurant you've ever visited.
                        <br />
                                <br />
                                We have the highest commitment to a healthy lifestyle so neither ghee or hydrogenated oils are used in our cooking process.
                        Where oil is used, we use natural soy oil and in considerably less quantities than you may have come to expect from Indian cuisine.
                        Find various sweet dishes and enjoy their taste.!
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <div style="float: left; position: relative; font-size: 17px; font-family: 'RobotoLight' ,Sans-Serif; color: black; margin-left: 20px; font-weight: bold">
                                Cambrian Park
                                <br />
                                3695 Union Ave
                                <br />
                                San Jose, CA 95124
                                <br />
                                (408)377-2222
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
                <div style="float: left; position: relative; font-size: 17px; font-family: 'RobotoLight' ,Sans-Serif; color: black; height: 200px; margin-left: 20px; font-weight: bold; top: 26px; left: -15px;">
                    Reviews
                    <asp:GridView ID="grd" runat="server" AllowPaging="True" HeaderStyle-CssClass="hdrGrid" RowStyle-CssClass="rowGrid" CssClass="grdCourse" OnRowDataBound="grd_RowDataBound">
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
