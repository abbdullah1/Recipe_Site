using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
	SqlClass connect = new SqlClass();
	protected void Page_Load(object sender, EventArgs e)
	{


	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		SqlCommand command = new SqlCommand("INSERT INTO Tbl_Contact(MessageNameSurname,MessageMail,MessageSubject,MessageContents) values (@t1,@t2,@t3,@t4)", connect.Connect());
		command.Parameters.AddWithValue("@t1", TxtNameSurname.Text);
		command.Parameters.AddWithValue("@t2", TxtMail.Text);
		command.Parameters.AddWithValue("@t3", TxtSubject.Text);
		command.Parameters.AddWithValue("@t4", TxtBody.Text);
		command.ExecuteNonQuery();
		connect.Connect().Close();
		Response.Write("Your Recipe Has Been received");
	}

	
}