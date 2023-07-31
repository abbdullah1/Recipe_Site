using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class CategoryAdminDetail : System.Web.UI.Page
{
	SqlClass connect = new SqlClass();
	string id;
	protected void Page_Load(object sender, EventArgs e)
	{
		id = Request.QueryString["CategoryId"];
		if(Page.IsPostBack==false)
		{
			SqlCommand command = new SqlCommand("Select * from Tbl_Category where CategoryId=@p1", connect.Connect());
			command.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
			SqlDataReader reader = command.ExecuteReader();
			while (reader.Read())
			{
				TextBox1.Text = reader[1].ToString();
				TextBox2.Text = reader[2].ToString();
			}
			connect.Connect().Close();
		}
	}
		

	protected void Button1_Click(object sender, EventArgs e)
	{
		SqlCommand command = new SqlCommand("Update tbl_Category set CategoryName = @p1, CategoryNumber=@p2 where CategoryId=@p3 ",connect.Connect());
		command.Parameters.AddWithValue("@p1",TextBox1.Text);
		command.Parameters.AddWithValue("@p2", TextBox2.Text);
		command.Parameters.AddWithValue("@p3", id);
		connect.Connect().Close();
	}
}