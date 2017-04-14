<%@ Page Language="C#" AutoEventWireup="true" CodeFile="popup.aspx.cs" Inherits="admin_popup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Height="143px" Width="1191px">

                    <Columns>
                    <asp:TemplateField>
                    <ItemTemplate>
                    <%#Eval("firstname")%>
                    </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                    <ItemTemplate>
                    <%#get_gender(Convert.ToBoolean(Eval("gender")))%>
                    </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                    <ItemTemplate>
                    <%#Eval("lastname")%>
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
    </form>
</body>
</html>
