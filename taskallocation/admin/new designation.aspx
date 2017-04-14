<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminuser.master" AutoEventWireup="true" CodeFile="new designation.aspx.cs" Inherits="admin_new_designation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 173px;
        }
    .style6
    {
        width: 171px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Desig name</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Width="223px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Designation description</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" Height="55px" TextMode="MultiLine" 
                    Width="228px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">

                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="font-weight: 700" Text="Submit" Width="136px" />

            </td>
            <td>

                <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>

            </td>
        </tr>
    </table>
</asp:Content>

