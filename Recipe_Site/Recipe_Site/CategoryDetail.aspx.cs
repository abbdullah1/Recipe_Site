using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CategoryDetail : System.Web.UI.Page
{
	SqlClass connect = new SqlClass();
	string categoryId = "";
	protected void Page_Load(object sender, EventArgs e)
	{
		categoryId = Request.QueryString["categoryId"];
		SqlCommand command = new SqlCommand("Select * from Tbl_Recipe where CategoryId = @p1",connect.Connect());
		command.Parameters.AddWithValue("@p1",categoryId);
		SqlDataReader reader = command.ExecuteReader();
		DataList2.DataSource = reader;
		DataList2.DataBind();


	}
}