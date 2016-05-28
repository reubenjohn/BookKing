<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Login Page</h1>
        <p>
            <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt">
                <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
            </asp:Login>
        </p>
    
    </div>
    <div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Login1"/>
    </div>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MemberPages/ChangePassword.aspx">Forgot Password</asp:HyperLink>
        </p>
    </form>
</body>
</html>
