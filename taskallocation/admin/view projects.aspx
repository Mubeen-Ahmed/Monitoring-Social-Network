<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminuser.master" AutoEventWireup="true" CodeFile="view projects.aspx.cs" Inherits="admin_view_projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 100%;
    }
    .style5
    {
        height: 69px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
    <tr>
        <td class="style5">
            <asp:GridView ID="GridView1" runat="server" Width="686px">
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

