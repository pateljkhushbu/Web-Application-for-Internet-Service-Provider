using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPDEMO
{
    public partial class plan_insert : System.Web.UI.Page
    {
        String pn, pt, plan, ps, pp;
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

        protected void btnsub_Click(object sender, EventArgs e)
        {
            pn = txtpn.Text;
            pt = txtpacktype.Text;
            plan = txtp.Text;
            ps = txtspeed.Text;
            pp = txtprice.Text;
            cmd = new MySqlCommand("insert into plan(p_name,p_type,p_pack,p_speed,p_price) values('" + pn + "','" + pt + "','" + plan + "','" + ps + "','" + pp + "')");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Record Sucessfully Inserted');", true);
        }
    }
}