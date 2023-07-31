using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin : System.Web.UI.MasterPage
{
	SqlClass connect = new SqlClass();
	protected void Page_Load(object sender, EventArgs e)
	{
		SqlCommand command = new SqlCommand("Select * From Tbl_Category", connect.Connect());
		SqlDataReader reader = command.ExecuteReader();
		DataList1.DataSource = reader;
		DataList1.DataBind();
	}
}
