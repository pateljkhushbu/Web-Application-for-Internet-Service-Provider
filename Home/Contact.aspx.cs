using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPDEMO
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        String n1, e1, s1, d1;

        MySqlConnection con;
        MySqlCommand cmd;
        public string ConnectionString { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                ConnectionString = "Server=127.0.0.1;Port=3306;Database=isp;Uid=root;pwd=1234;";
                con = new MySqlConnection(ConnectionString);
                con.Open();

            }
            catch (Exception)
            {
                  }
        }

        protected void con_btn_Click1(object sender, EventArgs e)
        {
                con_ddl.Text = con_ddl.SelectedValue;
                n1 = con_name.Text;
                e1 = con_mail.Text;
                s1 = con_ddl.Text;
                d1 = con_mess.Text;
                cmd = new MySqlCommand("insert into complaint(c_name,c_email,c_sub,c_desc) values('" + n1 + "','" + e1 + "','" + s1 + "','" + d1 + "')");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Record Sucessfully Inserted');", true);
         
        }
    }
   
  
}