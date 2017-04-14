<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminuser.master" AutoEventWireup="true" CodeFile="employeedisplay.aspx.cs" Inherits="admin_employeedisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            height: 214px;
        }
        .style6
        {
            height: 137px;
        }
        .style7
        {
            width: 284px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td class="style5">
                <asp:GridView ID="GridView1"  runat="server" EnableModelValidation="True" 
                    Width="697px" AutoGenerateColumns="False" 
                    onrowdatabound="GridView1_RowDataBound">
                    <Columns>
                    <asp:TemplateField>
                    <ItemTemplate>
                    <asp:LinkButton runat="server" CommandArgument='<%#Eval("empid") %>' OnClick="more_click" ID="link" Text="More" ></asp:LinkButton>
                    </ItemTemplate>          
                    </asp:TemplateField>
                    <asp:TemplateField>
                    <HeaderTemplate>empid </HeaderTemplate>
                    <ItemTemplate>
                    <%#Eval("empid")%>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                    <HeaderTemplate>firstname </HeaderTemplate>
                    <ItemTemplate>
                    <%#Eval("firstname")%>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                    <HeaderTemplate>gender </HeaderTemplate>
                    <ItemTemplate>
                    <%#Eval("gender")%>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField>
                    <HeaderTemplate>mobile </HeaderTemplate>
                    <ItemTemplate>
                    <%#Eval("mobile")%>
                    </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <table class="style4" runat="server" id="tb1">
                    <tr>
                        <td class="style7">
                            <asp:Label ID="lastname" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lastvalue" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7">
                            <asp:Label ID="qulification" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="qualivalue" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7">
                            <asp:Label ID="username" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="usernamevalue" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7">
                            <asp:Label ID="designame" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="desigvalue" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

