using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroceryAPP
{
    public partial class AddProductsaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                if (f1.HasFile)
                {
                    string fileName = f1.FileName.ToString();
                    string fileExtension = Path.GetExtension(fileName).ToLower();

                    if (fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png" || fileExtension == ".gif")
                    {
                        f1.SaveAs(Request.PhysicalApplicationPath + "./image/" + f1.FileName.ToString());
                        string b1 = "image/" + f1.FileName.ToString();
                        cmd.CommandText = "insert into Products values(@Cid,@Primg,@prn,@pri)";
                        cmd.Parameters.AddWithValue("@Cid", categoryIdTextBox.Text.ToString());
                        cmd.Parameters.AddWithValue("@prn", productNameTextBox.Text.ToString());
                        cmd.Parameters.AddWithValue("@pri", productPriceTextBox.Text.ToString());
                        cmd.Parameters.AddWithValue("@Primg", b1.ToString());

                        con.Open();
                        int nor = cmd.ExecuteNonQuery();

                        con.Close();
                        string script = "alert('Hurray Uploaded Successfully!');";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "insertSuccess", script, true);

                        // Process the file because it's a valid image format
                    }
                    else
                    {
                        // Display an error message to the user
                        LblMsg.Text += "Only .jpg, .jpeg, .png, or .gif files are allowed.";
                    }
                }
                else
                {
                    LblMsg.Text += "Please choose image file";
                    // Handle case where no file was selected
                }


            }
            catch (Exception ex)
            {
                LblMsg.Text = ex.ToString();
            }


        }
    }
    }
