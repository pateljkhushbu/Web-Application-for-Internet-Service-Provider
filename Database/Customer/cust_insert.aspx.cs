using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPDEMO
{
    public partial class cust_insert : System.Web.UI.Page
    {
        String fn, ln, email, add, pack, type, no;
        

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
            fn = txtfn.Text;
            ln = txtln.Text;
            no = txtno.Text;
            email = txtemail.Text;
            add = txtadd.Text;
            pack = txtpack.Text;
            type = txtpacktype.Text;
            cmd = new MySqlCommand("insert into customer(cust_fname,cust_lname,cust_no,cust_email,cust_add,cust_pack,cust_type) values('" + fn + "','" + ln + "','" + no + "','" + email + "','" + add + "','" + pack + "','" + type + "')");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Record Sucessfully Inserted');", true);
        }
    }
}