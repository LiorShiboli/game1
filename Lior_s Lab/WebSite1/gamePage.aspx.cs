using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;

public partial class game2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["scoreSend"] != null)
        {
            Response.Redirect("ssss");
            Session["Sscore"] = Request.Form["Cscore"];
            int score = int.Parse(Request.Form["Cscore"]);
            string sql1 = "SELECT Hscore FROM ourData WHERE userName = '"+ Session["user"] +"'";
            DataTable tbl = MyAdoHelper.ExecuteDataTable("ourDataBase.mdb", sql1);
            int Hscore = int.Parse(tbl.Rows[0]["Hscore"].ToString());
            if (score > Hscore)
            {
                string sql2 = "UPDATE ourData SET Hscore =" + score + " WHERE userName = '" + Session["user"] + "'";
                MyAdoHelper.DoQuery("ourDataBase.mdb", sql2);
            }
        }
    }
}