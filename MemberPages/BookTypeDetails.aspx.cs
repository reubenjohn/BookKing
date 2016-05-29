﻿using BookKing.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberPages_BookTypeDetails : System.Web.UI.Page
{
    private BookDetails bookDetails;
    private string book_id;
    Dictionary<string,WarehouseBookStock> warehouseStocks;
    private string purchaseText;

    protected void Page_Load(object sender, EventArgs e)
    {
        PurchaseStatus.Text = purchaseText;
        book_id = Request.QueryString["bookID"];
        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["conStr1"].ConnectionString))
        {
            try
            {
                con.Open();

                string bookDetailsQuery = "select * from BookTypeDetails where book_id=" + book_id;
                //ErrorLabel.Text = bookDetailsQuery;
                using (SqlCommand sqlCommand = new SqlCommand(bookDetailsQuery, con))
                {
                    //ErrorLabel.Text = "Opening connection to database...";
                    try
                    {
                        //ErrorLabel.Text = "Preparing reader...";
                        using (SqlDataReader reader = sqlCommand.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                //ErrorLabel.Text = "Loading book details...";
                                bookDetails = new BookDetails(reader);
                                BookTypeTitle.Text = bookDetails.title;
                                BookDetailsPrice.Text = bookDetails.price;
                                BookDetailsYear.Text = bookDetails.year;

                                BookDetailsPublisher.NavigateUrl = "~/MemberPages/PublisherDetails.aspx?publisherName=" + bookDetails.pub_name;
                                BookDetailsPublisher.Text = bookDetails.pub_name;

                                BookDetailsAuthor.NavigateUrl = "~/MemberPages/AuthorDetails.aspx?authorName=" + bookDetails.auth_name;
                                BookDetailsAuthor.Text = bookDetails.auth_name;

                                BookDetailsTotalStock.Text = bookDetails.bookCount;
                                
                                if (Int32.Parse(bookDetails.bookCount) > 0)
                                {
                                    BuyButton.Enabled = true;
                                }

                            }
                            else
                            {
                                ErrorLabel.Text = "Failed to find the details of the required book!";
                            }
                        }
                    }
                    catch (Exception err)
                    {
                        ErrorLabel.Text = err.ToString();
                    }
                }

                string warehousesQuery = "select * from AvailableWarehouseBookStock where book_id=" + book_id;
                //ErrorLabel.Text = warehousesQuery;
                using (SqlCommand sqlCommand = new SqlCommand(warehousesQuery, con))
                {
                    try
                    {
                        using (SqlDataReader reader = sqlCommand.ExecuteReader())
                        {
                            if (!IsPostBack)
                            {
                                WarehouseDropdown.Items.Clear();
                            }
                            warehouseStocks = new Dictionary<string, WarehouseBookStock>();
                            while (reader.Read())
                            {
                                WarehouseBookStock item = new WarehouseBookStock(reader);
                                warehouseStocks.Add(item.code,item);
                                if (!IsPostBack)
                                {
                                    WarehouseDropdown.Items.Add(item.code);
                                }
                            }
                            DropDownList1_SelectedIndexChanged(null,null);
                        }
                    }
                    catch (Exception err)
                    {
                        ErrorLabel.Text = err.ToString();
                    }
                }
            }
            catch (Exception err)
            {
                ErrorLabel.Text = err.ToString();
            }
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (WarehouseDropdown.SelectedItem != null && WarehouseDropdown.SelectedItem.Text != null) {
            string warehouse_code = WarehouseDropdown.SelectedItem.Text;
            WarehouseBookStock warehouseStock;
            warehouseStocks.TryGetValue(warehouse_code, out warehouseStock);

            if (warehouseStock != null)
            {
                WarehouseStock.Text = warehouseStock.bookStock;
                WarehouseAddress.Text = warehouseStock.ware_address;
                WarehousePhone.Text = warehouseStock.ware_phone;
            }
            else
            {
                ErrorLabel.Text = "Could not find required warehouse: " + warehouse_code;
            }
        }
        else
        {
            WarehouseDropdown.Items.Add("No warehouse stocked");
        }
    }

    protected void BuyButton_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["conStr1"].ConnectionString))
        {
            try
            {
                con.Open();

                string isbnQuery = "select isbn from AvailableBook where book_id=@book_id and code=@code";
                //ErrorLabel.Text = bookDetailsQuery;
                using (SqlCommand sqlCommand = new SqlCommand(isbnQuery, con))
                {
                    try
                    {
                        sqlCommand.Parameters.AddWithValue("@book_id", book_id);
                        sqlCommand.Parameters.AddWithValue("@code", WarehouseDropdown.SelectedItem.Text);
                        using (SqlDataReader reader = sqlCommand.ExecuteReader())
                        {

                            if (reader.Read())
                            {
                                string isbn = reader["isbn"].ToString();
                                string email = Membership.GetUser().Email;
                                string orderID = MemberPages_BookTypeDetails.RandomString(30);
                                performPurchase(orderID, isbn, email);
                            }
                            else
                            {
                                ErrorLabel.Text = "No books in stock!";
                            }
                        }
                    }
                    catch (Exception err)
                    {
                        //ErrorLabel.Text = err.ToString();
                    }
                }
            }
            catch (Exception err)
            {
                ErrorLabel.Text = err.ToString();
            }
        }
    }

    private static string RandomString(int length)
    {
        const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        var random = new Random();
        return new string(Enumerable.Repeat(chars, length)
          .Select(s => s[random.Next(s.Length)]).ToArray());
    }

    private void performPurchase(string orderID, string isbn, string email)
    {
        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["conStr1"].ConnectionString))
        {
            try
            {
                con.Open();

                string purchaseQuery = "insert into orders values(@orderId,@isbn,@email)";
                //ErrorLabel.Text = bookDetailsQuery;
                using (SqlCommand sqlCommand = new SqlCommand(purchaseQuery, con))
                {
                    try
                    {
                        sqlCommand.Parameters.AddWithValue("@orderId", orderID);
                        sqlCommand.Parameters.AddWithValue("@isbn", isbn);
                        sqlCommand.Parameters.AddWithValue("@email", email);
                        int count = sqlCommand.ExecuteNonQuery();
                        if(count==1)
                        {
                            purchaseText = "Purchase succesful!";
                        }
                        else if(count==0)
                        {
                            purchaseText = "Purchase was not made!";
                        }
                        else
                        {
                            purchaseText = "Purchase was made with errors";
                        }
                        PurchaseStatus.Text = purchaseText;
                        Response.Redirect(Request.RawUrl);
                    }
                    catch (Exception err)
                    {
                        ErrorLabel.Text = err.ToString();
                    }
                }
            }
            catch (Exception err)
            {
                ErrorLabel.Text = err.ToString();
            }
        }
    }
}