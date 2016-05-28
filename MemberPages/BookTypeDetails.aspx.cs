using BookKing.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberPages_BookTypeDetails : System.Web.UI.Page
{
    private BookDetails bookDetails;
    private string book_id;
    Dictionary<string,BookWarehouseStock> warehouseStocks;

    protected void Page_Load(object sender, EventArgs e)
    {
        book_id = Request.QueryString["bookID"];
        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["conStr1"].ConnectionString))
        {
            try
            {
                con.Open();

                string bookDetailsQuery = "select * from BookDetails where book_id=" + book_id;
                //ErrorLabel.Text = bookDetailsQuery;
                using (SqlCommand sqlCommand = new SqlCommand(bookDetailsQuery, con))
                {
                    try
                    {
                        using (SqlDataReader reader = sqlCommand.ExecuteReader())
                        {

                            if (reader.Read())
                            {
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
                        }
                    }
                    catch (Exception err)
                    {
                        //ErrorLabel.Text = err.ToString();
                    }
                }

                string warehousesQuery = "select * from BookWarehouseStock where book_id=" + book_id;
                //ErrorLabel.Text = warehousesQuery;
                using (SqlCommand sqlCommand = new SqlCommand(warehousesQuery, con))
                {
                    try
                    {
                        using (SqlDataReader reader = sqlCommand.ExecuteReader())
                        {
                            warehouseStocks = new Dictionary<string, BookWarehouseStock>();
                            while (reader.Read())
                            {
                                BookWarehouseStock item = new BookWarehouseStock(reader);
                                warehouseStocks.Add(item.code,item);
                                WarehouseDropdown.Items.Add(item.code);
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
        string warehouse_code = WarehouseDropdown.SelectedItem.Text;
        BookWarehouseStock warehouseStock;
        warehouseStocks.TryGetValue(warehouse_code,out warehouseStock);

        if (warehouseStock != null)
        {
            WarehouseStock.Text = warehouseStock.code;
            WarehouseAddress.Text = warehouseStock.ware_address;
            WarehousePhone.Text = warehouseStock.ware_phone;
        }
        else
        {
            ErrorLabel.Text = "Could not find required warehouse: "+warehouse_code;
        }
    }

    protected void BuyButton_Click(object sender, EventArgs e)
    {

    }
}