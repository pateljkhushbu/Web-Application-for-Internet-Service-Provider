using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPDEMO
{
    public partial class cust_update : System.Web.UI.Page
    {
        String fn,ln,email,add,pack,type,no;
        int id;
        MySqlConnection con;
        MySqlCommand cmd;
        public string ConnectionString { get; private set; }
 
        protected void Page_Load(object sender, EventArgs e)
        {
            txtid.Text = (String)Session["id"];
            if (!IsPostBack)
            {
                id = Convert.ToInt32(txtid.Text);
                try
                {
                    ConnectionString = "Server=127.0.0.1;Port=3306;Database=isp;Uid=root;pwd=1234;";
                    con = new MySqlConnection(ConnectionString);
                    con.Open();
                    cmd = new MySqlCommand("select * from customer where cust_id='" + id + "'", con);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        txtfn.Text = dr["cust_fname"].ToString();
                        txtln.Text = dr["cust_lname"].ToString();
                        txtno.Text = dr["cust_no"].ToString();
                        txtemail.Text = dr["cust_email"].ToString();
                        txtadd.Text = dr["cust_add"].ToString();
                        txtpack.Text = dr["cust_pack"].ToString();
                        txtpacktype.Text = dr["cust_type"].ToString();
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
            id = Convert.ToInt32(txtid.Text);
            fn = txtfn.Text;
            ln = txtln.Text;
            no = txtno.Text;
            email = txtemail.Text;
            add = txtadd.Text;
            pack = txtpack.Text;
            type = txtpacktype.Text;
            ConnectionString = "Server=127.0.0.1;Port=3306;Database=isp;Uid=root;pwd=1234;";
            con = new MySqlConnection(ConnectionString);
            con.Open();
            cmd = new MySqlCommand("update customer set cust_fname='" +fn+ "' ,cust_lname='" + ln + "',cust_no='" + no + "',cust_email='" + email + "',cust_add='" + add + "',cust_pack='" + pack + "',cust_type='" + type + "' where cust_id='" + id + "'");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Record Sucessfully Updated');", true);


        }
    }
}