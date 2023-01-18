<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reminder.aspx.cs" Inherits="StudentTimeApp.Reminder" %>

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
        <style type="text/css">

        .auto-style1 {
            width: 36%;
        }
        .auto-style1 {
            width: 62%;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 512px;
            text-align: left;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            width: 76%;
        }
        .auto-style7 {
            width: 465px;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            width: 100%;
        }
        </style>

</head>
<body style="background-color: #e6e2d3">
    <form id="form1" runat="server">
        <div class="auto-style3">
            <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="SET REMINDER"></asp:Label>
        <div>
        </div>
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="PLEASE ENTER USER ID:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="UserID_txtbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="PLEASE ENTER MODULE NAME:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ModuleName_txtbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="PLEASE ENTER DATE:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="datepicker" runat="server" />
                </td>
            </tr>
        </table>
        </div>
        <table align="center" class="auto-style6">
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="SetReminder_btn" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" OnClick="SetReminder_btn_Click1" Text="SET REMINDER" Width="200px" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Back_btn" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" OnClick="Back_btn_Click" Text="BACK" Width="308px" />
                </td>
            </tr>
        </table>
        <table class="auto-style9">
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" OnClick="Button1_Click" Text="DELETE" Width="273px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
