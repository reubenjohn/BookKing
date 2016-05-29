<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <p>
            <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    You are not logged in.<br /> &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
                </AnonymousTemplate>
                <LoggedInTemplate>
                    You are logged in. Welcome,
                    <asp:LoginName ID="LoginName1" runat="server" />
                    .
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/MemberPages/ChangePassword.aspx">Change Password</asp:HyperLink>
                    &nbsp;|
                </LoggedInTemplate>
            </asp:LoginView>
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
    
        </p>
        <h1>
            My Home Page</h1>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MemberPages/Booking.aspx">Bookings</asp:HyperLink>
            |
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/MemberPages/MyOrders.aspx">My Orders</asp:HyperLink>
        </p>
    
    </div>
    </form>
</body>
</html>
