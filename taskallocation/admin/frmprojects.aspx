<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminuser.master" AutoEventWireup="true" CodeFile="frmprojects.aspx.cs" Inherits="admin_frmprojects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 250px;
        }
        .style6
        {
            width: 147px;
        }
    .style7
    {
        width: 250px;
        height: 46px;
    }
    .style8
    {
        height: 46px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td class="style5">
                Project Name</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Width="182px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Description</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" Height="76px" TextMode="MultiLine" 
                    Width="225px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Project manager name</td>
            <td colspan="2" class="style8">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="255px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style6">
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="119px" 
                    onclick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Clear" Width="117px" />
            </td>
        </tr>
    </table>
</asp:Content>

