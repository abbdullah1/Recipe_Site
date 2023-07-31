using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Recipes : System.Web.UI.Page
{
	SqlClass connect = new SqlClass();
	string process = "";
	string id = "";
	protected void Page_Load(object sender, EventArgs e)
	{
		Panel2.Visible = false;
		Panel4.Visible = false;
		if(Page.IsPostBack==false)
		{
			id = Request.QueryString["RecipeId"];
			process = Request.QueryString["Process"];
			//categoryList
			SqlCommand command2 = new SqlCommand("Select * from Tbl_Category", connect.Connect());
			SqlDataReader reader2 = command2.ExecuteReader();
			DropDownList1.DataTextField = "CategoryName";
			DropDownList1.DataValueField = "CategoryId";
			DropDownList1.DataSource = reader2;
			DropDownList1.DataBind();
		}

		// food List
		SqlCommand command = new SqlCommand("Select * from Tbl_Recipe",connect.Connect());
		SqlDataReader reader = command.ExecuteReader();
		DataList1.DataSource = reader;
		DataList1.DataBind();

		if(process=="delete")
		{
			SqlCommand command2 = new SqlCommand("Delete from Tbl_Recipe where RecipeId=@p1", connect.Connect());
			command2.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
			command2.ExecuteNonQuery();
			connect.Connect().Close();
		}


		
	
	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		Panel2.Visible = true;
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
		//Adding Recipe
		SqlCommand command = new SqlCommand("Insert into Tbl_Recipe(RecipeName,RecipeIngredients,RecipeMethod,CategoryId) values(@p1,@p2,@p3,@p4)",connect.Connect());
		command.Parameters.AddWithValue("@p1",RecipeName.Text);
		command.Parameters.AddWithValue("@p2", Ingredients.Text);
		command.Parameters.AddWithValue("@p3", Method.Text);
		command.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
		command.ExecuteNonQuery();
		connect.Connect().Close();
	
		//increase to Category Number
		SqlCommand command2 = new SqlCommand("Update Tbl_Category set CategoryNumber=CategoryNumber+1 where CategoryId=@p1",connect.Connect());
		command2.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
		command2.ExecuteNonQuery(); 
		Response.Write("Recipe Added");
		connect.Connect().Close ();


	}
}