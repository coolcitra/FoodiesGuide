<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" MasterPageFile ="MasterPage.master" %>

<asp:Content ID ="Content1" ContentPlaceHolderID ="head" runat="server" >
    <title >Home</title>
</asp:Content>
<asp:Content ID ="Content2" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server" >

    <div class ="wrapper" >
        <div class ="container" >
            <asp:ImageButton  ID="img1" runat ="server" ImageUrl ="images/home.jpg" Width ="1000px" Height ="450px" />    
                        
        </div>
        
        <div class ="push" ></div>
    </div>
</asp:Content>
