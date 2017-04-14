<%@ Page Title="" Language="C#" MasterPageFile="~/generaluser.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 185px;
        }
        .style7
        {
            height: 185px;
            width: 370px;
        }
        .style8
        {
            width: 140px;
        }
        .style9
        {
            width: 269px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 223px">
        <tr>
            <td class="style7">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/42-22996435.jpg" 
                    Width="370px" />
            </td>
            <td class="style6">
                <table class="style1">
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style9">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            Username</td>
                        <td class="style9">
                            <asp:TextBox ID="TextBox1" runat="server" Width="147px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style9">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            Password</td>
                        <td class="style9">
                            <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style9">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style9">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Sign In" 
                                Width="97px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Height="26px" Text="Clear" 
                                Width="83px" onclick="Button2_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="sign2" 
                                Width="100px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style9">
                            <asp:Label ID="lblerromsg" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

