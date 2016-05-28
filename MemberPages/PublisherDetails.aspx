<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PublisherDetails.aspx.cs" Inherits="MemberPages_BookType" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Publisher Details</h1>
        <p>
            <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
        </p>
        <h2>
            <asp:Label ID="PublisherName" runat="server" Text="Publisher Name"></asp:Label>
        </h2>
        <p>
            Adress:
            <asp:Label ID="PublisherAdress" runat="server"></asp:Label>
            $</p>
        <p>
            Phone:
            <asp:Label ID="PublisherPhone" runat="server"></asp:Label>
        </p>
    
    </div>
    </form>
</body>
</html>
