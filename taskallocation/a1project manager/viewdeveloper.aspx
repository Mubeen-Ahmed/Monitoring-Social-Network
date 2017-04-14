<%@ Page Title="" Language="C#" MasterPageFile="~/a1project manager/pmusermaster.master" AutoEventWireup="true" CodeFile="viewdeveloper.aspx.cs" Inherits="a1project_manager_viewdeveloper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        height: 43px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style7">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                Width="1177px" onselectedindexchanged="GridView1_SelectedIndexChanged">
              <Columns>
              <asp:TemplateField>             
              <HeaderTemplate>firstname</HeaderTemplate>
              <ItemTemplate>
              <%#Eval("firstname")%>
              </ItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField>
              <HeaderTemplate>taskname</HeaderTemplate>
              <ItemTemplate>
              <%#Eval("taskname")%>
              </ItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField>
              <HeaderTemplate>status</HeaderTemplate>
              <ItemTemplate>
              <%#Eval("status")%>
              </ItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField>
              <HeaderTemplate>projectname</HeaderTemplate>
              <ItemTemplate>
              <%#Eval("projectname")%>
              </ItemTemplate>
              </asp:TemplateField>
              </Columns>

            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

