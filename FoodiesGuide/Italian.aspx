<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Italian.aspx.cs" MasterPageFile="MasterPage.master" Inherits="Italian" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <title>Italian</title>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <div class="wrapper">
        <div class="container">

            <div class="loginbox" style="width: 960px; height: 350px; margin-top: 60px">
                <%-- <asp:Label ID="holder" runat ="server" ></asp:Label>--%>

                <table>
                    <tr>
                        <td>
                            <h1>Mio Vicino</h1>
                            <asp:Image ID="Image2" runat="server" ImageUrl="images/rating4.jpg" Width="120" Height="30" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image3" CssClass="loginbox1" runat="server" ImageUrl="images/italianFood.jpg" Width="300" Height="180" />
                        </td>

                        <td>
                            <div style="float: left; position: relative; width: 550px; font-size: 15px; font-family: 'RobotoLight' ,Sans-Serif; color: black; height: 200px; margin-left: 20px;">
                               The year was 1992 when a talented Italian chef and his business partner opened 
                                the first Mio Vicino in it's current location on the corner of Benton and Monroe streets in old 
                                town Santa Clara. Their approach was simple: Create a place where anyone can stop in, 
                                enjoy the finest Italian food, a premium wine list, relax amid the buzzing atmosphere, 
                                and come away feeling like they've just visited an old friend for dinner.
                        <br />
                                <br />
                                The restaurant even remains privately owned and operated by one of the store's 
                                original employees! For that reason, you can count on only the highest quality 
                                ingredients in our original traditional and California-inspired Italian recipesand of 
                                course our quick, friendly service.
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <div style="float: left; position: relative; font-size: 17px; font-family: 'RobotoLight' ,Sans-Serif; color: black; margin-left: 20px; font-weight: bold">
                                1290 Benton St
                                <br />
                                Santa Clara, CA 95050
                                <br />
                                (408)241-9414
                                <br />
                                <a href="http://miovicino-santaclara.com/" > miovicino-santaclara.com/ </a>
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
