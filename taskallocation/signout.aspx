<%@ Page Title="" Language="C#" MasterPageFile="~/generaluser.master" AutoEventWireup="true" CodeFile="signout.aspx.cs" Inherits="signout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 302px;
        }
        .style7
        {
            height: 302px;
            width: 451px;
        }
        .style8
        {
            height: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style7">
                <asp:Image ID="Image2" runat="server" 
                    ImageUrl="~/images/9000049652-002 - Copy.jpg" />
            </td>
            <td align="center" class="style6" 
                style="font-family: 'Iskoola Pota'; background-color: #FFFFFF;">
                <table class="style1" style="height: 169px">
                    <tr>
                        <td class="style8">
                Sign Out Succesfully Completed</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

