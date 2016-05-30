<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookTypeDetails.aspx.cs" Inherits="MemberPages_BookTypeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href='https://fonts.googleapis.com/css?family=Fredoka+One' rel='stylesheet' type='text/css'>
    <link href="../Zero.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="h1">
    
        <h1><div style="font-family:'Fredoka One';font-size:50px;">Book Details</div></h1>
        <div class="overall">
<asp:Label ID="ErrorLabel" runat="server"></asp:Label>
<p><div class="details">Title:</div><div class="detailsOfBook"><asp:Label ID="BookTypeTitle" runat="server" Text="Book Title"></asp:Label></div></p>
<p><div class="details">Author:</div><div class="detailsOfBook"><asp:HyperLink ID="BookDetailsAuthor" runat="server" NavigateUrl="~/MemberPages/AuthorDetails.aspx?authorName">[BookTypeAuthor]</asp:HyperLink></div></p>
<p><div class="details">Year:</div><div class="detailsOfBook"><asp:Label ID="BookDetailsYear" runat="server"></asp:Label></div></p>
<p><div class="details">Price:</div><div class="detailsOfBook">Rs.&nbsp<asp:Label ID="BookDetailsPrice" runat="server"></asp:Label></div></p>
<p><div class="details">Publisher:</div><div class="detailsOfBook"><asp:HyperLink ID="BookDetailsPublisher" runat="server" NavigateUrl="~/MemberPages/PublisherDetails.aspx?publisherName=<%# pub_name %>">[BookDetailsPublisher]</asp:HyperLink></div></p>
<p><div class="details">Total copies available in warehouse:</div><div class="detailsOfBook"><asp:Label ID="BookDetailsTotalStock" runat="server" Text="0"></asp:Label></div></p>
    </div>
    <div class="detailsNormalText">        <br />
            <div class="selectWare">Select warehouse:
            <asp:DropDownList ID="WarehouseDropdown" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList></div>
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
            <asp:Label ID="PurchaseStatus" runat="server"></asp:Label>
            <br />
            <asp:Button ID="BuyButton" runat="server" Text="Buy" Enabled="False" OnClick="BuyButton_Click" />
            <br />
            Your balance:
            <asp:Label ID="CustomerBalance" runat="server"></asp:Label>
        </div>
     </div>
    </form>
</body>
</html>
