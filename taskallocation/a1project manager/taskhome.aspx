 <%@ Page Title="" Language="C#" MasterPageFile="~/a1project manager/pmusermaster.master" AutoEventWireup="true" CodeFile="taskhome.aspx.cs" Inherits="a1project_manager_task" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            height: 51px;
            width: 565px;
        }
        .style8
    {
        }
        .style9
        {
            height: 235px;
        }
        .style10
        {
            height: 78px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 299px">
        <tr>
            <td class="style7" rowspan="6">
                <asp:Image ID="Image2" runat="server" Height="375px" 
                    ImageUrl="~/images/42-24943326[1].jpg" Width="375px" />
            </td>
            <td class="style8">
                Project name</td>
            

            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="154px">
                </asp:DropDownList>
            </td>
            

        </tr>
        <tr>
            <td class="style8">
                Task name</td>
            

            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            

        </tr>
        <tr>
            <td class="style8">
                Task Description</td>
            

            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="50px" TextMode="MultiLine" 
                    Width="199px"></asp:TextBox>
            </td>
            

        </tr>
        <tr>
            <td class="style8">
                Employee name</td>
            

            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="164px">
                </asp:DropDownList>
            </td>
            

        </tr>
        <tr>
            <td align="right" class="style10">
                <asp:Button ID="Button1" runat="server" Height="27px" style="margin-left: 0px" 
                    Text="Submit" Width="96px" onclick="Button1_Click" />
            </td>
            

            <td class="style10">
                <asp:Label ID="errmsg" runat="server"></asp:Label>
                <asp:Label ID="errmsgs" runat="server"></asp:Label>
                <asp:Button ID="Button2" runat="server" Height="37px" onclick="Button2_Click" 
                    style="margin-bottom: 0px" Text="clear" Width="91px" />
            </td>
            

        </tr>
        <tr>
            <td align="left" class="style9" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Width="606px">

                    <Columns>
                    <asp:TemplateField>
                    <ItemTemplate>
                    <%#Eval("projectname") %>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                    <ItemTemplate>
                    <%#Eval("taskname")%>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                    <ItemTemplate>
                    <%#Eval("taskdecs")%>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                    <ItemTemplate>
                    <%#Eval("status")%>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                    <ItemTemplate>
                    <%#Eval("firstname")%>
                    </ItemTemplate>
                    </asp:TemplateField>
                  
                    </Columns>

                </asp:GridView>
            </td>
            

        </tr>
        </table>
</asp:Content>

