using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace YourNamespace
{
    public partial class Delete : Page
    {
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            // Get the product ID from the text box.
            if (int.TryParse(ProductIdTextBox.Text, out int productId))
            {
                // You should implement a database connection and execute a SQL DELETE statement here.
                // Replace "your_connection_string_here" and "Products" with your actual database details.
                using (var connection = new SqlConnection("your_connection_string_here"))
                {
                    connection.Open();
                    var deleteQuery = "DELETE FROM Products WHERE ProductId = @ProductId";
                    using (var command = new SqlCommand(deleteQuery, connection))
                    {
                        command.Parameters.AddWithValue("@ProductId", productId);
                        command.ExecuteNonQuery();
                    }
                }

                // Optionally, you can provide feedback to the user that the product has been deleted.
                // You can set a label's text or redirect to another page.
            }
            else
            {
                // Handle the case where the user entered an invalid product ID.
                // You can show an error message to the user.
            }
        }
    }
}
