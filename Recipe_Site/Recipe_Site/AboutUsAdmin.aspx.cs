using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AboutUsAdmin : System.Web.UI.Page
{
	SqlClass connect = new SqlClass();
	protected void Page_Load(object sender, EventArgs e)
	{
		Panel2.Visible = false;
		if(Page.IsPostBack==false)
		{
			SqlCommand command = new SqlCommand("Select*from Tbl_AboutUs", connect.Connect());
			SqlDataReader reader = command.ExecuteReader();
			while (reader.Read())
			{
				TextBox1.Text = reader[0].ToString();
			}
			connect.Connect().Close();
		}
	}
		

	protected void Button1_Click(object sender, EventArgs e)
	{
		Panel2.Visible=true;
	}

	protected void Button2_Click(object sender, EventArgs e)
	{Panel2.Visible=false;

	}

	protected void Button3_Click(object sender, EventArgs e)
	{
		SqlCommand command = new SqlCommand("Update Tbl_AboutUs set Text =@p1",connect.Connect());
		command.Parameters.AddWithValue("@p1",TextBox1.Text);
		command.ExecuteNonQuery();
		Response.Write("Section of About Us updated");
		connect.Connect().Close();
	}
}