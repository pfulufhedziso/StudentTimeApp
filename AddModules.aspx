<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddModules.aspx.cs" Inherits="StudentTimeApp.AddModules" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
$(function () {
$("#datepicker").datepicker(
{
changeMonth: true,
changeYear: true,
dateFormat: 'mm/dd/yy'
});
});
</script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 375px;
        }
        .auto-style3 {
            width: 160px;
        }
        .auto-style5 {
            width: 328px;
        }
        .auto-style6 {
            width: 350px;
        }
        .auto-style7 {
            width: 484px;
        }
        .auto-style8 {
            text-align: right;
        }
    </style>
</head>
<body style="background-color: #e6e2d3">
    <form id="form1" runat="server">
        <div ">
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="PLEASE ENTER YOUR USER ID:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="UserID_txtbox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ForeColor="Red" ID="RegularExpressionValidator1" ControlToValidate="UserID_txtbox" ErrorMessage="ERROR INPUT NOT A NUMBER" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
                <td rowspan="9">
                    <asp:GridView ID="GridView1" runat="server" Height="290px" Width="557px">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="PLEASE ENTER MODULE CODE:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="ModuleCode_txtbox" runat="server"></asp:TextBox>
                    
                      
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="PLEASE ENTER MODULE NAME:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="ModuleName_txtbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="PLEASE ENTER MODULE CREDITS:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="ModuleCredit_txtbox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ForeColor="Red" ID="RegularExpressionValidator2" ControlToValidate="ModuleCredit_txtbox" ErrorMessage="ERROR INPUT NOT A NUMBER" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="PLEASE PICK SEMESTER START DATE:"></asp:Label>
                </td>
                <td class="auto-style3"><asp:TextBox ID="datepicker" runat="server" /></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="PLEASE ENTER CLASS HOURS PER WEEK:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Hours_txtbox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ForeColor="Red" ID="RegularExpressionValidator3" ControlToValidate="Hours_txtbox" ErrorMessage="ERROR INPUT NOT A NUMBER" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Please enter number of weeks in the semester:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="SemesterWeeks_txtbox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ForeColor="Red" ID="RegularExpressionValidator4" ControlToValidate="SemesterWeeks_txtbox" ErrorMessage="ERROR INPUT NOT A NUMBER" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="PLEASE ENTER NUMBER OF HOURS YOU'VE STUDIED:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Studied_txtbox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ForeColor="Red" ID="RegularExpressionValidator5" ControlToValidate="Studied_txtbox" ErrorMessage="ERROR INPUT NOT A NUMBER" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="PLEASE ENTER THE DATE WHEN YOU WERE STUDYING:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="StudingDay" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Display_btn" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" Text="DISPLAY" Width="236px" OnClick="Display_btn_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="AddMore_btn" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" Text="ADD MORE" Width="245px" OnClick="AddMore_btn_Click" />
                </td>
                <td>
                    <asp:Button ID="Back_btn" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" Text="BACK" Width="247px" OnClick="Back_btn_Click" />
                </td>
            </tr>
        </table>
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Update_btn" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" Height="71px" OnClick="Update_btn_Click" Text="UPDATE" Width="407px" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Delete_btn" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" Height="76px" OnClick="Delete_btn_Click" Text="DELETE" Width="405px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
