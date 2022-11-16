using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPDEMO
{
    public partial class plan_update : System.Web.UI.Page
    {
        String pn,pt,plan,ps,pp;
        int pid;
        MySqlConnection con;
        MySqlCommand cmd;
        public string ConnectionString { get; private set; }

       
        protected void Page_Load(object sender, EventArgs e)
        {
            txtpid.Text = (String)Session["pid"];
            if (!IsPostBack)
            {
                pid = Convert.ToInt32(txtpid.Text);
                try
                {
                    ConnectionString = "Server=127.0.0.1;Port=3306;Database=isp;Uid=root;pwd=1234;";
                    con = new MySqlConnection(ConnectionString);
                    con.Open();
                    cmd = new MySqlCommand("select * from plan where p_id='" + pid + "'", con);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {

                        txtpn.Text = dr["p_name"].ToString();
                        txtpacktype.Text = dr["p_type"].ToString();
                        txtp.Text = dr["p_pack"].ToString();
                        txtspeed.Text = dr["p_speed"].ToString();
                        txtprice.Text = dr["p_price"].ToString();
                    }
                    con.Close();
                    con.Dispose();
                }

                catch (Exception)
                {

                }
                }
        }
        protected void btnsub_Click(object sender, EventArgs e)
        {
            pid = Convert.ToInt32(txtpid.Text);
            pn = txtpn.Text;
            pt = txtpacktype.Text;
            plan = txtp.Text;
            ps = txtspeed.Text;
            pp = txtprice.Text;
            ConnectionString = "Server=127.0.0.1;Port=3306;Database=isp;Uid=root;pwd=1234;";
            con = new MySqlConnection(ConnectionString);
            con.Open();
            cmd = new MySqlCommand("update plan set p_name='" + pn + "' ,p_type='" + pt + "',p_pack='" + plan + "',p_speed='" + ps + "',p_price='" + pp + "' where p_id='" + pid + "'");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Record Sucessfully Updated');", true);

        }
    }
}