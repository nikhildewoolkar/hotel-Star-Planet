using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, ImageClickEventArgs e)
    {
        if (txtUserName.Text == "admin@gmail.com" && txtPassword.Text == "admin")
        {
            Session["email"] = txtUserName.Text;
            Response.Redirect("adminhome.aspx");
        }
        else
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbkolsaConnectionString"].ToString());
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "select * from signup where email=@email";
            cmd.Parameters.AddWithValue("email", txtUserName.Text.Trim());
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                int id = Convert.ToInt32(dr.GetInt32(0));
                Session["userID"] = id;
                Session["username"] = dr.GetString(1);
                Session["address"] = dr.GetString(2);
                Session["mobile"] = dr.GetString(3);
                Response.Write("Password"+dr.GetString(5));
                if (dr.GetString(5).Trim() == txtPassword.Text.Trim())
                {

                    Session["email"] = txtUserName.Text;

                    //Add code for shopping cart
                    //Cart c = new Cart();
                    //Session["cart"] = c;

                    cmd.Dispose();
                    con.Close();
                    Response.Redirect("menu.aspx");
                }
                else
                {
                    lblMsg.Text = "Please try again!!";
                }
            }
            else
            {
                lblMsg.Text = "Please try again!";
            }

        }

    }
}