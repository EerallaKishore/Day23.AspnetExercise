<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Day23.AspnetExercise.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="LabUserId" runat="server" Text="UserId"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtUserId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="BtnSignIn" runat="server" Text="SignIn" OnClick="BtnSignIn_Click" />
                       
                    </td>
                    <td>

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
