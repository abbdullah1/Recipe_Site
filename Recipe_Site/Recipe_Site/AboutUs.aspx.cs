using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AboutUs : System.Web.UI.Page
{
	SqlClass connect = new SqlClass();
	protected void Page_Load(object sender, EventArgs e)
	{
		SqlCommand command = new SqlCommand("Select * From Tbl_AboutUs",connect.Connect());
		SqlDataReader reader = command.ExecuteReader();
		DataList2.DataSource = reader;
		DataList2.DataBind();
	}
}