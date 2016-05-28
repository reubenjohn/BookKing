<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookTypeDetails.aspx.cs" Inherits="MemberPages_BookTypeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Book Type Details</h1>
        <p>
            <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
        </p>
        <h2>
            <asp:Label ID="BookTypeTitle" runat="server" Text="Book Title"></asp:Label>
        </h2>
        <p>
            Price:
            <asp:Label ID="BookDetailsPrice" runat="server"></asp:Label>
        </p>
        <p>
            Year:
            <asp:Label ID="BookDetailsYear" runat="server"></asp:Label>
        </p>
        <p>
            Publisher:
            <asp:HyperLink ID="BookDetailsPublisher" runat="server" NavigateUrl="~/MemberPages/PublisherDetails.aspx?publisherName=<%# pub_name %>">[BookDetailsPublisher]</asp:HyperLink>
        </p>
        <p>
            Author:
            <asp:HyperLink ID="BookDetailsAuthor" runat="server" NavigateUrl="~/MemberPages/AuthorDetails.aspx?authorName">[BookTypeAuthor]</asp:HyperLink>
        </p>
        <p>
            Total books in stock:&nbsp;
            <asp:Label ID="BookDetailsTotalStock" runat="server" Text="0"></asp:Label>
        </p>
    
    </div>
        <br />
        Select warehouse:
        <asp:DropDownList ID="WarehouseDropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        Available stock in warehouse:
        <asp:Label ID="WarehouseStock" runat="server"></asp:Label>
        <br />
        Warehouse phone:
        <asp:Label ID="WarehousePhone" runat="server"></asp:Label>
        <br />
        Warehouse address:
        <asp:Label ID="WarehouseAddress" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="BuyButton" runat="server" Text="Buy" Enabled="False" OnClick="BuyButton_Click" />
    </form>
</body>
</html>
