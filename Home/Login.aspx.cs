using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPDEMO
{
    public partial class Login : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        String username;
        String password;
        static int num = 0;
        public string ConnectionString { get; private set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionString = "Server=127.0.0.1;Port=3306;Database=isp;;Uid=root;pwd=1234;";
            con = new MySqlConnection(ConnectionString);
            con.Open();
            MySqlCommand cmd = new MySqlCommand("Select * from admin", con);

            MySqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                username = dr["a_name"].ToString();
                password = dr["a_pass"].ToString();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String u1 = user.Text;
            String p1 = pass.Text;
            if (username == u1)
            {
                if (password == p1)
                {
                    user.Text = "";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Login successful!!!');", true);
                    num = 0;
                    Response.Redirect("~/EditPage.aspx");
                }
                else
                {
                    num++;
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Wrong password, " + (3 - num) + " attempt left');", true);

                    if (num == 3)
                    {
                        user.Enabled = false;
                        pass.Enabled = false;
                        Button1.Enabled = false;
                    }
                }
            }
            else
            {
                num++;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Username not found, " + (3 - num) + " attempt left');", true);
                if (num == 3)
                {
                    user.Enabled = false;
                    pass.Enabled = false;
                    Button1.Enabled = false;
                }
            }
        }


    }
}