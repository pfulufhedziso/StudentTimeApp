<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewModules.aspx.cs" Inherits="StudentTimeApp.ViewModules" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100%;
            height: 174px;
        }
        .auto-style3 {
            width: 557px;
        }
    </style>
</head>
<body style="background-color: #e6e2d3">
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="PLEASE ENTER YOUR USER ID: "></asp:Label>
                    <asp:TextBox ID="USERID_TXTBOX" runat="server" OnTextChanged="USERID_TXTBOX_TextChanged"></asp:TextBox>
                   
<asp:RegularExpressionValidator runat="server" ForeColor="Red" ID="RegularExpressionValidator1" ControlToValidate="USERID_TXTBOX" ErrorMessage="ERROR INPUT NOT A NUMBER" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style2" align="center">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Width="982px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Display_btn" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" OnClick="Display_btn_Click" Text="DISPLAY" Width="246px" />
                </td>
                <td>
                    <asp:Button ID="Back_btn" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" OnClick="Back_btn_Click" Text="BACK" Width="245px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
