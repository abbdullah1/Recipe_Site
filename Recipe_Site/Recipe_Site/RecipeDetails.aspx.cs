using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class RecipeDetails : System.Web.UI.Page
{
	SqlClass connect = new SqlClass();
	string recipeId = "";
	
	protected void Page_Load(object sender, EventArgs e)
	{
		recipeId = Request.QueryString["RecipeId"];
		SqlCommand command = new SqlCommand("Select RecipeName from Tbl_Recipe where RecipeId=@p1",connect.Connect());
		command.Parameters.AddWithValue("@p1", Convert.ToInt32(recipeId));
		SqlDataReader reader = command.ExecuteReader();
		
		while (reader.Read())
		{
			Label3.Text = reader[0].ToString();
		}
		connect.Connect().Close();

		SqlCommand command2 = new SqlCommand("Select * From Tbl_Comment where RecipeId=@p2", connect.Connect());
		command2.Parameters.AddWithValue("@p2", Convert.ToInt32(recipeId));
		SqlDataReader reader2 = command2.ExecuteReader();
		DataList2.DataSource = reader2;
		DataList2.DataBind();

		


	}


	protected void Button1_Click(object sender, EventArgs e)
	{
		SqlCommand command3 = new SqlCommand("Insert Into Tbl_Comment(CommentNameSurname,CommentMail,CommentContents,RecipeId) values(@p1,@p2,@p3,@p4)", connect.Connect());
		command3.Parameters.AddWithValue("@p1", TextBox1.Text);
		command3.Parameters.AddWithValue("@p2", TextBox2.Text);
		command3.Parameters.AddWithValue("@p3", TextBox3.Text);
		command3.Parameters.AddWithValue("@p4", Convert.ToInt32(recipeId));
		command3.ExecuteNonQuery();
		connect.Connect().Close();
		Response.Write("Your Comment has been Added");
	}
}