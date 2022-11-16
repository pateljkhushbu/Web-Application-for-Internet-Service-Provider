using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPDEMO
{
    public partial class Enroll : System.Web.UI.Page
    {
        String fn, ln, email, add, no, plan;
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

        protected void Sub_Click(object sender, EventArgs e)
        {
            fn = txtfn.Text;
            ln = txtln.Text;
            plan = txtp.Text;
            no = txtno.Text;
            email = txtemail.Text;
            add = txtadd.Text;
            cmd = new MySqlCommand("insert into Enroll(e_fname,e_lname,epack,eno,e_email,eadd) values('" + fn + "','" + ln + "','" + plan + "','" + no + "','" + email + "','" + add + "')");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Record Sucessfully Inserted');", true);

        }
    }
}