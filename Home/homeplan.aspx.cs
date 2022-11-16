using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPDEMO
{

    public partial class homeplan : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        public string ConnectionString { get; private set; }

        String p1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                try
                {
                    ConnectionString = "Server=127.0.0.1;Port=3306;Database=isp;Uid=root;pwd=1234;";
                    con = new MySqlConnection(ConnectionString);
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select * from plan where p_type='home'");
                    MySqlDataAdapter ad = new MySqlDataAdapter();
                    cmd.Connection = con;
                    ad.SelectCommand = cmd;
                    DataTable dt = new DataTable();
                    ad.Fill(dt);
                    HomePlan1.DataSource = dt;
                    HomePlan1.DataBind();
                    con.Close();


                }
                catch (Exception)
                {

                }

            }
        }

        protected void btn_hp_Click(object sender, EventArgs e)
        {
   
            Response.Redirect("Enroll.aspx");
        }
    }
}