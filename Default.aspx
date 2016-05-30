<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Zero.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Fredoka+One' rel='stylesheet' type='text/css'>
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
    <div><div id="entire" class="h1">
        <div>
    
   <div class="rightThem">
            <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    <div class="mesg">You are not logged in.<br /></div> &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Register.aspx"><div class="button"><font family="consolas" color="White">Register</font>
				</div></a></asp:HyperLink>
                </AnonymousTemplate>
                <LoggedInTemplate>
                    <div class="mesg">You are logged in. Welcome,</div>
                    <asp:LoginName ID="LoginName1" runat="server" />
                    .
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/MemberPages/ChangePassword.aspx">Change Password</asp:HyperLink>
                    &nbsp;|
                </LoggedInTemplate>
            </asp:LoginView>&nbsp;&nbsp;&nbsp;
        <div class="button whiteIt "><font color="white">
				<asp:LoginStatus ID="LoginStatus1" runat="server" OnLoggingOut="LoginStatus1_LoggingOut" /></font></div>
    </div>
        <!--<div><div id="entire">-->
		<div>
			<div style="text-align: center;" >
				<div class="big"><h1><center>Book<font color="gold">King</font></center></h1></div>
				
			<center>
			<div id="padd" style="display: inline-flex;" class="gravit marginalize">
				<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/MemberPages/Booking.aspx"><div class="button"><font color="White">BOO<font color="gold">K</font>S</font>
				</div></asp:HyperLink>&nbsp;&nbsp;&nbsp;<font color="white" size="25px"> | </font>&nbsp;&nbsp;&nbsp;
				<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/MemberPages/MyOrders.aspx"><div class="button"><font color="White">MY ORDERS
				</div></asp:HyperLink>
			</div></center>
		</div></div>
    </div>
    </div>
        </div>
        <div class="tip">
            <p>*For simplicity of server configuration by examiner, authentication is currently disabled.</p>
            <p>*Internet connection advised.</p>
        </div>
    </form>
</body>
</html>
