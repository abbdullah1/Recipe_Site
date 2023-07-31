using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class CommentDetails : System.Web.UI.Page
{
	SqlClass connect = new SqlClass();
	string id = "";
	protected void Page_Load(object sender, EventArgs e)
	{
		id = Request.QueryString["CommentId"];
		if (Page.IsPostBack== false)
		{
			
			SqlCommand command = new SqlCommand("select CommentNameSurname,CommentMail,CommentContents,RecipeName from Tbl_Comment inner join Tbl_Recipe on Tbl_Comment.RecipeId= Tbl_Recipe.RecipeId  where CommentId=@p1", connect.Connect());
			command.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
			SqlDataReader reader = command.ExecuteReader();
			while (reader.Read())
			{
				TextBox1.Text = reader[0].ToString();
				TextBox2.Text = reader[1].ToString();
				TextBox3.Text = reader[2].ToString();
				TextBox4.Text = reader[3].ToString();
			}
			connect.Connect().Close();
		}
		

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		SqlCommand command = new SqlCommand("Update Tbl_Comment set CommentContents=@p1,CommentCheck=@p2 where CommentId=@p3 ",connect.Connect());
		command.Parameters.AddWithValue("@p1",TextBox3.Text);
		command.Parameters.AddWithValue("@p2","True");
		command.Parameters.AddWithValue("@p3",id);
		command.ExecuteNonQuery();
		Response.Write("CommentApproved");
		connect.Connect().Close();
		


	}
}