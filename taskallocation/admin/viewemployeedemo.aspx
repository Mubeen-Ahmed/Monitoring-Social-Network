<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminuser.master" AutoEventWireup="true" CodeFile="viewemployeedemo.aspx.cs" Inherits="admin_viewemployeedemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            height: 213px;
        }
        .style5
        {
            height: 55px;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td class="style5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Width="707px">
                    <Columns>
                    <asp:TemplateField>
                    <HeaderTemplate>empid </HeaderTemplate>
                    <ItemTemplate>
                    <asp:LinkButton runat="server" ID="getmore" OnClick="more_click1" Text="more.." ></asp:LinkButton>  
                    </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                    <HeaderTemplate>empid </HeaderTemplate>
                    <ItemTemplate>
                    <%#Eval("empid")%>
                    </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField>
                    <HeaderTemplate>mobile number </HeaderTemplate>
                    <ItemTemplate>
                    <%#Eval("mobile")%>
                    </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                    <HeaderTemplate> first name</HeaderTemplate>
                    <ItemTemplate>
                    <%#Eval("firstname")%>
                    </ItemTemplate>
                    </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="707px">
                <Columns>
                <asp:TemplateField>
                <ItemTemplate>
                <%# Eval("lastname")%>
                </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                <ItemTemplate>
                <%#Eval("qualification")%>
                </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                <ItemTemplate>
                 <%#Eval("technology")%>
                </ItemTemplate>
                </asp:TemplateField>
                </Columns>
                </asp:GridView>
               </td>
        </tr>
    </table>
</asp:Content>

