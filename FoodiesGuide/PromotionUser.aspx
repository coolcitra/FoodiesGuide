<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="PromotionUser.aspx.cs" Inherits="PromotionUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class ="wrapper" >
        <div class ="container" >
            <br />
            <br />
            <asp:GridView ID="grd" runat="server" AllowPaging="True" HeaderStyle-CssClass ="hdrGrid" RowStyle-CssClass ="rowGrid" CssClass ="grdCourse"   OnRowDataBound="grd_RowDataBound" OnRowDeleting="grd_RowDeleting" OnRowEditing="grd_RowEditing">
        <Columns >
            <%--<asp:ButtonField CommandName ="Add" Text ="Add"  />--%>
           <%-- <asp:ButtonField CommandName="Edit" Text="Edit"  />
            <asp:ButtonField CommandName="Delete" Text="Delete" />--%>
        </Columns>
    </asp:GridView>
            </div> 
        <div class ="push" >

    </div>
        </div> 
</asp:Content>

