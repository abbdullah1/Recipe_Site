using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
public class SqlClass
{
	public SqlConnection Connect()
	{
		SqlConnection connect = new SqlConnection(@"Data Source=localhost;Initial Catalog=Dbo.Recipes;Integrated Security=True");
		connect.Open();
		return connect;
	}
}