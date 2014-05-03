<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="wrapper">
        <div class="container">

            <div class="loginbox" style="width: 960px; height: 350px; margin-top: 60px;font-size :16px;font-weight :bold ">
                <div style ="margin-left :420px;width :500px;position :absolute;color :black ;font-weight :bold    ">
                Welcome to Foodies.com. <br /> <br />
                If you are looking for restaurants in San Jose, then you are at the right place.! <br /><br />
                Find restaurants in San Jose, their information and provide your reviews for the restaurants you have visited.
                Also check out the special promotions of different restaurants and out their events happening on a regular basis.
            <br />
                <br />
Developed By:<br />
Ashutosh<br />
Chitra<br />
Shashank<br />
Surbhi
                    </div>
                <div style ="float :left;position :absolute   ">
                <asp:Image ID="img1" runat ="server" ImageUrl ="~/images/logo.jpg" Height ="300px" Width ="400px"  />
                </div>
            </div>
        </div>
        <div class="push">
        </div>
    </div>
</asp:Content>

