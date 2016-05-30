<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AuthorDetails.aspx.cs" Inherits="MemberPages_BookType" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Zero.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Fredoka+One' rel='stylesheet' type='text/css'>
    <title>About the Author</title>
</head>
<body>
    <form id="form1" runat="server">

    <div class="h1">
<div class="home"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">< Home </asp:HyperLink></div>    
        <div class="paddin">
        <h1><font color="gold">Author Details</font></h1></div>
        <p>
            <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
        </p>
        <h2>
            <div class="author"><asp:Label ID="PublisherName" runat="server" Text="Publisher Name"></asp:Label></div>
        </h2>
        <p>
            <div class="authorDetail">
            <asp:Label ID="PublisherAdress" runat="server"></asp:Label></div>
        </p>
    
    </div>
    </form>
</body>
</html>
