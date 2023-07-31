using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Categories : System.Web.UI.Page
{
	SqlClass connect = new SqlClass();
	string id = "";
	string process = "";
	protected void Page_Load(object sender, EventArgs e)
	{
		if(Page.IsPostBack==false)
		{
			id = Request.QueryString["CategoryId"];
			process = Request.QueryString["process"];
		}
		SqlCommand command = new SqlCommand("Select * from Tbl_Category",connect.Connect());
		SqlDataReader reader = command.ExecuteReader();
		DataList1.DataSource = reader;
		DataList1.DataBind();
		Panel2.Visible = false;
		Panel4.Visible = false;

		if(process == "delete")
		{
			SqlCommand commandDelete = new SqlCommand("Delete From Tbl_Category where CategoryId=@p1",connect.Connect());
			commandDelete.Parameters.AddWithValue("@p1",Convert.ToInt32(id));
			commandDelete.ExecuteNonQuery();
			connect.Connect().Close();
			Response.Write("Category Deleted");

		}
	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		Panel2.Visible=true;
		
	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		Panel2.Visible = false;

	}

	protected void Button3_Click(object sender, EventArgs e)
	{
		Panel4.Visible = true;
	}
	protected void Button4_Click(object sender, EventArgs e)
	{
		Panel4.Visible = false;
	}

	protected void Button5_Click(object sender, EventArgs e)
	{
		SqlCommand command = new SqlCommand("Insert  INTO Tbl_Category(CategoryName)values(@p1)", connect.Connect());
		command.Parameters.AddWithValue("@p1",CategoryName.Text);
		command.ExecuteNonQuery();
		connect.Connect().Close();
		Response.Write("Category Added");


	}
}