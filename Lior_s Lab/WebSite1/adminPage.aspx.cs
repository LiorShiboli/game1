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


public partial class adminPage : System.Web.UI.Page
{
    public string table = "";
    public string updaterow = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string Sql = "SELECT * FROM ourData";
        DataTable tbl = MyAdoHelper.ExecuteDataTable("ourDataBase.mdb", Sql);
        table += "<table style='width:100%' >";
        table += "<tr>";
        for (int i = 0; i < tbl.Columns.Count; i++)
        {
            table += "<th> "+ tbl.Columns[i] +"</th>";
        }
        table += "</tr>";

            for (int i = 0; i < tbl.Rows.Count; i++)
        {
            table += "<tr>";
            for (int j = 0; j < tbl.Columns.Count; j++)
            {
                table += "<td>" + tbl.Rows[i][j] + "</td>";
            }
            table += "</tr>";
        }
        table += "</table>";

        if (Request.Form["subdel"] != null)
        {
            string sql4 = "DELETE FROM ourData WHERE userName='" + Request.Form["ulrich"]+"'";
            MyAdoHelper.DoQuery("ourDataBase.mdb", sql4);
            Response.Redirect("adminPage.aspx");

        }

        if (Request.Form["submitotron"] != null)
        {
             
            string sql2 = "SELECT * FROM ourData WHERE userName='" + Request.Form["updateron"] + "'";
            DataTable tbl2 = MyAdoHelper.ExecuteDataTable("ourDataBase.mdb", sql2);

            if (tbl2.Rows.Count > 0)
            {
                updaterow += "<form name='userUpdateForm' action='' method='post'>";
                updaterow += "<table style='width:100%' >";
                updaterow += "<tr>";

                for (int i = 0; i < tbl2.Columns.Count; i++)
                {
                    updaterow += "<th> " + tbl2.Columns[i] + "</th>";
                   
                }
               
                updaterow += "<tr><td> <input type='text' name='fName' id='fName' value='" + tbl2.Rows[0]["firstName"] + "'></td>";
                updaterow += "<td> <input type='text' name='lName' id='lName' value='" + tbl2.Rows[0]["lastName"] + "'></td>";
                updaterow += "<td> <input type='text' name='uName' id='uName' value='" + tbl2.Rows[0]["userName"] + "'></td>";
                updaterow += "<td> <input type='text' name='email' id='email' value='" + tbl2.Rows[0]["Email"] + "'></td>";
                updaterow += "<td> <input type='text' name='pass' id='pass' value='" + tbl2.Rows[0]["pass"] + "'></td>";
                if (tbl2.Rows[0]["isAdmin"].ToString().Equals("True"))
                {
                    updaterow += "<td> <input type='checkbox' name='isAdmin' id='isAdmin' value='true' checked></td>";
                }
                else
                {
                    updaterow += "<td> <input type='checkbox' name='isAdmin' id='isAdmin' value='false' ></td>";
                }
                updaterow += "<td> <input type='text' name='hScore' id='hScore' value='" + tbl2.Rows[0]["Hscore"] + "'></td>";

                updaterow += "</tr></table>";
                updaterow += "<input type='submit' name='submitUpdate'  value='עדכן'";
               

            }
            
        }
       
            if (Request.Form["submitUpdate"] != null)
            {
                string ufirstname = Request.Form["fName"];
                string upassword = Request.Form["pass"];
                string uUsername = Request.Form["uName"];
                string ulastname = Request.Form["lName"];
                string uhScore = Request.Form["hScore"];
                string uemail = Request.Form["email"];
                string uisAdmin = "True";
                if (Request.Form["isAdmin"] == null)
                { uisAdmin = "False"; }
                string sql3 = "UPDATE ourData SET firstName='" + ufirstname + "',userName='" + uUsername + "',Email='" + uemail + "',pass='" + upassword + "',isAdmin=" + uisAdmin + ",lastName='" + ulastname + "',Hscore=" + uhScore;
                sql3 += " WHERE userName='" + uUsername + "'";
                MyAdoHelper.DoQuery("ourDataBase.mdb", sql3);
            Response.Redirect("adminPage.aspx");

            }
        
    }
}