using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegSubmit_Click(object sender, EventArgs e)
    {

        string connString = WebConfigurationManager.ConnectionStrings["dbkolsaConnectionString"].ToString();

        SqlConnection objConn = new SqlConnection(connString);

        try
        {
            objConn.Open();

            String name, address, mobno, email, passwd;
            int intInsert;

            name = txtFirstName.Text;
            address = txtAddress.Text;
            mobno = txtMob.Text;
            email = txtEmail.Text;
            passwd = txtPass.Text;

            String strInsertQry;

            strInsertQry = "insert into signup(name,address,mobno,email,password) values (@Name,@Address,@MobNo,@Email,@Password)";
            SqlCommand Cmdins = new SqlCommand(strInsertQry, objConn);


            Cmdins.Parameters.AddWithValue("@Name", name);
            Cmdins.Parameters.AddWithValue("@Address", address);
            Cmdins.Parameters.AddWithValue("@MobNo", mobno);
            Cmdins.Parameters.AddWithValue("@Email", email);
            Cmdins.Parameters.AddWithValue("@Password", passwd);

            intInsert = Cmdins.ExecuteNonQuery();

            if (intInsert > 0)
                Response.Redirect("home.aspx");

        }




        catch (Exception ex) { throw ex; }

    }
    protected void btnRegReset_Click(object sender, EventArgs e)
    {
        txtAddress.Text = "";
        txtEmail.Text = "";
        txtFirstName.Text = "";
        txtMob.Text = "";
        txtPass.Text = "";
        txtReenterPass.Text = "";
        txtFirstName.Focus();
 
    }
}