<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="projects.aspx.cs" Inherits="user_projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #CC0000; font-size: large; font-weight: bold;">
                Here Are the Projects which You can View&nbsp; .</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" EnableModelValidation="True" ForeColor="#333333" 
                    GridLines="None" Width="636px" 
        onrowdatabound="GridView1_RowDataBound" onrowcommand="GridView1_RowCommand" 
       >
               <AlternatingRowStyle BackColor="White" />
                <Columns>

                 <asp:TemplateField>
                <ItemTemplate>
                <asp:Label ID="projectid" runat="server" Text='<%#Eval("projectid")%>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                <ItemTemplate>
                <asp:Label ID="empid" runat="server" Text='<%#Eval("empid")%>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                <ItemTemplate>
                <asp:Label ID="lbltxt" runat="server" Text='<%#Eval("projectname")%>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                <HeaderTemplate> projects </HeaderTemplate>
                <ItemTemplate>
                <asp:LinkButton ID="link1" runat="server"  Text='view project' CommandArgument='<%#Eval("projectid")%>' CommandName="View"> </asp:LinkButton>
                </ItemTemplate>
                </asp:TemplateField>
                </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </asp:Content>

