<%@ Page Title="" Language="C#" MasterPageFile="~/a1project manager/pmusermaster.master" AutoEventWireup="true" CodeFile="inbox.aspx.cs" Inherits="a1project_manager_inbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" onrowcommand="GridView1_RowCommand"  AutoGenerateColumns="false"
                onrowdatabound="GridView1_RowDataBound">
            <Columns>

            <asp:TemplateField>
            <HeaderTemplate >Project Name</HeaderTemplate>
            <ItemTemplate>
            <%#Eval("projectname")%>
            </ItemTemplate>
            </asp:TemplateField>



            <asp:TemplateField>
            <HeaderTemplate >UserName </HeaderTemplate>
            <ItemTemplate>
            <%#Eval("firstname")%>
            </ItemTemplate>
            </asp:TemplateField>
            


            <asp:TemplateField>
            <HeaderTemplate >Message  </HeaderTemplate>
            <ItemTemplate>
            <%#Eval("message")%>
            </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
            <HeaderTemplate >Status</HeaderTemplate>
            <ItemTemplate>
            <%#GetStatus(Eval("status"))%>
            </ItemTemplate>
            </asp:TemplateField> 

            <asp:TemplateField>
            <ItemTemplate>
            <asp:HiddenField ID="hdnStatus"  runat="server" Value='<%#Eval("status")%>'/>
            <asp:LinkButton ID="lbnAccept" runat="server" CommandArgument='<%#Eval("pkID")%>' CommandName="Accept" Text="Accept"></asp:LinkButton>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
            <ItemTemplate>
            <asp:LinkButton ID="lbnReject" runat="server" CommandArgument='<%#Eval("pkID")%>' CommandName="Reject" Text="Reject"></asp:LinkButton>
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
    <tr>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

