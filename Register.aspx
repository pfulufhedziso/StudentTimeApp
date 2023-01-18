<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StudentTimeApp.Register" %>

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
        }
        .auto-style5 {
            height: 26px;
            width: 285px;
        }
        .auto-style4 {
            width: 539px;
        }
        .auto-style6 {
            width: 285px;
        }
        .auto-style7 {
            width: 17%;
        }
        </style>
</head>
<body style="background-color: #e6e2d3">
    <form id="form1" runat="server">
        <div>
        <div >
        </div>
        <p align="center">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" style="text-align: center; font-size: xx-large" Text="Please enter the following details to be registered:"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Lable2" runat="server" Text="USERNAME:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="Username_txtbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="PASSWORD:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="Password_txtbox" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style7" align="center">
            <tr>
                <td>
                    <asp:Button ID="SignUP_btn" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style7" Text="SIGN UP" Width="182px" OnClick="SignIn_btn_Click" />
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
