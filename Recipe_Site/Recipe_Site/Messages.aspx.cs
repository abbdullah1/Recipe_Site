using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Messages : System.Web.UI.Page
{
	SqlClass connect = new SqlClass();
	protected void Page_Load(object sender, EventArgs e)
	{
		Panel2.Visible = false;
	SqlCommand command = new SqlCommand("Select * From Tbl_Contact",connect.Connect());
		SqlDataReader reader = command.ExecuteReader();
		DataList1.DataSource = reader;
		DataList1.DataBind();
	}



	protected void Button1_Click(object sender, EventArgs e)
	{
		Panel2.Visible=true;
	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		Panel2.Visible=false;
	}
}