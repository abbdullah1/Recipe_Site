using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class RecipeEdit : System.Web.UI.Page
{
	SqlClass connect = new SqlClass();
	string id;
	protected void Page_Load(object sender, EventArgs e)
	{
		id = Request.QueryString["RecipeId"];
		if (Page.IsPostBack == false)
		{
			SqlCommand command = new SqlCommand("Select * from Tbl_Recipe where RecipeId=@p1", connect.Connect());
			command.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
			SqlDataReader reader = command.ExecuteReader();
			while (reader.Read())
			{
				TextBox1.Text = reader[1].ToString();
				TextBox2.Text = reader[2].ToString();
				TextBox3.Text = reader[3].ToString();
			}
			
			connect.Connect().Close();
			{
				//categoryList
				SqlCommand command2 = new SqlCommand("Select * from Tbl_Category", connect.Connect());
				SqlDataReader reader2 = command2.ExecuteReader();
				DropDownList1.DataTextField = "CategoryName";
				DropDownList1.DataValueField = "CategoryId";
				DropDownList1.DataSource = reader2;
				DropDownList1.DataBind();
			}
		}
	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		FileUpload1.SaveAs(Server.MapPath("/Images/"+FileUpload1.FileName));
		SqlCommand command = new SqlCommand("Update Tbl_Recipe set RecipeName=@p1,RecipeIngredients=@p2,RecipeMethod=@p3,CategoryId=@p4,RecipeImage=@p6 where RecipeId=@p5",connect.Connect() );
		command.Parameters.AddWithValue("@p1",TextBox1.Text);
		command.Parameters.AddWithValue("@p2", TextBox2.Text);
		command.Parameters.AddWithValue("@p3", TextBox3.Text);
		command.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
		command.Parameters.AddWithValue("@p5", id);
		command.Parameters.AddWithValue("@p6","~/Images/" + FileUpload1.FileName);
		command.ExecuteNonQuery();
		Response.Write("Recipe Updated");
		connect.Connect().Close();
	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		// set All meal as false
		SqlCommand command = new SqlCommand("Update Tbl_Recipe set statue = 0",connect.Connect());
		command.ExecuteNonQuery();
		connect.Connect().Close();
		// set the Meal of the day 
		SqlCommand command2 = new SqlCommand("Update Tbl_Recipe set statue = 1 where RecipeId =@p1",connect.Connect());
		command2.Parameters.AddWithValue("@p1",id);
		command2.ExecuteNonQuery();
		Response.Write("Set as Meal Of The Day");
		connect.Connect().Close() ;
	}
}
