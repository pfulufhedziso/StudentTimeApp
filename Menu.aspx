<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="StudentTimeApp.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 551px;
        }
    </style>
</head>
<body style="height: 336px; background-color: #e6e2d3;">
    <form id="form1" runat="server">
        <div>
        </div>
        <p align="center">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" style="text-align: center; font-size: xx-large" Text="PLEASE PICK AN OPTION:"></asp:Label>
        </p>
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style2" align="left" >
                    <asp:Button ID="ViewModules_btn" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" Height="111px" Text="VIEW MODULES" Width="426px" OnClick="ViewModules_btn_Click" />
                </td>
                <td align="right">
                    <asp:Button ID="AddModules_btn" runat="server" BackColor="White" BorderColor="Black" Height="111px" Text="ADD MODULES" Width="423px" OnClick="AddModules_btn_Click" />
                </td>
            </tr>
        </table>
        <table align="center" class="auto-style1">
            <tr>
                <td align="center">
                    <asp:Button ID="AddReminder_btn" runat="server" Text="ADD REMINDER" BackColor="White" BorderColor="Black" BorderStyle="Groove" Height="93px" OnClick="AddReminder_btn_Click" Width="363px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
