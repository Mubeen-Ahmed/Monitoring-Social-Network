<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminuser.master" AutoEventWireup="true" CodeFile="employee registration.aspx.cs" Inherits="admin_employee_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 634px;
    }
        .style5
        {
            width: 634px;
            height: 269px;
        }
        .style6
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table class="style8">
        <tr>
            <td>


                <table class="style9">
                    <tr>
                        <td class="style5">
                            <table class="style10">
                                <tr>
                                    <td align="right" class="style11" style="background-color: #FF99CC">
                                        Employee Registration</td>
                                    <td style="background-color: #FF99CC">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        First Name</td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="first name">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        Last Name</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="TextBox2" ErrorMessage="Last name">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        Gender</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="181px" 
                                            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                            <asp:ListItem Value="--select gender--"></asp:ListItem>
                                            <asp:ListItem>male</asp:ListItem>
                                            <asp:ListItem>female</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                            ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="Gender" 
                                            Operator="NotEqual" ValueToCompare="--select gender--">*</asp:CompareValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                            ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator">+</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        Qualification</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="181px">
                                            <asp:ListItem>--select qalification--</asp:ListItem>
                                            <asp:ListItem>btech</asp:ListItem>
                                            <asp:ListItem>graduation</asp:ListItem>
                                            <asp:ListItem>msc</asp:ListItem>
                                            <asp:ListItem>bcom</asp:ListItem>
                                            <asp:ListItem>bsc</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                            ControlToValidate="DropDownList2" Display="Dynamic" 
                                            ErrorMessage="Qualification" Operator="NotEqual" 
                                            ValueToCompare="--Select Qualification--">*</asp:CompareValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                            ControlToValidate="DropDownList2" ErrorMessage="RequiredFieldValidator">+</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        Technology</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" Width="181px">
                                            <asp:ListItem>--select technology--</asp:ListItem>
                                            <asp:ListItem>.net</asp:ListItem>
                                            <asp:ListItem>sap</asp:ListItem>
                                            <asp:ListItem>java</asp:ListItem>
                                            <asp:ListItem>oracle</asp:ListItem>
                                            <asp:ListItem>php</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:CompareValidator ID="CompareValidator3" runat="server" 
                                            ControlToValidate="DropDownList3" Display="Dynamic" ErrorMessage="*" 
                                            Operator="NotEqual" ValueToCompare="--Select Technology--"></asp:CompareValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                            ControlToValidate="DropDownList3" ErrorMessage="+"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        Designation</td>
                                    <td>
                                        <asp:DropDownList ID="ddldesignation" runat="server" Height="22px" 
                                            Width="181px">
                                        </asp:DropDownList>
                                        <asp:CompareValidator ID="CompareValidator4" runat="server" 
                                            ControlToValidate="ddldesignation" Display="Dynamic" ErrorMessage="Designation" 
                                            Operator="NotEqual" ValueToCompare="--Select Designation--">*</asp:CompareValidator>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" style="background-color: #FF99FF">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            Communication Details</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <table class="style14">
                                <tr>
                                    <td class="style15">
                                        Address</td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" Height="76px" TextMode="MultiLine" 
                                            Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style15">
                                        Mobile Number</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" Width="170px"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                            ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="mobile number" 
                                            ValidationExpression="^\+91-\d{5}-\d{5}$">Invalid  number</asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="TextBox3" Display="Dynamic" 
                                            ErrorMessage="number cant be empty">mobile</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style15">
                                        Format : +91-xxxxxx-xxxxxx</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style15">
                                        Email Id</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" Width="166px"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                            ControlToValidate="TextBox4" Display="Dynamic" 
                                            ErrorMessage="Give in specified format" 
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email </asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="background-color: #FF99CC">
                        <td class="style4">
                            Sign In Information</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <table class="style16">
                                <tr>
                                    <td class="style17">
                                        Username</td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Username">Username</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style17">
                                        Password</td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Password">Password</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style17" >
                                        Confirm Password</td>
                                    <td >
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator5" runat="server" 
                                            ControlToCompare="TextBox7" ControlToValidate="TextBox8" Display="Dynamic" 
                                            ErrorMessage="invalid pwsd">invalid pwsd</asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style6">
                                        <asp:Button ID="Button1" runat="server" Text="Submit" Width="78px" 
                                            onclick="Button1_Click" />
                                    </td>
                                    <td class="style6">
                                        <asp:Button ID="Button2" runat="server" Text="Clear" Width="85px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style6">
                                        &nbsp;</td>
                                    <td class="style6">
                                        <asp:Label ID="errr" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>


            </td>
        </tr>
    </table>




</asp:Content>

