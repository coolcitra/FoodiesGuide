<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Thai.aspx.cs" Inherits="Thai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Thai</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper">
        <div class="container">

            <div class="loginbox" style="width: 960px; height: 370px; margin-top: 60px">
                <%-- <asp:Label ID="holder" runat ="server" ></asp:Label>--%>

                <table>
                    <tr>
                        <td>
                            <h1>Thai Lovers</h1>
                            <asp:Image ID="Image2" runat="server" ImageUrl="images/rating4.jpg" Width="120" Height="30" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image3" CssClass="loginbox1" runat="server" ImageUrl="images/ThaiFood.jpg" Width="300" Height="180" />
                        </td>

                        <td>
                            <div style="float: left; position: relative; width: 550px; font-size: 15px; font-family: 'RobotoLight' ,Sans-Serif; color: black; height: 200px; margin-left: 20px;">
                                Thai Lovers serves up delightful Asian cuisine sure to please even the most sophisticated Thai tastebuds. 
                                Available dine-in, to-go, our extensive menu features delicious satay, fried tofu, egg rolls and a 
                                wide variety of curries, seafood, fried rice, noodles and BBQ entrees. 
                        <br />
                                <br />
                                Whether you’re looking for pork, beef, chicken, 
                                vegetables or tofu, you will be happy with the options and prices we offer. 
                                And because we use only the freshest ingredients, we know you will be pleased with the taste and quality of whatever you order.
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <div style="float: left; position: relative; font-size: 17px; font-family: 'RobotoLight' ,Sans-Serif; color: black; margin-left: 20px; font-weight: bold">
                                East San Jose
                                <br />
                                1111 Story Road, Ste 1009
                                <br />
                                San Jose, CA 95122
                                <br />
                                (408)286-7759
                                <br />
                                <a href= "http://thailovers.orengeo.com/Clients/360195a592a1405a/nvuamznl.aspx"> thailovers.orengeo.com/</a>
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

