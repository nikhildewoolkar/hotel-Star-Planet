using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Configuration;



public partial class AddtoCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if ((Session["email"] == null))
            Response.Redirect("login.aspx");

        string connString = ConfigurationManager.ConnectionStrings["dbkolsaConnectionString"].ToString();//external Sql server 2008

        try
        {

            SqlConnection objConn = new SqlConnection(connString);




            int menuitemid = int.Parse(Request.QueryString["prodID"]);
            string tblname = Request.QueryString["tblname"];
            
            

            objConn.Open();
            SqlCommand objCmd = new SqlCommand("select * from " + tblname + " where menuitemid=@menuitemid", objConn);
            objCmd.Parameters.AddWithValue("@menuitemid", menuitemid);
            SqlDataReader rs = objCmd.ExecuteReader();

            rs.Read();
            string ProductName = rs.GetString(1);

            string ProductImageUrl = rs.GetString(3);
            double Price = rs.GetDouble(4);
            

                
                
            
            
            Cart c;

            if (Session["cart"] == null)
            {
                c = new Cart();
            }
            else
            {
                c = (Cart)Session["cart"];
            }
            c.Insert(menuitemid, Price, 1, ProductName, ProductImageUrl);


            Session["cart"] = c;

            Response.Redirect("menu.aspx");
        }
        catch (Exception ex) { Response.Write(ex); }
        }


    }

        
    