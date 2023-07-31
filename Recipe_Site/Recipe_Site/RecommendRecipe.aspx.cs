using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class RecommendRecipe : System.Web.UI.Page
{
	SqlClass connect=new SqlClass();
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void BtnRecommendRecipe_Click(object sender, EventArgs e)
	{
		SqlCommand command = new SqlCommand("INSERT INTO Tbl_Recommend(RecommendName,RecommendIngredients,RecommendMethod,RecommendImage,RecommendOwner,RecommendOwnerMail) values (@t1,@t2,@t3,@t4,@t5,@t6)",connect.Connect());
		command.Parameters.AddWithValue("@t1",TxtRecommendName.Text);
		command.Parameters.AddWithValue("@t2", TxtRecommendIngredients.Text);
		command.Parameters.AddWithValue("@t3", TxtRecommendMethod.Text);
		command.Parameters.AddWithValue("@t4", FileUpload1.FileName);
		command.Parameters.AddWithValue("@t5", TxtRecommendOwner.Text);
		command.Parameters.AddWithValue("@t6", TxtRecommendOwnerMail.Text);
		command.ExecuteNonQuery();
		connect.Connect().Close();
		Response.Write("Your Recipe has been received");
	}
}