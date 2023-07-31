using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MessageDetail : System.Web.UI.Page
{
	SqlClass connect = new SqlClass();
	string id ="";
	protected void Page_Load(object sender, EventArgs e)
	{
		id = Request.QueryString["MessageId"];
	SqlCommand command = new SqlCommand("Select * from Tbl_Contact where MessageId=@p1",connect.Connect());
	command.Parameters.AddWithValue("@p1",Convert.ToInt32(id));
	SqlDataReader reader = command.ExecuteReader();
		while (reader.Read())
		{
		TextBox1.Text= reader[1].ToString();
		TextBox2.Text = reader[2].ToString();
		TextBox3.Text = reader[3].ToString();
		TextBox4.Text = reader[4].ToString();
		}
		connect.Connect().Close();
	}
}