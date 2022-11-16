using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPDEMO
{
    public partial class EditPage : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        public string ConnectionString { get; private set; }
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
        }
          
 
        //customer
        protected void cust_upbtn_Click(object sender, EventArgs e)
        {
            
            Session["id"] = cust_upid.Text;
            Response.Redirect("~/cust_update.aspx");
        }

        protected void cust_delbtn_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(cust_delid.Text);

            ConnectionString = "Server=127.0.0.1;Port=3306;Database=isp;Uid=root;pwd=1234;";
            con = new MySqlConnection(ConnectionString);
            con.Open();
            cmd = new MySqlCommand("delete from customer where cust_id='" + id + "'");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(GetType(), "myalert", "alert('Record Sucessfully Deleted');", true);
                cust_delid.Text = "";
                
         }


        protected void cust_insbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/cust_insert.aspx");
        }

        protected void cust_viewbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/cust_view.aspx");

        }

        // customers

        //plan
        protected void plan_upbtn_Click(object sender, EventArgs e)
        {
            Session["pid"] = plan_txtid.Text;
            Response.Redirect("~/plan_update.aspx");

        }

        protected void plan_btndel_Click(object sender, EventArgs e)
        {
                cmd = new MySqlCommand("delete from plan where p_id='" + id + "'");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Record Sucessfully Deleted');", true);
                plan_txtdel.Text = "";
           
        }

        protected void plan_btnins_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/plan_insert.aspx");

        }

        protected void plan_btnview_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/planview.aspx");
        }



        // Enroll
        protected void enq_btndel_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(enq_txtid.Text);
            
                cmd = new MySqlCommand("delete from Enroll where eid='" + id + "'");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Record Sucessfully Deleted');", true);
                enq_txtid.Text = "";
            }
              

        protected void enq_btnview_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EnrollView.aspx");
        }
        // Enroll

        //complaint
        protected void comp_btndel_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(comp_txtid.Text);
           


                cmd = new MySqlCommand("delete from complaint where c_id='" + id + "'");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Record Sucessfully Deleted');", true);
                enq_txtid.Text = "";
            
           
        }
        protected void comp_btnview_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CompView.aspx");
        }

        //compliant
    }
}