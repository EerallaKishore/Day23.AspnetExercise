<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Day23.AspnetExercise.SignUp" %>

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
                        <asp:Label ID="LabFirstName" runat="server" Text="FirstName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtFirstName" runat="server"></asp:TextBox>
                    </td>
                </tr>
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
                        <asp:TextBox ID="TxtPassword" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="BtnSignUp" runat="server" Text="SignUp" OnClick="BtnSignUp_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
