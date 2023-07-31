using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SuggestionDetails : System.Web.UI.Page
{
	SqlClass connect = new SqlClass();
	string id = "";
	protected void Page_Load(object sender, EventArgs e)
	{
		id = Request.QueryString["RecommendId"];
		if(Page.IsPostBack==false)
		{

			SqlCommand cmd = new SqlCommand("Select*From Tbl_Recommend where RecommendId=@p1", connect.Connect());
			cmd.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
			SqlDataReader reader = cmd.ExecuteReader();
			while (reader.Read())
			{
				TextBox1.Text = reader[1].ToString();
				TextBox2.Text = reader[2].ToString();
				TextBox3.Text = reader[3].ToString();

				TextBox4.Text = reader[5].ToString();
				TextBox5.Text = reader[6].ToString();
			}
			connect.Connect().Close();

			SqlCommand command2 = new SqlCommand("Select * from Tbl_Category", connect.Connect());
			SqlDataReader reader2 = command2.ExecuteReader();
			DropDownList1.DataTextField = "CategoryName";
			DropDownList1.DataValueField = "CategoryId";
			DropDownList1.DataSource = reader2;
			DropDownList1.DataBind();

			SqlCommand command3 = new SqlCommand("Select CategoryId From Tbl_Category",connect.Connect());
			SqlDataReader reader3 = command3.ExecuteReader();
			DropDownList1.DataSource= reader3;
		}
		

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		SqlCommand command = new SqlCommand("Update Tbl_Recommend set RecommendStatus=1 where RecommendId=@p1",connect.Connect());
		command.Parameters.AddWithValue("@p1",Convert.ToInt32(id));
		command.ExecuteNonQuery();
		connect.Connect().Close();

		SqlCommand cmd2 = new SqlCommand("Insert Into Tbl_Recipe(RecipeName,RecipeIngredients,RecipeMethod,CategoryId)values(@p1,@p2,@p3,@p4)",connect.Connect());
		cmd2.Parameters.AddWithValue("@p1",TextBox1.Text);
		cmd2.Parameters.AddWithValue("@p2",TextBox2.Text);
		cmd2.Parameters.AddWithValue("@p3",TextBox3.Text);
		cmd2.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
		cmd2.ExecuteNonQuery();
		Response.Write("Recommend Approved");
		connect.Connect().Close();

		SqlCommand command2 = new SqlCommand("Update Tbl_Category set CategoryNumber=CategoryNumber+1 where CategoryId=@k1", connect.Connect());
		command2.Parameters.AddWithValue("@k1", DropDownList1.SelectedValue);
		command2.ExecuteNonQuery();
		connect.Connect().Close();
	}
}