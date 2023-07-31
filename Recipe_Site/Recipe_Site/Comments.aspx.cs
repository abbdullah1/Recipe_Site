using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yorumlar : System.Web.UI.Page
{
	SqlClass connect = new SqlClass();
	protected void Page_Load(object sender, EventArgs e)
	{
		Panel2.Visible = false;
		Panel4.Visible = false;
		//approved comments
		SqlCommand command = new SqlCommand("Select * from Tbl_Comment where CommentCheck=1",connect.Connect());
		SqlDataReader reader = command.ExecuteReader();
		DataList1.DataSource = reader;
		DataList1.DataBind();
		//unaproved comments
		SqlCommand command2 = new SqlCommand("Select * from Tbl_Comment where CommentCheck=0", connect.Connect());
		SqlDataReader reader2 = command2.ExecuteReader();
		DataList2.DataSource = reader2;
		DataList2.DataBind();
	}

	// protected void Button1_Click(object sender, EventArgs e)
	//   {


	//}
	protected void Button1_Click1(object sender, EventArgs e)
	{
		Panel2.Visible = true;
	}
	protected void Button2_Click(object sender, EventArgs e)
	{
		Panel2.Visible =false;
	}






	protected void Button3_Click(object sender, EventArgs e)
	{
		Panel4.Visible = true;
	}


	protected void Button4_Click(object sender, EventArgs e)
	{
		Panel4.Visible = false;
	}
}