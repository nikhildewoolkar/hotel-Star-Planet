using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class addtodays_special : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnAddtodaysspecial_Click(object sender, EventArgs e)
    {

        try
        {

            string menuitemname = txtName.Text;

            string description = txtDescription.Text;
            double price = Double.Parse(txtPrice.Text);


            String folderpath = "~/images/todaysspecial/";
            


            if (menuitemimage.HasFile)
            {
                string filename = menuitemimage.PostedFile.FileName.ToString();

                menuitemimage.SaveAs(Server.MapPath(folderpath + filename));

            }


            string imageurl = folderpath + menuitemimage.PostedFile.FileName;

            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbkolsaConnectionString"].ToString());


            con.Open();

            SqlCommand cmd = con.CreateCommand();

            cmd.CommandText = @"insert into todaysspecial(menuitemname,description,imageurl,price) values (@menuitemname,@description,@imageurl,@price)";
            cmd.Connection = con;
            //cmd.Parameters.AddWithValue("id", null);
            cmd.Parameters.AddWithValue("menuitemname", @menuitemname);
            cmd.Parameters.AddWithValue("description", @description);
            cmd.Parameters.AddWithValue("imageurl", @imageurl);
            cmd.Parameters.AddWithValue("price", @price);
            cmd.ExecuteNonQuery();


            Response.Redirect("adminhome.aspx");
        }
        catch (Exception ex)
        {
            //Response.Write("hi");
            Response.Write(ex);
        }
    }
}