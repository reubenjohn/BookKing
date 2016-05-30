<%@ Page Title="BOOKS" Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" %>
<asp:Content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <section>
        <div><div class="big">
            <hgroup>
                <h1><%: Page.Title %>
                </h1>
            </hgroup>
            </div>
            <asp:Label ID="Label1" runat="server"></asp:Label>

            <asp:ListView ID="bookList" runat="server"
                ItemType="BookKing.Models.BookType" 
                DataKeyNames="<%# book_id %>" GroupItemCount="4"
                SelectMethod="GetProducts">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <div class="h2"><a href="BookTypeDetails.aspx?bookID=<%#:Item.book_id%>">
                                        <span>
                                            <%#:Item.title%>
                                        </span>
                                    </a>
                                    <br />
                                    <span>
                                        <b>Price: Rs. </b><%#:String.Format("{0:c}", Item.price)%>
                                    </span>
                                    <br />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </section>
</asp:Content>