using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    public string incorrect = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["login"] != null)
        {
            string uName = Request.Form["uName"];
            string Password = Request.Form["psw"];

            string sql1 = "SELECT * FROM  ourData WHERE userName = '"+uName+"' AND pass = '"+Password+"'";
            if(MyAdoHelper.IsExist("ourDataBase.mdb", sql1)){
            Session["user"] = uName;
            Response.Redirect("welcomepage.aspx");
            }
            else{
            incorrect = "User name or password incorrect";
            }
        }
    }
}