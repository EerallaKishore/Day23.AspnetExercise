<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home Page.aspx.cs" Inherits="Day23.AspnetExercise.Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <p>
            <asp:Label Text="" ID="LblWelcome" runat="server" />
        </p>
        <div><asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" DataKeyNames="cEmployeeCode,siYear" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="cEmployeeCode" HeaderText="cEmployeeCode" ReadOnly="True" SortExpression="cEmployeeCode" />
                <asp:BoundField DataField="mAnnualSalary" HeaderText="mAnnualSalary" SortExpression="mAnnualSalary" />
                <asp:BoundField DataField="siYear" HeaderText="siYear" ReadOnly="True" SortExpression="siYear" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HR %>" SelectCommand="SELECT * FROM [AnnualSalary]"></asp:SqlDataSource>
        </div>
        <div>
            <asp:LinkButton ID="LinkButton2" runat="server">LinkButton</asp:LinkButton>
        </div>
        
    </form>
</body>
</html>
