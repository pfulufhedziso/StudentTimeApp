<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="StudentTimeApp.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 25%;
        }
        .auto-style3 {
            height: 26px;
            width: 539px;
            text-align: center;
        }
        .auto-style4 {
            width: 539px;
            text-align: center;
        }
        .auto-style5 {
            height: 26px;
            width: 285px;
            text-align: center;
        }
        .auto-style6 {
            width: 285px;
            text-align: left;
        }
        .auto-style7 {
            width: 89%;
        }
        .auto-style8 {
            width: 519px;
            text-align: left;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            font-size: larger;
        }
        .auto-style12 {
            width: 56%;
        }
    </style>
</head>
<body style="width: 1114px; height: 587px; background-color: #e6e2d3;" align="center">
    <form id="form1" runat="server">
        <div class="auto-style9" >
        </div>
        <p class="auto-style9">
            &nbsp;</p>
        <h1>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" style="text-align: center; " Text="Welcome:" CssClass="auto-style11"></asp:Label>
        </h1>
        <p class="auto-style10">
            &nbsp;</p>
        <table class="auto-style12" align="center">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Lable2" runat="server" Text="USERNAME:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="Username_txtbox" runat="server" Height="21px" Width="366px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="PASSWORD:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="Password_txtbox" runat="server" Width="365px" Height="16px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div class="auto-style10">
        <br />
        </div>
        <table class="auto-style7" align="center">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="SignIn_btn" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style1" Text="SIGN IN" Width="182px" OnClick="SignIn_btn_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" Text="REGISTER" Width="182px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
