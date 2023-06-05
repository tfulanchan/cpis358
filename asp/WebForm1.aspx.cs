using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace dotnetCPIS358
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connstr = ConfigurationManager.ConnectionStrings["databse001ConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button_Click(object sender, EventArgs e)
        {
            Response.Write("Registration successful");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Save_Button_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }
        protected void Update_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Update();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string file_path = Server.MapPath("/uploaded/" + FileUpload1.FileName);
                    FileUpload1.SaveAs(file_path);

                    String sql = "Insert into signup (ID, UserName, Email, Password, Country, img_path) " +
                        "values ('" + ID_TextBox.Text + "', '" + UserName.Text + "','" + Email.Text + "',"
                        + Password.Text + ", '/uploaded/" + FileUpload1.FileName + "')";
                    //String sql = "Insert into signup (img_path) values ('/uploaded/" + FileUpload1.FileName + "')";
                    SqlConnection con = new SqlConnection(connstr);
                    con.Open();
                    SqlCommand cmd = new SqlCommand(sql, con);
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.InsertCommand = new SqlCommand(sql, con);
                    da.InsertCommand.ExecuteNonQuery();

                    Error_lbl.Text = "Upload Successful";
                }
                catch (Exception ex)
                {
                    Error_lbl.Text = "Upload Failed";
                }
            }
        }
    }
}